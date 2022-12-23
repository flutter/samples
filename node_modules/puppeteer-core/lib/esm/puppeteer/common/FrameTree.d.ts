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
import type { Frame } from './Frame.js';
/**
 * Keeps track of the page frame tree and it's is managed by
 * {@link FrameManager}. FrameTree uses frame IDs to reference frame and it
 * means that referenced frames might not be in the tree anymore. Thus, the tree
 * structure is eventually consistent.
 * @internal
 */
export declare class FrameTree {
    #private;
    getMainFrame(): Frame | undefined;
    getById(frameId: string): Frame | undefined;
    /**
     * Returns a promise that is resolved once the frame with
     * the given ID is added to the tree.
     */
    waitForFrame(frameId: string): Promise<Frame>;
    frames(): Frame[];
    addFrame(frame: Frame): void;
    removeFrame(frame: Frame): void;
    childFrames(frameId: string): Frame[];
    parentFrame(frameId: string): Frame | undefined;
}
//# sourceMappingURL=FrameTree.d.ts.map