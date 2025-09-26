function setup () {
  createCanvas(100, 100)
}

function draw () {
  background(0)
  fill(255)
  strokeWeight(1)

  r = 49

  for (p = 0; p < 360; p += 360 / 12) {
    pa = p / 360 * TAU
    circle(r * sin(pa) + 50, r * cos(pa) + 50, 1 + 25 * (p / 360))
  }

  circle(50, 50, 67)
}
