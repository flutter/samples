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
/// <reference types="node" />
import { ChildProcess } from 'child_process';
import { Connection } from './Connection.js';
import { Page } from '../api/Page.js';
import { Viewport } from './PuppeteerViewport.js';
import { Target } from './Target.js';
import { TargetManager } from './TargetManager.js';
import { Browser as BrowserBase, BrowserCloseCallback, TargetFilterCallback, IsPageTargetCallback, BrowserContextOptions, WaitForTargetOptions, Permission } from '../api/Browser.js';
import { BrowserContext } from '../api/BrowserContext.js';
/**
 * @internal
 */
export declare class CDPBrowser extends BrowserBase {
    #private;
    /**
     * @internal
     */
    static _create(product: 'firefox' | 'chrome' | undefined, connection: Connection, contextIds: string[], ignoreHTTPSErrors: boolean, defaultViewport?: Viewport | null, process?: ChildProcess, closeCallback?: BrowserCloseCallback, targetFilterCallback?: TargetFilterCallback, isPageTargetCallback?: IsPageTargetCallback): Promise<CDPBrowser>;
    /**
     * @internal
     */
    get _targets(): Map<string, Target>;
    /**
     * @internal
     */
    constructor(product: 'chrome' | 'firefox' | undefined, connection: Connection, contextIds: string[], ignoreHTTPSErrors: boolean, defaultViewport?: Viewport | null, process?: ChildProcess, closeCallback?: BrowserCloseCallback, targetFilterCallback?: TargetFilterCallback, isPageTargetCallback?: IsPageTargetCallback);
    /**
     * @internal
     */
    _attach(): Promise<void>;
    /**
     * @internal
     */
    _detach(): void;
    /**
     * The spawned browser process. Returns `null` if the browser instance was created with
     * {@link Puppeteer.connect}.
     */
    process(): ChildProcess | null;
    /**
     * @internal
     */
    _targetManager(): TargetManager;
    /**
     * @internal
     */
    _getIsPageTargetCallback(): IsPageTargetCallback | undefined;
    /**
     * Creates a new incognito browser context. This won't share cookies/cache with other
     * browser contexts.
     *
     * @example
     *
     * ```ts
     * (async () => {
     *   const browser = await puppeteer.launch();
     *   // Create a new incognito browser context.
     *   const context = await browser.createIncognitoBrowserContext();
     *   // Create a new page in a pristine context.
     *   const page = await context.newPage();
     *   // Do stuff
     *   await page.goto('https://example.com');
     * })();
     * ```
     */
    createIncognitoBrowserContext(options?: BrowserContextOptions): Promise<CDPBrowserContext>;
    /**
     * Returns an array of all open browser contexts. In a newly created browser, this will
     * return a single instance of {@link BrowserContext}.
     */
    browserContexts(): CDPBrowserContext[];
    /**
     * Returns the default browser context. The default browser context cannot be closed.
     */
    defaultBrowserContext(): CDPBrowserContext;
    /**
     * @internal
     */
    _disposeContext(contextId?: string): Promise<void>;
    /**
     * The browser websocket endpoint which can be used as an argument to
     * {@link Puppeteer.connect}.
     *
     * @returns The Browser websocket url.
     *
     * @remarks
     *
     * The format is `ws://${host}:${port}/devtools/browser/<id>`.
     *
     * You can find the `webSocketDebuggerUrl` from `http://${host}:${port}/json/version`.
     * Learn more about the
     * {@link https://chromedevtools.github.io/devtools-protocol | devtools protocol} and
     * the {@link
     * https://chromedevtools.github.io/devtools-protocol/#how-do-i-access-the-browser-target
     * | browser endpoint}.
     */
    wsEndpoint(): string;
    /**
     * Promise which resolves to a new {@link Page} object. The Page is created in
     * a default browser context.
     */
    newPage(): Promise<Page>;
    /**
     * @internal
     */
    _createPageInContext(contextId?: string): Promise<Page>;
    /**
     * All active targets inside the Browser. In case of multiple browser contexts, returns
     * an array with all the targets in all browser contexts.
     */
    targets(): Target[];
    /**
     * The target associated with the browser.
     */
    target(): Target;
    /**
     * Searches for a target in all browser contexts.
     *
     * @param predicate - A function to be run for every target.
     * @returns The first target found that matches the `predicate` function.
     *
     * @example
     *
     * An example of finding a target for a page opened via `window.open`:
     *
     * ```ts
     * await page.evaluate(() => window.open('https://www.example.com/'));
     * const newWindowTarget = await browser.waitForTarget(
     *   target => target.url() === 'https://www.example.com/'
     * );
     * ```
     */
    waitForTarget(predicate: (x: Target) => boolean | Promise<boolean>, options?: WaitForTargetOptions): Promise<Target>;
    /**
     * An array of all open pages inside the Browser.
     *
     * @remarks
     *
     * In case of multiple browser contexts, returns an array with all the pages in all
     * browser contexts. Non-visible pages, such as `"background_page"`, will not be listed
     * here. You can find them using {@link Target.page}.
     */
    pages(): Promise<Page[]>;
    /**
     * A string representing the browser name and version.
     *
     * @remarks
     *
     * For headless Chromium, this is similar to `HeadlessChrome/61.0.3153.0`. For
     * non-headless, this is similar to `Chrome/61.0.3153.0`.
     *
     * The format of browser.version() might change with future releases of Chromium.
     */
    version(): Promise<string>;
    /**
     * The browser's original user agent. Pages can override the browser user agent with
     * {@link Page.setUserAgent}.
     */
    userAgent(): Promise<string>;
    /**
     * Closes Chromium and all of its pages (if any were opened). The
     * {@link CDPBrowser} object itself is considered to be disposed and cannot be
     * used anymore.
     */
    close(): Promise<void>;
    /**
     * Disconnects Puppeteer from the browser, but leaves the Chromium process running.
     * After calling `disconnect`, the {@link CDPBrowser} object is considered disposed and
     * cannot be used anymore.
     */
    disconnect(): void;
    /**
     * Indicates that the browser is connected.
     */
    isConnected(): boolean;
}
/**
 * @internal
 */
export declare class CDPBrowserContext extends BrowserContext {
    #private;
    /**
     * @internal
     */
    constructor(connection: Connection, browser: CDPBrowser, contextId?: string);
    get id(): string | undefined;
    /**
     * An array of all active targets inside the browser context.
     */
    targets(): Target[];
    /**
     * This searches for a target in this specific browser context.
     *
     * @example
     * An example of finding a target for a page opened via `window.open`:
     *
     * ```ts
     * await page.evaluate(() => window.open('https://www.example.com/'));
     * const newWindowTarget = await browserContext.waitForTarget(
     *   target => target.url() === 'https://www.example.com/'
     * );
     * ```
     *
     * @param predicate - A function to be run for every target
     * @param options - An object of options. Accepts a timout,
     * which is the maximum wait time in milliseconds.
     * Pass `0` to disable the timeout. Defaults to 30 seconds.
     * @returns Promise which resolves to the first target found
     * that matches the `predicate` function.
     */
    waitForTarget(predicate: (x: Target) => boolean | Promise<boolean>, options?: {
        timeout?: number;
    }): Promise<Target>;
    /**
     * An array of all pages inside the browser context.
     *
     * @returns Promise which resolves to an array of all open pages.
     * Non visible pages, such as `"background_page"`, will not be listed here.
     * You can find them using {@link Target.page | the target page}.
     */
    pages(): Promise<Page[]>;
    /**
     * Returns whether BrowserContext is incognito.
     * The default browser context is the only non-incognito browser context.
     *
     * @remarks
     * The default browser context cannot be closed.
     */
    isIncognito(): boolean;
    /**
     * @example
     *
     * ```ts
     * const context = browser.defaultBrowserContext();
     * await context.overridePermissions('https://html5demos.com', [
     *   'geolocation',
     * ]);
     * ```
     *
     * @param origin - The origin to grant permissions to, e.g. "https://example.com".
     * @param permissions - An array of permissions to grant.
     * All permissions that are not listed here will be automatically denied.
     */
    overridePermissions(origin: string, permissions: Permission[]): Promise<void>;
    /**
     * Clears all permission overrides for the browser context.
     *
     * @example
     *
     * ```ts
     * const context = browser.defaultBrowserContext();
     * context.overridePermissions('https://example.com', ['clipboard-read']);
     * // do stuff ..
     * context.clearPermissionOverrides();
     * ```
     */
    clearPermissionOverrides(): Promise<void>;
    /**
     * Creates a new page in the browser context.
     */
    newPage(): Promise<Page>;
    /**
     * The browser this browser context belongs to.
     */
    browser(): CDPBrowser;
    /**
     * Closes the browser context. All the targets that belong to the browser context
     * will be closed.
     *
     * @remarks
     * Only incognito browser contexts can be closed.
     */
    close(): Promise<void>;
}
//# sourceMappingURL=Browser.d.ts.map