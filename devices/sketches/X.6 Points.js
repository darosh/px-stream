// Generate random x coordinates
let x = Array.from({ length: 1e3 }).map(_ => Math.random() * 100)
let t = 0
let fallSpeed = 0.5
let patternOffset = 0

function setup () {
  createCanvas(100, 100)
}

function draw () {
  t++

  // Clear background every frame for smooth animation
  background(0, 20) // Slight trail effect
  strokeWeight(3)

  // Update pattern offset for falling effect
  patternOffset += fallSpeed

  // Switch pattern every 12 frames but keep movement continuous
  let patternPhase = Math.floor(t / 120)

  let j = patternPhase
  let k = Math.floor(patternOffset) + patternPhase

  for (let i = 0; i < 1e3; i++) {
    // White points with transparency
    stroke(255, 96)
    let x1 = x[(i + k++) % x.length]
    let y1 = (x[(k++) % x.length] + patternOffset) % 100
    point(x1, y1)

    // Red points with transparency
    stroke(255, 0, 0, 128)
    let x2 = x[(j++) % x.length]
    let y2 = (x[(j++) % x.length] + patternOffset) % 100
    point(x2, y2)
  }

  // Wrap pattern offset to prevent overflow
  if (patternOffset > 100) {
    patternOffset -= 100
  }
}
