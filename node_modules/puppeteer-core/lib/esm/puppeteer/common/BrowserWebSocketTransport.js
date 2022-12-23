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
var _BrowserWebSocketTransport_ws;
/**
 * @internal
 */
export class BrowserWebSocketTransport {
    constructor(ws) {
        _BrowserWebSocketTransport_ws.set(this, void 0);
        __classPrivateFieldSet(this, _BrowserWebSocketTransport_ws, ws, "f");
        __classPrivateFieldGet(this, _BrowserWebSocketTransport_ws, "f").addEventListener('message', event => {
            if (this.onmessage) {
                this.onmessage.call(null, event.data);
            }
        });
        __classPrivateFieldGet(this, _BrowserWebSocketTransport_ws, "f").addEventListener('close', () => {
            if (this.onclose) {
                this.onclose.call(null);
            }
        });
        // Silently ignore all errors - we don't know what to do with them.
        __classPrivateFieldGet(this, _BrowserWebSocketTransport_ws, "f").addEventListener('error', () => { });
    }
    static create(url) {
        return new Promise((resolve, reject) => {
            const ws = new WebSocket(url);
            ws.addEventListener('open', () => {
                return resolve(new BrowserWebSocketTransport(ws));
            });
            ws.addEventListener('error', reject);
        });
    }
    send(message) {
        __classPrivateFieldGet(this, _BrowserWebSocketTransport_ws, "f").send(message);
    }
    close() {
        __classPrivateFieldGet(this, _BrowserWebSocketTransport_ws, "f").close();
    }
}
_BrowserWebSocketTransport_ws = new WeakMap();
//# sourceMappingURL=BrowserWebSocketTransport.js.map