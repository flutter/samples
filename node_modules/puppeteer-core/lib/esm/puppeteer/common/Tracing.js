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
var _Tracing_client, _Tracing_recording, _Tracing_path;
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
import { assert } from '../util/assert.js';
import { getReadableAsBuffer, getReadableFromProtocolStream } from './util.js';
import { isErrorLike } from '../util/ErrorLike.js';
/**
 * The Tracing class exposes the tracing audit interface.
 * @remarks
 * You can use `tracing.start` and `tracing.stop` to create a trace file
 * which can be opened in Chrome DevTools or {@link https://chromedevtools.github.io/timeline-viewer/ | timeline viewer}.
 *
 * @example
 *
 * ```ts
 * await page.tracing.start({path: 'trace.json'});
 * await page.goto('https://www.google.com');
 * await page.tracing.stop();
 * ```
 *
 * @public
 */
export class Tracing {
    /**
     * @internal
     */
    constructor(client) {
        _Tracing_client.set(this, void 0);
        _Tracing_recording.set(this, false);
        _Tracing_path.set(this, void 0);
        __classPrivateFieldSet(this, _Tracing_client, client, "f");
    }
    /**
     * Starts a trace for the current page.
     * @remarks
     * Only one trace can be active at a time per browser.
     *
     * @param options - Optional `TracingOptions`.
     */
    async start(options = {}) {
        assert(!__classPrivateFieldGet(this, _Tracing_recording, "f"), 'Cannot start recording trace while already recording trace.');
        const defaultCategories = [
            '-*',
            'devtools.timeline',
            'v8.execute',
            'disabled-by-default-devtools.timeline',
            'disabled-by-default-devtools.timeline.frame',
            'toplevel',
            'blink.console',
            'blink.user_timing',
            'latencyInfo',
            'disabled-by-default-devtools.timeline.stack',
            'disabled-by-default-v8.cpu_profiler',
        ];
        const { path, screenshots = false, categories = defaultCategories } = options;
        if (screenshots) {
            categories.push('disabled-by-default-devtools.screenshot');
        }
        const excludedCategories = categories
            .filter(cat => {
            return cat.startsWith('-');
        })
            .map(cat => {
            return cat.slice(1);
        });
        const includedCategories = categories.filter(cat => {
            return !cat.startsWith('-');
        });
        __classPrivateFieldSet(this, _Tracing_path, path, "f");
        __classPrivateFieldSet(this, _Tracing_recording, true, "f");
        await __classPrivateFieldGet(this, _Tracing_client, "f").send('Tracing.start', {
            transferMode: 'ReturnAsStream',
            traceConfig: {
                excludedCategories,
                includedCategories,
            },
        });
    }
    /**
     * Stops a trace started with the `start` method.
     * @returns Promise which resolves to buffer with trace data.
     */
    async stop() {
        let resolve;
        let reject;
        const contentPromise = new Promise((x, y) => {
            resolve = x;
            reject = y;
        });
        __classPrivateFieldGet(this, _Tracing_client, "f").once('Tracing.tracingComplete', async (event) => {
            try {
                const readable = await getReadableFromProtocolStream(__classPrivateFieldGet(this, _Tracing_client, "f"), event.stream);
                const buffer = await getReadableAsBuffer(readable, __classPrivateFieldGet(this, _Tracing_path, "f"));
                resolve(buffer !== null && buffer !== void 0 ? buffer : undefined);
            }
            catch (error) {
                if (isErrorLike(error)) {
                    reject(error);
                }
                else {
                    reject(new Error(`Unknown error: ${error}`));
                }
            }
        });
        await __classPrivateFieldGet(this, _Tracing_client, "f").send('Tracing.end');
        __classPrivateFieldSet(this, _Tracing_recording, false, "f");
        return contentPromise;
    }
}
_Tracing_client = new WeakMap(), _Tracing_recording = new WeakMap(), _Tracing_path = new WeakMap();
//# sourceMappingURL=Tracing.js.map