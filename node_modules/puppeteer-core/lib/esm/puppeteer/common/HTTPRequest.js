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
var _HTTPRequest_instances, _HTTPRequest_client, _HTTPRequest_isNavigationRequest, _HTTPRequest_allowInterception, _HTTPRequest_interceptionHandled, _HTTPRequest_url, _HTTPRequest_resourceType, _HTTPRequest_method, _HTTPRequest_postData, _HTTPRequest_headers, _HTTPRequest_frame, _HTTPRequest_continueRequestOverrides, _HTTPRequest_responseForRequest, _HTTPRequest_abortErrorReason, _HTTPRequest_interceptResolutionState, _HTTPRequest_interceptHandlers, _HTTPRequest_initiator, _HTTPRequest_continue, _HTTPRequest_respond, _HTTPRequest_abort;
import { assert } from '../util/assert.js';
import { debugError, isString } from './util.js';
/**
 * The default cooperative request interception resolution priority
 *
 * @public
 */
export const DEFAULT_INTERCEPT_RESOLUTION_PRIORITY = 0;
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
export class HTTPRequest {
    /**
     * @internal
     */
    constructor(client, frame, interceptionId, allowInterception, event, redirectChain) {
        _HTTPRequest_instances.add(this);
        /**
         * @internal
         */
        this._failureText = null;
        /**
         * @internal
         */
        this._response = null;
        /**
         * @internal
         */
        this._fromMemoryCache = false;
        _HTTPRequest_client.set(this, void 0);
        _HTTPRequest_isNavigationRequest.set(this, void 0);
        _HTTPRequest_allowInterception.set(this, void 0);
        _HTTPRequest_interceptionHandled.set(this, false);
        _HTTPRequest_url.set(this, void 0);
        _HTTPRequest_resourceType.set(this, void 0);
        _HTTPRequest_method.set(this, void 0);
        _HTTPRequest_postData.set(this, void 0);
        _HTTPRequest_headers.set(this, {});
        _HTTPRequest_frame.set(this, void 0);
        _HTTPRequest_continueRequestOverrides.set(this, void 0);
        _HTTPRequest_responseForRequest.set(this, null);
        _HTTPRequest_abortErrorReason.set(this, null);
        _HTTPRequest_interceptResolutionState.set(this, {
            action: InterceptResolutionAction.None,
        });
        _HTTPRequest_interceptHandlers.set(this, void 0);
        _HTTPRequest_initiator.set(this, void 0);
        __classPrivateFieldSet(this, _HTTPRequest_client, client, "f");
        this._requestId = event.requestId;
        __classPrivateFieldSet(this, _HTTPRequest_isNavigationRequest, event.requestId === event.loaderId && event.type === 'Document', "f");
        this._interceptionId = interceptionId;
        __classPrivateFieldSet(this, _HTTPRequest_allowInterception, allowInterception, "f");
        __classPrivateFieldSet(this, _HTTPRequest_url, event.request.url, "f");
        __classPrivateFieldSet(this, _HTTPRequest_resourceType, (event.type || 'other').toLowerCase(), "f");
        __classPrivateFieldSet(this, _HTTPRequest_method, event.request.method, "f");
        __classPrivateFieldSet(this, _HTTPRequest_postData, event.request.postData, "f");
        __classPrivateFieldSet(this, _HTTPRequest_frame, frame, "f");
        this._redirectChain = redirectChain;
        __classPrivateFieldSet(this, _HTTPRequest_continueRequestOverrides, {}, "f");
        __classPrivateFieldSet(this, _HTTPRequest_interceptHandlers, [], "f");
        __classPrivateFieldSet(this, _HTTPRequest_initiator, event.initiator, "f");
        for (const [key, value] of Object.entries(event.request.headers)) {
            __classPrivateFieldGet(this, _HTTPRequest_headers, "f")[key.toLowerCase()] = value;
        }
    }
    /**
     * Warning! Using this client can break Puppeteer. Use with caution.
     *
     * @experimental
     */
    get client() {
        return __classPrivateFieldGet(this, _HTTPRequest_client, "f");
    }
    /**
     * @returns the URL of the request
     */
    url() {
        return __classPrivateFieldGet(this, _HTTPRequest_url, "f");
    }
    /**
     * @returns the `ContinueRequestOverrides` that will be used
     * if the interception is allowed to continue (ie, `abort()` and
     * `respond()` aren't called).
     */
    continueRequestOverrides() {
        assert(__classPrivateFieldGet(this, _HTTPRequest_allowInterception, "f"), 'Request Interception is not enabled!');
        return __classPrivateFieldGet(this, _HTTPRequest_continueRequestOverrides, "f");
    }
    /**
     * @returns The `ResponseForRequest` that gets used if the
     * interception is allowed to respond (ie, `abort()` is not called).
     */
    responseForRequest() {
        assert(__classPrivateFieldGet(this, _HTTPRequest_allowInterception, "f"), 'Request Interception is not enabled!');
        return __classPrivateFieldGet(this, _HTTPRequest_responseForRequest, "f");
    }
    /**
     * @returns the most recent reason for aborting the request
     */
    abortErrorReason() {
        assert(__classPrivateFieldGet(this, _HTTPRequest_allowInterception, "f"), 'Request Interception is not enabled!');
        return __classPrivateFieldGet(this, _HTTPRequest_abortErrorReason, "f");
    }
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
    interceptResolutionState() {
        if (!__classPrivateFieldGet(this, _HTTPRequest_allowInterception, "f")) {
            return { action: InterceptResolutionAction.Disabled };
        }
        if (__classPrivateFieldGet(this, _HTTPRequest_interceptionHandled, "f")) {
            return { action: InterceptResolutionAction.AlreadyHandled };
        }
        return { ...__classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f") };
    }
    /**
     * @returns `true` if the intercept resolution has already been handled,
     * `false` otherwise.
     */
    isInterceptResolutionHandled() {
        return __classPrivateFieldGet(this, _HTTPRequest_interceptionHandled, "f");
    }
    /**
     * Adds an async request handler to the processing queue.
     * Deferred handlers are not guaranteed to execute in any particular order,
     * but they are guaranteed to resolve before the request interception
     * is finalized.
     */
    enqueueInterceptAction(pendingHandler) {
        __classPrivateFieldGet(this, _HTTPRequest_interceptHandlers, "f").push(pendingHandler);
    }
    /**
     * Awaits pending interception handlers and then decides how to fulfill
     * the request interception.
     */
    async finalizeInterceptions() {
        await __classPrivateFieldGet(this, _HTTPRequest_interceptHandlers, "f").reduce((promiseChain, interceptAction) => {
            return promiseChain.then(interceptAction);
        }, Promise.resolve());
        const { action } = this.interceptResolutionState();
        switch (action) {
            case 'abort':
                return __classPrivateFieldGet(this, _HTTPRequest_instances, "m", _HTTPRequest_abort).call(this, __classPrivateFieldGet(this, _HTTPRequest_abortErrorReason, "f"));
            case 'respond':
                if (__classPrivateFieldGet(this, _HTTPRequest_responseForRequest, "f") === null) {
                    throw new Error('Response is missing for the interception');
                }
                return __classPrivateFieldGet(this, _HTTPRequest_instances, "m", _HTTPRequest_respond).call(this, __classPrivateFieldGet(this, _HTTPRequest_responseForRequest, "f"));
            case 'continue':
                return __classPrivateFieldGet(this, _HTTPRequest_instances, "m", _HTTPRequest_continue).call(this, __classPrivateFieldGet(this, _HTTPRequest_continueRequestOverrides, "f"));
        }
    }
    /**
     * Contains the request's resource type as it was perceived by the rendering
     * engine.
     */
    resourceType() {
        return __classPrivateFieldGet(this, _HTTPRequest_resourceType, "f");
    }
    /**
     * @returns the method used (`GET`, `POST`, etc.)
     */
    method() {
        return __classPrivateFieldGet(this, _HTTPRequest_method, "f");
    }
    /**
     * @returns the request's post body, if any.
     */
    postData() {
        return __classPrivateFieldGet(this, _HTTPRequest_postData, "f");
    }
    /**
     * @returns an object with HTTP headers associated with the request. All
     * header names are lower-case.
     */
    headers() {
        return __classPrivateFieldGet(this, _HTTPRequest_headers, "f");
    }
    /**
     * @returns A matching `HTTPResponse` object, or null if the response has not
     * been received yet.
     */
    response() {
        return this._response;
    }
    /**
     * @returns the frame that initiated the request, or null if navigating to
     * error pages.
     */
    frame() {
        return __classPrivateFieldGet(this, _HTTPRequest_frame, "f");
    }
    /**
     * @returns true if the request is the driver of the current frame's navigation.
     */
    isNavigationRequest() {
        return __classPrivateFieldGet(this, _HTTPRequest_isNavigationRequest, "f");
    }
    /**
     * @returns the initiator of the request.
     */
    initiator() {
        return __classPrivateFieldGet(this, _HTTPRequest_initiator, "f");
    }
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
    redirectChain() {
        return this._redirectChain.slice();
    }
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
    failure() {
        if (!this._failureText) {
            return null;
        }
        return {
            errorText: this._failureText,
        };
    }
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
    async continue(overrides = {}, priority) {
        // Request interception is not supported for data: urls.
        if (__classPrivateFieldGet(this, _HTTPRequest_url, "f").startsWith('data:')) {
            return;
        }
        assert(__classPrivateFieldGet(this, _HTTPRequest_allowInterception, "f"), 'Request Interception is not enabled!');
        assert(!__classPrivateFieldGet(this, _HTTPRequest_interceptionHandled, "f"), 'Request is already handled!');
        if (priority === undefined) {
            return __classPrivateFieldGet(this, _HTTPRequest_instances, "m", _HTTPRequest_continue).call(this, overrides);
        }
        __classPrivateFieldSet(this, _HTTPRequest_continueRequestOverrides, overrides, "f");
        if (__classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority === undefined ||
            priority > __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority) {
            __classPrivateFieldSet(this, _HTTPRequest_interceptResolutionState, {
                action: InterceptResolutionAction.Continue,
                priority,
            }, "f");
            return;
        }
        if (priority === __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority) {
            if (__classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").action === 'abort' ||
                __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").action === 'respond') {
                return;
            }
            __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").action =
                InterceptResolutionAction.Continue;
        }
        return;
    }
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
    async respond(response, priority) {
        // Mocking responses for dataURL requests is not currently supported.
        if (__classPrivateFieldGet(this, _HTTPRequest_url, "f").startsWith('data:')) {
            return;
        }
        assert(__classPrivateFieldGet(this, _HTTPRequest_allowInterception, "f"), 'Request Interception is not enabled!');
        assert(!__classPrivateFieldGet(this, _HTTPRequest_interceptionHandled, "f"), 'Request is already handled!');
        if (priority === undefined) {
            return __classPrivateFieldGet(this, _HTTPRequest_instances, "m", _HTTPRequest_respond).call(this, response);
        }
        __classPrivateFieldSet(this, _HTTPRequest_responseForRequest, response, "f");
        if (__classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority === undefined ||
            priority > __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority) {
            __classPrivateFieldSet(this, _HTTPRequest_interceptResolutionState, {
                action: InterceptResolutionAction.Respond,
                priority,
            }, "f");
            return;
        }
        if (priority === __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority) {
            if (__classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").action === 'abort') {
                return;
            }
            __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").action = InterceptResolutionAction.Respond;
        }
    }
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
    async abort(errorCode = 'failed', priority) {
        // Request interception is not supported for data: urls.
        if (__classPrivateFieldGet(this, _HTTPRequest_url, "f").startsWith('data:')) {
            return;
        }
        const errorReason = errorReasons[errorCode];
        assert(errorReason, 'Unknown error code: ' + errorCode);
        assert(__classPrivateFieldGet(this, _HTTPRequest_allowInterception, "f"), 'Request Interception is not enabled!');
        assert(!__classPrivateFieldGet(this, _HTTPRequest_interceptionHandled, "f"), 'Request is already handled!');
        if (priority === undefined) {
            return __classPrivateFieldGet(this, _HTTPRequest_instances, "m", _HTTPRequest_abort).call(this, errorReason);
        }
        __classPrivateFieldSet(this, _HTTPRequest_abortErrorReason, errorReason, "f");
        if (__classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority === undefined ||
            priority >= __classPrivateFieldGet(this, _HTTPRequest_interceptResolutionState, "f").priority) {
            __classPrivateFieldSet(this, _HTTPRequest_interceptResolutionState, {
                action: InterceptResolutionAction.Abort,
                priority,
            }, "f");
            return;
        }
    }
}
_HTTPRequest_client = new WeakMap(), _HTTPRequest_isNavigationRequest = new WeakMap(), _HTTPRequest_allowInterception = new WeakMap(), _HTTPRequest_interceptionHandled = new WeakMap(), _HTTPRequest_url = new WeakMap(), _HTTPRequest_resourceType = new WeakMap(), _HTTPRequest_method = new WeakMap(), _HTTPRequest_postData = new WeakMap(), _HTTPRequest_headers = new WeakMap(), _HTTPRequest_frame = new WeakMap(), _HTTPRequest_continueRequestOverrides = new WeakMap(), _HTTPRequest_responseForRequest = new WeakMap(), _HTTPRequest_abortErrorReason = new WeakMap(), _HTTPRequest_interceptResolutionState = new WeakMap(), _HTTPRequest_interceptHandlers = new WeakMap(), _HTTPRequest_initiator = new WeakMap(), _HTTPRequest_instances = new WeakSet(), _HTTPRequest_continue = async function _HTTPRequest_continue(overrides = {}) {
    const { url, method, postData, headers } = overrides;
    __classPrivateFieldSet(this, _HTTPRequest_interceptionHandled, true, "f");
    const postDataBinaryBase64 = postData
        ? Buffer.from(postData).toString('base64')
        : undefined;
    if (this._interceptionId === undefined) {
        throw new Error('HTTPRequest is missing _interceptionId needed for Fetch.continueRequest');
    }
    await __classPrivateFieldGet(this, _HTTPRequest_client, "f")
        .send('Fetch.continueRequest', {
        requestId: this._interceptionId,
        url,
        method,
        postData: postDataBinaryBase64,
        headers: headers ? headersArray(headers) : undefined,
    })
        .catch(error => {
        __classPrivateFieldSet(this, _HTTPRequest_interceptionHandled, false, "f");
        return handleError(error);
    });
}, _HTTPRequest_respond = async function _HTTPRequest_respond(response) {
    __classPrivateFieldSet(this, _HTTPRequest_interceptionHandled, true, "f");
    const responseBody = response.body && isString(response.body)
        ? Buffer.from(response.body)
        : response.body || null;
    const responseHeaders = {};
    if (response.headers) {
        for (const header of Object.keys(response.headers)) {
            const value = response.headers[header];
            responseHeaders[header.toLowerCase()] = Array.isArray(value)
                ? value.map(item => {
                    return String(item);
                })
                : String(value);
        }
    }
    if (response.contentType) {
        responseHeaders['content-type'] = response.contentType;
    }
    if (responseBody && !('content-length' in responseHeaders)) {
        responseHeaders['content-length'] = String(Buffer.byteLength(responseBody));
    }
    const status = response.status || 200;
    if (this._interceptionId === undefined) {
        throw new Error('HTTPRequest is missing _interceptionId needed for Fetch.fulfillRequest');
    }
    await __classPrivateFieldGet(this, _HTTPRequest_client, "f")
        .send('Fetch.fulfillRequest', {
        requestId: this._interceptionId,
        responseCode: status,
        responsePhrase: STATUS_TEXTS[status],
        responseHeaders: headersArray(responseHeaders),
        body: responseBody ? responseBody.toString('base64') : undefined,
    })
        .catch(error => {
        __classPrivateFieldSet(this, _HTTPRequest_interceptionHandled, false, "f");
        return handleError(error);
    });
}, _HTTPRequest_abort = async function _HTTPRequest_abort(errorReason) {
    __classPrivateFieldSet(this, _HTTPRequest_interceptionHandled, true, "f");
    if (this._interceptionId === undefined) {
        throw new Error('HTTPRequest is missing _interceptionId needed for Fetch.failRequest');
    }
    await __classPrivateFieldGet(this, _HTTPRequest_client, "f")
        .send('Fetch.failRequest', {
        requestId: this._interceptionId,
        errorReason: errorReason || 'Failed',
    })
        .catch(handleError);
};
/**
 * @public
 */
export var InterceptResolutionAction;
(function (InterceptResolutionAction) {
    InterceptResolutionAction["Abort"] = "abort";
    InterceptResolutionAction["Respond"] = "respond";
    InterceptResolutionAction["Continue"] = "continue";
    InterceptResolutionAction["Disabled"] = "disabled";
    InterceptResolutionAction["None"] = "none";
    InterceptResolutionAction["AlreadyHandled"] = "already-handled";
})(InterceptResolutionAction || (InterceptResolutionAction = {}));
const errorReasons = {
    aborted: 'Aborted',
    accessdenied: 'AccessDenied',
    addressunreachable: 'AddressUnreachable',
    blockedbyclient: 'BlockedByClient',
    blockedbyresponse: 'BlockedByResponse',
    connectionaborted: 'ConnectionAborted',
    connectionclosed: 'ConnectionClosed',
    connectionfailed: 'ConnectionFailed',
    connectionrefused: 'ConnectionRefused',
    connectionreset: 'ConnectionReset',
    internetdisconnected: 'InternetDisconnected',
    namenotresolved: 'NameNotResolved',
    timedout: 'TimedOut',
    failed: 'Failed',
};
function headersArray(headers) {
    const result = [];
    for (const name in headers) {
        const value = headers[name];
        if (!Object.is(value, undefined)) {
            const values = Array.isArray(value) ? value : [value];
            result.push(...values.map(value => {
                return { name, value: value + '' };
            }));
        }
    }
    return result;
}
async function handleError(error) {
    if (['Invalid header'].includes(error.originalMessage)) {
        throw error;
    }
    // In certain cases, protocol will return error if the request was
    // already canceled or the page was closed. We should tolerate these
    // errors.
    debugError(error);
}
// List taken from
// https://www.iana.org/assignments/http-status-codes/http-status-codes.xhtml
// with extra 306 and 418 codes.
const STATUS_TEXTS = {
    '100': 'Continue',
    '101': 'Switching Protocols',
    '102': 'Processing',
    '103': 'Early Hints',
    '200': 'OK',
    '201': 'Created',
    '202': 'Accepted',
    '203': 'Non-Authoritative Information',
    '204': 'No Content',
    '205': 'Reset Content',
    '206': 'Partial Content',
    '207': 'Multi-Status',
    '208': 'Already Reported',
    '226': 'IM Used',
    '300': 'Multiple Choices',
    '301': 'Moved Permanently',
    '302': 'Found',
    '303': 'See Other',
    '304': 'Not Modified',
    '305': 'Use Proxy',
    '306': 'Switch Proxy',
    '307': 'Temporary Redirect',
    '308': 'Permanent Redirect',
    '400': 'Bad Request',
    '401': 'Unauthorized',
    '402': 'Payment Required',
    '403': 'Forbidden',
    '404': 'Not Found',
    '405': 'Method Not Allowed',
    '406': 'Not Acceptable',
    '407': 'Proxy Authentication Required',
    '408': 'Request Timeout',
    '409': 'Conflict',
    '410': 'Gone',
    '411': 'Length Required',
    '412': 'Precondition Failed',
    '413': 'Payload Too Large',
    '414': 'URI Too Long',
    '415': 'Unsupported Media Type',
    '416': 'Range Not Satisfiable',
    '417': 'Expectation Failed',
    '418': "I'm a teapot",
    '421': 'Misdirected Request',
    '422': 'Unprocessable Entity',
    '423': 'Locked',
    '424': 'Failed Dependency',
    '425': 'Too Early',
    '426': 'Upgrade Required',
    '428': 'Precondition Required',
    '429': 'Too Many Requests',
    '431': 'Request Header Fields Too Large',
    '451': 'Unavailable For Legal Reasons',
    '500': 'Internal Server Error',
    '501': 'Not Implemented',
    '502': 'Bad Gateway',
    '503': 'Service Unavailable',
    '504': 'Gateway Timeout',
    '505': 'HTTP Version Not Supported',
    '506': 'Variant Also Negotiates',
    '507': 'Insufficient Storage',
    '508': 'Loop Detected',
    '510': 'Not Extended',
    '511': 'Network Authentication Required',
};
//# sourceMappingURL=HTTPRequest.js.map