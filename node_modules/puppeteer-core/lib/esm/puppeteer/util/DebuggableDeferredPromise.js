import { DEFERRED_PROMISE_DEBUG_TIMEOUT } from '../environment.js';
import { createDeferredPromise } from './DeferredPromise.js';
/**
 * Creates and returns a deferred promise using DEFERRED_PROMISE_DEBUG_TIMEOUT
 * if it's specified or a normal deferred promise otherwise.
 *
 * @internal
 */
export function createDebuggableDeferredPromise(message) {
    if (DEFERRED_PROMISE_DEBUG_TIMEOUT > 0) {
        return createDeferredPromise({
            message,
            timeout: DEFERRED_PROMISE_DEBUG_TIMEOUT,
        });
    }
    return createDeferredPromise();
}
//# sourceMappingURL=DebuggableDeferredPromise.js.map