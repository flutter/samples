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
var _EmulationManager_client, _EmulationManager_emulatingMobile, _EmulationManager_hasTouch;
/**
 * @internal
 */
export class EmulationManager {
    constructor(client) {
        _EmulationManager_client.set(this, void 0);
        _EmulationManager_emulatingMobile.set(this, false);
        _EmulationManager_hasTouch.set(this, false);
        __classPrivateFieldSet(this, _EmulationManager_client, client, "f");
    }
    async emulateViewport(viewport) {
        const mobile = viewport.isMobile || false;
        const width = viewport.width;
        const height = viewport.height;
        const deviceScaleFactor = viewport.deviceScaleFactor || 1;
        const screenOrientation = viewport.isLandscape
            ? { angle: 90, type: 'landscapePrimary' }
            : { angle: 0, type: 'portraitPrimary' };
        const hasTouch = viewport.hasTouch || false;
        await Promise.all([
            __classPrivateFieldGet(this, _EmulationManager_client, "f").send('Emulation.setDeviceMetricsOverride', {
                mobile,
                width,
                height,
                deviceScaleFactor,
                screenOrientation,
            }),
            __classPrivateFieldGet(this, _EmulationManager_client, "f").send('Emulation.setTouchEmulationEnabled', {
                enabled: hasTouch,
            }),
        ]);
        const reloadNeeded = __classPrivateFieldGet(this, _EmulationManager_emulatingMobile, "f") !== mobile || __classPrivateFieldGet(this, _EmulationManager_hasTouch, "f") !== hasTouch;
        __classPrivateFieldSet(this, _EmulationManager_emulatingMobile, mobile, "f");
        __classPrivateFieldSet(this, _EmulationManager_hasTouch, hasTouch, "f");
        return reloadNeeded;
    }
}
_EmulationManager_client = new WeakMap(), _EmulationManager_emulatingMobile = new WeakMap(), _EmulationManager_hasTouch = new WeakMap();
//# sourceMappingURL=EmulationManager.js.map