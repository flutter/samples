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
var _ChromeTargetManager_instances, _ChromeTargetManager_connection, _ChromeTargetManager_discoveredTargetsByTargetId, _ChromeTargetManager_attachedTargetsByTargetId, _ChromeTargetManager_attachedTargetsBySessionId, _ChromeTargetManager_ignoredTargets, _ChromeTargetManager_targetFilterCallback, _ChromeTargetManager_targetFactory, _ChromeTargetManager_targetInterceptors, _ChromeTargetManager_attachedToTargetListenersBySession, _ChromeTargetManager_detachedFromTargetListenersBySession, _ChromeTargetManager_initializeCallback, _ChromeTargetManager_initializePromise, _ChromeTargetManager_targetsIdsForInit, _ChromeTargetManager_storeExistingTargetsForInit, _ChromeTargetManager_setupAttachmentListeners, _ChromeTargetManager_removeAttachmentListeners, _ChromeTargetManager_onSessionDetached, _ChromeTargetManager_onTargetCreated, _ChromeTargetManager_onTargetDestroyed, _ChromeTargetManager_onTargetInfoChanged, _ChromeTargetManager_onAttachedToTarget, _ChromeTargetManager_finishInitializationIfReady, _ChromeTargetManager_onDetachedFromTarget;
Object.defineProperty(exports, "__esModule", { value: true });
exports.ChromeTargetManager = void 0;
const assert_js_1 = require("../util/assert.js");
const Connection_js_1 = require("./Connection.js");
const EventEmitter_js_1 = require("./EventEmitter.js");
const util_js_1 = require("./util.js");
/**
 * ChromeTargetManager uses the CDP's auto-attach mechanism to intercept
 * new targets and allow the rest of Puppeteer to configure listeners while
 * the target is paused.
 *
 * @internal
 */
class ChromeTargetManager extends EventEmitter_js_1.EventEmitter {
    constructor(connection, targetFactory, targetFilterCallback) {
        super();
        _ChromeTargetManager_instances.add(this);
        _ChromeTargetManager_connection.set(this, void 0);
        /**
         * Keeps track of the following events: 'Target.targetCreated',
         * 'Target.targetDestroyed', 'Target.targetInfoChanged'.
         *
         * A target becomes discovered when 'Target.targetCreated' is received.
         * A target is removed from this map once 'Target.targetDestroyed' is
         * received.
         *
         * `targetFilterCallback` has no effect on this map.
         */
        _ChromeTargetManager_discoveredTargetsByTargetId.set(this, new Map());
        /**
         * A target is added to this map once ChromeTargetManager has created
         * a Target and attached at least once to it.
         */
        _ChromeTargetManager_attachedTargetsByTargetId.set(this, new Map());
        /**
         *
         * Tracks which sessions attach to which target.
         */
        _ChromeTargetManager_attachedTargetsBySessionId.set(this, new Map());
        /**
         * If a target was filtered out by `targetFilterCallback`, we still receive
         * events about it from CDP, but we don't forward them to the rest of Puppeteer.
         */
        _ChromeTargetManager_ignoredTargets.set(this, new Set());
        _ChromeTargetManager_targetFilterCallback.set(this, void 0);
        _ChromeTargetManager_targetFactory.set(this, void 0);
        _ChromeTargetManager_targetInterceptors.set(this, new WeakMap());
        _ChromeTargetManager_attachedToTargetListenersBySession.set(this, new WeakMap());
        _ChromeTargetManager_detachedFromTargetListenersBySession.set(this, new WeakMap());
        _ChromeTargetManager_initializeCallback.set(this, () => { });
        _ChromeTargetManager_initializePromise.set(this, new Promise(resolve => {
            __classPrivateFieldSet(this, _ChromeTargetManager_initializeCallback, resolve, "f");
        }));
        _ChromeTargetManager_targetsIdsForInit.set(this, new Set());
        _ChromeTargetManager_storeExistingTargetsForInit.set(this, () => {
            for (const [targetId, targetInfo,] of __classPrivateFieldGet(this, _ChromeTargetManager_discoveredTargetsByTargetId, "f").entries()) {
                if ((!__classPrivateFieldGet(this, _ChromeTargetManager_targetFilterCallback, "f") ||
                    __classPrivateFieldGet(this, _ChromeTargetManager_targetFilterCallback, "f").call(this, targetInfo)) &&
                    targetInfo.type !== 'browser') {
                    __classPrivateFieldGet(this, _ChromeTargetManager_targetsIdsForInit, "f").add(targetId);
                }
            }
        });
        _ChromeTargetManager_onSessionDetached.set(this, (session) => {
            __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_removeAttachmentListeners).call(this, session);
            __classPrivateFieldGet(this, _ChromeTargetManager_targetInterceptors, "f").delete(session);
        });
        _ChromeTargetManager_onTargetCreated.set(this, async (event) => {
            __classPrivateFieldGet(this, _ChromeTargetManager_discoveredTargetsByTargetId, "f").set(event.targetInfo.targetId, event.targetInfo);
            this.emit("targetDiscovered" /* TargetManagerEmittedEvents.TargetDiscovered */, event.targetInfo);
            // The connection is already attached to the browser target implicitly,
            // therefore, no new CDPSession is created and we have special handling
            // here.
            if (event.targetInfo.type === 'browser' && event.targetInfo.attached) {
                if (__classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").has(event.targetInfo.targetId)) {
                    return;
                }
                const target = __classPrivateFieldGet(this, _ChromeTargetManager_targetFactory, "f").call(this, event.targetInfo, undefined);
                __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").set(event.targetInfo.targetId, target);
            }
        });
        _ChromeTargetManager_onTargetDestroyed.set(this, (event) => {
            const targetInfo = __classPrivateFieldGet(this, _ChromeTargetManager_discoveredTargetsByTargetId, "f").get(event.targetId);
            __classPrivateFieldGet(this, _ChromeTargetManager_discoveredTargetsByTargetId, "f").delete(event.targetId);
            __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_finishInitializationIfReady).call(this, event.targetId);
            if ((targetInfo === null || targetInfo === void 0 ? void 0 : targetInfo.type) === 'service_worker' &&
                __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").has(event.targetId)) {
                // Special case for service workers: report TargetGone event when
                // the worker is destroyed.
                const target = __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").get(event.targetId);
                this.emit("targetGone" /* TargetManagerEmittedEvents.TargetGone */, target);
                __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").delete(event.targetId);
            }
        });
        _ChromeTargetManager_onTargetInfoChanged.set(this, (event) => {
            __classPrivateFieldGet(this, _ChromeTargetManager_discoveredTargetsByTargetId, "f").set(event.targetInfo.targetId, event.targetInfo);
            if (__classPrivateFieldGet(this, _ChromeTargetManager_ignoredTargets, "f").has(event.targetInfo.targetId) ||
                !__classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").has(event.targetInfo.targetId) ||
                !event.targetInfo.attached) {
                return;
            }
            const target = __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").get(event.targetInfo.targetId);
            this.emit("targetChanged" /* TargetManagerEmittedEvents.TargetChanged */, {
                target: target,
                targetInfo: event.targetInfo,
            });
        });
        _ChromeTargetManager_onAttachedToTarget.set(this, async (parentSession, event) => {
            const targetInfo = event.targetInfo;
            const session = __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").session(event.sessionId);
            if (!session) {
                throw new Error(`Session ${event.sessionId} was not created.`);
            }
            const silentDetach = async () => {
                await session.send('Runtime.runIfWaitingForDebugger').catch(util_js_1.debugError);
                // We don't use `session.detach()` because that dispatches all commands on
                // the connection instead of the parent session.
                await parentSession
                    .send('Target.detachFromTarget', {
                    sessionId: session.id(),
                })
                    .catch(util_js_1.debugError);
            };
            if (!__classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").isAutoAttached(targetInfo.targetId)) {
                return;
            }
            // Special case for service workers: being attached to service workers will
            // prevent them from ever being destroyed. Therefore, we silently detach
            // from service workers unless the connection was manually created via
            // `page.worker()`. To determine this, we use
            // `this.#connection.isAutoAttached(targetInfo.targetId)`. In the future, we
            // should determine if a target is auto-attached or not with the help of
            // CDP.
            if (targetInfo.type === 'service_worker' &&
                __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").isAutoAttached(targetInfo.targetId)) {
                __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_finishInitializationIfReady).call(this, targetInfo.targetId);
                await silentDetach();
                if (__classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").has(targetInfo.targetId)) {
                    return;
                }
                const target = __classPrivateFieldGet(this, _ChromeTargetManager_targetFactory, "f").call(this, targetInfo);
                __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").set(targetInfo.targetId, target);
                this.emit("targetAvailable" /* TargetManagerEmittedEvents.TargetAvailable */, target);
                return;
            }
            if (__classPrivateFieldGet(this, _ChromeTargetManager_targetFilterCallback, "f") && !__classPrivateFieldGet(this, _ChromeTargetManager_targetFilterCallback, "f").call(this, targetInfo)) {
                __classPrivateFieldGet(this, _ChromeTargetManager_ignoredTargets, "f").add(targetInfo.targetId);
                __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_finishInitializationIfReady).call(this, targetInfo.targetId);
                await silentDetach();
                return;
            }
            const existingTarget = __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").has(targetInfo.targetId);
            const target = existingTarget
                ? __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").get(targetInfo.targetId)
                : __classPrivateFieldGet(this, _ChromeTargetManager_targetFactory, "f").call(this, targetInfo, session);
            __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_setupAttachmentListeners).call(this, session);
            if (existingTarget) {
                __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsBySessionId, "f").set(session.id(), __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").get(targetInfo.targetId));
            }
            else {
                __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").set(targetInfo.targetId, target);
                __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsBySessionId, "f").set(session.id(), target);
            }
            for (const interceptor of __classPrivateFieldGet(this, _ChromeTargetManager_targetInterceptors, "f").get(parentSession) ||
                []) {
                if (!(parentSession instanceof Connection_js_1.Connection)) {
                    // Sanity check: if parent session is not a connection, it should be
                    // present in #attachedTargetsBySessionId.
                    (0, assert_js_1.assert)(__classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsBySessionId, "f").has(parentSession.id()));
                }
                await interceptor(target, parentSession instanceof Connection_js_1.Connection
                    ? null
                    : __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsBySessionId, "f").get(parentSession.id()));
            }
            __classPrivateFieldGet(this, _ChromeTargetManager_targetsIdsForInit, "f").delete(target._targetId);
            if (!existingTarget) {
                this.emit("targetAvailable" /* TargetManagerEmittedEvents.TargetAvailable */, target);
            }
            __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_finishInitializationIfReady).call(this);
            // TODO: the browser might be shutting down here. What do we do with the
            // error?
            await Promise.all([
                session.send('Target.setAutoAttach', {
                    waitForDebuggerOnStart: true,
                    flatten: true,
                    autoAttach: true,
                }),
                session.send('Runtime.runIfWaitingForDebugger'),
            ]).catch(util_js_1.debugError);
        });
        _ChromeTargetManager_onDetachedFromTarget.set(this, (_parentSession, event) => {
            const target = __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsBySessionId, "f").get(event.sessionId);
            __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsBySessionId, "f").delete(event.sessionId);
            if (!target) {
                return;
            }
            __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f").delete(target._targetId);
            this.emit("targetGone" /* TargetManagerEmittedEvents.TargetGone */, target);
        });
        __classPrivateFieldSet(this, _ChromeTargetManager_connection, connection, "f");
        __classPrivateFieldSet(this, _ChromeTargetManager_targetFilterCallback, targetFilterCallback, "f");
        __classPrivateFieldSet(this, _ChromeTargetManager_targetFactory, targetFactory, "f");
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").on('Target.targetCreated', __classPrivateFieldGet(this, _ChromeTargetManager_onTargetCreated, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").on('Target.targetDestroyed', __classPrivateFieldGet(this, _ChromeTargetManager_onTargetDestroyed, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").on('Target.targetInfoChanged', __classPrivateFieldGet(this, _ChromeTargetManager_onTargetInfoChanged, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").on('sessiondetached', __classPrivateFieldGet(this, _ChromeTargetManager_onSessionDetached, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_setupAttachmentListeners).call(this, __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f"));
        // TODO: remove `as any` once the protocol definitions are updated with the
        // next Chromium roll.
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f")
            .send('Target.setDiscoverTargets', {
            discover: true,
            filter: [{ type: 'tab', exclude: true }, {}],
        })
            .then(__classPrivateFieldGet(this, _ChromeTargetManager_storeExistingTargetsForInit, "f"))
            .catch(util_js_1.debugError);
    }
    async initialize() {
        await __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").send('Target.setAutoAttach', {
            waitForDebuggerOnStart: true,
            flatten: true,
            autoAttach: true,
        });
        __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_finishInitializationIfReady).call(this);
        await __classPrivateFieldGet(this, _ChromeTargetManager_initializePromise, "f");
    }
    dispose() {
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").off('Target.targetCreated', __classPrivateFieldGet(this, _ChromeTargetManager_onTargetCreated, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").off('Target.targetDestroyed', __classPrivateFieldGet(this, _ChromeTargetManager_onTargetDestroyed, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").off('Target.targetInfoChanged', __classPrivateFieldGet(this, _ChromeTargetManager_onTargetInfoChanged, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f").off('sessiondetached', __classPrivateFieldGet(this, _ChromeTargetManager_onSessionDetached, "f"));
        __classPrivateFieldGet(this, _ChromeTargetManager_instances, "m", _ChromeTargetManager_removeAttachmentListeners).call(this, __classPrivateFieldGet(this, _ChromeTargetManager_connection, "f"));
    }
    getAvailableTargets() {
        return __classPrivateFieldGet(this, _ChromeTargetManager_attachedTargetsByTargetId, "f");
    }
    addTargetInterceptor(session, interceptor) {
        const interceptors = __classPrivateFieldGet(this, _ChromeTargetManager_targetInterceptors, "f").get(session) || [];
        interceptors.push(interceptor);
        __classPrivateFieldGet(this, _ChromeTargetManager_targetInterceptors, "f").set(session, interceptors);
    }
    removeTargetInterceptor(client, interceptor) {
        const interceptors = __classPrivateFieldGet(this, _ChromeTargetManager_targetInterceptors, "f").get(client) || [];
        __classPrivateFieldGet(this, _ChromeTargetManager_targetInterceptors, "f").set(client, interceptors.filter(currentInterceptor => {
            return currentInterceptor !== interceptor;
        }));
    }
}
exports.ChromeTargetManager = ChromeTargetManager;
_ChromeTargetManager_connection = new WeakMap(), _ChromeTargetManager_discoveredTargetsByTargetId = new WeakMap(), _ChromeTargetManager_attachedTargetsByTargetId = new WeakMap(), _ChromeTargetManager_attachedTargetsBySessionId = new WeakMap(), _ChromeTargetManager_ignoredTargets = new WeakMap(), _ChromeTargetManager_targetFilterCallback = new WeakMap(), _ChromeTargetManager_targetFactory = new WeakMap(), _ChromeTargetManager_targetInterceptors = new WeakMap(), _ChromeTargetManager_attachedToTargetListenersBySession = new WeakMap(), _ChromeTargetManager_detachedFromTargetListenersBySession = new WeakMap(), _ChromeTargetManager_initializeCallback = new WeakMap(), _ChromeTargetManager_initializePromise = new WeakMap(), _ChromeTargetManager_targetsIdsForInit = new WeakMap(), _ChromeTargetManager_storeExistingTargetsForInit = new WeakMap(), _ChromeTargetManager_onSessionDetached = new WeakMap(), _ChromeTargetManager_onTargetCreated = new WeakMap(), _ChromeTargetManager_onTargetDestroyed = new WeakMap(), _ChromeTargetManager_onTargetInfoChanged = new WeakMap(), _ChromeTargetManager_onAttachedToTarget = new WeakMap(), _ChromeTargetManager_onDetachedFromTarget = new WeakMap(), _ChromeTargetManager_instances = new WeakSet(), _ChromeTargetManager_setupAttachmentListeners = function _ChromeTargetManager_setupAttachmentListeners(session) {
    const listener = (event) => {
        return __classPrivateFieldGet(this, _ChromeTargetManager_onAttachedToTarget, "f").call(this, session, event);
    };
    (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _ChromeTargetManager_attachedToTargetListenersBySession, "f").has(session));
    __classPrivateFieldGet(this, _ChromeTargetManager_attachedToTargetListenersBySession, "f").set(session, listener);
    session.on('Target.attachedToTarget', listener);
    const detachedListener = (event) => {
        return __classPrivateFieldGet(this, _ChromeTargetManager_onDetachedFromTarget, "f").call(this, session, event);
    };
    (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _ChromeTargetManager_detachedFromTargetListenersBySession, "f").has(session));
    __classPrivateFieldGet(this, _ChromeTargetManager_detachedFromTargetListenersBySession, "f").set(session, detachedListener);
    session.on('Target.detachedFromTarget', detachedListener);
}, _ChromeTargetManager_removeAttachmentListeners = function _ChromeTargetManager_removeAttachmentListeners(session) {
    if (__classPrivateFieldGet(this, _ChromeTargetManager_attachedToTargetListenersBySession, "f").has(session)) {
        session.off('Target.attachedToTarget', __classPrivateFieldGet(this, _ChromeTargetManager_attachedToTargetListenersBySession, "f").get(session));
        __classPrivateFieldGet(this, _ChromeTargetManager_attachedToTargetListenersBySession, "f").delete(session);
    }
    if (__classPrivateFieldGet(this, _ChromeTargetManager_detachedFromTargetListenersBySession, "f").has(session)) {
        session.off('Target.detachedFromTarget', __classPrivateFieldGet(this, _ChromeTargetManager_detachedFromTargetListenersBySession, "f").get(session));
        __classPrivateFieldGet(this, _ChromeTargetManager_detachedFromTargetListenersBySession, "f").delete(session);
    }
}, _ChromeTargetManager_finishInitializationIfReady = function _ChromeTargetManager_finishInitializationIfReady(targetId) {
    targetId !== undefined && __classPrivateFieldGet(this, _ChromeTargetManager_targetsIdsForInit, "f").delete(targetId);
    if (__classPrivateFieldGet(this, _ChromeTargetManager_targetsIdsForInit, "f").size === 0) {
        __classPrivateFieldGet(this, _ChromeTargetManager_initializeCallback, "f").call(this);
    }
};
//# sourceMappingURL=ChromeTargetManager.js.map