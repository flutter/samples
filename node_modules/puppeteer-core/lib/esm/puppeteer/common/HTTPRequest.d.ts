/// <reference types="node" />
/**
 * Copyright 2020 Google Inc. All rights reserved.
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
import { Protocol } from 'devtools-protocol';
import { ProtocolMapping } from 'devtools-protocol/types/protocol-mapping.js';
import { EventEmitter } from './EventEmitter.js';
import { Frame } from './Frame.js';
import { HTTPResponse } from './HTTPResponse.js';
/**
 * @public
 */
export interface ContinueRequestOverrides {
    /**
     * If set, the request URL will change. This is not a redirect.
     */
    url?: string;
    method?: string;
    postData?: string;
    headers?: Record<string, string>;
}
/**
 * @public
 */
export interface InterceptResolutionState {
    action: InterceptResolutionAction;
    priority?: number;
}
/**
 * Required response data to fulfill a request with.
 *
 * @public
 */
export interface ResponseForRequest {
    status: number;
    /**
     * Optional response headers. All values are converted to strings.
     */
    headers: Record<string, unknown>;
    contentType: string;
    body: string | Buffer;
}
/**
 * Resource types for HTTPRequests as perceived by the rendering engine.
 *
 * @public
 */
export declare type ResourceType = Lowercase<Protocol.Network.ResourceType>;
/**
 * The default cooperative request interception resolution priority
 *
 * @public
 */
export declare const DEFAULT_INTERCEPT_RESOLUTION_PRIORITY = 0;
interface CDPSession extends EventEmitter {
    send<T extends keyof ProtocolMapping.Commands>(method: T, ...paramArgs: ProtocolMapping.Commands[T]['paramsType']): Promise<ProtocolMapping.Commands[T]['returnType']>;
}
/**
 * Represents an HTTP request sent by a page.
 * @remarks
 *
 * Whenever the page sends a request, such as for a network resource, the
 * following events are emitted by Puppeteer's `page`:
 *
 * - `request`: emitted when the request is issued by the page.
 * - `requestfinished` - emitted when the response body is downloaded and the
 *   request is complete.
 *
 * If request fails at some point, then instead of `requestfinished` event the
 * `requestfailed` event is emitted.
 *
 * All of these events provide an instance of `HTTPRequest` representing the
 * request that occurred:
 *
 * ```
 * page.on('request', request => ...)
 * ```
 *
 * NOTE: HTTP Error responses, such as 404 or 503, are still successful
 * responses from HTTP standpoint, so request will complete with
 * `requestfinished` event.
 *
 * If request gets a 'redirect' response, the request is successfully finished
 * with the `requestfinished` event, and a new request is issued to a
 * redirected url.
 *
 * @public
 */
export declare class HTTPRequest {
    #private;
    /**
     * @internal
     */
    _requestId: string;
    /**
     * @internal
     */
    _interceptionId: string | undefined;
    /**
     * @internal
     */
    _failureText: string | null;
    /**
     * @internal
     */
    _response: HTTPResponse | null;
    /**
     * @internal
     */
    _fromMemoryCache: boolean;
    /**
     * @internal
     */
    _redirectChain: HTTPRequest[];
    /**
     * Warning! Using this client can break Puppeteer. Use with caution.
     *
     * @experimental
     */
    get client(): CDPSession;
    /**
     * @internal
     */
    constructor(client: CDPSession, frame: Frame | null, interceptionId: string | undefined, allowInterception: boolean, event: Protocol.Network.RequestWillBeSentEvent, redirectChain: HTTPRequest[]);
    /**
     * @returns the URL of the request
     */
    url(): string;
    /**
     * @returns the `ContinueRequestOverrides` that will be used
     * if the interception is allowed to continue (ie, `abort()` and
     * `respond()` aren't called).
     */
    continueRequestOverrides(): ContinueRequestOverrides;
    /**
     * @returns The `ResponseForRequest` that gets used if the
     * interception is allowed to respond (ie, `abort()` is not called).
     */
    responseForRequest(): Partial<ResponseForRequest> | null;
    /**
     * @returns the most recent reason for aborting the request
     */
    abortErrorReason(): Protocol.Network.ErrorReason | null;
    /**
     * @returns An InterceptResolutionState object describing the current resolution
     * action and priority.
     *
     * InterceptResolutionState contains:
     * action: InterceptResolutionAction
     * priority?: number
     *
     * InterceptResolutionAction is one of: `abort`, `respond`, `continue`,
     * `disabled`, `none`, or `already-handled`.
     */
    interceptResolutionState(): InterceptResolutionState;
    /**
     * @returns `true` if the intercept resolution has already been handled,
     * `false` otherwise.
     */
    isInterceptResolutionHandled(): boolean;
    /**
     * Adds an async request handler to the processing queue.
     * Deferred handlers are not guaranteed to execute in any particular order,
     * but they are guaranteed to resolve before the request interception
     * is finalized.
     */
    enqueueInterceptAction(pendingHandler: () => void | PromiseLike<unknown>): void;
    /**
     * Awaits pending interception handlers and then decides how to fulfill
     * the request interception.
     */
    finalizeInterceptions(): Promise<void>;
    /**
     * Contains the request's resource type as it was perceived by the rendering
     * engine.
     */
    resourceType(): ResourceType;
    /**
     * @returns the method used (`GET`, `POST`, etc.)
     */
    method(): string;
    /**
     * @returns the request's post body, if any.
     */
    postData(): string | undefined;
    /**
     * @returns an object with HTTP headers associated with the request. All
     * header names are lower-case.
     */
    headers(): Record<string, string>;
    /**
     * @returns A matching `HTTPResponse` object, or null if the response has not
     * been received yet.
     */
    response(): HTTPResponse | null;
    /**
     * @returns the frame that initiated the request, or null if navigating to
     * error pages.
     */
    frame(): Frame | null;
    /**
     * @returns true if the request is the driver of the current frame's navigation.
     */
    isNavigationRequest(): boolean;
    /**
     * @returns the initiator of the request.
     */
    initiator(): Protocol.Network.Initiator;
    /**
     * A `redirectChain` is a chain of requests initiated to fetch a resource.
     * @remarks
     *
     * `redirectChain` is shared between all the requests of the same chain.
     *
     * For example, if the website `http://example.com` has a single redirect to
     * `https://example.com`, then the chain will contain one request:
     *
     * ```ts
     * const response = await page.goto('http://example.com');
     * const chain = response.request().redirectChain();
     * console.log(chain.length); // 1
     * console.log(chain[0].url()); // 'http://example.com'
     * ```
     *
     * If the website `https://google.com` has no redirects, then the chain will be empty:
     *
     * ```ts
     * const response = await page.goto('https://google.com');
     * const chain = response.request().redirectChain();
     * console.log(chain.length); // 0
     * ```
     *
     * @returns the chain of requests - if a server responds with at least a
     * single redirect, this chain will contain all requests that were redirected.
     */
    redirectChain(): HTTPRequest[];
    /**
     * Access information about the request's failure.
     *
     * @remarks
     *
     * @example
     *
     * Example of logging all failed requests:
     *
     * ```ts
     * page.on('requestfailed', request => {
     *   console.log(request.url() + ' ' + request.failure().errorText);
     * });
     * ```
     *
     * @returns `null` unless the request failed. If the request fails this can
     * return an object with `errorText` containing a human-readable error
     * message, e.g. `net::ERR_FAILED`. It is not guaranteed that there will be
     * failure text if the request fails.
     */
    failure(): {
        errorText: string;
    } | null;
    /**
     * Continues request with optional request overrides.
     *
     * @remarks
     *
     * To use this, request
     * interception should be enabled with {@link Page.setRequestInterception}.
     *
     * Exception is immediately thrown if the request interception is not enabled.
     *
     * @example
     *
     * ```ts
     * await page.setRequestInterception(true);
     * page.on('request', request => {
     *   // Override headers
     *   const headers = Object.assign({}, request.headers(), {
     *     foo: 'bar', // set "foo" header
     *     origin: undefined, // remove "origin" header
     *   });
     *   request.continue({headers});
     * });
     * ```
     *
     * @param overrides - optional overrides to apply to the request.
     * @param priority - If provided, intercept is resolved using
     * cooperative handling rules. Otherwise, intercept is resolved
     * immediately.
     */
    continue(overrides?: ContinueRequestOverrides, priority?: number): Promise<void>;
    /**
     * Fulfills a request with the given response.
     *
     * @remarks
     *
     * To use this, request
     * interception should be enabled with {@link Page.setRequestInterception}.
     *
     * Exception is immediately thrown if the request interception is not enabled.
     *
     * @example
     * An example of fulfilling all requests with 404 responses:
     *
     * ```ts
     * await page.setRequestInterception(true);
     * page.on('request', request => {
     *   request.respond({
     *     status: 404,
     *     contentType: 'text/plain',
     *     body: 'Not Found!',
     *   });
     * });
     * ```
     *
     * NOTE: Mocking responses for dataURL requests is not supported.
     * Calling `request.respond` for a dataURL request is a noop.
     *
     * @param response - the response to fulfill the request with.
     * @param priority - If provided, intercept is resolved using
     * cooperative handling rules. Otherwise, intercept is resolved
     * immediately.
     */
    respond(response: Partial<ResponseForRequest>, priority?: number): Promise<void>;
    /**
     * Aborts a request.
     *
     * @remarks
     * To use this, request interception should be enabled with
     * {@link Page.setRequestInterception}. If it is not enabled, this method will
     * throw an exception immediately.
     *
     * @param errorCode - optional error code to provide.
     * @param priority - If provided, intercept is resolved using
     * cooperative handling rules. Otherwise, intercept is resolved
     * immediately.
     */
    abort(errorCode?: ErrorCode, priority?: number): Promise<void>;
}
/**
 * @public
 */
export declare enum InterceptResolutionAction {
    Abort = "abort",
    Respond = "respond",
    Continue = "continue",
    Disabled = "disabled",
    None = "none",
    AlreadyHandled = "already-handled"
}
/**
 * @public
 *
 * @deprecated please use {@link InterceptResolutionAction} instead.
 */
export declare type InterceptResolutionStrategy = InterceptResolutionAction;
/**
 * @public
 */
export declare type ErrorCode = 'aborted' | 'accessdenied' | 'addressunreachable' | 'blockedbyclient' | 'blockedbyresponse' | 'connectionaborted' | 'connectionclosed' | 'connectionfailed' | 'connectionrefused' | 'connectionreset' | 'internetdisconnected' | 'namenotresolved' | 'timedout' | 'failed';
/**
 * @public
 */
export declare type ActionResult = 'continue' | 'abort' | 'respond';
export {};
//# sourceMappingURL=HTTPRequest.d.ts.map