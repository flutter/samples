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
var __classPrivateFieldSet = (this && this.__classPrivateFieldSet) || function (receiver, state, value, kind, f) {
    if (kind === "m") throw new TypeError("Private method is not writable");
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a setter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot write private member to an object whose class did not declare it");
    return (kind === "a" ? f.call(receiver, value) : f ? f.value = value : state.set(receiver, value)), value;
};
var _FrameTree_frames, _FrameTree_parentIds, _FrameTree_childIds, _FrameTree_mainFrame, _FrameTree_waitRequests;
import { createDeferredPromise, } from '../util/DeferredPromise.js';
/**
 * Keeps track of the page frame tree and it's is managed by
 * {@link FrameManager}. FrameTree uses frame IDs to reference frame and it
 * means that referenced frames might not be in the tree anymore. Thus, the tree
 * structure is eventually consistent.
 * @internal
 */
export class FrameTree {
    constructor() {
        _FrameTree_frames.set(this, new Map());
        // frameID -> parentFrameID
        _FrameTree_parentIds.set(this, new Map());
        // frameID -> childFrameIDs
        _FrameTree_childIds.set(this, new Map());
        _FrameTree_mainFrame.set(this, void 0);
        _FrameTree_waitRequests.set(this, new Map());
    }
    getMainFrame() {
        return __classPrivateFieldGet(this, _FrameTree_mainFrame, "f");
    }
    getById(frameId) {
        return __classPrivateFieldGet(this, _FrameTree_frames, "f").get(frameId);
    }
    /**
     * Returns a promise that is resolved once the frame with
     * the given ID is added to the tree.
     */
    waitForFrame(frameId) {
        const frame = this.getById(frameId);
        if (frame) {
            return Promise.resolve(frame);
        }
        const deferred = createDeferredPromise();
        const callbacks = __classPrivateFieldGet(this, _FrameTree_waitRequests, "f").get(frameId) || new Set();
        callbacks.add(deferred);
        return deferred;
    }
    frames() {
        return Array.from(__classPrivateFieldGet(this, _FrameTree_frames, "f").values());
    }
    addFrame(frame) {
        var _a;
        __classPrivateFieldGet(this, _FrameTree_frames, "f").set(frame._id, frame);
        if (frame._parentId) {
            __classPrivateFieldGet(this, _FrameTree_parentIds, "f").set(frame._id, frame._parentId);
            if (!__classPrivateFieldGet(this, _FrameTree_childIds, "f").has(frame._parentId)) {
                __classPrivateFieldGet(this, _FrameTree_childIds, "f").set(frame._parentId, new Set());
            }
            __classPrivateFieldGet(this, _FrameTree_childIds, "f").get(frame._parentId).add(frame._id);
        }
        else {
            __classPrivateFieldSet(this, _FrameTree_mainFrame, frame, "f");
        }
        (_a = __classPrivateFieldGet(this, _FrameTree_waitRequests, "f").get(frame._id)) === null || _a === void 0 ? void 0 : _a.forEach(request => {
            return request.resolve(frame);
        });
    }
    removeFrame(frame) {
        var _a;
        __classPrivateFieldGet(this, _FrameTree_frames, "f").delete(frame._id);
        __classPrivateFieldGet(this, _FrameTree_parentIds, "f").delete(frame._id);
        if (frame._parentId) {
            (_a = __classPrivateFieldGet(this, _FrameTree_childIds, "f").get(frame._parentId)) === null || _a === void 0 ? void 0 : _a.delete(frame._id);
        }
        else {
            __classPrivateFieldSet(this, _FrameTree_mainFrame, undefined, "f");
        }
    }
    childFrames(frameId) {
        const childIds = __classPrivateFieldGet(this, _FrameTree_childIds, "f").get(frameId);
        if (!childIds) {
            return [];
        }
        return Array.from(childIds)
            .map(id => {
            return this.getById(id);
        })
            .filter((frame) => {
            return frame !== undefined;
        });
    }
    parentFrame(frameId) {
        const parentId = __classPrivateFieldGet(this, _FrameTree_parentIds, "f").get(frameId);
        return parentId ? this.getById(parentId) : undefined;
    }
}
_FrameTree_frames = new WeakMap(), _FrameTree_parentIds = new WeakMap(), _FrameTree_childIds = new WeakMap(), _FrameTree_mainFrame = new WeakMap(), _FrameTree_waitRequests = new WeakMap();
//# sourceMappingURL=FrameTree.js.map