#!/bin/bash

# Time formats
# hh:mm:ss.xxx 00:00:00.000
# hh:mm:ss:ff 00:00:00:00
# frame 0f
# seconds 0.0

# Encoding hap, hap_q, hap_alpha

# Tab separated values
# Utah.avi	00:32:38.700	1.100	S.1 Horse.mov	hap
# thewarrenyearsthegreatdecisions.mp4	86457f	189f	C.1 Countdown.mov	hap
# thewarrenyearsthegreatdecisions.mp4	86457f	189f	C.1 Countdown.mov	hap_alpha Utah-mask.mp4
INPUT_FILE="clips.tsv"

normalize_time() {
    local input="$1"
    local fps="$2"

    # Case 1: already hh:mm:ss.xxx (FFmpeg native)
    if [[ "$input" =~ ^[0-9]{1,2}:[0-9]{2}:[0-9]{2}(\.[0-9]+)?$ ]]; then
        echo "$input"
        return
    fi

    # Case 2: SMPTE timecode hh:mm:ss:ff
    if [[ "$input" =~ ^([0-9]{1,2}):([0-9]{2}):([0-9]{2}):([0-9]{2})$ ]]; then
        hh="${BASH_REMATCH[1]}"
        mm="${BASH_REMATCH[2]}"
        ss="${BASH_REMATCH[3]}"
        ff="${BASH_REMATCH[4]}"
        total_seconds=$((10#$hh*3600 + 10#$mm*60 + 10#$ss))
        frac=$(awk -v f="$ff" -v fps="$fps" 'BEGIN { printf "%.6f", f/fps }')
        echo "$total_seconds$frac"
        return
    fi

    # Case 3: frame number only (e.g. "86457f" or just "86457")
    if [[ "$input" =~ ^([0-9]+)f$ ]]; then
        frames="${BASH_REMATCH[1]}"
        awk -v f="$frames" -v fps="$fps" 'BEGIN { printf "%.6f", f/fps }'
        return
    elif [[ "$input" =~ ^[0-9.]+$ ]]; then
        # Assume plain seconds
        echo "$input"
        return
    fi

    echo "ERROR: Unrecognized time format '$input'" >&2
    exit 1
}

while IFS=$'\t' read -r SRC START DURATION OUT VARIANT MASK || [ -n "$SRC" ]
do
  FPS=24
  norm_start=$(normalize_time "$START" "$FPS")
  norm_duration=$(normalize_time "$DURATION" "$FPS")
  
  echo "→ Normalized START=$norm_start, DURATION=$norm_duration"

  # Default to plain hap if no variant provided
  if [ -z "$VARIANT" ]; then
    VARIANT="hap"
  fi

  echo "Processing: $SRC ($norm_start for $norm_duration) -> $OUT [$VARIANT]"

  if [ "$VARIANT" = "hap_alpha" ] && [ -n "$MASK" ]; then
    # Use second file as mask input
    echo " → Using mask: $MASK"
    ffmpeg -ss "$norm_start" -i "$SRC" -ss "$norm_start" -i "$MASK" -t "$norm_duration" \
      -filter_complex "[0:v][1:v]alphamerge" \
      -c:v hap -format hap_alpha -an -y "$OUT"
  else
    # Normal HAP export
    ffmpeg -ss "$norm_start" -i "$SRC" -t "$norm_duration" \
      -c:v hap -format "$VARIANT" -an -y "$OUT"
  fi

done < "$INPUT_FILE"
