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
var _Connection_instances, _Connection_transport, _Connection_delay, _Connection_lastId, _Connection_closed, _Connection_callbacks, _Connection_onClose;
import { debug } from '../Debug.js';
const debugProtocolSend = debug('puppeteer:webDriverBiDi:SEND ►');
const debugProtocolReceive = debug('puppeteer:webDriverBiDi:RECV ◀');
import { EventEmitter } from '../EventEmitter.js';
import { ProtocolError } from '../Errors.js';
/**
 * @internal
 */
export class Connection extends EventEmitter {
    constructor(transport, delay = 0) {
        super();
        _Connection_instances.add(this);
        _Connection_transport.set(this, void 0);
        _Connection_delay.set(this, void 0);
        _Connection_lastId.set(this, 0);
        _Connection_closed.set(this, false);
        _Connection_callbacks.set(this, new Map());
        __classPrivateFieldSet(this, _Connection_delay, delay, "f");
        __classPrivateFieldSet(this, _Connection_transport, transport, "f");
        __classPrivateFieldGet(this, _Connection_transport, "f").onmessage = this.onMessage.bind(this);
        __classPrivateFieldGet(this, _Connection_transport, "f").onclose = __classPrivateFieldGet(this, _Connection_instances, "m", _Connection_onClose).bind(this);
    }
    get closed() {
        return __classPrivateFieldGet(this, _Connection_closed, "f");
    }
    send(method, params) {
        var _a;
        const id = __classPrivateFieldSet(this, _Connection_lastId, (_a = __classPrivateFieldGet(this, _Connection_lastId, "f"), ++_a), "f");
        const stringifiedMessage = JSON.stringify({
            id,
            method,
            params,
        });
        debugProtocolSend(stringifiedMessage);
        __classPrivateFieldGet(this, _Connection_transport, "f").send(stringifiedMessage);
        return new Promise((resolve, reject) => {
            __classPrivateFieldGet(this, _Connection_callbacks, "f").set(id, {
                resolve,
                reject,
                error: new ProtocolError(),
                method,
            });
        });
    }
    /**
     * @internal
     */
    async onMessage(message) {
        if (__classPrivateFieldGet(this, _Connection_delay, "f")) {
            await new Promise(f => {
                return setTimeout(f, __classPrivateFieldGet(this, _Connection_delay, "f"));
            });
        }
        debugProtocolReceive(message);
        const object = JSON.parse(message);
        if ('id' in object) {
            const callback = __classPrivateFieldGet(this, _Connection_callbacks, "f").get(object.id);
            // Callbacks could be all rejected if someone has called `.dispose()`.
            if (callback) {
                __classPrivateFieldGet(this, _Connection_callbacks, "f").delete(object.id);
                if ('error' in object) {
                    callback.reject(createProtocolError(callback.error, callback.method, object));
                }
                else {
                    callback.resolve(object.result);
                }
            }
        }
        else {
            this.emit(object.method, object.params);
        }
    }
    dispose() {
        __classPrivateFieldGet(this, _Connection_instances, "m", _Connection_onClose).call(this);
        __classPrivateFieldGet(this, _Connection_transport, "f").close();
    }
}
_Connection_transport = new WeakMap(), _Connection_delay = new WeakMap(), _Connection_lastId = new WeakMap(), _Connection_closed = new WeakMap(), _Connection_callbacks = new WeakMap(), _Connection_instances = new WeakSet(), _Connection_onClose = function _Connection_onClose() {
    if (__classPrivateFieldGet(this, _Connection_closed, "f")) {
        return;
    }
    __classPrivateFieldSet(this, _Connection_closed, true, "f");
    __classPrivateFieldGet(this, _Connection_transport, "f").onmessage = undefined;
    __classPrivateFieldGet(this, _Connection_transport, "f").onclose = undefined;
    for (const callback of __classPrivateFieldGet(this, _Connection_callbacks, "f").values()) {
        callback.reject(rewriteError(callback.error, `Protocol error (${callback.method}): Connection closed.`));
    }
    __classPrivateFieldGet(this, _Connection_callbacks, "f").clear();
};
function rewriteError(error, message, originalMessage) {
    error.message = message;
    error.originalMessage = originalMessage !== null && originalMessage !== void 0 ? originalMessage : error.originalMessage;
    return error;
}
function createProtocolError(error, method, object) {
    let message = `Protocol error (${method}): ${object.error} ${object.message}`;
    if (object.stacktrace) {
        message += ` ${object.stacktrace}`;
    }
    return rewriteError(error, message, object.message);
}
//# sourceMappingURL=Connection.js.map