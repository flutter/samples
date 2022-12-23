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
export { Protocol } from 'puppeteer-core';
export * from 'puppeteer-core/internal/puppeteer-core.js';
import { PuppeteerNode } from 'puppeteer-core/internal/node/PuppeteerNode.js';
/**
 * @public
 */
declare const puppeteer: PuppeteerNode;
export declare const connect: (options: import("puppeteer-core/internal/puppeteer-core.js").ConnectOptions) => Promise<import("puppeteer-core/internal/puppeteer-core.js").Browser>, createBrowserFetcher: (options: Partial<import("puppeteer-core/internal/puppeteer-core.js").BrowserFetcherOptions>) => import("puppeteer-core/internal/puppeteer-core.js").BrowserFetcher, defaultArgs: (options?: import("puppeteer-core/internal/puppeteer-core.js").BrowserLaunchArgumentOptions | undefined) => string[], executablePath: (channel?: import("puppeteer-core/internal/puppeteer-core.js").ChromeReleaseChannel | undefined) => string, launch: (options?: import("puppeteer-core/internal/puppeteer-core.js").PuppeteerLaunchOptions | undefined) => Promise<import("puppeteer-core/internal/puppeteer-core.js").Browser>;
export default puppeteer;
//# sourceMappingURL=puppeteer.d.ts.map