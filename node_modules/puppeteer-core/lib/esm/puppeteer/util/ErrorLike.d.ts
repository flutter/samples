/**
 * @internal
 */
/// <reference types="node" />
export interface ErrorLike extends Error {
    name: string;
    message: string;
}
/**
 * @internal
 */
export declare function isErrorLike(obj: unknown): obj is ErrorLike;
/**
 * @internal
 */
export declare function isErrnoException(obj: unknown): obj is NodeJS.ErrnoException;
//# sourceMappingURL=ErrorLike.d.ts.map