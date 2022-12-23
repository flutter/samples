/**
 * Copyright 2017 Google Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
var __classPrivateFieldSet = (this && this.__classPrivateFieldSet) || function (receiver, state, value, kind, f) {
    if (kind === "m") throw new TypeError("Private method is not writable");
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a setter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot write private member to an object whose class did not declare it");
    return (kind === "a" ? f.call(receiver, value) : f ? f.value = value : state.set(receiver, value)), value;
};
var __classPrivateFieldGet = (this && this.__classPrivateFieldGet) || function (receiver, state, kind, f) {
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a getter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot read private member from an object whose class did not declare it");
    return kind === "m" ? f : kind === "a" ? f.call(receiver) : f ? f.value : state.get(receiver);
};
var _BrowserFetcher_instances, _BrowserFetcher_product, _BrowserFetcher_downloadPath, _BrowserFetcher_downloadHost, _BrowserFetcher_platform, _BrowserFetcher_getFolderPath;
import { exec as execChildProcess } from 'child_process';
import extractZip from 'extract-zip';
import { createReadStream, createWriteStream, existsSync, readdirSync } from 'fs';
import { chmod, mkdir, readdir, unlink } from 'fs/promises';
import * as http from 'http';
import * as https from 'https';
import createHttpsProxyAgent from 'https-proxy-agent';
import * as os from 'os';
import * as path from 'path';
import { getProxyForUrl } from 'proxy-from-env';
import removeRecursive from 'rimraf';
import tar from 'tar-fs';
import bzip from 'unbzip2-stream';
import * as URL from 'url';
import * as util from 'util';
import { promisify } from 'util';
import { debug } from '../common/Debug.js';
import { assert } from '../util/assert.js';
const debugFetcher = debug('puppeteer:fetcher');
const downloadURLs = {
    chrome: {
        linux: '%s/chromium-browser-snapshots/Linux_x64/%d/%s.zip',
        mac: '%s/chromium-browser-snapshots/Mac/%d/%s.zip',
        mac_arm: '%s/chromium-browser-snapshots/Mac_Arm/%d/%s.zip',
        win32: '%s/chromium-browser-snapshots/Win/%d/%s.zip',
        win64: '%s/chromium-browser-snapshots/Win_x64/%d/%s.zip',
    },
    firefox: {
        linux: '%s/firefox-%s.en-US.%s-x86_64.tar.bz2',
        mac: '%s/firefox-%s.en-US.%s.dmg',
        win32: '%s/firefox-%s.en-US.%s.zip',
        win64: '%s/firefox-%s.en-US.%s.zip',
    },
};
const browserConfig = {
    chrome: {
        host: 'https://storage.googleapis.com',
    },
    firefox: {
        host: 'https://archive.mozilla.org/pub/firefox/nightly/latest-mozilla-central',
    },
};
const exec = promisify(execChildProcess);
function archiveName(product, platform, revision) {
    switch (product) {
        case 'chrome':
            switch (platform) {
                case 'linux':
                    return 'chrome-linux';
                case 'mac_arm':
                case 'mac':
                    return 'chrome-mac';
                case 'win32':
                case 'win64':
                    // Windows archive name changed at r591479.
                    return parseInt(revision, 10) > 591479
                        ? 'chrome-win'
                        : 'chrome-win32';
            }
        case 'firefox':
            return platform;
    }
}
function downloadURL(product, platform, host, revision) {
    const url = util.format(downloadURLs[product][platform], host, revision, archiveName(product, platform, revision));
    return url;
}
function handleArm64() {
    let exists = existsSync('/usr/bin/chromium-browser');
    if (exists) {
        return;
    }
    exists = existsSync('/usr/bin/chromium');
    if (exists) {
        return;
    }
    console.error('The chromium binary is not available for arm64.' +
        '\nIf you are on Ubuntu, you can install with: ' +
        '\n\n sudo apt install chromium\n' +
        '\n\n sudo apt install chromium-browser\n');
    throw new Error();
}
/**
 * BrowserFetcher can download and manage different versions of Chromium and
 * Firefox.
 *
 * @remarks
 * BrowserFetcher operates on revision strings that specify a precise version of
 * Chromium, e.g. `"533271"`. Revision strings can be obtained from
 * {@link http://omahaproxy.appspot.com/ | omahaproxy.appspot.com}. For Firefox,
 * BrowserFetcher downloads Firefox Nightly and operates on version numbers such
 * as `"75"`.
 *
 * @remarks
 * The default constructed fetcher will always be for Chromium unless otherwise
 * specified.
 *
 * @remarks
 * BrowserFetcher is not designed to work concurrently with other instances of
 * BrowserFetcher that share the same downloads directory.
 *
 * @example
 * An example of using BrowserFetcher to download a specific version of Chromium
 * and running Puppeteer against it:
 *
 * ```ts
 * const browserFetcher = new BrowserFetcher({path: 'path/to/download/folder'});
 * const revisionInfo = await browserFetcher.download('533271');
 * const browser = await puppeteer.launch({
 *   executablePath: revisionInfo.executablePath,
 * });
 * ```
 *
 * @public
 */
export class BrowserFetcher {
    /**
     * Constructs a browser fetcher for the given options.
     */
    constructor(options) {
        var _a, _b;
        _BrowserFetcher_instances.add(this);
        _BrowserFetcher_product.set(this, void 0);
        _BrowserFetcher_downloadPath.set(this, void 0);
        _BrowserFetcher_downloadHost.set(this, void 0);
        _BrowserFetcher_platform.set(this, void 0);
        __classPrivateFieldSet(this, _BrowserFetcher_product, (_a = options.product) !== null && _a !== void 0 ? _a : 'chrome', "f");
        __classPrivateFieldSet(this, _BrowserFetcher_downloadPath, options.path, "f");
        __classPrivateFieldSet(this, _BrowserFetcher_downloadHost, (_b = options.host) !== null && _b !== void 0 ? _b : browserConfig[__classPrivateFieldGet(this, _BrowserFetcher_product, "f")].host, "f");
        if (options.platform) {
            __classPrivateFieldSet(this, _BrowserFetcher_platform, options.platform, "f");
        }
        else {
            const platform = os.platform();
            switch (platform) {
                case 'darwin':
                    switch (__classPrivateFieldGet(this, _BrowserFetcher_product, "f")) {
                        case 'chrome':
                            __classPrivateFieldSet(this, _BrowserFetcher_platform, os.arch() === 'arm64' && options.useMacOSARMBinary
                                ? 'mac_arm'
                                : 'mac', "f");
                            break;
                        case 'firefox':
                            __classPrivateFieldSet(this, _BrowserFetcher_platform, 'mac', "f");
                            break;
                    }
                    break;
                case 'linux':
                    __classPrivateFieldSet(this, _BrowserFetcher_platform, 'linux', "f");
                    break;
                case 'win32':
                    __classPrivateFieldSet(this, _BrowserFetcher_platform, os.arch() === 'x64' ||
                        // Windows 11 for ARM supports x64 emulation
                        (os.arch() === 'arm64' && isWindows11(os.release()))
                        ? 'win64'
                        : 'win32', "f");
                    return;
                default:
                    assert(false, 'Unsupported platform: ' + platform);
            }
        }
        assert(downloadURLs[__classPrivateFieldGet(this, _BrowserFetcher_product, "f")][__classPrivateFieldGet(this, _BrowserFetcher_platform, "f")], 'Unsupported platform: ' + __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"));
    }
    /**
     * @returns Returns the current `Platform`, which is one of `mac`, `linux`,
     * `win32` or `win64`.
     */
    platform() {
        return __classPrivateFieldGet(this, _BrowserFetcher_platform, "f");
    }
    /**
     * @returns Returns the current `Product`, which is one of `chrome` or
     * `firefox`.
     */
    product() {
        return __classPrivateFieldGet(this, _BrowserFetcher_product, "f");
    }
    /**
     * @returns The download host being used.
     */
    host() {
        return __classPrivateFieldGet(this, _BrowserFetcher_downloadHost, "f");
    }
    /**
     * Initiates a HEAD request to check if the revision is available.
     * @remarks
     * This method is affected by the current `product`.
     * @param revision - The revision to check availability for.
     * @returns A promise that resolves to `true` if the revision could be downloaded
     * from the host.
     */
    canDownload(revision) {
        const url = downloadURL(__classPrivateFieldGet(this, _BrowserFetcher_product, "f"), __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"), __classPrivateFieldGet(this, _BrowserFetcher_downloadHost, "f"), revision);
        return new Promise(resolve => {
            const request = httpRequest(url, 'HEAD', response => {
                resolve(response.statusCode === 200);
            }, false);
            request.on('error', error => {
                console.error(error);
                resolve(false);
            });
        });
    }
    /**
     * Initiates a GET request to download the revision from the host.
     * @remarks
     * This method is affected by the current `product`.
     * @param revision - The revision to download.
     * @param progressCallback - A function that will be called with two arguments:
     * How many bytes have been downloaded and the total number of bytes of the download.
     * @returns A promise with revision information when the revision is downloaded
     * and extracted.
     */
    async download(revision, progressCallback = () => { }) {
        const url = downloadURL(__classPrivateFieldGet(this, _BrowserFetcher_product, "f"), __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"), __classPrivateFieldGet(this, _BrowserFetcher_downloadHost, "f"), revision);
        const fileName = url.split('/').pop();
        assert(fileName, `A malformed download URL was found: ${url}.`);
        const archivePath = path.join(__classPrivateFieldGet(this, _BrowserFetcher_downloadPath, "f"), fileName);
        const outputPath = __classPrivateFieldGet(this, _BrowserFetcher_instances, "m", _BrowserFetcher_getFolderPath).call(this, revision);
        if (existsSync(outputPath)) {
            return this.revisionInfo(revision);
        }
        if (!existsSync(__classPrivateFieldGet(this, _BrowserFetcher_downloadPath, "f"))) {
            await mkdir(__classPrivateFieldGet(this, _BrowserFetcher_downloadPath, "f"), { recursive: true });
        }
        // Use system Chromium builds on Linux ARM devices
        if (os.platform() === 'linux' && os.arch() === 'arm64') {
            handleArm64();
            return;
        }
        try {
            await _downloadFile(url, archivePath, progressCallback);
            await install(archivePath, outputPath);
        }
        finally {
            if (existsSync(archivePath)) {
                await unlink(archivePath);
            }
        }
        const revisionInfo = this.revisionInfo(revision);
        if (revisionInfo) {
            await chmod(revisionInfo.executablePath, 0o755);
        }
        return revisionInfo;
    }
    /**
     * @remarks
     * This method is affected by the current `product`.
     * @returns A list of all revision strings (for the current `product`)
     * available locally on disk.
     */
    localRevisions() {
        if (!existsSync(__classPrivateFieldGet(this, _BrowserFetcher_downloadPath, "f"))) {
            return [];
        }
        const fileNames = readdirSync(__classPrivateFieldGet(this, _BrowserFetcher_downloadPath, "f"));
        return fileNames
            .map(fileName => {
            return parseFolderPath(__classPrivateFieldGet(this, _BrowserFetcher_product, "f"), fileName);
        })
            .filter((entry) => {
            var _a;
            return (_a = (entry && entry.platform === __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"))) !== null && _a !== void 0 ? _a : false;
        })
            .map(entry => {
            return entry.revision;
        });
    }
    /**
     * @remarks
     * This method is affected by the current `product`.
     * @param revision - A revision to remove for the current `product`.
     * @returns A promise that resolves when the revision has been removes or
     * throws if the revision has not been downloaded.
     */
    async remove(revision) {
        const folderPath = __classPrivateFieldGet(this, _BrowserFetcher_instances, "m", _BrowserFetcher_getFolderPath).call(this, revision);
        assert(existsSync(folderPath), `Failed to remove: revision ${revision} is not downloaded`);
        await new Promise(fulfill => {
            return removeRecursive(folderPath, fulfill);
        });
    }
    /**
     * @param revision - The revision to get info for.
     * @returns The revision info for the given revision.
     */
    revisionInfo(revision) {
        const folderPath = __classPrivateFieldGet(this, _BrowserFetcher_instances, "m", _BrowserFetcher_getFolderPath).call(this, revision);
        let executablePath = '';
        switch (__classPrivateFieldGet(this, _BrowserFetcher_product, "f")) {
            case 'chrome':
                switch (__classPrivateFieldGet(this, _BrowserFetcher_platform, "f")) {
                    case 'mac':
                    case 'mac_arm':
                        executablePath = path.join(folderPath, archiveName(__classPrivateFieldGet(this, _BrowserFetcher_product, "f"), __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"), revision), 'Chromium.app', 'Contents', 'MacOS', 'Chromium');
                        break;
                    case 'linux':
                        executablePath = path.join(folderPath, archiveName(__classPrivateFieldGet(this, _BrowserFetcher_product, "f"), __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"), revision), 'chrome');
                        break;
                    case 'win32':
                    case 'win64':
                        executablePath = path.join(folderPath, archiveName(__classPrivateFieldGet(this, _BrowserFetcher_product, "f"), __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"), revision), 'chrome.exe');
                        break;
                }
                break;
            case 'firefox':
                switch (__classPrivateFieldGet(this, _BrowserFetcher_platform, "f")) {
                    case 'mac':
                    case 'mac_arm':
                        executablePath = path.join(folderPath, 'Firefox Nightly.app', 'Contents', 'MacOS', 'firefox');
                        break;
                    case 'linux':
                        executablePath = path.join(folderPath, 'firefox', 'firefox');
                        break;
                    case 'win32':
                    case 'win64':
                        executablePath = path.join(folderPath, 'firefox', 'firefox.exe');
                        break;
                }
        }
        const url = downloadURL(__classPrivateFieldGet(this, _BrowserFetcher_product, "f"), __classPrivateFieldGet(this, _BrowserFetcher_platform, "f"), __classPrivateFieldGet(this, _BrowserFetcher_downloadHost, "f"), revision);
        const local = existsSync(folderPath);
        debugFetcher({
            revision,
            executablePath,
            folderPath,
            local,
            url,
            product: __classPrivateFieldGet(this, _BrowserFetcher_product, "f"),
        });
        return {
            revision,
            executablePath,
            folderPath,
            local,
            url,
            product: __classPrivateFieldGet(this, _BrowserFetcher_product, "f"),
        };
    }
}
_BrowserFetcher_product = new WeakMap(), _BrowserFetcher_downloadPath = new WeakMap(), _BrowserFetcher_downloadHost = new WeakMap(), _BrowserFetcher_platform = new WeakMap(), _BrowserFetcher_instances = new WeakSet(), _BrowserFetcher_getFolderPath = function _BrowserFetcher_getFolderPath(revision) {
    return path.resolve(__classPrivateFieldGet(this, _BrowserFetcher_downloadPath, "f"), `${__classPrivateFieldGet(this, _BrowserFetcher_platform, "f")}-${revision}`);
};
function parseFolderPath(product, folderPath) {
    const name = path.basename(folderPath);
    const splits = name.split('-');
    if (splits.length !== 2) {
        return;
    }
    const [platform, revision] = splits;
    if (!revision || !platform || !(platform in downloadURLs[product])) {
        return;
    }
    return { product, platform, revision };
}
/**
 * Windows 11 is identified by 10.0.22000 or greater
 * @internal
 */
function isWindows11(version) {
    const parts = version.split('.');
    if (parts.length > 2) {
        const major = parseInt(parts[0], 10);
        const minor = parseInt(parts[1], 10);
        const patch = parseInt(parts[2], 10);
        return (major > 10 ||
            (major === 10 && minor > 0) ||
            (major === 10 && minor === 0 && patch >= 22000));
    }
    return false;
}
/**
 * @internal
 */
function _downloadFile(url, destinationPath, progressCallback) {
    debugFetcher(`Downloading binary from ${url}`);
    let fulfill;
    let reject;
    const promise = new Promise((x, y) => {
        fulfill = x;
        reject = y;
    });
    let downloadedBytes = 0;
    let totalBytes = 0;
    const request = httpRequest(url, 'GET', response => {
        if (response.statusCode !== 200) {
            const error = new Error(`Download failed: server returned code ${response.statusCode}. URL: ${url}`);
            // consume response data to free up memory
            response.resume();
            reject(error);
            return;
        }
        const file = createWriteStream(destinationPath);
        file.on('finish', () => {
            return fulfill();
        });
        file.on('error', error => {
            return reject(error);
        });
        response.pipe(file);
        totalBytes = parseInt(response.headers['content-length'], 10);
        if (progressCallback) {
            response.on('data', onData);
        }
    });
    request.on('error', error => {
        return reject(error);
    });
    return promise;
    function onData(chunk) {
        downloadedBytes += chunk.length;
        progressCallback(downloadedBytes, totalBytes);
    }
}
async function install(archivePath, folderPath) {
    debugFetcher(`Installing ${archivePath} to ${folderPath}`);
    if (archivePath.endsWith('.zip')) {
        await extractZip(archivePath, { dir: folderPath });
    }
    else if (archivePath.endsWith('.tar.bz2')) {
        await extractTar(archivePath, folderPath);
    }
    else if (archivePath.endsWith('.dmg')) {
        await mkdir(folderPath);
        await installDMG(archivePath, folderPath);
    }
    else {
        throw new Error(`Unsupported archive format: ${archivePath}`);
    }
}
/**
 * @internal
 */
function extractTar(tarPath, folderPath) {
    return new Promise((fulfill, reject) => {
        const tarStream = tar.extract(folderPath);
        tarStream.on('error', reject);
        tarStream.on('finish', fulfill);
        const readStream = createReadStream(tarPath);
        readStream.pipe(bzip()).pipe(tarStream);
    });
}
/**
 * @internal
 */
async function installDMG(dmgPath, folderPath) {
    const { stdout } = await exec(`hdiutil attach -nobrowse -noautoopen "${dmgPath}"`);
    const volumes = stdout.match(/\/Volumes\/(.*)/m);
    if (!volumes) {
        throw new Error(`Could not find volume path in ${stdout}`);
    }
    const mountPath = volumes[0];
    try {
        const fileNames = await readdir(mountPath);
        const appName = fileNames.find(item => {
            return typeof item === 'string' && item.endsWith('.app');
        });
        if (!appName) {
            throw new Error(`Cannot find app in ${mountPath}`);
        }
        const mountedPath = path.join(mountPath, appName);
        debugFetcher(`Copying ${mountedPath} to ${folderPath}`);
        await exec(`cp -R "${mountedPath}" "${folderPath}"`);
    }
    finally {
        debugFetcher(`Unmounting ${mountPath}`);
        await exec(`hdiutil detach "${mountPath}" -quiet`);
    }
}
function httpRequest(url, method, response, keepAlive = true) {
    const urlParsed = URL.parse(url);
    let options = {
        ...urlParsed,
        method,
        headers: keepAlive ? { Connection: 'keep-alive' } : undefined,
    };
    const proxyURL = getProxyForUrl(url);
    if (proxyURL) {
        if (url.startsWith('http:')) {
            const proxy = URL.parse(proxyURL);
            options = {
                path: options.href,
                host: proxy.hostname,
                port: proxy.port,
            };
        }
        else {
            const parsedProxyURL = URL.parse(proxyURL);
            const proxyOptions = {
                ...parsedProxyURL,
                secureProxy: parsedProxyURL.protocol === 'https:',
            };
            options.agent = createHttpsProxyAgent(proxyOptions);
            options.rejectUnauthorized = false;
        }
    }
    const requestCallback = (res) => {
        if (res.statusCode &&
            res.statusCode >= 300 &&
            res.statusCode < 400 &&
            res.headers.location) {
            httpRequest(res.headers.location, method, response);
        }
        else {
            response(res);
        }
    };
    const request = options.protocol === 'https:'
        ? https.request(options, requestCallback)
        : http.request(options, requestCallback);
    request.end();
    return request;
}
//# sourceMappingURL=BrowserFetcher.js.map