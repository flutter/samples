/**
 * Copyright 2022 Google Inc. All rights reserved.
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
import { createDeferredPromise } from '../util/DeferredPromise.js';
import { RAFPoller, MutationPoller, IntervalPoller } from './Poller.js';
/**
 * @internal
 */
declare const PuppeteerUtil: Readonly<{
    createDeferredPromise: typeof createDeferredPromise;
    createTextContent: (root: Node) => import("./TextContent.js").TextContent;
    IntervalPoller: typeof IntervalPoller;
    isSuitableNodeForTextMatching: (node: Node) => boolean;
    MutationPoller: typeof MutationPoller;
    RAFPoller: typeof RAFPoller;
    pierceQuerySelector: (root: Node, selector: string) => Element | null;
    pierceQuerySelectorAll: (element: Node, selector: string) => Element[];
    xpathQuerySelector: (root: Node, selector: string) => Node | null;
    xpathQuerySelectorAll: (root: Node, selector: string) => Node[];
    textQuerySelector: (root: Node, selector: string) => Element | null;
    textQuerySelectorAll: (root: Node, selector: string) => Element[];
    createFunction: (functionValue: string) => (...args: unknown[]) => unknown;
    checkVisibility: (node: Node | null, visible?: boolean | undefined) => boolean | Node;
}>;
/**
 * @internal
 */
declare type PuppeteerUtil = typeof PuppeteerUtil;
/**
 * @internal
 */
export default PuppeteerUtil;
//# sourceMappingURL=injected.d.ts.map