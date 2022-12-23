import { DeferredPromise } from './DeferredPromise.js';
/**
 * Creates and returns a deferred promise using DEFERRED_PROMISE_DEBUG_TIMEOUT
 * if it's specified or a normal deferred promise otherwise.
 *
 * @internal
 */
export declare function createDebuggableDeferredPromise<T>(message: string): DeferredPromise<T>;
//# sourceMappingURL=DebuggableDeferredPromise.d.ts.map