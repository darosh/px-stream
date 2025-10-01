function setup() {
  createCanvas(100, 100);
}

prev = 0

function draw() {
  n = Math.round(Date.now() / 1000)

  if (n < (prev + 1)) {
    return
  }

  background(0)

  s = n % 60
  a = (180 - s * 6) / 360 * TAU
  r = 40
  q = 37

  fill(255);
  strokeWeight(1)

  for (p = 0; p < 360; p += 360 / 12) {
    pa = p / 360 * TAU
    circle(r * sin(pa) + 50, r * cos(pa) + 50, 2.75)
  }

  line(50, 50, q * sin(a) + 50, q * cos(a) + 50)
}