"use strict";
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
var _Page_connection, _Page_contextId;
Object.defineProperty(exports, "__esModule", { value: true });
exports.Page = void 0;
const Page_js_1 = require("../../api/Page.js");
/**
 * @internal
 */
class Page extends Page_js_1.Page {
    constructor(connection, contextId) {
        super();
        _Page_connection.set(this, void 0);
        _Page_contextId.set(this, void 0);
        __classPrivateFieldSet(this, _Page_connection, connection, "f");
        __classPrivateFieldSet(this, _Page_contextId, contextId, "f");
    }
    async close() {
        await __classPrivateFieldGet(this, _Page_connection, "f").send('browsingContext.close', {
            context: __classPrivateFieldGet(this, _Page_contextId, "f"),
        });
    }
    async evaluate(pageFunction, ..._args) {
        // TODO: re-use evaluate logic from Execution context.
        const str = `(${pageFunction.toString()})()`;
        const result = (await __classPrivateFieldGet(this, _Page_connection, "f").send('script.evaluate', {
            expression: str,
            target: { context: __classPrivateFieldGet(this, _Page_contextId, "f") },
            awaitPromise: true,
        }));
        return result.result.value;
    }
}
exports.Page = Page;
_Page_connection = new WeakMap(), _Page_contextId = new WeakMap();
//# sourceMappingURL=Page.js.map