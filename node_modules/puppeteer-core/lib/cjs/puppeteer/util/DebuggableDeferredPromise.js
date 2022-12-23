"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.createDebuggableDeferredPromise = void 0;
const environment_js_1 = require("../environment.js");
const DeferredPromise_js_1 = require("./DeferredPromise.js");
/**
 * Creates and returns a deferred promise using DEFERRED_PROMISE_DEBUG_TIMEOUT
 * if it's specified or a normal deferred promise otherwise.
 *
 * @internal
 */
function createDebuggableDeferredPromise(message) {
    if (environment_js_1.DEFERRED_PROMISE_DEBUG_TIMEOUT > 0) {
        return (0, DeferredPromise_js_1.createDeferredPromise)({
            message,
            timeout: environment_js_1.DEFERRED_PROMISE_DEBUG_TIMEOUT,
        });
    }
    return (0, DeferredPromise_js_1.createDeferredPromise)();
}
exports.createDebuggableDeferredPromise = createDebuggableDeferredPromise;
//# sourceMappingURL=DebuggableDeferredPromise.js.map