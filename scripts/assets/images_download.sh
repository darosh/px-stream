#!/bin/bash
# Usage: ./download_images.sh images.tsv

input_file="$1"

if [[ -z "$input_file" ]]; then
  echo "Usage: $0 images.tsv"
  exit 1
fi

# Create a folder for downloaded images
mkdir -p downloaded

# Read each line from the TSV (tab-separated)
while IFS=$'\t' read -r name url; do
  # Skip header or empty lines
  [[ -z "$url" || "$name" == "Name" ]] && continue

  # Replace spaces with underscores for filename safety
  safe_name=$(echo "$name" | tr ' ' '_' | tr -d '\r')

  # Determine file extension from URL (default: jpg)
  ext="${url##*.}"
  [[ "$ext" == *"?"* ]] && ext="jpg"

  # Download the file
  echo "Downloading: $name ..."
  curl -L -o "downloaded/${safe_name}.${ext}" "$url"
done < "$input_file"
