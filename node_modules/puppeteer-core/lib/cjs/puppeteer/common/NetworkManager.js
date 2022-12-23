"use strict";
/**
 * Copyright 2017 Google Inc. All rights reserved.
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
var _NetworkManager_instances, _NetworkManager_client, _NetworkManager_ignoreHTTPSErrors, _NetworkManager_frameManager, _NetworkManager_networkEventManager, _NetworkManager_extraHTTPHeaders, _NetworkManager_credentials, _NetworkManager_attemptedAuthentications, _NetworkManager_userRequestInterceptionEnabled, _NetworkManager_protocolRequestInterceptionEnabled, _NetworkManager_userCacheDisabled, _NetworkManager_emulatedNetworkConditions, _NetworkManager_deferredInitPromise, _NetworkManager_updateNetworkConditions, _NetworkManager_updateProtocolRequestInterception, _NetworkManager_cacheDisabled, _NetworkManager_updateProtocolCacheDisabled, _NetworkManager_onRequestWillBeSent, _NetworkManager_onAuthRequired, _NetworkManager_onRequestPaused, _NetworkManager_patchRequestEventHeaders, _NetworkManager_onRequest, _NetworkManager_onRequestServedFromCache, _NetworkManager_handleRequestRedirect, _NetworkManager_emitResponseEvent, _NetworkManager_onResponseReceived, _NetworkManager_onResponseReceivedExtraInfo, _NetworkManager_forgetRequest, _NetworkManager_onLoadingFinished, _NetworkManager_emitLoadingFinished, _NetworkManager_onLoadingFailed, _NetworkManager_emitLoadingFailed;
Object.defineProperty(exports, "__esModule", { value: true });
exports.NetworkManager = exports.NetworkManagerEmittedEvents = void 0;
const assert_js_1 = require("../util/assert.js");
const EventEmitter_js_1 = require("./EventEmitter.js");
const HTTPRequest_js_1 = require("./HTTPRequest.js");
const HTTPResponse_js_1 = require("./HTTPResponse.js");
const NetworkEventManager_js_1 = require("./NetworkEventManager.js");
const util_js_1 = require("./util.js");
const DebuggableDeferredPromise_js_1 = require("../util/DebuggableDeferredPromise.js");
/**
 * We use symbols to prevent any external parties listening to these events.
 * They are internal to Puppeteer.
 *
 * @internal
 */
exports.NetworkManagerEmittedEvents = {
    Request: Symbol('NetworkManager.Request'),
    RequestServedFromCache: Symbol('NetworkManager.RequestServedFromCache'),
    Response: Symbol('NetworkManager.Response'),
    RequestFailed: Symbol('NetworkManager.RequestFailed'),
    RequestFinished: Symbol('NetworkManager.RequestFinished'),
};
/**
 * @internal
 */
class NetworkManager extends EventEmitter_js_1.EventEmitter {
    constructor(client, ignoreHTTPSErrors, frameManager) {
        super();
        _NetworkManager_instances.add(this);
        _NetworkManager_client.set(this, void 0);
        _NetworkManager_ignoreHTTPSErrors.set(this, void 0);
        _NetworkManager_frameManager.set(this, void 0);
        _NetworkManager_networkEventManager.set(this, new NetworkEventManager_js_1.NetworkEventManager());
        _NetworkManager_extraHTTPHeaders.set(this, {});
        _NetworkManager_credentials.set(this, void 0);
        _NetworkManager_attemptedAuthentications.set(this, new Set());
        _NetworkManager_userRequestInterceptionEnabled.set(this, false);
        _NetworkManager_protocolRequestInterceptionEnabled.set(this, false);
        _NetworkManager_userCacheDisabled.set(this, false);
        _NetworkManager_emulatedNetworkConditions.set(this, {
            offline: false,
            upload: -1,
            download: -1,
            latency: 0,
        });
        _NetworkManager_deferredInitPromise.set(this, void 0);
        __classPrivateFieldSet(this, _NetworkManager_client, client, "f");
        __classPrivateFieldSet(this, _NetworkManager_ignoreHTTPSErrors, ignoreHTTPSErrors, "f");
        __classPrivateFieldSet(this, _NetworkManager_frameManager, frameManager, "f");
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Fetch.requestPaused', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onRequestPaused).bind(this));
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Fetch.authRequired', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onAuthRequired).bind(this));
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Network.requestWillBeSent', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onRequestWillBeSent).bind(this));
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Network.requestServedFromCache', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onRequestServedFromCache).bind(this));
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Network.responseReceived', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onResponseReceived).bind(this));
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Network.loadingFinished', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onLoadingFinished).bind(this));
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Network.loadingFailed', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onLoadingFailed).bind(this));
        __classPrivateFieldGet(this, _NetworkManager_client, "f").on('Network.responseReceivedExtraInfo', __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onResponseReceivedExtraInfo).bind(this));
    }
    /**
     * Initialize calls should avoid async dependencies between CDP calls as those
     * might not resolve until after the target is resumed causing a deadlock.
     */
    initialize() {
        if (__classPrivateFieldGet(this, _NetworkManager_deferredInitPromise, "f")) {
            return __classPrivateFieldGet(this, _NetworkManager_deferredInitPromise, "f");
        }
        __classPrivateFieldSet(this, _NetworkManager_deferredInitPromise, (0, DebuggableDeferredPromise_js_1.createDebuggableDeferredPromise)('NetworkManager initialization timed out'), "f");
        const init = Promise.all([
            __classPrivateFieldGet(this, _NetworkManager_ignoreHTTPSErrors, "f")
                ? __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Security.setIgnoreCertificateErrors', {
                    ignore: true,
                })
                : null,
            __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Network.enable'),
        ]);
        const deferredInitPromise = __classPrivateFieldGet(this, _NetworkManager_deferredInitPromise, "f");
        init
            .then(() => {
            deferredInitPromise.resolve();
        })
            .catch(err => {
            deferredInitPromise.reject(err);
        });
        return __classPrivateFieldGet(this, _NetworkManager_deferredInitPromise, "f");
    }
    async authenticate(credentials) {
        __classPrivateFieldSet(this, _NetworkManager_credentials, credentials, "f");
        await __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_updateProtocolRequestInterception).call(this);
    }
    async setExtraHTTPHeaders(extraHTTPHeaders) {
        __classPrivateFieldSet(this, _NetworkManager_extraHTTPHeaders, {}, "f");
        for (const key of Object.keys(extraHTTPHeaders)) {
            const value = extraHTTPHeaders[key];
            (0, assert_js_1.assert)((0, util_js_1.isString)(value), `Expected value of header "${key}" to be String, but "${typeof value}" is found.`);
            __classPrivateFieldGet(this, _NetworkManager_extraHTTPHeaders, "f")[key.toLowerCase()] = value;
        }
        await __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Network.setExtraHTTPHeaders', {
            headers: __classPrivateFieldGet(this, _NetworkManager_extraHTTPHeaders, "f"),
        });
    }
    extraHTTPHeaders() {
        return Object.assign({}, __classPrivateFieldGet(this, _NetworkManager_extraHTTPHeaders, "f"));
    }
    numRequestsInProgress() {
        return __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").numRequestsInProgress();
    }
    async setOfflineMode(value) {
        __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").offline = value;
        await __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_updateNetworkConditions).call(this);
    }
    async emulateNetworkConditions(networkConditions) {
        __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").upload = networkConditions
            ? networkConditions.upload
            : -1;
        __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").download = networkConditions
            ? networkConditions.download
            : -1;
        __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").latency = networkConditions
            ? networkConditions.latency
            : 0;
        await __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_updateNetworkConditions).call(this);
    }
    async setUserAgent(userAgent, userAgentMetadata) {
        await __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Network.setUserAgentOverride', {
            userAgent: userAgent,
            userAgentMetadata: userAgentMetadata,
        });
    }
    async setCacheEnabled(enabled) {
        __classPrivateFieldSet(this, _NetworkManager_userCacheDisabled, !enabled, "f");
        await __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_updateProtocolCacheDisabled).call(this);
    }
    async setRequestInterception(value) {
        __classPrivateFieldSet(this, _NetworkManager_userRequestInterceptionEnabled, value, "f");
        await __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_updateProtocolRequestInterception).call(this);
    }
}
exports.NetworkManager = NetworkManager;
_NetworkManager_client = new WeakMap(), _NetworkManager_ignoreHTTPSErrors = new WeakMap(), _NetworkManager_frameManager = new WeakMap(), _NetworkManager_networkEventManager = new WeakMap(), _NetworkManager_extraHTTPHeaders = new WeakMap(), _NetworkManager_credentials = new WeakMap(), _NetworkManager_attemptedAuthentications = new WeakMap(), _NetworkManager_userRequestInterceptionEnabled = new WeakMap(), _NetworkManager_protocolRequestInterceptionEnabled = new WeakMap(), _NetworkManager_userCacheDisabled = new WeakMap(), _NetworkManager_emulatedNetworkConditions = new WeakMap(), _NetworkManager_deferredInitPromise = new WeakMap(), _NetworkManager_instances = new WeakSet(), _NetworkManager_updateNetworkConditions = async function _NetworkManager_updateNetworkConditions() {
    await __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Network.emulateNetworkConditions', {
        offline: __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").offline,
        latency: __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").latency,
        uploadThroughput: __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").upload,
        downloadThroughput: __classPrivateFieldGet(this, _NetworkManager_emulatedNetworkConditions, "f").download,
    });
}, _NetworkManager_updateProtocolRequestInterception = async function _NetworkManager_updateProtocolRequestInterception() {
    const enabled = __classPrivateFieldGet(this, _NetworkManager_userRequestInterceptionEnabled, "f") || !!__classPrivateFieldGet(this, _NetworkManager_credentials, "f");
    if (enabled === __classPrivateFieldGet(this, _NetworkManager_protocolRequestInterceptionEnabled, "f")) {
        return;
    }
    __classPrivateFieldSet(this, _NetworkManager_protocolRequestInterceptionEnabled, enabled, "f");
    if (enabled) {
        await Promise.all([
            __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_updateProtocolCacheDisabled).call(this),
            __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Fetch.enable', {
                handleAuthRequests: true,
                patterns: [{ urlPattern: '*' }],
            }),
        ]);
    }
    else {
        await Promise.all([
            __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_updateProtocolCacheDisabled).call(this),
            __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Fetch.disable'),
        ]);
    }
}, _NetworkManager_cacheDisabled = function _NetworkManager_cacheDisabled() {
    return __classPrivateFieldGet(this, _NetworkManager_userCacheDisabled, "f");
}, _NetworkManager_updateProtocolCacheDisabled = async function _NetworkManager_updateProtocolCacheDisabled() {
    await __classPrivateFieldGet(this, _NetworkManager_client, "f").send('Network.setCacheDisabled', {
        cacheDisabled: __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_cacheDisabled).call(this),
    });
}, _NetworkManager_onRequestWillBeSent = function _NetworkManager_onRequestWillBeSent(event) {
    // Request interception doesn't happen for data URLs with Network Service.
    if (__classPrivateFieldGet(this, _NetworkManager_userRequestInterceptionEnabled, "f") &&
        !event.request.url.startsWith('data:')) {
        const { requestId: networkRequestId } = event;
        __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").storeRequestWillBeSent(networkRequestId, event);
        /**
         * CDP may have sent a Fetch.requestPaused event already. Check for it.
         */
        const requestPausedEvent = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequestPaused(networkRequestId);
        if (requestPausedEvent) {
            const { requestId: fetchRequestId } = requestPausedEvent;
            __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_patchRequestEventHeaders).call(this, event, requestPausedEvent);
            __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onRequest).call(this, event, fetchRequestId);
            __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").forgetRequestPaused(networkRequestId);
        }
        return;
    }
    __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onRequest).call(this, event, undefined);
}, _NetworkManager_onAuthRequired = function _NetworkManager_onAuthRequired(event) {
    let response = 'Default';
    if (__classPrivateFieldGet(this, _NetworkManager_attemptedAuthentications, "f").has(event.requestId)) {
        response = 'CancelAuth';
    }
    else if (__classPrivateFieldGet(this, _NetworkManager_credentials, "f")) {
        response = 'ProvideCredentials';
        __classPrivateFieldGet(this, _NetworkManager_attemptedAuthentications, "f").add(event.requestId);
    }
    const { username, password } = __classPrivateFieldGet(this, _NetworkManager_credentials, "f") || {
        username: undefined,
        password: undefined,
    };
    __classPrivateFieldGet(this, _NetworkManager_client, "f")
        .send('Fetch.continueWithAuth', {
        requestId: event.requestId,
        authChallengeResponse: { response, username, password },
    })
        .catch(util_js_1.debugError);
}, _NetworkManager_onRequestPaused = function _NetworkManager_onRequestPaused(event) {
    if (!__classPrivateFieldGet(this, _NetworkManager_userRequestInterceptionEnabled, "f") &&
        __classPrivateFieldGet(this, _NetworkManager_protocolRequestInterceptionEnabled, "f")) {
        __classPrivateFieldGet(this, _NetworkManager_client, "f")
            .send('Fetch.continueRequest', {
            requestId: event.requestId,
        })
            .catch(util_js_1.debugError);
    }
    const { networkId: networkRequestId, requestId: fetchRequestId } = event;
    if (!networkRequestId) {
        return;
    }
    const requestWillBeSentEvent = (() => {
        const requestWillBeSentEvent = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequestWillBeSent(networkRequestId);
        // redirect requests have the same `requestId`,
        if (requestWillBeSentEvent &&
            (requestWillBeSentEvent.request.url !== event.request.url ||
                requestWillBeSentEvent.request.method !== event.request.method)) {
            __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").forgetRequestWillBeSent(networkRequestId);
            return;
        }
        return requestWillBeSentEvent;
    })();
    if (requestWillBeSentEvent) {
        __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_patchRequestEventHeaders).call(this, requestWillBeSentEvent, event);
        __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onRequest).call(this, requestWillBeSentEvent, fetchRequestId);
    }
    else {
        __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").storeRequestPaused(networkRequestId, event);
    }
}, _NetworkManager_patchRequestEventHeaders = function _NetworkManager_patchRequestEventHeaders(requestWillBeSentEvent, requestPausedEvent) {
    requestWillBeSentEvent.request.headers = {
        ...requestWillBeSentEvent.request.headers,
        // includes extra headers, like: Accept, Origin
        ...requestPausedEvent.request.headers,
    };
}, _NetworkManager_onRequest = function _NetworkManager_onRequest(event, fetchRequestId) {
    let redirectChain = [];
    if (event.redirectResponse) {
        // We want to emit a response and requestfinished for the
        // redirectResponse, but we can't do so unless we have a
        // responseExtraInfo ready to pair it up with. If we don't have any
        // responseExtraInfos saved in our queue, they we have to wait until
        // the next one to emit response and requestfinished, *and* we should
        // also wait to emit this Request too because it should come after the
        // response/requestfinished.
        let redirectResponseExtraInfo = null;
        if (event.redirectHasExtraInfo) {
            redirectResponseExtraInfo = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f")
                .responseExtraInfo(event.requestId)
                .shift();
            if (!redirectResponseExtraInfo) {
                __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").queueRedirectInfo(event.requestId, {
                    event,
                    fetchRequestId,
                });
                return;
            }
        }
        const request = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequest(event.requestId);
        // If we connect late to the target, we could have missed the
        // requestWillBeSent event.
        if (request) {
            __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_handleRequestRedirect).call(this, request, event.redirectResponse, redirectResponseExtraInfo);
            redirectChain = request._redirectChain;
        }
    }
    const frame = event.frameId
        ? __classPrivateFieldGet(this, _NetworkManager_frameManager, "f").frame(event.frameId)
        : null;
    const request = new HTTPRequest_js_1.HTTPRequest(__classPrivateFieldGet(this, _NetworkManager_client, "f"), frame, fetchRequestId, __classPrivateFieldGet(this, _NetworkManager_userRequestInterceptionEnabled, "f"), event, redirectChain);
    __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").storeRequest(event.requestId, request);
    this.emit(exports.NetworkManagerEmittedEvents.Request, request);
    request.finalizeInterceptions();
}, _NetworkManager_onRequestServedFromCache = function _NetworkManager_onRequestServedFromCache(event) {
    const request = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequest(event.requestId);
    if (request) {
        request._fromMemoryCache = true;
    }
    this.emit(exports.NetworkManagerEmittedEvents.RequestServedFromCache, request);
}, _NetworkManager_handleRequestRedirect = function _NetworkManager_handleRequestRedirect(request, responsePayload, extraInfo) {
    const response = new HTTPResponse_js_1.HTTPResponse(__classPrivateFieldGet(this, _NetworkManager_client, "f"), request, responsePayload, extraInfo);
    request._response = response;
    request._redirectChain.push(request);
    response._resolveBody(new Error('Response body is unavailable for redirect responses'));
    __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_forgetRequest).call(this, request, false);
    this.emit(exports.NetworkManagerEmittedEvents.Response, response);
    this.emit(exports.NetworkManagerEmittedEvents.RequestFinished, request);
}, _NetworkManager_emitResponseEvent = function _NetworkManager_emitResponseEvent(responseReceived, extraInfo) {
    const request = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequest(responseReceived.requestId);
    // FileUpload sends a response without a matching request.
    if (!request) {
        return;
    }
    const extraInfos = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").responseExtraInfo(responseReceived.requestId);
    if (extraInfos.length) {
        (0, util_js_1.debugError)(new Error('Unexpected extraInfo events for request ' +
            responseReceived.requestId));
    }
    const response = new HTTPResponse_js_1.HTTPResponse(__classPrivateFieldGet(this, _NetworkManager_client, "f"), request, responseReceived.response, extraInfo);
    request._response = response;
    this.emit(exports.NetworkManagerEmittedEvents.Response, response);
}, _NetworkManager_onResponseReceived = function _NetworkManager_onResponseReceived(event) {
    const request = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequest(event.requestId);
    let extraInfo = null;
    if (request && !request._fromMemoryCache && event.hasExtraInfo) {
        extraInfo = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f")
            .responseExtraInfo(event.requestId)
            .shift();
        if (!extraInfo) {
            // Wait until we get the corresponding ExtraInfo event.
            __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").queueEventGroup(event.requestId, {
                responseReceivedEvent: event,
            });
            return;
        }
    }
    __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_emitResponseEvent).call(this, event, extraInfo);
}, _NetworkManager_onResponseReceivedExtraInfo = function _NetworkManager_onResponseReceivedExtraInfo(event) {
    // We may have skipped a redirect response/request pair due to waiting for
    // this ExtraInfo event. If so, continue that work now that we have the
    // request.
    const redirectInfo = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").takeQueuedRedirectInfo(event.requestId);
    if (redirectInfo) {
        __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").responseExtraInfo(event.requestId).push(event);
        __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_onRequest).call(this, redirectInfo.event, redirectInfo.fetchRequestId);
        return;
    }
    // We may have skipped response and loading events because we didn't have
    // this ExtraInfo event yet. If so, emit those events now.
    const queuedEvents = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getQueuedEventGroup(event.requestId);
    if (queuedEvents) {
        __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").forgetQueuedEventGroup(event.requestId);
        __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_emitResponseEvent).call(this, queuedEvents.responseReceivedEvent, event);
        if (queuedEvents.loadingFinishedEvent) {
            __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_emitLoadingFinished).call(this, queuedEvents.loadingFinishedEvent);
        }
        if (queuedEvents.loadingFailedEvent) {
            __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_emitLoadingFailed).call(this, queuedEvents.loadingFailedEvent);
        }
        return;
    }
    // Wait until we get another event that can use this ExtraInfo event.
    __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").responseExtraInfo(event.requestId).push(event);
}, _NetworkManager_forgetRequest = function _NetworkManager_forgetRequest(request, events) {
    const requestId = request._requestId;
    const interceptionId = request._interceptionId;
    __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").forgetRequest(requestId);
    interceptionId !== undefined &&
        __classPrivateFieldGet(this, _NetworkManager_attemptedAuthentications, "f").delete(interceptionId);
    if (events) {
        __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").forget(requestId);
    }
}, _NetworkManager_onLoadingFinished = function _NetworkManager_onLoadingFinished(event) {
    // If the response event for this request is still waiting on a
    // corresponding ExtraInfo event, then wait to emit this event too.
    const queuedEvents = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getQueuedEventGroup(event.requestId);
    if (queuedEvents) {
        queuedEvents.loadingFinishedEvent = event;
    }
    else {
        __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_emitLoadingFinished).call(this, event);
    }
}, _NetworkManager_emitLoadingFinished = function _NetworkManager_emitLoadingFinished(event) {
    var _a;
    const request = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequest(event.requestId);
    // For certain requestIds we never receive requestWillBeSent event.
    // @see https://crbug.com/750469
    if (!request) {
        return;
    }
    // Under certain conditions we never get the Network.responseReceived
    // event from protocol. @see https://crbug.com/883475
    if (request.response()) {
        (_a = request.response()) === null || _a === void 0 ? void 0 : _a._resolveBody(null);
    }
    __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_forgetRequest).call(this, request, true);
    this.emit(exports.NetworkManagerEmittedEvents.RequestFinished, request);
}, _NetworkManager_onLoadingFailed = function _NetworkManager_onLoadingFailed(event) {
    // If the response event for this request is still waiting on a
    // corresponding ExtraInfo event, then wait to emit this event too.
    const queuedEvents = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getQueuedEventGroup(event.requestId);
    if (queuedEvents) {
        queuedEvents.loadingFailedEvent = event;
    }
    else {
        __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_emitLoadingFailed).call(this, event);
    }
}, _NetworkManager_emitLoadingFailed = function _NetworkManager_emitLoadingFailed(event) {
    const request = __classPrivateFieldGet(this, _NetworkManager_networkEventManager, "f").getRequest(event.requestId);
    // For certain requestIds we never receive requestWillBeSent event.
    // @see https://crbug.com/750469
    if (!request) {
        return;
    }
    request._failureText = event.errorText;
    const response = request.response();
    if (response) {
        response._resolveBody(null);
    }
    __classPrivateFieldGet(this, _NetworkManager_instances, "m", _NetworkManager_forgetRequest).call(this, request, true);
    this.emit(exports.NetworkManagerEmittedEvents.RequestFailed, request);
};
//# sourceMappingURL=NetworkManager.js.map