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
/// <reference types="node" />
import { Browser as BrowserBase, BrowserCloseCallback, BrowserContextOptions } from '../../api/Browser.js';
import { BrowserContext as BrowserContextBase } from '../../api/BrowserContext.js';
import { Connection } from './Connection.js';
import { ChildProcess } from 'child_process';
/**
 * @internal
 */
export declare class Browser extends BrowserBase {
    #private;
    /**
     * @internal
     */
    static create(opts: Options): Promise<Browser>;
    /**
     * @internal
     */
    constructor(opts: Options);
    close(): Promise<void>;
    isConnected(): boolean;
    process(): ChildProcess | null;
    createIncognitoBrowserContext(_options?: BrowserContextOptions): Promise<BrowserContextBase>;
}
interface Options {
    process?: ChildProcess;
    closeCallback?: BrowserCloseCallback;
    connection: Connection;
}
export {};
//# sourceMappingURL=Browser.d.ts.map