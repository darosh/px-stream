#!/usr/bin/env node

// --- Imports ---
import fetch from 'node-fetch'
import Table from 'cli-table3'

// --- Constants ---
const API_URL = 'https://api.github.com/repos/darosh/px-stream/releases'

// --- Helper: format date nicely ---
function formatDate (iso) {
  const d = new Date(iso)
  return `${d.toDateString()} ${d.toTimeString().replace(/GMT.+/, '')}` 
  
  //.replace('T', ' ').replace('Z', '')
}

// --- Main ---
(async () => {
  try {
    const res = await fetch(API_URL, {
      headers: { 'User-Agent': 'px-stream-cli' },
    })
    if (!res.ok) throw new Error(`GitHub API error: ${res.status}`)
    const releases = await res.json()

    if (!Array.isArray(releases)) throw new Error('Unexpected API response')

    // --- Prepare table ---
    const table = new Table({
      head: ['Release', 'Published', 'Downloads'],
      style: { head: ['cyan'], border: ['grey'] },
      colWidths: [17, 26, 11],
      wordWrap: true,
    })

    let totalDownloads = 0

    releases.forEach((r) => {
      const downloadCount = (r.assets || []).reduce(
        (sum, a) => sum + (a.download_count || 0),
        0
      )
      totalDownloads += downloadCount

      table.push([
        r.tag_name,
        formatDate(r.published_at),
        {
          hAlign: 'center',
          content: downloadCount.toLocaleString(),
        }
      ])
    })

    table.push([
      'Total',
      `${releases.length} releases`,
      {
        hAlign: 'center',
        style: { head: ['cyan'], border: ['grey'] },
        content: totalDownloads.toLocaleString() 
      },
    ])
    
    // --- Print ---
    console.log('\n📦 px-stream releases\n')
    console.log(table.toString())
    console.log(
      `\nSummary: ${releases.length} releases, ${totalDownloads.toLocaleString()} total downloads\n`
    )
  } catch (err) {
    console.error('❌ Error:', err.message)
  }
})()
