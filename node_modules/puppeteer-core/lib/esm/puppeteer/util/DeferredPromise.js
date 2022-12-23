import { TimeoutError } from '../common/Errors.js';
/**
 * Creates and returns a promise along with the resolve/reject functions.
 *
 * If the promise has not been resolved/rejected within the `timeout` period,
 * the promise gets rejected with a timeout error. `timeout` has to be greater than 0 or
 * it is ignored.
 *
 * @internal
 */
export function createDeferredPromise(opts) {
    let isResolved = false;
    let isRejected = false;
    let resolver;
    let rejector;
    const taskPromise = new Promise((resolve, reject) => {
        resolver = resolve;
        rejector = reject;
    });
    const timeoutId = opts && opts.timeout > 0
        ? setTimeout(() => {
            isRejected = true;
            rejector(new TimeoutError(opts.message));
        }, opts.timeout)
        : undefined;
    return Object.assign(taskPromise, {
        resolved: () => {
            return isResolved;
        },
        finished: () => {
            return isResolved || isRejected;
        },
        resolve: (value) => {
            if (timeoutId) {
                clearTimeout(timeoutId);
            }
            isResolved = true;
            resolver(value);
        },
        reject: (err) => {
            clearTimeout(timeoutId);
            isRejected = true;
            rejector(err);
        },
    });
}
//# sourceMappingURL=DeferredPromise.js.map