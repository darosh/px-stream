const ON = [0, 0, 0, 0, 0, 0, 0, 0, 0]
let VALS = []
let BANG = 0

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

function bang4 () {
  // 5x5 magic square
  const MAGIC = [
    [17, 24, 1, 8, 15],
    [23, 5, 7, 14, 16],
    [4, 6, 13, 20, 22],
    [10, 12, 19, 21, 3],
    [11, 18, 25, 2, 9]
  ]

  const STO = [[], [], [], [], []]

  for (let y = 0; y < 5; y++) {
    for (let x = 0; x < 5; x++) {
      let val = MAGIC[y][x] % VALS.length
      STO[x][y] = VALS[val]
    }
  }

  // Random swaps for variation
  const swaps = 5 + Math.floor(Math.random() * 10)

  for (let i = 0; i < swaps; i++) {
    const x1 = Math.floor(Math.random() * 5)
    const y1 = Math.floor(Math.random() * 5)
    const x2 = Math.floor(Math.random() * 5)
    const y2 = Math.floor(Math.random() * 5)

    const temp = STO[x1][y1]
    STO[x1][y1] = STO[x2][y2]
    STO[x2][y2] = temp
  }

  for (let y = 0; y < 5; y++) {
    for (let x = 0; x < 5; x++) {
      let val = MAGIC[y][x] % VALS.length
      outlet(0, x, y, STO[x][y])
    }
  }
}

function bang () {
  [bang1, bang2, bang3, bang4][BANG]()
  BANG = (BANG + 1) % 4
}
