"use strict";
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
var _Dialog_client, _Dialog_type, _Dialog_message, _Dialog_defaultValue, _Dialog_handled;
Object.defineProperty(exports, "__esModule", { value: true });
exports.Dialog = void 0;
const assert_js_1 = require("../util/assert.js");
/**
 * Dialog instances are dispatched by the {@link Page} via the `dialog` event.
 *
 * @remarks
 *
 * @example
 *
 * ```ts
 * import puppeteer from 'puppeteer';
 *
 * (async () => {
 *   const browser = await puppeteer.launch();
 *   const page = await browser.newPage();
 *   page.on('dialog', async dialog => {
 *     console.log(dialog.message());
 *     await dialog.dismiss();
 *     await browser.close();
 *   });
 *   page.evaluate(() => alert('1'));
 * })();
 * ```
 *
 * @public
 */
class Dialog {
    /**
     * @internal
     */
    constructor(client, type, message, defaultValue = '') {
        _Dialog_client.set(this, void 0);
        _Dialog_type.set(this, void 0);
        _Dialog_message.set(this, void 0);
        _Dialog_defaultValue.set(this, void 0);
        _Dialog_handled.set(this, false);
        __classPrivateFieldSet(this, _Dialog_client, client, "f");
        __classPrivateFieldSet(this, _Dialog_type, type, "f");
        __classPrivateFieldSet(this, _Dialog_message, message, "f");
        __classPrivateFieldSet(this, _Dialog_defaultValue, defaultValue, "f");
    }
    /**
     * @returns The type of the dialog.
     */
    type() {
        return __classPrivateFieldGet(this, _Dialog_type, "f");
    }
    /**
     * @returns The message displayed in the dialog.
     */
    message() {
        return __classPrivateFieldGet(this, _Dialog_message, "f");
    }
    /**
     * @returns The default value of the prompt, or an empty string if the dialog
     * is not a `prompt`.
     */
    defaultValue() {
        return __classPrivateFieldGet(this, _Dialog_defaultValue, "f");
    }
    /**
     * @param promptText - optional text that will be entered in the dialog
     * prompt. Has no effect if the dialog's type is not `prompt`.
     *
     * @returns A promise that resolves when the dialog has been accepted.
     */
    async accept(promptText) {
        (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _Dialog_handled, "f"), 'Cannot accept dialog which is already handled!');
        __classPrivateFieldSet(this, _Dialog_handled, true, "f");
        await __classPrivateFieldGet(this, _Dialog_client, "f").send('Page.handleJavaScriptDialog', {
            accept: true,
            promptText: promptText,
        });
    }
    /**
     * @returns A promise which will resolve once the dialog has been dismissed
     */
    async dismiss() {
        (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _Dialog_handled, "f"), 'Cannot dismiss dialog which is already handled!');
        __classPrivateFieldSet(this, _Dialog_handled, true, "f");
        await __classPrivateFieldGet(this, _Dialog_client, "f").send('Page.handleJavaScriptDialog', {
            accept: false,
        });
    }
}
exports.Dialog = Dialog;
_Dialog_client = new WeakMap(), _Dialog_type = new WeakMap(), _Dialog_message = new WeakMap(), _Dialog_defaultValue = new WeakMap(), _Dialog_handled = new WeakMap();
//# sourceMappingURL=Dialog.js.map