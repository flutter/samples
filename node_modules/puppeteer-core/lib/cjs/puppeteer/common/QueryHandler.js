"use strict";
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
Object.defineProperty(exports, "__esModule", { value: true });
exports.getQueryHandlerAndSelector = exports.clearCustomQueryHandlers = exports.customQueryHandlerNames = exports.unregisterCustomQueryHandler = exports.registerCustomQueryHandler = void 0;
const AriaQueryHandler_js_1 = require("./AriaQueryHandler.js");
const ElementHandle_js_1 = require("./ElementHandle.js");
const Frame_js_1 = require("./Frame.js");
const IsolatedWorlds_js_1 = require("./IsolatedWorlds.js");
function createPuppeteerQueryHandler(handler) {
    const internalHandler = {};
    if (handler.queryOne) {
        const queryOne = handler.queryOne;
        internalHandler.queryOne = async (element, selector) => {
            const jsHandle = await element.evaluateHandle(queryOne, selector, await element.executionContext()._world.puppeteerUtil);
            const elementHandle = jsHandle.asElement();
            if (elementHandle) {
                return elementHandle;
            }
            await jsHandle.dispose();
            return null;
        };
        internalHandler.waitFor = async (elementOrFrame, selector, options) => {
            let frame;
            let element;
            if (elementOrFrame instanceof Frame_js_1.Frame) {
                frame = elementOrFrame;
            }
            else {
                frame = elementOrFrame.frame;
                element = await frame.worlds[IsolatedWorlds_js_1.PUPPETEER_WORLD].adoptHandle(elementOrFrame);
            }
            const result = await frame.worlds[IsolatedWorlds_js_1.PUPPETEER_WORLD]._waitForSelectorInPage(queryOne, element, selector, options);
            if (element) {
                await element.dispose();
            }
            if (!result) {
                return null;
            }
            if (!(result instanceof ElementHandle_js_1.ElementHandle)) {
                await result.dispose();
                return null;
            }
            return frame.worlds[IsolatedWorlds_js_1.MAIN_WORLD].transferHandle(result);
        };
    }
    if (handler.queryAll) {
        const queryAll = handler.queryAll;
        internalHandler.queryAll = async (element, selector) => {
            const jsHandle = await element.evaluateHandle(queryAll, selector, await element.executionContext()._world.puppeteerUtil);
            const properties = await jsHandle.getProperties();
            await jsHandle.dispose();
            const result = [];
            for (const property of properties.values()) {
                const elementHandle = property.asElement();
                if (elementHandle) {
                    result.push(elementHandle);
                }
            }
            return result;
        };
    }
    return internalHandler;
}
const defaultHandler = createPuppeteerQueryHandler({
    queryOne: (element, selector) => {
        if (!('querySelector' in element)) {
            throw new Error(`Could not invoke \`querySelector\` on node of type ${element.nodeName}.`);
        }
        return element.querySelector(selector);
    },
    queryAll: (element, selector) => {
        if (!('querySelectorAll' in element)) {
            throw new Error(`Could not invoke \`querySelectorAll\` on node of type ${element.nodeName}.`);
        }
        return [
            ...element.querySelectorAll(selector),
        ];
    },
});
const pierceHandler = createPuppeteerQueryHandler({
    queryOne: (element, selector, { pierceQuerySelector }) => {
        return pierceQuerySelector(element, selector);
    },
    queryAll: (element, selector, { pierceQuerySelectorAll }) => {
        return pierceQuerySelectorAll(element, selector);
    },
});
const xpathHandler = createPuppeteerQueryHandler({
    queryOne: (element, selector, { xpathQuerySelector }) => {
        return xpathQuerySelector(element, selector);
    },
    queryAll: (element, selector, { xpathQuerySelectorAll }) => {
        return xpathQuerySelectorAll(element, selector);
    },
});
const textQueryHandler = createPuppeteerQueryHandler({
    queryOne: (element, selector, { textQuerySelector }) => {
        return textQuerySelector(element, selector);
    },
    queryAll: (element, selector, { textQuerySelectorAll }) => {
        return textQuerySelectorAll(element, selector);
    },
});
const INTERNAL_QUERY_HANDLERS = new Map([
    ['aria', { handler: AriaQueryHandler_js_1.ariaHandler }],
    ['pierce', { handler: pierceHandler }],
    ['xpath', { handler: xpathHandler }],
    ['text', { handler: textQueryHandler }],
]);
const QUERY_HANDLERS = new Map();
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.registerCustomQueryHandler}
 *
 * @public
 */
function registerCustomQueryHandler(name, handler) {
    if (INTERNAL_QUERY_HANDLERS.has(name)) {
        throw new Error(`A query handler named "${name}" already exists`);
    }
    if (QUERY_HANDLERS.has(name)) {
        throw new Error(`A custom query handler named "${name}" already exists`);
    }
    const isValidName = /^[a-zA-Z]+$/.test(name);
    if (!isValidName) {
        throw new Error(`Custom query handler names may only contain [a-zA-Z]`);
    }
    QUERY_HANDLERS.set(name, { handler: createPuppeteerQueryHandler(handler) });
}
exports.registerCustomQueryHandler = registerCustomQueryHandler;
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.unregisterCustomQueryHandler}
 *
 * @public
 */
function unregisterCustomQueryHandler(name) {
    QUERY_HANDLERS.delete(name);
}
exports.unregisterCustomQueryHandler = unregisterCustomQueryHandler;
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.customQueryHandlerNames}
 *
 * @public
 */
function customQueryHandlerNames() {
    return [...QUERY_HANDLERS.keys()];
}
exports.customQueryHandlerNames = customQueryHandlerNames;
/**
 * @deprecated Import {@link Puppeteer} and use the static method
 * {@link Puppeteer.clearCustomQueryHandlers}
 *
 * @public
 */
function clearCustomQueryHandlers() {
    QUERY_HANDLERS.clear();
}
exports.clearCustomQueryHandlers = clearCustomQueryHandlers;
const CUSTOM_QUERY_SEPARATORS = ['=', '/'];
/**
 * @internal
 */
function getQueryHandlerAndSelector(selector) {
    for (const handlerMap of [QUERY_HANDLERS, INTERNAL_QUERY_HANDLERS]) {
        for (const [name, { handler: queryHandler, transformSelector },] of handlerMap) {
            for (const separator of CUSTOM_QUERY_SEPARATORS) {
                const prefix = `${name}${separator}`;
                if (selector.startsWith(prefix)) {
                    selector = selector.slice(prefix.length);
                    if (transformSelector) {
                        selector = transformSelector(selector);
                    }
                    return { updatedSelector: selector, queryHandler };
                }
            }
        }
    }
    return { updatedSelector: selector, queryHandler: defaultHandler };
}
exports.getQueryHandlerAndSelector = getQueryHandlerAndSelector;
//# sourceMappingURL=QueryHandler.js.map