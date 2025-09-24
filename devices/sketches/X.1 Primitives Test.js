function setup () {
  createCanvas(400, 400)
}

function draw () {
  noStroke()
  background(56)
  fill(255, 255, 255)
  circle(200, 200, 100)
  fill(255, 0, 0)
  circle(100, 100, 100)
  fill(0, 255, 0)
  circle(300, 300, 100)
  fill(0, 0, 255)
  rect(300, 300, 25)
  fill(255, 255, 255, 127)
  triangle(0, 0, 400, 400, 0, 400)
  stroke(255, 255, 0)
  strokeWeight(10)
  line(0, 400, 400, 0)
  stroke(0, 255, 0)
  point(350, 200)
  stroke(0, 255, 255)
  strokeWeight(5)
  line(10, 20, 40, 40)
  line(40, 40, 90, 20)
  line(110, 120, 100, 140, 140, 100)
  line(140, 140, 100, 190, 110, 100)
}

// https://openprocessing.org/sketch/2733675