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
var _WaitTask_world, _WaitTask_bindings, _WaitTask_polling, _WaitTask_root, _WaitTask_fn, _WaitTask_args, _WaitTask_timeout, _WaitTask_result, _WaitTask_poller, _TaskManager_tasks;
Object.defineProperty(exports, "__esModule", { value: true });
exports.TaskManager = exports.WaitTask = void 0;
const DeferredPromise_js_1 = require("../util/DeferredPromise.js");
const Errors_js_1 = require("./Errors.js");
/**
 * @internal
 */
class WaitTask {
    constructor(world, options, fn, ...args) {
        var _a;
        _WaitTask_world.set(this, void 0);
        _WaitTask_bindings.set(this, void 0);
        _WaitTask_polling.set(this, void 0);
        _WaitTask_root.set(this, void 0);
        _WaitTask_fn.set(this, void 0);
        _WaitTask_args.set(this, void 0);
        _WaitTask_timeout.set(this, void 0);
        _WaitTask_result.set(this, (0, DeferredPromise_js_1.createDeferredPromise)());
        _WaitTask_poller.set(this, void 0);
        __classPrivateFieldSet(this, _WaitTask_world, world, "f");
        __classPrivateFieldSet(this, _WaitTask_bindings, (_a = options.bindings) !== null && _a !== void 0 ? _a : new Map(), "f");
        __classPrivateFieldSet(this, _WaitTask_polling, options.polling, "f");
        __classPrivateFieldSet(this, _WaitTask_root, options.root, "f");
        switch (typeof fn) {
            case 'string':
                __classPrivateFieldSet(this, _WaitTask_fn, `() => {return (${fn});}`, "f");
                break;
            default:
                __classPrivateFieldSet(this, _WaitTask_fn, fn.toString(), "f");
                break;
        }
        __classPrivateFieldSet(this, _WaitTask_args, args, "f");
        __classPrivateFieldGet(this, _WaitTask_world, "f").taskManager.add(this);
        if (options.timeout) {
            __classPrivateFieldSet(this, _WaitTask_timeout, setTimeout(() => {
                this.terminate(new Errors_js_1.TimeoutError(`Waiting failed: ${options.timeout}ms exceeded`));
            }, options.timeout), "f");
        }
        if (__classPrivateFieldGet(this, _WaitTask_bindings, "f").size !== 0) {
            for (const [name, fn] of __classPrivateFieldGet(this, _WaitTask_bindings, "f")) {
                __classPrivateFieldGet(this, _WaitTask_world, "f")._boundFunctions.set(name, fn);
            }
        }
        this.rerun();
    }
    get result() {
        return __classPrivateFieldGet(this, _WaitTask_result, "f");
    }
    async rerun() {
        try {
            if (__classPrivateFieldGet(this, _WaitTask_bindings, "f").size !== 0) {
                const context = await __classPrivateFieldGet(this, _WaitTask_world, "f").executionContext();
                await Promise.all([...__classPrivateFieldGet(this, _WaitTask_bindings, "f")].map(async ([name]) => {
                    return await __classPrivateFieldGet(this, _WaitTask_world, "f")._addBindingToContext(context, name);
                }));
            }
            switch (__classPrivateFieldGet(this, _WaitTask_polling, "f")) {
                case 'raf':
                    __classPrivateFieldSet(this, _WaitTask_poller, await __classPrivateFieldGet(this, _WaitTask_world, "f").evaluateHandle(({ RAFPoller, createFunction }, fn, ...args) => {
                        const fun = createFunction(fn);
                        return new RAFPoller(() => {
                            return fun(...args);
                        });
                    }, await __classPrivateFieldGet(this, _WaitTask_world, "f").puppeteerUtil, __classPrivateFieldGet(this, _WaitTask_fn, "f"), ...__classPrivateFieldGet(this, _WaitTask_args, "f")), "f");
                    break;
                case 'mutation':
                    __classPrivateFieldSet(this, _WaitTask_poller, await __classPrivateFieldGet(this, _WaitTask_world, "f").evaluateHandle(({ MutationPoller, createFunction }, root, fn, ...args) => {
                        const fun = createFunction(fn);
                        return new MutationPoller(() => {
                            return fun(...args);
                        }, root || document);
                    }, await __classPrivateFieldGet(this, _WaitTask_world, "f").puppeteerUtil, __classPrivateFieldGet(this, _WaitTask_root, "f"), __classPrivateFieldGet(this, _WaitTask_fn, "f"), ...__classPrivateFieldGet(this, _WaitTask_args, "f")), "f");
                    break;
                default:
                    __classPrivateFieldSet(this, _WaitTask_poller, await __classPrivateFieldGet(this, _WaitTask_world, "f").evaluateHandle(({ IntervalPoller, createFunction }, ms, fn, ...args) => {
                        const fun = createFunction(fn);
                        return new IntervalPoller(() => {
                            return fun(...args);
                        }, ms);
                    }, await __classPrivateFieldGet(this, _WaitTask_world, "f").puppeteerUtil, __classPrivateFieldGet(this, _WaitTask_polling, "f"), __classPrivateFieldGet(this, _WaitTask_fn, "f"), ...__classPrivateFieldGet(this, _WaitTask_args, "f")), "f");
                    break;
            }
            await __classPrivateFieldGet(this, _WaitTask_poller, "f").evaluate(poller => {
                poller.start();
            });
            const result = await __classPrivateFieldGet(this, _WaitTask_poller, "f").evaluateHandle(poller => {
                return poller.result();
            });
            __classPrivateFieldGet(this, _WaitTask_result, "f").resolve(result);
            await this.terminate();
        }
        catch (error) {
            const badError = this.getBadError(error);
            if (badError) {
                await this.terminate(badError);
            }
        }
    }
    async terminate(error) {
        __classPrivateFieldGet(this, _WaitTask_world, "f").taskManager.delete(this);
        if (__classPrivateFieldGet(this, _WaitTask_timeout, "f")) {
            clearTimeout(__classPrivateFieldGet(this, _WaitTask_timeout, "f"));
        }
        if (error && !__classPrivateFieldGet(this, _WaitTask_result, "f").finished()) {
            __classPrivateFieldGet(this, _WaitTask_result, "f").reject(error);
        }
        if (__classPrivateFieldGet(this, _WaitTask_poller, "f")) {
            try {
                await __classPrivateFieldGet(this, _WaitTask_poller, "f").evaluateHandle(async (poller) => {
                    await poller.stop();
                });
                if (__classPrivateFieldGet(this, _WaitTask_poller, "f")) {
                    await __classPrivateFieldGet(this, _WaitTask_poller, "f").dispose();
                    __classPrivateFieldSet(this, _WaitTask_poller, undefined, "f");
                }
            }
            catch {
                // Ignore errors since they most likely come from low-level cleanup.
            }
        }
    }
    /**
     * Not all errors lead to termination. They usually imply we need to rerun the task.
     */
    getBadError(error) {
        if (error instanceof Error) {
            // When frame is detached the task should have been terminated by the IsolatedWorld.
            // This can fail if we were adding this task while the frame was detached,
            // so we terminate here instead.
            if (error.message.includes('Execution context is not available in detached frame')) {
                return new Error('Waiting failed: Frame detached');
            }
            // When the page is navigated, the promise is rejected.
            // We will try again in the new execution context.
            if (error.message.includes('Execution context was destroyed')) {
                return;
            }
            // We could have tried to evaluate in a context which was already
            // destroyed.
            if (error.message.includes('Cannot find context with specified id')) {
                return;
            }
        }
        return error;
    }
}
exports.WaitTask = WaitTask;
_WaitTask_world = new WeakMap(), _WaitTask_bindings = new WeakMap(), _WaitTask_polling = new WeakMap(), _WaitTask_root = new WeakMap(), _WaitTask_fn = new WeakMap(), _WaitTask_args = new WeakMap(), _WaitTask_timeout = new WeakMap(), _WaitTask_result = new WeakMap(), _WaitTask_poller = new WeakMap();
/**
 * @internal
 */
class TaskManager {
    constructor() {
        _TaskManager_tasks.set(this, new Set());
    }
    add(task) {
        __classPrivateFieldGet(this, _TaskManager_tasks, "f").add(task);
    }
    delete(task) {
        __classPrivateFieldGet(this, _TaskManager_tasks, "f").delete(task);
    }
    terminateAll(error) {
        for (const task of __classPrivateFieldGet(this, _TaskManager_tasks, "f")) {
            task.terminate(error);
        }
        __classPrivateFieldGet(this, _TaskManager_tasks, "f").clear();
    }
    async rerunAll() {
        await Promise.all([...__classPrivateFieldGet(this, _TaskManager_tasks, "f")].map(task => {
            return task.rerun();
        }));
    }
}
exports.TaskManager = TaskManager;
_TaskManager_tasks = new WeakMap();
//# sourceMappingURL=WaitTask.js.map