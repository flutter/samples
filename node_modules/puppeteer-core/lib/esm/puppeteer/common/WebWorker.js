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
var _WebWorker_executionContext, _WebWorker_client, _WebWorker_url;
import { EventEmitter } from './EventEmitter.js';
import { ExecutionContext } from './ExecutionContext.js';
import { JSHandle } from './JSHandle.js';
import { debugError } from './util.js';
import { createDeferredPromise } from '../util/DeferredPromise.js';
/**
 * This class represents a
 * {@link https://developer.mozilla.org/en-US/docs/Web/API/Web_Workers_API | WebWorker}.
 *
 * @remarks
 * The events `workercreated` and `workerdestroyed` are emitted on the page
 * object to signal the worker lifecycle.
 *
 * @example
 *
 * ```ts
 * page.on('workercreated', worker =>
 *   console.log('Worker created: ' + worker.url())
 * );
 * page.on('workerdestroyed', worker =>
 *   console.log('Worker destroyed: ' + worker.url())
 * );
 *
 * console.log('Current workers:');
 * for (const worker of page.workers()) {
 *   console.log('  ' + worker.url());
 * }
 * ```
 *
 * @public
 */
export class WebWorker extends EventEmitter {
    /**
     * @internal
     */
    constructor(client, url, consoleAPICalled, exceptionThrown) {
        super();
        _WebWorker_executionContext.set(this, createDeferredPromise());
        _WebWorker_client.set(this, void 0);
        _WebWorker_url.set(this, void 0);
        __classPrivateFieldSet(this, _WebWorker_client, client, "f");
        __classPrivateFieldSet(this, _WebWorker_url, url, "f");
        __classPrivateFieldGet(this, _WebWorker_client, "f").once('Runtime.executionContextCreated', async (event) => {
            const context = new ExecutionContext(client, event.context);
            __classPrivateFieldGet(this, _WebWorker_executionContext, "f").resolve(context);
        });
        __classPrivateFieldGet(this, _WebWorker_client, "f").on('Runtime.consoleAPICalled', async (event) => {
            const context = await __classPrivateFieldGet(this, _WebWorker_executionContext, "f");
            return consoleAPICalled(event.type, event.args.map((object) => {
                return new JSHandle(context, object);
            }), event.stackTrace);
        });
        __classPrivateFieldGet(this, _WebWorker_client, "f").on('Runtime.exceptionThrown', exception => {
            return exceptionThrown(exception.exceptionDetails);
        });
        // This might fail if the target is closed before we receive all execution contexts.
        __classPrivateFieldGet(this, _WebWorker_client, "f").send('Runtime.enable').catch(debugError);
    }
    /**
     * @internal
     */
    async executionContext() {
        return __classPrivateFieldGet(this, _WebWorker_executionContext, "f");
    }
    /**
     * @returns The URL of this web worker.
     */
    url() {
        return __classPrivateFieldGet(this, _WebWorker_url, "f");
    }
    /**
     * If the function passed to the `worker.evaluate` returns a Promise, then
     * `worker.evaluate` would wait for the promise to resolve and return its
     * value. If the function passed to the `worker.evaluate` returns a
     * non-serializable value, then `worker.evaluate` resolves to `undefined`.
     * DevTools Protocol also supports transferring some additional values that
     * are not serializable by `JSON`: `-0`, `NaN`, `Infinity`, `-Infinity`, and
     * bigint literals.
     * Shortcut for `await worker.executionContext()).evaluate(pageFunction, ...args)`.
     *
     * @param pageFunction - Function to be evaluated in the worker context.
     * @param args - Arguments to pass to `pageFunction`.
     * @returns Promise which resolves to the return value of `pageFunction`.
     */
    async evaluate(pageFunction, ...args) {
        const context = await __classPrivateFieldGet(this, _WebWorker_executionContext, "f");
        return context.evaluate(pageFunction, ...args);
    }
    /**
     * The only difference between `worker.evaluate` and `worker.evaluateHandle`
     * is that `worker.evaluateHandle` returns in-page object (JSHandle). If the
     * function passed to the `worker.evaluateHandle` returns a `Promise`, then
     * `worker.evaluateHandle` would wait for the promise to resolve and return
     * its value. Shortcut for
     * `await worker.executionContext()).evaluateHandle(pageFunction, ...args)`
     *
     * @param pageFunction - Function to be evaluated in the page context.
     * @param args - Arguments to pass to `pageFunction`.
     * @returns Promise which resolves to the return value of `pageFunction`.
     */
    async evaluateHandle(pageFunction, ...args) {
        const context = await __classPrivateFieldGet(this, _WebWorker_executionContext, "f");
        return context.evaluateHandle(pageFunction, ...args);
    }
}
_WebWorker_executionContext = new WeakMap(), _WebWorker_client = new WeakMap(), _WebWorker_url = new WeakMap();
//# sourceMappingURL=WebWorker.js.map