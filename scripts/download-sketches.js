import { promises as fs } from 'fs'
import path from 'path'
import puppeteer from 'puppeteer'

async function scrapeTweets (url, maxTweets = 100, outputDir = './devices/sketches') {
  try {
    // Launch browser
    const browser = await puppeteer.launch({ headless: false, userDataDir: './.data-dir' })
    const page = await browser.newPage()

    // Ensure output directory exists
    await fs.mkdir(outputDir, { recursive: true })

    // Get list of already downloaded tweet IDs
    const existingFiles = await fs.readdir(outputDir)
    const existingIds = new Set(
      existingFiles
        .filter(file => file.endsWith('.js'))
        .map(file => path.basename(file, '.js').split('-').pop())
    )

    // Navigate to X search page
    // const query = encodeURIComponent(`#${hashtag} -is:retweet`)
    // const query = encodeURIComponent(`${hashtag}`)

    console.log('page.goto')

    // await page.goto(`https://x.com/hashtag/${query}?src=hashtag_click`)
    await page.goto(url)

    // await page.goto(`https://x.com/search?q=${query}&src=typed_query`, {
    // waitUntil: 'networkidle2',
    // })

    console.log('page.goto DONE')

    let tweetCount = 0
    const tweets = []

    while (tweetCount < maxTweets) {
      // Scroll to load more tweets
      await page.evaluate(() => window.scrollBy(0, window.innerHeight * 2))
      await page.waitForSelector('article[data-testid="tweet"]') // Wait for content to load

      // Extract tweets
      const newTweets = await page.evaluate(() => {
        console.log('evaluate')

        const tweetElements = document.querySelectorAll('article[data-testid="tweet"]')

        console.log('tweetElements', tweetElements)

        return Array.from(tweetElements).map(tweet => {
          const idElement = tweet.querySelector('a[href*="/status/"]')
          const textElement = tweet.querySelector('div[lang]')
          const usernameElement = tweet.querySelectorAll('a[href*="/"]').entries().find(d => d.textContent.startsWith('@'))
          const timeElement = tweet.querySelector('time')
          const idMatch = idElement?.href.match(/\/status\/(\d+)/)

          return {
            id: idMatch ? idMatch[1] : null,
            text: textElement?.textContent || '',
            username: usernameElement?.textContent || '',
            created_at: timeElement?.getAttribute('datetime') || '',
          }
        }).filter(tweet => tweet.id) // Filter out invalid tweets
      })

      for (const tweet of newTweets) {
        console.log('tweet', tweet)

        if (tweetCount >= maxTweets) break

        if (existingIds.has(tweet.id)) {
          console.log(`Skipping already downloaded tweet: ${tweet.id}`)
          continue
        }

        if (!tweet.text.includes('createCanvas')) {
          console.log(`Skipping tweet missing createCanvas: ${tweet.id}`)
          continue
        }

        // Save tweet to file
        const store =
          `${
            tweet.text
              .replaceAll('\n\n', '\n')
              .replaceAll(/^#/g, '// #')
              .replaceAll(/([^\/]{2})(#\p{L}+)$/gu, `$1 // $2`)
          }` +
          `\n// https://x.com/${tweet.username.slice(1)}/status/${tweet.id}`

        const filePath = path.join(outputDir, `${tweet.username.slice(1)}-${tweet.id}.js`)
        await fs.writeFile(filePath, store)
        console.log(`Saved tweet: ${tweet.id}`)
        tweetCount++
        tweets.push(tweet)
        existingIds.add(tweet.id)
      }

      // Break if no new tweets are found
      if (newTweets.length === 0) {
        console.log('No more tweets found.')
        break
      }
    }

    console.log(`Scraped ${tweetCount} new tweets`)
    await browser.close()
    return tweets
  } catch (error) {
    console.error('Error scraping tweets:', error)
    return []
  }
}

async function main () {
  // const url = 'https://x.com/search?q=%23%E3%81%A4%E3%81%B6%E3%82%84%E3%81%8DProcessing%20createCanvas&src=typed_query&f=top'
  const url = 'https://x.com/search?q=%23%E3%81%A4%E3%81%B6%E3%82%84%E3%81%8DProcessing%20createCanvas&src=typed_query&f=live'
  
  await scrapeTweets(url, 200)
}

await main()
