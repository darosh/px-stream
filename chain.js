outlets = 3
let DID = null

function bang () {
  let chainObj = this.patcher.getnamed('isf_chain_in')
  let boxtext = chainObj.boxtext.replace('receive ', '')

  outlet(0, [boxtext])
}

function register (cid, tn, dn, did, rid) {
  DID = did
  // post([cid, tn, dn, did, rid] + '\n')

  const dic = new Dict('isf_audio_chains')
  dic.replace(did, [cid, tn, dn, did, rid])

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
  
  const sorted = keys.map(k => dic.get(k)).sort((a, b) => a[0] - b[0])
  const me = sorted.findIndex(a => a[3] === DID)
  const next = sorted[me + 1]

  outlet(2, next ? ['next', next[4]] : ['end'])
}
