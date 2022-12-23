/**
 * @internal
 */
export interface DeferredPromise<T> extends Promise<T> {
    finished: () => boolean;
    resolved: () => boolean;
    resolve: (value: T) => void;
    reject: (reason?: unknown) => void;
}
/**
 * @internal
 */
export interface DeferredPromiseOptions {
    message: string;
    timeout: number;
}
/**
 * Creates and returns a promise along with the resolve/reject functions.
 *
 * If the promise has not been resolved/rejected within the `timeout` period,
 * the promise gets rejected with a timeout error. `timeout` has to be greater than 0 or
 * it is ignored.
 *
 * @internal
 */
export declare function createDeferredPromise<T>(opts?: DeferredPromiseOptions): DeferredPromise<T>;
//# sourceMappingURL=DeferredPromise.d.ts.map