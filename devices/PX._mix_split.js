const ON = [0, 0, 0, 0, 0, 0, 0, 0, 0]
let VALS = []

function inc (v, on) {
  ON[v] = on
  VALS = ON
    .map((v, i) => [i, v])
    .filter(v => v[1])
    .map(v => v[0])
}

function bang1 () {
  for (let x = 0; x < 5; x++) {
    for (let y = 0; y < 5; y++) {
      outlet(0, x, y, VALS[Math.floor(VALS.length * Math.random())])
    }
  }
}

function bang2 () {
  const grid = []
  const totalCells = 25
  const perChannel = Math.floor(totalCells / VALS.length)
  const remainder = totalCells % VALS.length

  // Fill with even distribution
  for (let i = 0; i < VALS.length; i++) {
    const count = perChannel + (i < remainder ? 1 : 0)
    for (let j = 0; j < count; j++) {
      grid.push(VALS[i])
    }
  }

  // Fisher-Yates shuffle
  for (let i = grid.length - 1; i > 0; i--) {
    const j = Math.floor(Math.random() * (i + 1));
    [grid[i], grid[j]] = [grid[j], grid[i]]
  }

  // Output
  for (let y = 0; y < 5; y++) {
    for (let x = 0; x < 5; x++) {
      outlet(0, x, y, grid[y * 5 + x])
    }
  }
}

function bang3 () {
  const grid = Array(5).fill().map(() => Array(5).fill(-1))

  function isValid (x, y, val) {
    // Check adjacent cells
    if (x > 0 && grid[y][x - 1] === val) return false
    if (y > 0 && grid[y - 1][x] === val) return false
    return true
  }

  for (let y = 0; y < 5; y++) {
    for (let x = 0; x < 5; x++) {
      let attempts = 0
      let val
      do {
        val = VALS[Math.floor(Math.random() * VALS.length)]
        attempts++
      } while (!isValid(x, y, val) && attempts < 50)

      grid[y][x] = val
      outlet(0, x, y, val)
    }
  }
}

function bang () {
  bang3()
}
