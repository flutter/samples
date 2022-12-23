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
import PuppeteerUtil from '../injected/injected.js';
import { ElementHandle } from './ElementHandle.js';
import { Frame } from './Frame.js';
import { WaitForSelectorOptions } from './IsolatedWorld.js';
/**
 * @public
 */
export interface CustomQueryHandler {
    /**
     * @returns A {@link Node} matching the given `selector` from {@link node}.
     */
    queryOne?: (node: Node, selector: string) => Node | null;
    /**
     * @returns Some {@link Node}s matching the given `selector` from {@link node}.
     */
    queryAll?: (node: Node, selector: string) => Node[];
}
/**
 * @internal
 */
export interface InternalQueryHandler {
    /**
     * @returns A {@link Node} matching the given `selector` from {@link node}.
     */
    queryOne?: (node: Node, selector: string, PuppeteerUtil: PuppeteerUtil) => Node | null;
    /**
     * @returns Some {@link Node}s matching the given `selector` from {@link node}.
     */
    queryAll?: (node: Node, selector: string, PuppeteerUtil: PuppeteerUtil) => Node[];
}
/**
 * @internal
 */
export interface PuppeteerQueryHandler {
    /**
     * Queries for a single node given a selector and {@link ElementHandle}.
     *
     * Akin to {@link Window.prototype.querySelector}.
     */
    queryOne?: (element: ElementHandle<Node>, selector: string) => Promise<ElementHandle<Node> | null>;
    /**
     * Queries for multiple nodes given a selector and {@link ElementHandle}.
     *
     * Akin to {@link Window.prototype.querySelectorAll}.
     */
    queryAll?: (element: ElementHandle<Node>, selector: string) => Promise<Array<ElementHandle<Node>>>;
    /**
     * Waits until a single node appears for a given selector and
     * {@link ElementHandle}.
     */
    waitFor?: (elementOrFrame: ElementHandle<Node> | Frame, selector: string, options: WaitForSelectorOptions) => Promise<ElementHandle<Node> | null>;
}
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.registerCustomQueryHandler}
 *
 * @public
 */
export declare function registerCustomQueryHandler(name: string, handler: CustomQueryHandler): void;
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.unregisterCustomQueryHandler}
 *
 * @public
 */
export declare function unregisterCustomQueryHandler(name: string): void;
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.customQueryHandlerNames}
 *
 * @public
 */
export declare function customQueryHandlerNames(): string[];
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.clearCustomQueryHandlers}
 *
 * @public
 */
export declare function clearCustomQueryHandlers(): void;
/**
 * @internal
 */
export declare function getQueryHandlerAndSelector(selector: string): {
    updatedSelector: string;
    queryHandler: PuppeteerQueryHandler;
};
//# sourceMappingURL=QueryHandler.d.ts.map