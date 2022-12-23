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
var _FirefoxTargetManager_instances, _FirefoxTargetManager_connection, _FirefoxTargetManager_discoveredTargetsByTargetId, _FirefoxTargetManager_availableTargetsByTargetId, _FirefoxTargetManager_availableTargetsBySessionId, _FirefoxTargetManager_ignoredTargets, _FirefoxTargetManager_targetFilterCallback, _FirefoxTargetManager_targetFactory, _FirefoxTargetManager_targetInterceptors, _FirefoxTargetManager_attachedToTargetListenersBySession, _FirefoxTargetManager_initializeCallback, _FirefoxTargetManager_initializePromise, _FirefoxTargetManager_targetsIdsForInit, _FirefoxTargetManager_onSessionDetached, _FirefoxTargetManager_onTargetCreated, _FirefoxTargetManager_onTargetDestroyed, _FirefoxTargetManager_onAttachedToTarget, _FirefoxTargetManager_finishInitializationIfReady;
import { assert } from '../util/assert.js';
import { Connection } from './Connection.js';
import { EventEmitter } from './EventEmitter.js';
/**
 * FirefoxTargetManager implements target management using
 * `Target.setDiscoverTargets` without using auto-attach. It, therefore, creates
 * targets that lazily establish their CDP sessions.
 *
 * Although the approach is potentially flaky, there is no other way for Firefox
 * because Firefox's CDP implementation does not support auto-attach.
 *
 * Firefox does not support targetInfoChanged and detachedFromTarget events:
 *
 * - https://bugzilla.mozilla.org/show_bug.cgi?id=1610855
 * - https://bugzilla.mozilla.org/show_bug.cgi?id=1636979
 *   @internal
 */
export class FirefoxTargetManager extends EventEmitter {
    constructor(connection, targetFactory, targetFilterCallback) {
        super();
        _FirefoxTargetManager_instances.add(this);
        _FirefoxTargetManager_connection.set(this, void 0);
        /**
         * Keeps track of the following events: 'Target.targetCreated',
         * 'Target.targetDestroyed'.
         *
         * A target becomes discovered when 'Target.targetCreated' is received.
         * A target is removed from this map once 'Target.targetDestroyed' is
         * received.
         *
         * `targetFilterCallback` has no effect on this map.
         */
        _FirefoxTargetManager_discoveredTargetsByTargetId.set(this, new Map());
        /**
         * Keeps track of targets that were created via 'Target.targetCreated'
         * and which one are not filtered out by `targetFilterCallback`.
         *
         * The target is removed from here once it's been destroyed.
         */
        _FirefoxTargetManager_availableTargetsByTargetId.set(this, new Map());
        /**
         * Tracks which sessions attach to which target.
         */
        _FirefoxTargetManager_availableTargetsBySessionId.set(this, new Map());
        /**
         * If a target was filtered out by `targetFilterCallback`, we still receive
         * events about it from CDP, but we don't forward them to the rest of Puppeteer.
         */
        _FirefoxTargetManager_ignoredTargets.set(this, new Set());
        _FirefoxTargetManager_targetFilterCallback.set(this, void 0);
        _FirefoxTargetManager_targetFactory.set(this, void 0);
        _FirefoxTargetManager_targetInterceptors.set(this, new WeakMap());
        _FirefoxTargetManager_attachedToTargetListenersBySession.set(this, new WeakMap());
        _FirefoxTargetManager_initializeCallback.set(this, () => { });
        _FirefoxTargetManager_initializePromise.set(this, new Promise(resolve => {
            __classPrivateFieldSet(this, _FirefoxTargetManager_initializeCallback, resolve, "f");
        }));
        _FirefoxTargetManager_targetsIdsForInit.set(this, new Set());
        _FirefoxTargetManager_onSessionDetached.set(this, (session) => {
            this.removeSessionListeners(session);
            __classPrivateFieldGet(this, _FirefoxTargetManager_targetInterceptors, "f").delete(session);
            __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsBySessionId, "f").delete(session.id());
        });
        _FirefoxTargetManager_onTargetCreated.set(this, async (event) => {
            if (__classPrivateFieldGet(this, _FirefoxTargetManager_discoveredTargetsByTargetId, "f").has(event.targetInfo.targetId)) {
                return;
            }
            __classPrivateFieldGet(this, _FirefoxTargetManager_discoveredTargetsByTargetId, "f").set(event.targetInfo.targetId, event.targetInfo);
            if (event.targetInfo.type === 'browser' && event.targetInfo.attached) {
                const target = __classPrivateFieldGet(this, _FirefoxTargetManager_targetFactory, "f").call(this, event.targetInfo, undefined);
                __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsByTargetId, "f").set(event.targetInfo.targetId, target);
                __classPrivateFieldGet(this, _FirefoxTargetManager_instances, "m", _FirefoxTargetManager_finishInitializationIfReady).call(this, target._targetId);
                return;
            }
            if (__classPrivateFieldGet(this, _FirefoxTargetManager_targetFilterCallback, "f") &&
                !__classPrivateFieldGet(this, _FirefoxTargetManager_targetFilterCallback, "f").call(this, event.targetInfo)) {
                __classPrivateFieldGet(this, _FirefoxTargetManager_ignoredTargets, "f").add(event.targetInfo.targetId);
                __classPrivateFieldGet(this, _FirefoxTargetManager_instances, "m", _FirefoxTargetManager_finishInitializationIfReady).call(this, event.targetInfo.targetId);
                return;
            }
            const target = __classPrivateFieldGet(this, _FirefoxTargetManager_targetFactory, "f").call(this, event.targetInfo, undefined);
            __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsByTargetId, "f").set(event.targetInfo.targetId, target);
            this.emit("targetAvailable" /* TargetManagerEmittedEvents.TargetAvailable */, target);
            __classPrivateFieldGet(this, _FirefoxTargetManager_instances, "m", _FirefoxTargetManager_finishInitializationIfReady).call(this, target._targetId);
        });
        _FirefoxTargetManager_onTargetDestroyed.set(this, (event) => {
            __classPrivateFieldGet(this, _FirefoxTargetManager_discoveredTargetsByTargetId, "f").delete(event.targetId);
            __classPrivateFieldGet(this, _FirefoxTargetManager_instances, "m", _FirefoxTargetManager_finishInitializationIfReady).call(this, event.targetId);
            const target = __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsByTargetId, "f").get(event.targetId);
            if (target) {
                this.emit("targetGone" /* TargetManagerEmittedEvents.TargetGone */, target);
                __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsByTargetId, "f").delete(event.targetId);
            }
        });
        _FirefoxTargetManager_onAttachedToTarget.set(this, async (parentSession, event) => {
            const targetInfo = event.targetInfo;
            const session = __classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f").session(event.sessionId);
            if (!session) {
                throw new Error(`Session ${event.sessionId} was not created.`);
            }
            const target = __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsByTargetId, "f").get(targetInfo.targetId);
            assert(target, `Target ${targetInfo.targetId} is missing`);
            this.setupAttachmentListeners(session);
            __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsBySessionId, "f").set(session.id(), __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsByTargetId, "f").get(targetInfo.targetId));
            for (const hook of __classPrivateFieldGet(this, _FirefoxTargetManager_targetInterceptors, "f").get(parentSession) || []) {
                if (!(parentSession instanceof Connection)) {
                    assert(__classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsBySessionId, "f").has(parentSession.id()));
                }
                await hook(target, parentSession instanceof Connection
                    ? null
                    : __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsBySessionId, "f").get(parentSession.id()));
            }
        });
        __classPrivateFieldSet(this, _FirefoxTargetManager_connection, connection, "f");
        __classPrivateFieldSet(this, _FirefoxTargetManager_targetFilterCallback, targetFilterCallback, "f");
        __classPrivateFieldSet(this, _FirefoxTargetManager_targetFactory, targetFactory, "f");
        __classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f").on('Target.targetCreated', __classPrivateFieldGet(this, _FirefoxTargetManager_onTargetCreated, "f"));
        __classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f").on('Target.targetDestroyed', __classPrivateFieldGet(this, _FirefoxTargetManager_onTargetDestroyed, "f"));
        __classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f").on('sessiondetached', __classPrivateFieldGet(this, _FirefoxTargetManager_onSessionDetached, "f"));
        this.setupAttachmentListeners(__classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f"));
    }
    addTargetInterceptor(client, interceptor) {
        const interceptors = __classPrivateFieldGet(this, _FirefoxTargetManager_targetInterceptors, "f").get(client) || [];
        interceptors.push(interceptor);
        __classPrivateFieldGet(this, _FirefoxTargetManager_targetInterceptors, "f").set(client, interceptors);
    }
    removeTargetInterceptor(client, interceptor) {
        const interceptors = __classPrivateFieldGet(this, _FirefoxTargetManager_targetInterceptors, "f").get(client) || [];
        __classPrivateFieldGet(this, _FirefoxTargetManager_targetInterceptors, "f").set(client, interceptors.filter(currentInterceptor => {
            return currentInterceptor !== interceptor;
        }));
    }
    setupAttachmentListeners(session) {
        const listener = (event) => {
            return __classPrivateFieldGet(this, _FirefoxTargetManager_onAttachedToTarget, "f").call(this, session, event);
        };
        assert(!__classPrivateFieldGet(this, _FirefoxTargetManager_attachedToTargetListenersBySession, "f").has(session));
        __classPrivateFieldGet(this, _FirefoxTargetManager_attachedToTargetListenersBySession, "f").set(session, listener);
        session.on('Target.attachedToTarget', listener);
    }
    removeSessionListeners(session) {
        if (__classPrivateFieldGet(this, _FirefoxTargetManager_attachedToTargetListenersBySession, "f").has(session)) {
            session.off('Target.attachedToTarget', __classPrivateFieldGet(this, _FirefoxTargetManager_attachedToTargetListenersBySession, "f").get(session));
            __classPrivateFieldGet(this, _FirefoxTargetManager_attachedToTargetListenersBySession, "f").delete(session);
        }
    }
    getAvailableTargets() {
        return __classPrivateFieldGet(this, _FirefoxTargetManager_availableTargetsByTargetId, "f");
    }
    dispose() {
        __classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f").off('Target.targetCreated', __classPrivateFieldGet(this, _FirefoxTargetManager_onTargetCreated, "f"));
        __classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f").off('Target.targetDestroyed', __classPrivateFieldGet(this, _FirefoxTargetManager_onTargetDestroyed, "f"));
    }
    async initialize() {
        await __classPrivateFieldGet(this, _FirefoxTargetManager_connection, "f").send('Target.setDiscoverTargets', { discover: true });
        __classPrivateFieldSet(this, _FirefoxTargetManager_targetsIdsForInit, new Set(__classPrivateFieldGet(this, _FirefoxTargetManager_discoveredTargetsByTargetId, "f").keys()), "f");
        await __classPrivateFieldGet(this, _FirefoxTargetManager_initializePromise, "f");
    }
}
_FirefoxTargetManager_connection = new WeakMap(), _FirefoxTargetManager_discoveredTargetsByTargetId = new WeakMap(), _FirefoxTargetManager_availableTargetsByTargetId = new WeakMap(), _FirefoxTargetManager_availableTargetsBySessionId = new WeakMap(), _FirefoxTargetManager_ignoredTargets = new WeakMap(), _FirefoxTargetManager_targetFilterCallback = new WeakMap(), _FirefoxTargetManager_targetFactory = new WeakMap(), _FirefoxTargetManager_targetInterceptors = new WeakMap(), _FirefoxTargetManager_attachedToTargetListenersBySession = new WeakMap(), _FirefoxTargetManager_initializeCallback = new WeakMap(), _FirefoxTargetManager_initializePromise = new WeakMap(), _FirefoxTargetManager_targetsIdsForInit = new WeakMap(), _FirefoxTargetManager_onSessionDetached = new WeakMap(), _FirefoxTargetManager_onTargetCreated = new WeakMap(), _FirefoxTargetManager_onTargetDestroyed = new WeakMap(), _FirefoxTargetManager_onAttachedToTarget = new WeakMap(), _FirefoxTargetManager_instances = new WeakSet(), _FirefoxTargetManager_finishInitializationIfReady = function _FirefoxTargetManager_finishInitializationIfReady(targetId) {
    __classPrivateFieldGet(this, _FirefoxTargetManager_targetsIdsForInit, "f").delete(targetId);
    if (__classPrivateFieldGet(this, _FirefoxTargetManager_targetsIdsForInit, "f").size === 0) {
        __classPrivateFieldGet(this, _FirefoxTargetManager_initializeCallback, "f").call(this);
    }
};
//# sourceMappingURL=FirefoxTargetManager.js.map