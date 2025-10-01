let W = 800
let H = 600
let size = 4

// Pendulum parameters
let r1 = 200  // length of first arm
let r2 = 200  // length of second arm
let m1 = 20   // mass of first bob
let m2 = 20   // mass of second bob
let a1 = Math.PI / 2    // angle of first pendulum
let a2 = Math.PI / 2    // angle of second pendulum
let a1_v = 0  // angular velocity of first pendulum
let a2_v = 0  // angular velocity of second pendulum
let g = 0.15   // gravity

let cx, cy    // center point
let trail = []

function setup () {
  createCanvas(W, H)
  cx = W / 2
  cy = H / 4

  // Start with slight randomness
  a1 += random(-0.25, 0.25)
  a2 += random(-0.25, 0.25)
}

function draw () {
  background(0)
  strokeWeight(size)

  // Calculate accelerations using double pendulum equations
  let num1 = -m2 * r1 * a1_v * a1_v * sin(a1 - a2) * cos(a1 - a2)
  let num2 = m2 * g * sin(a2) * cos(a1 - a2)
  let num3 = m2 * r2 * a2_v * a2_v * sin(a1 - a2)
  let num4 = (m1 + m2) * g * sin(a1)
  let den = (m1 + m2) * r1 - m2 * r1 * cos(a1 - a2) * cos(a1 - a2)
  let a1_a = (num1 + num2 + num3 - num4) / (den || 0.0001)

  let num5 = -m2 * r2 * a2_v * a2_v * sin(a1 - a2) * cos(a1 - a2)
  let num6 = (m1 + m2) * g * sin(a1) * cos(a1 - a2)
  let num7 = (m1 + m2) * r1 * a1_v * a1_v * sin(a1 - a2)
  let num8 = (m1 + m2) * g * sin(a2)
  let den2 = (m1 + m2) * r2 - m2 * r2 * cos(a1 - a2) * cos(a1 - a2)
  let a2_a = (num5 + num6 + num7 - num8) / (den || 0.0002)

  // Update velocities and angles
  a1_v += a1_a
  a2_v += a2_a
  a1 += a1_v
  a2 += a2_v

  // Add slight damping
  a1_v *= 0.999
  a2_v *= 0.999

  // Calculate positions
  let x1 = cx + r1 * sin(a1)
  let y1 = cy + r1 * cos(a1)
  let x2 = x1 + r2 * sin(a2)
  let y2 = y1 + r2 * cos(a2)

  // Add to trail
  trail.push({ x: x2, y: y2 })
  
  if (trail.length > 500) {
    trail.shift()
  }

  // Draw trail
  stroke(100, 100)
  // strokeWeight(10)
  for (let i = 1; i < trail.length; i++) {
    line(trail[i - 1].x, trail[i - 1].y, trail[i].x, trail[i].y)
  }

  // Draw pendulum arms
  stroke(255, 220)
  line(cx, cy, x1, y1)
  line(x1, y1, x2, y2)

  // Draw the bobs
  fill(255, 240)
  circle(x1, y1, size * 4.5)
  circle(x2, y2, size * 6)

  // Draw pivot point
  circle(cx, cy, size * 3)
}
