import { cosmiconfigSync } from 'cosmiconfig';
import { homedir } from 'os';
import { join } from 'path';
/**
 * @internal
 */
function isSupportedProduct(product) {
    switch (product) {
        case 'chrome':
        case 'firefox':
            return true;
        default:
            return false;
    }
}
/**
 * @internal
 */
export const getConfiguration = () => {
    var _a, _b, _c, _d, _e, _f, _g, _h, _j, _k, _l, _m, _o, _p, _q, _r, _s, _t, _u, _v, _w, _x, _y, _z, _0, _1, _2, _3, _4, _5, _6, _7, _8, _9, _10, _11, _12;
    const result = cosmiconfigSync('puppeteer').search();
    const configuration = result ? result.config : {};
    // Merging environment variables.
    configuration.browserRevision =
        (_d = (_c = (_b = (_a = process.env['PUPPETEER_CHROMIUM_REVISION']) !== null && _a !== void 0 ? _a : process.env['PUPPETEER_BROWSER_REVISION']) !== null && _b !== void 0 ? _b : process.env['npm_config_puppeteer_browser_revision']) !== null && _c !== void 0 ? _c : process.env['npm_package_config_puppeteer_browser_revision']) !== null && _d !== void 0 ? _d : configuration.browserRevision;
    configuration.cacheDirectory =
        (_h = (_g = (_f = (_e = process.env['PUPPETEER_CACHE_DIR']) !== null && _e !== void 0 ? _e : process.env['npm_config_puppeteer_cache_dir']) !== null && _f !== void 0 ? _f : process.env['npm_package_config_puppeteer_cache_dir']) !== null && _g !== void 0 ? _g : configuration.cacheDirectory) !== null && _h !== void 0 ? _h : join(homedir(), '.cache', 'puppeteer');
    configuration.downloadHost =
        (_l = (_k = (_j = process.env['PUPPETEER_DOWNLOAD_HOST']) !== null && _j !== void 0 ? _j : process.env['npm_config_puppeteer_download_host']) !== null && _k !== void 0 ? _k : process.env['npm_package_config_puppeteer_download_host']) !== null && _l !== void 0 ? _l : configuration.downloadHost;
    configuration.downloadPath =
        (_p = (_o = (_m = process.env['PUPPETEER_DOWNLOAD_PATH']) !== null && _m !== void 0 ? _m : process.env['npm_config_puppeteer_download_path']) !== null && _o !== void 0 ? _o : process.env['npm_package_config_puppeteer_download_path']) !== null && _p !== void 0 ? _p : configuration.downloadPath;
    configuration.executablePath =
        (_s = (_r = (_q = process.env['PUPPETEER_EXECUTABLE_PATH']) !== null && _q !== void 0 ? _q : process.env['npm_config_puppeteer_executable_path']) !== null && _r !== void 0 ? _r : process.env['npm_package_config_puppeteer_executable_path']) !== null && _s !== void 0 ? _s : configuration.executablePath;
    configuration.defaultProduct = ((_w = (_v = (_u = (_t = process.env['PUPPETEER_PRODUCT']) !== null && _t !== void 0 ? _t : process.env['npm_config_puppeteer_product']) !== null && _u !== void 0 ? _u : process.env['npm_package_config_puppeteer_product']) !== null && _v !== void 0 ? _v : configuration.defaultProduct) !== null && _w !== void 0 ? _w : 'chrome');
    configuration.temporaryDirectory =
        (_z = (_y = (_x = process.env['PUPPETEER_TMP_DIR']) !== null && _x !== void 0 ? _x : process.env['npm_config_puppeteer_tmp_dir']) !== null && _y !== void 0 ? _y : process.env['npm_package_config_puppeteer_tmp_dir']) !== null && _z !== void 0 ? _z : configuration.temporaryDirectory;
    (_0 = configuration.experiments) !== null && _0 !== void 0 ? _0 : (configuration.experiments = {});
    configuration.experiments.macArmChromiumEnabled = Boolean((_3 = (_2 = (_1 = process.env['PUPPETEER_EXPERIMENTAL_CHROMIUM_MAC_ARM']) !== null && _1 !== void 0 ? _1 : process.env['npm_config_puppeteer_experimental_chromium_mac_arm']) !== null && _2 !== void 0 ? _2 : process.env['npm_package_config_puppeteer_experimental_chromium_mac_arm']) !== null && _3 !== void 0 ? _3 : configuration.experiments.macArmChromiumEnabled);
    configuration.skipDownload = Boolean((_9 = (_8 = (_7 = (_6 = (_5 = (_4 = process.env['PUPPETEER_SKIP_DOWNLOAD']) !== null && _4 !== void 0 ? _4 : process.env['npm_config_puppeteer_skip_download']) !== null && _5 !== void 0 ? _5 : process.env['npm_package_config_puppeteer_skip_download']) !== null && _6 !== void 0 ? _6 : process.env['PUPPETEER_SKIP_CHROMIUM_DOWNLOAD']) !== null && _7 !== void 0 ? _7 : process.env['npm_config_puppeteer_skip_chromium_download']) !== null && _8 !== void 0 ? _8 : process.env['npm_package_config_puppeteer_skip_chromium_download']) !== null && _9 !== void 0 ? _9 : configuration.skipDownload);
    configuration.logLevel = ((_12 = (_11 = (_10 = process.env['PUPPETEER_LOGLEVEL']) !== null && _10 !== void 0 ? _10 : process.env['npm_config_LOGLEVEL']) !== null && _11 !== void 0 ? _11 : process.env['npm_package_config_LOGLEVEL']) !== null && _12 !== void 0 ? _12 : configuration.logLevel);
    // Validate configuration.
    if (!isSupportedProduct(configuration.defaultProduct)) {
        throw new Error(`Unsupported product ${configuration.defaultProduct}`);
    }
    return configuration;
};
//# sourceMappingURL=getConfiguration.js.map