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
var _FileChooser_element, _FileChooser_multiple, _FileChooser_handled;
Object.defineProperty(exports, "__esModule", { value: true });
exports.FileChooser = void 0;
const assert_js_1 = require("../util/assert.js");
/**
 * File choosers let you react to the page requesting for a file.
 *
 * @remarks
 * `FileChooser` instances are returned via the {@link Page.waitForFileChooser} method.
 *
 * In browsers, only one file chooser can be opened at a time.
 * All file choosers must be accepted or canceled. Not doing so will prevent
 * subsequent file choosers from appearing.
 *
 * @example
 *
 * ```ts
 * const [fileChooser] = await Promise.all([
 *   page.waitForFileChooser(),
 *   page.click('#upload-file-button'), // some button that triggers file selection
 * ]);
 * await fileChooser.accept(['/tmp/myfile.pdf']);
 * ```
 *
 * @public
 */
class FileChooser {
    /**
     * @internal
     */
    constructor(element, event) {
        _FileChooser_element.set(this, void 0);
        _FileChooser_multiple.set(this, void 0);
        _FileChooser_handled.set(this, false);
        __classPrivateFieldSet(this, _FileChooser_element, element, "f");
        __classPrivateFieldSet(this, _FileChooser_multiple, event.mode !== 'selectSingle', "f");
    }
    /**
     * Whether file chooser allow for
     * {@link https://developer.mozilla.org/en-US/docs/Web/HTML/Element/input/file#attr-multiple | multiple}
     * file selection.
     */
    isMultiple() {
        return __classPrivateFieldGet(this, _FileChooser_multiple, "f");
    }
    /**
     * Accept the file chooser request with given paths.
     *
     * @param filePaths - If some of the `filePaths` are relative paths, then
     * they are resolved relative to the
     * {@link https://nodejs.org/api/process.html#process_process_cwd | current working directory}.
     */
    async accept(filePaths) {
        (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _FileChooser_handled, "f"), 'Cannot accept FileChooser which is already handled!');
        __classPrivateFieldSet(this, _FileChooser_handled, true, "f");
        await __classPrivateFieldGet(this, _FileChooser_element, "f").uploadFile(...filePaths);
    }
    /**
     * Closes the file chooser without selecting any files.
     */
    cancel() {
        (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _FileChooser_handled, "f"), 'Cannot cancel FileChooser which is already handled!');
        __classPrivateFieldSet(this, _FileChooser_handled, true, "f");
    }
}
exports.FileChooser = FileChooser;
_FileChooser_element = new WeakMap(), _FileChooser_multiple = new WeakMap(), _FileChooser_handled = new WeakMap();
//# sourceMappingURL=FileChooser.js.map