/**
 * Copyright 2021 Google Inc. All rights reserved.
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
import { NetworkConditions } from './NetworkManager.js';
/**
 * A list of network conditions to be used with
 * {@link Page.emulateNetworkConditions}.
 *
 * @example
 *
 * ```ts
 * import {PredefinedNetworkConditions} from 'puppeteer';
 * const slow3G = PredefinedNetworkConditions['Slow 3G'];
 *
 * (async () => {
 *   const browser = await puppeteer.launch();
 *   const page = await browser.newPage();
 *   await page.emulateNetworkConditions(slow3G);
 *   await page.goto('https://www.google.com');
 *   // other actions...
 *   await browser.close();
 * })();
 * ```
 *
 * @public
 */
export declare const PredefinedNetworkConditions: Readonly<{
    'Slow 3G': NetworkConditions;
    'Fast 3G': NetworkConditions;
}>;
/**
 * @deprecated Import {@link PredefinedNetworkConditions}.
 *
 * @public
 */
export declare const networkConditions: Readonly<{
    'Slow 3G': NetworkConditions;
    'Fast 3G': NetworkConditions;
}>;
//# sourceMappingURL=PredefinedNetworkConditions.d.ts.map