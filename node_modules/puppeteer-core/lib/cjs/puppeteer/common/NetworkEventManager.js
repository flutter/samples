"use strict";
/**
 * Copyright 2022 Google Inc. All rights reserved.
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
var __classPrivateFieldGet = (this && this.__classPrivateFieldGet) || function (receiver, state, kind, f) {
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a getter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot read private member from an object whose class did not declare it");
    return kind === "m" ? f : kind === "a" ? f.call(receiver) : f ? f.value : state.get(receiver);
};
var _NetworkEventManager_requestWillBeSentMap, _NetworkEventManager_requestPausedMap, _NetworkEventManager_httpRequestsMap, _NetworkEventManager_responseReceivedExtraInfoMap, _NetworkEventManager_queuedRedirectInfoMap, _NetworkEventManager_queuedEventGroupMap;
Object.defineProperty(exports, "__esModule", { value: true });
exports.NetworkEventManager = void 0;
/**
 * Helper class to track network events by request ID
 *
 * @internal
 */
class NetworkEventManager {
    constructor() {
        /**
         * There are four possible orders of events:
         * A. `_onRequestWillBeSent`
         * B. `_onRequestWillBeSent`, `_onRequestPaused`
         * C. `_onRequestPaused`, `_onRequestWillBeSent`
         * D. `_onRequestPaused`, `_onRequestWillBeSent`, `_onRequestPaused`,
         * `_onRequestWillBeSent`, `_onRequestPaused`, `_onRequestPaused`
         * (see crbug.com/1196004)
         *
         * For `_onRequest` we need the event from `_onRequestWillBeSent` and
         * optionally the `interceptionId` from `_onRequestPaused`.
         *
         * If request interception is disabled, call `_onRequest` once per call to
         * `_onRequestWillBeSent`.
         * If request interception is enabled, call `_onRequest` once per call to
         * `_onRequestPaused` (once per `interceptionId`).
         *
         * Events are stored to allow for subsequent events to call `_onRequest`.
         *
         * Note that (chains of) redirect requests have the same `requestId` (!) as
         * the original request. We have to anticipate series of events like these:
         * A. `_onRequestWillBeSent`,
         * `_onRequestWillBeSent`, ...
         * B. `_onRequestWillBeSent`, `_onRequestPaused`,
         * `_onRequestWillBeSent`, `_onRequestPaused`, ...
         * C. `_onRequestWillBeSent`, `_onRequestPaused`,
         * `_onRequestPaused`, `_onRequestWillBeSent`, ...
         * D. `_onRequestPaused`, `_onRequestWillBeSent`,
         * `_onRequestPaused`, `_onRequestWillBeSent`, `_onRequestPaused`,
         * `_onRequestWillBeSent`, `_onRequestPaused`, `_onRequestPaused`, ...
         * (see crbug.com/1196004)
         */
        _NetworkEventManager_requestWillBeSentMap.set(this, new Map());
        _NetworkEventManager_requestPausedMap.set(this, new Map());
        _NetworkEventManager_httpRequestsMap.set(this, new Map());
        /*
         * The below maps are used to reconcile Network.responseReceivedExtraInfo
         * events with their corresponding request. Each response and redirect
         * response gets an ExtraInfo event, and we don't know which will come first.
         * This means that we have to store a Response or an ExtraInfo for each
         * response, and emit the event when we get both of them. In addition, to
         * handle redirects, we have to make them Arrays to represent the chain of
         * events.
         */
        _NetworkEventManager_responseReceivedExtraInfoMap.set(this, new Map());
        _NetworkEventManager_queuedRedirectInfoMap.set(this, new Map());
        _NetworkEventManager_queuedEventGroupMap.set(this, new Map());
    }
    forget(networkRequestId) {
        __classPrivateFieldGet(this, _NetworkEventManager_requestWillBeSentMap, "f").delete(networkRequestId);
        __classPrivateFieldGet(this, _NetworkEventManager_requestPausedMap, "f").delete(networkRequestId);
        __classPrivateFieldGet(this, _NetworkEventManager_queuedEventGroupMap, "f").delete(networkRequestId);
        __classPrivateFieldGet(this, _NetworkEventManager_queuedRedirectInfoMap, "f").delete(networkRequestId);
        __classPrivateFieldGet(this, _NetworkEventManager_responseReceivedExtraInfoMap, "f").delete(networkRequestId);
    }
    responseExtraInfo(networkRequestId) {
        if (!__classPrivateFieldGet(this, _NetworkEventManager_responseReceivedExtraInfoMap, "f").has(networkRequestId)) {
            __classPrivateFieldGet(this, _NetworkEventManager_responseReceivedExtraInfoMap, "f").set(networkRequestId, []);
        }
        return __classPrivateFieldGet(this, _NetworkEventManager_responseReceivedExtraInfoMap, "f").get(networkRequestId);
    }
    queuedRedirectInfo(fetchRequestId) {
        if (!__classPrivateFieldGet(this, _NetworkEventManager_queuedRedirectInfoMap, "f").has(fetchRequestId)) {
            __classPrivateFieldGet(this, _NetworkEventManager_queuedRedirectInfoMap, "f").set(fetchRequestId, []);
        }
        return __classPrivateFieldGet(this, _NetworkEventManager_queuedRedirectInfoMap, "f").get(fetchRequestId);
    }
    queueRedirectInfo(fetchRequestId, redirectInfo) {
        this.queuedRedirectInfo(fetchRequestId).push(redirectInfo);
    }
    takeQueuedRedirectInfo(fetchRequestId) {
        return this.queuedRedirectInfo(fetchRequestId).shift();
    }
    numRequestsInProgress() {
        return [...__classPrivateFieldGet(this, _NetworkEventManager_httpRequestsMap, "f")].filter(([, request]) => {
            return !request.response();
        }).length;
    }
    storeRequestWillBeSent(networkRequestId, event) {
        __classPrivateFieldGet(this, _NetworkEventManager_requestWillBeSentMap, "f").set(networkRequestId, event);
    }
    getRequestWillBeSent(networkRequestId) {
        return __classPrivateFieldGet(this, _NetworkEventManager_requestWillBeSentMap, "f").get(networkRequestId);
    }
    forgetRequestWillBeSent(networkRequestId) {
        __classPrivateFieldGet(this, _NetworkEventManager_requestWillBeSentMap, "f").delete(networkRequestId);
    }
    getRequestPaused(networkRequestId) {
        return __classPrivateFieldGet(this, _NetworkEventManager_requestPausedMap, "f").get(networkRequestId);
    }
    forgetRequestPaused(networkRequestId) {
        __classPrivateFieldGet(this, _NetworkEventManager_requestPausedMap, "f").delete(networkRequestId);
    }
    storeRequestPaused(networkRequestId, event) {
        __classPrivateFieldGet(this, _NetworkEventManager_requestPausedMap, "f").set(networkRequestId, event);
    }
    getRequest(networkRequestId) {
        return __classPrivateFieldGet(this, _NetworkEventManager_httpRequestsMap, "f").get(networkRequestId);
    }
    storeRequest(networkRequestId, request) {
        __classPrivateFieldGet(this, _NetworkEventManager_httpRequestsMap, "f").set(networkRequestId, request);
    }
    forgetRequest(networkRequestId) {
        __classPrivateFieldGet(this, _NetworkEventManager_httpRequestsMap, "f").delete(networkRequestId);
    }
    getQueuedEventGroup(networkRequestId) {
        return __classPrivateFieldGet(this, _NetworkEventManager_queuedEventGroupMap, "f").get(networkRequestId);
    }
    queueEventGroup(networkRequestId, event) {
        __classPrivateFieldGet(this, _NetworkEventManager_queuedEventGroupMap, "f").set(networkRequestId, event);
    }
    forgetQueuedEventGroup(networkRequestId) {
        __classPrivateFieldGet(this, _NetworkEventManager_queuedEventGroupMap, "f").delete(networkRequestId);
    }
}
exports.NetworkEventManager = NetworkEventManager;
_NetworkEventManager_requestWillBeSentMap = new WeakMap(), _NetworkEventManager_requestPausedMap = new WeakMap(), _NetworkEventManager_httpRequestsMap = new WeakMap(), _NetworkEventManager_responseReceivedExtraInfoMap = new WeakMap(), _NetworkEventManager_queuedRedirectInfoMap = new WeakMap(), _NetworkEventManager_queuedEventGroupMap = new WeakMap();
//# sourceMappingURL=NetworkEventManager.js.map