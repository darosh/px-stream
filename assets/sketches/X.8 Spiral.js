const w = 100
const m = 120
const rings = 40

let t = 0
const m1 = w / (rings * 4)
const m2 = w / (rings + 1)

// Speed multipliers for different rings
// Using harmonic ratios so they align periodically
function getSpeed (ringIndex) {
  if (ringIndex === 0) return 0 // Center point doesn't rotate
  // Use harmonic progression: 1, 1/2, 1/3, 1/4, etc.
  // This ensures all rings align every full cycle
  return (w / 6) / ringIndex
}

function setup () {
  createCanvas(m, m)
}

function draw () {
  t++

  background(0)
  fill(255)

  for (let j = 0; j <= rings; j++) {
    // Calculate rotation speed for this ring
    const speed = getSpeed(j)
    fill(255 * (j / rings))

    for (let i = 0; i <= j; i++) {
      let r = j * w / ((rings + 1) * 2)
      let a = !j ? 0 : (TAU * i / j)

      // Add rotation based on time, ring index, and speed
      let rotationOffset = (t * 0.02 * speed) % TAU
      a += rotationOffset * ((j % 2) ? -1 : 1)

      let x = sin(a) * r + m / 2
      let y = cos(a) * r + m / 2
      circle(x, y, mix(m1, m2, j / rings))
    }
  }
}

// CC0
