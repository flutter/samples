"use strict";
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
var _HTTPResponse_instances, _HTTPResponse_client, _HTTPResponse_request, _HTTPResponse_contentPromise, _HTTPResponse_bodyLoadedPromise, _HTTPResponse_bodyLoadedPromiseFulfill, _HTTPResponse_remoteAddress, _HTTPResponse_status, _HTTPResponse_statusText, _HTTPResponse_url, _HTTPResponse_fromDiskCache, _HTTPResponse_fromServiceWorker, _HTTPResponse_headers, _HTTPResponse_securityDetails, _HTTPResponse_timing, _HTTPResponse_parseStatusTextFromExtrInfo;
Object.defineProperty(exports, "__esModule", { value: true });
exports.HTTPResponse = void 0;
const SecurityDetails_js_1 = require("./SecurityDetails.js");
const Errors_js_1 = require("./Errors.js");
/**
 * The HTTPResponse class represents responses which are received by the
 * {@link Page} class.
 *
 * @public
 */
class HTTPResponse {
    /**
     * @internal
     */
    constructor(client, request, responsePayload, extraInfo) {
        _HTTPResponse_instances.add(this);
        _HTTPResponse_client.set(this, void 0);
        _HTTPResponse_request.set(this, void 0);
        _HTTPResponse_contentPromise.set(this, null);
        _HTTPResponse_bodyLoadedPromise.set(this, void 0);
        _HTTPResponse_bodyLoadedPromiseFulfill.set(this, () => { });
        _HTTPResponse_remoteAddress.set(this, void 0);
        _HTTPResponse_status.set(this, void 0);
        _HTTPResponse_statusText.set(this, void 0);
        _HTTPResponse_url.set(this, void 0);
        _HTTPResponse_fromDiskCache.set(this, void 0);
        _HTTPResponse_fromServiceWorker.set(this, void 0);
        _HTTPResponse_headers.set(this, {});
        _HTTPResponse_securityDetails.set(this, void 0);
        _HTTPResponse_timing.set(this, void 0);
        __classPrivateFieldSet(this, _HTTPResponse_client, client, "f");
        __classPrivateFieldSet(this, _HTTPResponse_request, request, "f");
        __classPrivateFieldSet(this, _HTTPResponse_bodyLoadedPromise, new Promise(fulfill => {
            __classPrivateFieldSet(this, _HTTPResponse_bodyLoadedPromiseFulfill, fulfill, "f");
        }), "f");
        __classPrivateFieldSet(this, _HTTPResponse_remoteAddress, {
            ip: responsePayload.remoteIPAddress,
            port: responsePayload.remotePort,
        }, "f");
        __classPrivateFieldSet(this, _HTTPResponse_statusText, __classPrivateFieldGet(this, _HTTPResponse_instances, "m", _HTTPResponse_parseStatusTextFromExtrInfo).call(this, extraInfo) ||
            responsePayload.statusText, "f");
        __classPrivateFieldSet(this, _HTTPResponse_url, request.url(), "f");
        __classPrivateFieldSet(this, _HTTPResponse_fromDiskCache, !!responsePayload.fromDiskCache, "f");
        __classPrivateFieldSet(this, _HTTPResponse_fromServiceWorker, !!responsePayload.fromServiceWorker, "f");
        __classPrivateFieldSet(this, _HTTPResponse_status, extraInfo ? extraInfo.statusCode : responsePayload.status, "f");
        const headers = extraInfo ? extraInfo.headers : responsePayload.headers;
        for (const [key, value] of Object.entries(headers)) {
            __classPrivateFieldGet(this, _HTTPResponse_headers, "f")[key.toLowerCase()] = value;
        }
        __classPrivateFieldSet(this, _HTTPResponse_securityDetails, responsePayload.securityDetails
            ? new SecurityDetails_js_1.SecurityDetails(responsePayload.securityDetails)
            : null, "f");
        __classPrivateFieldSet(this, _HTTPResponse_timing, responsePayload.timing || null, "f");
    }
    /**
     * @internal
     */
    _resolveBody(err) {
        if (err) {
            return __classPrivateFieldGet(this, _HTTPResponse_bodyLoadedPromiseFulfill, "f").call(this, err);
        }
        return __classPrivateFieldGet(this, _HTTPResponse_bodyLoadedPromiseFulfill, "f").call(this);
    }
    /**
     * @returns The IP address and port number used to connect to the remote
     * server.
     */
    remoteAddress() {
        return __classPrivateFieldGet(this, _HTTPResponse_remoteAddress, "f");
    }
    /**
     * @returns The URL of the response.
     */
    url() {
        return __classPrivateFieldGet(this, _HTTPResponse_url, "f");
    }
    /**
     * @returns True if the response was successful (status in the range 200-299).
     */
    ok() {
        // TODO: document === 0 case?
        return __classPrivateFieldGet(this, _HTTPResponse_status, "f") === 0 || (__classPrivateFieldGet(this, _HTTPResponse_status, "f") >= 200 && __classPrivateFieldGet(this, _HTTPResponse_status, "f") <= 299);
    }
    /**
     * @returns The status code of the response (e.g., 200 for a success).
     */
    status() {
        return __classPrivateFieldGet(this, _HTTPResponse_status, "f");
    }
    /**
     * @returns The status text of the response (e.g. usually an "OK" for a
     * success).
     */
    statusText() {
        return __classPrivateFieldGet(this, _HTTPResponse_statusText, "f");
    }
    /**
     * @returns An object with HTTP headers associated with the response. All
     * header names are lower-case.
     */
    headers() {
        return __classPrivateFieldGet(this, _HTTPResponse_headers, "f");
    }
    /**
     * @returns {@link SecurityDetails} if the response was received over the
     * secure connection, or `null` otherwise.
     */
    securityDetails() {
        return __classPrivateFieldGet(this, _HTTPResponse_securityDetails, "f");
    }
    /**
     * @returns Timing information related to the response.
     */
    timing() {
        return __classPrivateFieldGet(this, _HTTPResponse_timing, "f");
    }
    /**
     * @returns Promise which resolves to a buffer with response body.
     */
    buffer() {
        if (!__classPrivateFieldGet(this, _HTTPResponse_contentPromise, "f")) {
            __classPrivateFieldSet(this, _HTTPResponse_contentPromise, __classPrivateFieldGet(this, _HTTPResponse_bodyLoadedPromise, "f").then(async (error) => {
                if (error) {
                    throw error;
                }
                try {
                    const response = await __classPrivateFieldGet(this, _HTTPResponse_client, "f").send('Network.getResponseBody', {
                        requestId: __classPrivateFieldGet(this, _HTTPResponse_request, "f")._requestId,
                    });
                    return Buffer.from(response.body, response.base64Encoded ? 'base64' : 'utf8');
                }
                catch (error) {
                    if (error instanceof Errors_js_1.ProtocolError &&
                        error.originalMessage === 'No resource with given identifier found') {
                        throw new Errors_js_1.ProtocolError('Could not load body for this request. This might happen if the request is a preflight request.');
                    }
                    throw error;
                }
            }), "f");
        }
        return __classPrivateFieldGet(this, _HTTPResponse_contentPromise, "f");
    }
    /**
     * @returns Promise which resolves to a text representation of response body.
     */
    async text() {
        const content = await this.buffer();
        return content.toString('utf8');
    }
    /**
     *
     * @returns Promise which resolves to a JSON representation of response body.
     *
     * @remarks
     *
     * This method will throw if the response body is not parsable via
     * `JSON.parse`.
     */
    async json() {
        const content = await this.text();
        return JSON.parse(content);
    }
    /**
     * @returns A matching {@link HTTPRequest} object.
     */
    request() {
        return __classPrivateFieldGet(this, _HTTPResponse_request, "f");
    }
    /**
     * @returns True if the response was served from either the browser's disk
     * cache or memory cache.
     */
    fromCache() {
        return __classPrivateFieldGet(this, _HTTPResponse_fromDiskCache, "f") || __classPrivateFieldGet(this, _HTTPResponse_request, "f")._fromMemoryCache;
    }
    /**
     * @returns True if the response was served by a service worker.
     */
    fromServiceWorker() {
        return __classPrivateFieldGet(this, _HTTPResponse_fromServiceWorker, "f");
    }
    /**
     * @returns A {@link Frame} that initiated this response, or `null` if
     * navigating to error pages.
     */
    frame() {
        return __classPrivateFieldGet(this, _HTTPResponse_request, "f").frame();
    }
}
exports.HTTPResponse = HTTPResponse;
_HTTPResponse_client = new WeakMap(), _HTTPResponse_request = new WeakMap(), _HTTPResponse_contentPromise = new WeakMap(), _HTTPResponse_bodyLoadedPromise = new WeakMap(), _HTTPResponse_bodyLoadedPromiseFulfill = new WeakMap(), _HTTPResponse_remoteAddress = new WeakMap(), _HTTPResponse_status = new WeakMap(), _HTTPResponse_statusText = new WeakMap(), _HTTPResponse_url = new WeakMap(), _HTTPResponse_fromDiskCache = new WeakMap(), _HTTPResponse_fromServiceWorker = new WeakMap(), _HTTPResponse_headers = new WeakMap(), _HTTPResponse_securityDetails = new WeakMap(), _HTTPResponse_timing = new WeakMap(), _HTTPResponse_instances = new WeakSet(), _HTTPResponse_parseStatusTextFromExtrInfo = function _HTTPResponse_parseStatusTextFromExtrInfo(extraInfo) {
    if (!extraInfo || !extraInfo.headersText) {
        return;
    }
    const firstLine = extraInfo.headersText.split('\r', 1)[0];
    if (!firstLine) {
        return;
    }
    const match = firstLine.match(/[^ ]* [^ ]* (.*)/);
    if (!match) {
        return;
    }
    const statusText = match[1];
    if (!statusText) {
        return;
    }
    return statusText;
};
//# sourceMappingURL=HTTPResponse.js.map