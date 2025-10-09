outlets = 4
let DID = null
let MIDI = false

const INDEX_CID = 0
const INDEX_DID = 1
const INDEX_RID = 2
const INDEX_MID = 3

function init (t) {
  // post('Type: ' + t + '\n')

  MIDI = t === 'midi'

  let obj = this.patcher.getnamed('px_chain_in')
  let name = obj.boxtext.replace('receive ', '')
  let objM = this.patcher.getnamed('px_chain_midi')
  let nameM = objM.boxtext.replace('receive ', '')

  outlet(0, [name, nameM])
}

function getDevicePath (path) {
  let pathArray = []

  for (let i = 1; i < path.length; i++) {
    if (path[i] === 'tracks' && path[i + 1] !== undefined) {
      pathArray.push(1)
      pathArray.push(parseInt(path[i + 1]) + 1) // +1 to make 1-indexed
      i++
    } else if (path[i] === 'devices' && path[i + 1] !== undefined) {
      pathArray.push(parseInt(path[i + 1]) + 1) // +1 to make 1-indexed
      i++
    } else if (path[i] === 'chains' && path[i + 1] !== undefined) {
      pathArray.push(parseInt(path[i + 1]) + 1) // +1 to make 1-indexed
      i++
    } else if (path[i] === 'return_tracks' && path[i + 1] !== undefined) {
      pathArray.push(2)
      pathArray.push(parseInt(path[i + 1]) + 1) // +1 to make 1-indexed
      i++
    } else if (path[i] === 'master_track' && path[i + 1] !== undefined) {
      pathArray.push(3)
      pathArray.push(parseInt(path[i + 1]) + 1) // +1 to make 1-indexed
      i++
    // } else if (path[i] === 'live_set') {
    // continue
    } else {
      post(`Unknown path: ${path[i]} ${path[i + 1]}\n`)
    }
  }

  return pathArray
}

function comparePaths (a, b) {
  const max_length = Math.max(a.length, b.length)

  for (let i = 0; i < max_length; i++) {
    const va = a[i] ?? 0
    const vb = b[i] ?? 0

    if (va !== vb) {
      return va - vb
    }
  }

  return 0
}

/**
 * @param path Live Path
 * @param did Device ID
 * @param rid Receive ID
 * @param mid MIDI Receive ID
 */
function register (path, did, rid, mid) {
  // post(`${JSON.stringify({ path, did, rid, mid })}\n`)
  const cid = getDevicePath(path.split(' '))
  // post(JSON.stringify(cid) + '\n')

  DID = did

  const dic = new Dict('px_chains')

  if (!MIDI) {
    dic.replace(did, [cid, did, rid, mid])
  } else {
    MIDI = [cid, did, rid, mid]
  }

  outlet(1, ['bang'])
}

function unregister () {
  const dic = new Dict('px_chains')

  if (dic.contains(DID)) {
    dic.remove(DID)
    outlet(1, ['bang'])
  }
}

function next () {
  if (DID === null) {
    return
  }

  const dic = new Dict('px_chains')
  const keys = dic.getkeys()

  if (!keys) {
    return
  }

  const arr = keys.map(k => dic.get(k))

  if (MIDI) {
    arr.push(MIDI)
  }

  const sorted = arr.sort((a, b) => comparePaths(a[INDEX_CID], b[INDEX_CID]))

  const me = sorted.findIndex(a => a[INDEX_DID] === DID)
  const next = sorted[me + 1]

  outlet(2, next
    ? MIDI ? ['next', next[INDEX_MID]] : ['next', next[INDEX_RID]]
    : ['end'])
}
