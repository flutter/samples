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
var _MutationPoller_fn, _MutationPoller_root, _MutationPoller_observer, _MutationPoller_promise, _RAFPoller_fn, _RAFPoller_promise, _IntervalPoller_fn, _IntervalPoller_ms, _IntervalPoller_interval, _IntervalPoller_promise;
import { assert } from '../util/assert.js';
import { createDeferredPromise, } from '../util/DeferredPromise.js';
/**
 * @internal
 */
export class MutationPoller {
    constructor(fn, root) {
        _MutationPoller_fn.set(this, void 0);
        _MutationPoller_root.set(this, void 0);
        _MutationPoller_observer.set(this, void 0);
        _MutationPoller_promise.set(this, void 0);
        __classPrivateFieldSet(this, _MutationPoller_fn, fn, "f");
        __classPrivateFieldSet(this, _MutationPoller_root, root, "f");
    }
    async start() {
        const promise = (__classPrivateFieldSet(this, _MutationPoller_promise, createDeferredPromise(), "f"));
        const result = await __classPrivateFieldGet(this, _MutationPoller_fn, "f").call(this);
        if (result) {
            promise.resolve(result);
            return;
        }
        __classPrivateFieldSet(this, _MutationPoller_observer, new MutationObserver(async () => {
            const result = await __classPrivateFieldGet(this, _MutationPoller_fn, "f").call(this);
            if (!result) {
                return;
            }
            promise.resolve(result);
            await this.stop();
        }), "f");
        __classPrivateFieldGet(this, _MutationPoller_observer, "f").observe(__classPrivateFieldGet(this, _MutationPoller_root, "f"), {
            childList: true,
            subtree: true,
            attributes: true,
        });
    }
    async stop() {
        assert(__classPrivateFieldGet(this, _MutationPoller_promise, "f"), 'Polling never started.');
        if (!__classPrivateFieldGet(this, _MutationPoller_promise, "f").finished()) {
            __classPrivateFieldGet(this, _MutationPoller_promise, "f").reject(new Error('Polling stopped'));
        }
        if (__classPrivateFieldGet(this, _MutationPoller_observer, "f")) {
            __classPrivateFieldGet(this, _MutationPoller_observer, "f").disconnect();
            __classPrivateFieldSet(this, _MutationPoller_observer, undefined, "f");
        }
    }
    result() {
        assert(__classPrivateFieldGet(this, _MutationPoller_promise, "f"), 'Polling never started.');
        return __classPrivateFieldGet(this, _MutationPoller_promise, "f");
    }
}
_MutationPoller_fn = new WeakMap(), _MutationPoller_root = new WeakMap(), _MutationPoller_observer = new WeakMap(), _MutationPoller_promise = new WeakMap();
/**
 * @internal
 */
export class RAFPoller {
    constructor(fn) {
        _RAFPoller_fn.set(this, void 0);
        _RAFPoller_promise.set(this, void 0);
        __classPrivateFieldSet(this, _RAFPoller_fn, fn, "f");
    }
    async start() {
        const promise = (__classPrivateFieldSet(this, _RAFPoller_promise, createDeferredPromise(), "f"));
        const result = await __classPrivateFieldGet(this, _RAFPoller_fn, "f").call(this);
        if (result) {
            promise.resolve(result);
            return;
        }
        const poll = async () => {
            if (promise.finished()) {
                return;
            }
            const result = await __classPrivateFieldGet(this, _RAFPoller_fn, "f").call(this);
            if (!result) {
                window.requestAnimationFrame(poll);
                return;
            }
            promise.resolve(result);
            await this.stop();
        };
        window.requestAnimationFrame(poll);
    }
    async stop() {
        assert(__classPrivateFieldGet(this, _RAFPoller_promise, "f"), 'Polling never started.');
        if (!__classPrivateFieldGet(this, _RAFPoller_promise, "f").finished()) {
            __classPrivateFieldGet(this, _RAFPoller_promise, "f").reject(new Error('Polling stopped'));
        }
    }
    result() {
        assert(__classPrivateFieldGet(this, _RAFPoller_promise, "f"), 'Polling never started.');
        return __classPrivateFieldGet(this, _RAFPoller_promise, "f");
    }
}
_RAFPoller_fn = new WeakMap(), _RAFPoller_promise = new WeakMap();
/**
 * @internal
 */
export class IntervalPoller {
    constructor(fn, ms) {
        _IntervalPoller_fn.set(this, void 0);
        _IntervalPoller_ms.set(this, void 0);
        _IntervalPoller_interval.set(this, void 0);
        _IntervalPoller_promise.set(this, void 0);
        __classPrivateFieldSet(this, _IntervalPoller_fn, fn, "f");
        __classPrivateFieldSet(this, _IntervalPoller_ms, ms, "f");
    }
    async start() {
        const promise = (__classPrivateFieldSet(this, _IntervalPoller_promise, createDeferredPromise(), "f"));
        const result = await __classPrivateFieldGet(this, _IntervalPoller_fn, "f").call(this);
        if (result) {
            promise.resolve(result);
            return;
        }
        __classPrivateFieldSet(this, _IntervalPoller_interval, setInterval(async () => {
            const result = await __classPrivateFieldGet(this, _IntervalPoller_fn, "f").call(this);
            if (!result) {
                return;
            }
            promise.resolve(result);
            await this.stop();
        }, __classPrivateFieldGet(this, _IntervalPoller_ms, "f")), "f");
    }
    async stop() {
        assert(__classPrivateFieldGet(this, _IntervalPoller_promise, "f"), 'Polling never started.');
        if (!__classPrivateFieldGet(this, _IntervalPoller_promise, "f").finished()) {
            __classPrivateFieldGet(this, _IntervalPoller_promise, "f").reject(new Error('Polling stopped'));
        }
        if (__classPrivateFieldGet(this, _IntervalPoller_interval, "f")) {
            clearInterval(__classPrivateFieldGet(this, _IntervalPoller_interval, "f"));
            __classPrivateFieldSet(this, _IntervalPoller_interval, undefined, "f");
        }
    }
    result() {
        assert(__classPrivateFieldGet(this, _IntervalPoller_promise, "f"), 'Polling never started.');
        return __classPrivateFieldGet(this, _IntervalPoller_promise, "f");
    }
}
_IntervalPoller_fn = new WeakMap(), _IntervalPoller_ms = new WeakMap(), _IntervalPoller_interval = new WeakMap(), _IntervalPoller_promise = new WeakMap();
//# sourceMappingURL=Poller.js.map