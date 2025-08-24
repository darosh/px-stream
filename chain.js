outlets = 4
let DID = null
let MIDI = false

function init (t) {
  // post('Type: ' + t + '\n')

  MIDI = t === 'midi'

  let obj = this.patcher.getnamed('isf_chain_in')
  let name = obj.boxtext.replace('receive ', '')
  let objM = this.patcher.getnamed('isf_chain_midi')
  let nameM = objM.boxtext.replace('receive ', '')

  outlet(0, [name, nameM])
}

function register (cid, tn, dn, did, rid, mid) {
  DID = did
  // post([cid, tn, dn, did, rid] + '\n')

  const dic = new Dict('isf_audio_chains')

  if (!MIDI) {
    dic.replace(did, [cid, tn, dn, did, rid, mid])
  } else {
    MIDI = [cid, tn, dn, did, rid, mid]
  }

  outlet(1, ['bang'])
}

function unregister () {
  const dic = new Dict('isf_audio_chains')

  if (dic.contains(DID)) {
    dic.remove(DID)
    outlet(1, ['bang'])
  }
}

function next () {
  if (DID === null) {
    return
  }

  const dic = new Dict('isf_audio_chains')
  const keys = dic.getkeys()

  if (!keys) {
    return
  }

  const arr = keys.map(k => dic.get(k))

  if (MIDI) {
    arr.push(MIDI)
  }

  const sorted = arr.sort((a, b) => a[0] - b[0])
  const me = sorted.findIndex(a => a[3] === DID)
  const next = sorted[me + 1]

  outlet(2, next
    ? MIDI ? ['next', next[5]] : ['next', next[4]]
    : ['end'])
}
