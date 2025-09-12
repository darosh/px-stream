import sharp from 'sharp'
import { glob } from 'glob'

import config from './screenshots.conf.js'

async function processScreenshots () {
  for (const device of config.devices) {
    const [src, name, x0, x1] = device
    const outputFile = `./assets/devices/${name.replace(/\s+/g, '_')}_v${config.v}.webp`
    const inputFile = `./assets/screenshot-${src}.png`

    await sharp(inputFile)
      .extract({ left: x0, top: config.y0, width: x1, height: config.y1 })
      .resize(null, 255)
      .toFile(outputFile)

    console.log(`Saved ${outputFile}`)
  }
}

await processScreenshots().catch(console.error)

// === CONFIGURATION ===
const inputPattern = "./assets/devices/*.webp"; // adjust to your folder
const outputFile = "./assets/devices.webp";
const rows = 5; // number of rows
const align = "justify"; // "left" | "center" | "justify"
const spacing = 16; // minimal distance between images
const margin = 16; // outer margin around the whole collage

async function createCollage() {
  // Get images
  const files = glob.sync(inputPattern, {ignore: ['./assets/devices/PX_Route_MIDI_(linked)_v1.webp']});
  if (files.length === 0) throw new Error("No images found");

  // Load metadata (width, height)
  const images = await Promise.all(
    files.map(async (file) => {
      const metadata = await sharp(file).metadata();
      return { file, width: metadata.width, height: metadata.height };
    })
  );

  const rowHeight = images[0].height;

  // Sort images by width (descending)
  images.sort((a, b) => b.width - a.width);

  // Initialize rows
  const rowImages = Array.from({ length: rows }, () => []);
  const rowWidths = Array(rows).fill(0);

  // Greedy bin packing: assign each image to the row with least current width
  for (const img of images) {
    let targetRow = rowWidths.indexOf(Math.min(...rowWidths));
    rowImages[targetRow].push(img);
    rowWidths[targetRow] += img.width + spacing;
  }

  // Compute max row width
  const maxRowWidth = Math.max(
    ...rowImages.map(
      (row) => row.reduce((s, img) => s + img.width, 0) + (row.length - 1) * spacing
    )
  );

  const totalHeight = rows * rowHeight + (rows - 1) * spacing;

  // Prepare sharp composites
  const composites = [];
  let y = margin;

  for (const row of rowImages) {
    const totalWidth = row.reduce((s, img) => s + img.width, 0);
    const gaps = row.length - 1;

    let x = margin;
    let extraSpace = maxRowWidth - totalWidth - gaps * spacing;

    let gapSpacing = spacing;
    let remainder = 0;

    if (align === "center") {
      x += Math.floor(extraSpace / 2);
    } else if (align === "justify" && gaps > 0) {
      gapSpacing = spacing + Math.floor(extraSpace / gaps);
      remainder = extraSpace % gaps; // distribute leftover pixels
    }

    for (let i = 0; i < row.length; i++) {
      const img = row[i];
      composites.push({
        input: img.file,
        top: y,
        left: x,
      });
      x += img.width;
      if (i < row.length - 1) {
        x += gapSpacing;
        if (remainder > 0) {
          x += 1; // distribute an extra pixel
          remainder--;
        }
      }
    }

    y += rowHeight + spacing;
  }

  // Create blank canvas
  const collage = sharp({
    create: {
      width: maxRowWidth + margin * 2,
      height: totalHeight + margin * 2,
      channels: 4,
      background: { r: 56, g: 56, b: 56, alpha: 1 },
    },
  })
    .composite(composites)
    .webp();

  await collage.toFile(outputFile);
  console.log("Collage saved to", outputFile);
}

await createCollage().catch(console.error);
  