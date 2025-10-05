#!/bin/bash
# Usage: ./convert_to_webp.sh
# Converts all images in downloaded/ to WebP with max dimension 1080px

input_dir="downloaded"
output_dir="assets/images"
max_size=1080

mkdir -p "$output_dir"

# Ensure magick exists
if ! command -v magick &> /dev/null; then
  echo "❌ Error: ImageMagick (magick) not found. Install it with:"
  echo "   brew install imagemagick"
  exit 1
fi

echo "Using ImageMagick for conversion..."

for img in "$input_dir"/*; do
  # Skip if not a file
  [[ -f "$img" ]] || continue

  base=$(basename "$img")
  name="${base%.*}"
  outpath="$output_dir/${name}.webp"

  echo "Converting: $name ..."
  magick "$img" -resize "${max_size}x${max_size}>" -quality 90 "$outpath"
done

echo "✅ All images converted to WebP in $output_dir/"