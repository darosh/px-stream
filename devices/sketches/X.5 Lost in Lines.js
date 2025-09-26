let W = 200
let H = 200
speed = 1
size = 2

// Line properties
let x1 = .2 * W, y1 = .13 * H
let x2 = .9 * W, y2 = .23 * H
let dx1 = 0.025 * W * speed, dy1 = 0.018 * H * speed
let dx2 = -0.017 * W * speed, dy2 = 0.022 * H * speed

function setup () {
  createCanvas(W, H)
}

function draw () {
  background(0)
  strokeWeight(size)
  stroke(255)

  // Update line endpoints
  x1 += dx1
  y1 += dy1
  x2 += dx2
  y2 += dy2

  // Bounce off edges - point 1
  if (x1 <= 0 || x1 >= W) {
    dx1 = -dx1
    x1 = Math.max(0, Math.min(W, x1))
  }
  if (y1 <= 0 || y1 >= H) {
    dy1 = -dy1
    y1 = Math.max(0, Math.min(H, y1))
  }

  // Bounce off edges - point 2
  if (x2 <= 0 || x2 >= W) {
    dx2 = -dx2
    x2 = Math.max(0, Math.min(W, x2))
  }
  if (y2 <= 0 || y2 >= H) {
    dy2 = -dy2
    y2 = Math.max(0, Math.min(H, y2))
  }

  // Draw the line
  line(x1, y1, x2, y2)
  circle(x1, y1, size * 4)
  circle(x2, y2, size * 4)
}
