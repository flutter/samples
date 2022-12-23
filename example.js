// The following example searches developers.google.com / web 
// for articles tagged "Headless Chrome" and scrape results from the results page.
const puppeteer = require('puppeteer');

(async () => {
    const browser = await puppeteer.launch();
    const page = await browser.newPage();

    await page.goto('https://developers.google.com/web/');

    // Type into search box.
    await page.type('.devsite-search-field', 'Headless Chrome');

    // Wait for suggest overlay to appear and click "show all results".
    const allResultsSelector = '.devsite-suggest-all-results';
    await page.waitForSelector(allResultsSelector);
    await page.click(allResultsSelector);

    // Wait for the results page to load and display the results.
    const resultsSelector = '.gsc-results .gs-title';
    await page.waitForSelector(resultsSelector);

    // Extract the results from the page.
    const links = await page.evaluate(resultsSelector => {
        return [...document.querySelectorAll(resultsSelector)].map(anchor => {
            const title = anchor.textContent.split('|')[0].trim();
            return `${title} - ${anchor.href}`;
        });
    }, resultsSelector);

    // Print all the files.
    console.log(links.join('\n'));

    await browser.close();
})();