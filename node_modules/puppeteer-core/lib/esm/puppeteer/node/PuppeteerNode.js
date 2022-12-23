/**
 * Copyright 2020 Google Inc. All rights reserved.
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
var _PuppeteerNode_instances, _PuppeteerNode__launcher, _PuppeteerNode_lastLaunchedProduct, _PuppeteerNode_launcher_get;
import { join } from 'path';
import { Puppeteer, } from '../common/Puppeteer.js';
import { PUPPETEER_REVISIONS } from '../revisions.js';
import { BrowserFetcher } from './BrowserFetcher.js';
import { ChromeLauncher } from './ChromeLauncher.js';
import { FirefoxLauncher } from './FirefoxLauncher.js';
/**
 * Extends the main {@link Puppeteer} class with Node specific behaviour for
 * fetching and downloading browsers.
 *
 * If you're using Puppeteer in a Node environment, this is the class you'll get
 * when you run `require('puppeteer')` (or the equivalent ES `import`).
 *
 * @remarks
 * The most common method to use is {@link PuppeteerNode.launch | launch}, which
 * is used to launch and connect to a new browser instance.
 *
 * See {@link Puppeteer | the main Puppeteer class} for methods common to all
 * environments, such as {@link Puppeteer.connect}.
 *
 * @example
 * The following is a typical example of using Puppeteer to drive automation:
 *
 * ```ts
 * import puppeteer from 'puppeteer';
 *
 * (async () => {
 *   const browser = await puppeteer.launch();
 *   const page = await browser.newPage();
 *   await page.goto('https://www.google.com');
 *   // other actions...
 *   await browser.close();
 * })();
 * ```
 *
 * Once you have created a `page` you have access to a large API to interact
 * with the page, navigate, or find certain elements in that page.
 * The {@link Page | `page` documentation} lists all the available methods.
 *
 * @public
 */
export class PuppeteerNode extends Puppeteer {
    /**
     * @internal
     */
    constructor(settings) {
        const { configuration, ...commonSettings } = settings;
        super(commonSettings);
        _PuppeteerNode_instances.add(this);
        _PuppeteerNode__launcher.set(this, void 0);
        _PuppeteerNode_lastLaunchedProduct.set(this, void 0);
        /**
         * @internal
         */
        this.configuration = {};
        if (configuration) {
            this.configuration = configuration;
        }
        switch (this.configuration.defaultProduct) {
            case 'firefox':
                this.defaultBrowserRevision = PUPPETEER_REVISIONS.firefox;
                break;
            default:
                this.configuration.defaultProduct = 'chrome';
                this.defaultBrowserRevision = PUPPETEER_REVISIONS.chromium;
                break;
        }
        this.connect = this.connect.bind(this);
        this.launch = this.launch.bind(this);
        this.executablePath = this.executablePath.bind(this);
        this.defaultArgs = this.defaultArgs.bind(this);
        this.createBrowserFetcher = this.createBrowserFetcher.bind(this);
    }
    /**
     * This method attaches Puppeteer to an existing browser instance.
     *
     * @param options - Set of configurable options to set on the browser.
     * @returns Promise which resolves to browser instance.
     *
     * @public
     */
    connect(options) {
        return super.connect(options);
    }
    /**
     * Launches a browser instance with given arguments and options when
     * specified.
     *
     * When using with `puppeteer-core`,
     * {@link LaunchOptions.executablePath | options.executablePath} or
     * {@link LaunchOptions.channel | options.channel} must be provided.
     *
     * @example
     * You can use {@link LaunchOptions.ignoreDefaultArgs | options.ignoreDefaultArgs}
     * to filter out `--mute-audio` from default arguments:
     *
     * ```ts
     * const browser = await puppeteer.launch({
     *   ignoreDefaultArgs: ['--mute-audio'],
     * });
     * ```
     *
     * @remarks
     * Puppeteer can also be used to control the Chrome browser, but it works best
     * with the version of Chromium downloaded by default by Puppeteer. There is
     * no guarantee it will work with any other version. If Google Chrome (rather
     * than Chromium) is preferred, a
     * {@link https://www.google.com/chrome/browser/canary.html | Chrome Canary}
     * or
     * {@link https://www.chromium.org/getting-involved/dev-channel | Dev Channel}
     * build is suggested. See
     * {@link https://www.howtogeek.com/202825/what%E2%80%99s-the-difference-between-chromium-and-chrome/ | this article}
     * for a description of the differences between Chromium and Chrome.
     * {@link https://chromium.googlesource.com/chromium/src/+/lkgr/docs/chromium_browser_vs_google_chrome.md | This article}
     * describes some differences for Linux users.
     *
     * @param options - Options to configure launching behavior.
     *
     * @public
     */
    launch(options = {}) {
        const { product = this.defaultProduct } = options;
        __classPrivateFieldSet(this, _PuppeteerNode_lastLaunchedProduct, product, "f");
        return __classPrivateFieldGet(this, _PuppeteerNode_instances, "a", _PuppeteerNode_launcher_get).launch(options);
    }
    /**
     * @returns The default executable path.
     *
     * @public
     */
    executablePath(channel) {
        return __classPrivateFieldGet(this, _PuppeteerNode_instances, "a", _PuppeteerNode_launcher_get).executablePath(channel);
    }
    /**
     * @internal
     */
    get browserRevision() {
        var _a;
        return (_a = this.configuration.browserRevision) !== null && _a !== void 0 ? _a : this.defaultBrowserRevision;
    }
    /**
     * @returns The default download path for puppeteer. For puppeteer-core, this
     * code should never be called as it is never defined.
     *
     * @internal
     */
    get defaultDownloadPath() {
        var _a;
        return ((_a = this.configuration.downloadPath) !== null && _a !== void 0 ? _a : join(this.configuration.cacheDirectory, this.product));
    }
    /**
     * @returns The name of the browser that was last launched.
     *
     * @public
     */
    get lastLaunchedProduct() {
        var _a;
        return (_a = __classPrivateFieldGet(this, _PuppeteerNode_lastLaunchedProduct, "f")) !== null && _a !== void 0 ? _a : this.defaultProduct;
    }
    /**
     * @returns The name of the browser that will be launched by default. For
     * `puppeteer`, this is influenced by your configuration. Otherwise, it's
     * `chrome`.
     *
     * @public
     */
    get defaultProduct() {
        var _a;
        return (_a = this.configuration.defaultProduct) !== null && _a !== void 0 ? _a : 'chrome';
    }
    /**
     * @deprecated Do not use as this field as it does not take into account
     * multiple browsers of different types. Use
     * {@link PuppeteerNode.defaultProduct | defaultProduct} or
     * {@link PuppeteerNode.lastLaunchedProduct | lastLaunchedProduct}.
     *
     * @returns The name of the browser that is under automation.
     *
     * @public
     */
    get product() {
        return __classPrivateFieldGet(this, _PuppeteerNode_instances, "a", _PuppeteerNode_launcher_get).product;
    }
    /**
     * @param options - Set of configurable options to set on the browser.
     *
     * @returns The default flags that Chromium will be launched with.
     *
     * @public
     */
    defaultArgs(options = {}) {
        return __classPrivateFieldGet(this, _PuppeteerNode_instances, "a", _PuppeteerNode_launcher_get).defaultArgs(options);
    }
    /**
     * @param options - Set of configurable options to specify the settings of the
     * BrowserFetcher.
     *
     * @remarks
     * If you are using `puppeteer-core`, do not use this method. Just
     * construct {@link BrowserFetcher} manually.
     *
     * @returns A new BrowserFetcher instance.
     */
    createBrowserFetcher(options) {
        var _a;
        const downloadPath = this.defaultDownloadPath;
        if (downloadPath) {
            options.path = downloadPath;
        }
        if (!options.path) {
            throw new Error('A `path` must be specified for `puppeteer-core`.');
        }
        if ((_a = this.configuration.experiments) === null || _a === void 0 ? void 0 : _a.macArmChromiumEnabled) {
            options.useMacOSARMBinary = true;
        }
        if (this.configuration.downloadHost) {
            options.host = this.configuration.downloadHost;
        }
        return new BrowserFetcher(options);
    }
}
_PuppeteerNode__launcher = new WeakMap(), _PuppeteerNode_lastLaunchedProduct = new WeakMap(), _PuppeteerNode_instances = new WeakSet(), _PuppeteerNode_launcher_get = function _PuppeteerNode_launcher_get() {
    if (__classPrivateFieldGet(this, _PuppeteerNode__launcher, "f") &&
        __classPrivateFieldGet(this, _PuppeteerNode__launcher, "f").product === this.lastLaunchedProduct) {
        return __classPrivateFieldGet(this, _PuppeteerNode__launcher, "f");
    }
    switch (this.lastLaunchedProduct) {
        case 'chrome':
            this.defaultBrowserRevision = PUPPETEER_REVISIONS.chromium;
            __classPrivateFieldSet(this, _PuppeteerNode__launcher, new ChromeLauncher(this), "f");
            break;
        case 'firefox':
            this.defaultBrowserRevision = PUPPETEER_REVISIONS.firefox;
            __classPrivateFieldSet(this, _PuppeteerNode__launcher, new FirefoxLauncher(this), "f");
            break;
        default:
            throw new Error(`Unknown product: ${__classPrivateFieldGet(this, _PuppeteerNode_lastLaunchedProduct, "f")}`);
    }
    return __classPrivateFieldGet(this, _PuppeteerNode__launcher, "f");
};
//# sourceMappingURL=PuppeteerNode.js.map