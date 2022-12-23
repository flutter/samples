"use strict";
/**
 * Copyright 2019 Google Inc. All rights reserved.
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
var _JSHandle_disposed, _JSHandle_context, _JSHandle_remoteObject;
Object.defineProperty(exports, "__esModule", { value: true });
exports.JSHandle = void 0;
const assert_js_1 = require("../util/assert.js");
const util_js_1 = require("./util.js");
/**
 * Represents a reference to a JavaScript object. Instances can be created using
 * {@link Page.evaluateHandle}.
 *
 * Handles prevent the referenced JavaScript object from being garbage-collected
 * unless the handle is purposely {@link JSHandle.dispose | disposed}. JSHandles
 * are auto-disposed when their associated frame is navigated away or the parent
 * context gets destroyed.
 *
 * Handles can be used as arguments for any evaluation function such as
 * {@link Page.$eval}, {@link Page.evaluate}, and {@link Page.evaluateHandle}.
 * They are resolved to their referenced object.
 *
 * @example
 *
 * ```ts
 * const windowHandle = await page.evaluateHandle(() => window);
 * ```
 *
 * @public
 */
class JSHandle {
    /**
     * @internal
     */
    constructor(context, remoteObject) {
        _JSHandle_disposed.set(this, false);
        _JSHandle_context.set(this, void 0);
        _JSHandle_remoteObject.set(this, void 0);
        __classPrivateFieldSet(this, _JSHandle_context, context, "f");
        __classPrivateFieldSet(this, _JSHandle_remoteObject, remoteObject, "f");
    }
    /**
     * @internal
     */
    get client() {
        return __classPrivateFieldGet(this, _JSHandle_context, "f")._client;
    }
    /**
     * @internal
     */
    get disposed() {
        return __classPrivateFieldGet(this, _JSHandle_disposed, "f");
    }
    /**
     * @internal
     */
    executionContext() {
        return __classPrivateFieldGet(this, _JSHandle_context, "f");
    }
    /**
     * Evaluates the given function with the current handle as its first argument.
     *
     * @see {@link ExecutionContext.evaluate} for more details.
     */
    async evaluate(pageFunction, ...args) {
        return await this.executionContext().evaluate(pageFunction, this, ...args);
    }
    /**
     * Evaluates the given function with the current handle as its first argument.
     *
     * @see {@link ExecutionContext.evaluateHandle} for more details.
     */
    async evaluateHandle(pageFunction, ...args) {
        return await this.executionContext().evaluateHandle(pageFunction, this, ...args);
    }
    async getProperty(propertyName) {
        return this.evaluateHandle((object, propertyName) => {
            return object[propertyName];
        }, propertyName);
    }
    /**
     * Gets a map of handles representing the properties of the current handle.
     *
     * @example
     *
     * ```ts
     * const listHandle = await page.evaluateHandle(() => document.body.children);
     * const properties = await listHandle.getProperties();
     * const children = [];
     * for (const property of properties.values()) {
     *   const element = property.asElement();
     *   if (element) {
     *     children.push(element);
     *   }
     * }
     * children; // holds elementHandles to all children of document.body
     * ```
     */
    async getProperties() {
        (0, assert_js_1.assert)(__classPrivateFieldGet(this, _JSHandle_remoteObject, "f").objectId);
        // We use Runtime.getProperties rather than iterative building because the
        // iterative approach might create a distorted snapshot.
        const response = await this.client.send('Runtime.getProperties', {
            objectId: __classPrivateFieldGet(this, _JSHandle_remoteObject, "f").objectId,
            ownProperties: true,
        });
        const result = new Map();
        for (const property of response.result) {
            if (!property.enumerable || !property.value) {
                continue;
            }
            result.set(property.name, (0, util_js_1.createJSHandle)(__classPrivateFieldGet(this, _JSHandle_context, "f"), property.value));
        }
        return result;
    }
    /**
     * @returns A vanilla object representing the serializable portions of the
     * referenced object.
     * @throws Throws if the object cannot be serialized due to circularity.
     *
     * @remarks
     * If the object has a `toJSON` function, it **will not** be called.
     */
    async jsonValue() {
        if (!__classPrivateFieldGet(this, _JSHandle_remoteObject, "f").objectId) {
            return (0, util_js_1.valueFromRemoteObject)(__classPrivateFieldGet(this, _JSHandle_remoteObject, "f"));
        }
        const value = await this.evaluate(object => {
            return object;
        });
        if (value === undefined) {
            throw new Error('Could not serialize referenced object');
        }
        return value;
    }
    /**
     * @returns Either `null` or the handle itself if the handle is an
     * instance of {@link ElementHandle}.
     */
    asElement() {
        return null;
    }
    /**
     * Releases the object referenced by the handle for garbage collection.
     */
    async dispose() {
        if (__classPrivateFieldGet(this, _JSHandle_disposed, "f")) {
            return;
        }
        __classPrivateFieldSet(this, _JSHandle_disposed, true, "f");
        await (0, util_js_1.releaseObject)(this.client, __classPrivateFieldGet(this, _JSHandle_remoteObject, "f"));
    }
    /**
     * Returns a string representation of the JSHandle.
     *
     * @remarks
     * Useful during debugging.
     */
    toString() {
        if (!__classPrivateFieldGet(this, _JSHandle_remoteObject, "f").objectId) {
            return 'JSHandle:' + (0, util_js_1.valueFromRemoteObject)(__classPrivateFieldGet(this, _JSHandle_remoteObject, "f"));
        }
        const type = __classPrivateFieldGet(this, _JSHandle_remoteObject, "f").subtype || __classPrivateFieldGet(this, _JSHandle_remoteObject, "f").type;
        return 'JSHandle@' + type;
    }
    /**
     * Provides access to the
     * [Protocol.Runtime.RemoteObject](https://chromedevtools.github.io/devtools-protocol/tot/Runtime/#type-RemoteObject)
     * backing this handle.
     */
    remoteObject() {
        return __classPrivateFieldGet(this, _JSHandle_remoteObject, "f");
    }
}
exports.JSHandle = JSHandle;
_JSHandle_disposed = new WeakMap(), _JSHandle_context = new WeakMap(), _JSHandle_remoteObject = new WeakMap();
//# sourceMappingURL=JSHandle.js.map