/**
 * Copyright 2020 Google Inc. All rights reserved.
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
import * as childProcess from 'child_process';
import type { Connection as BiDiConnection } from '../common/bidi/bidi.js';
import { Connection } from '../common/Connection.js';
import { Product } from '../common/Product.js';
import { LaunchOptions } from './LaunchOptions.js';
/**
 * @internal
 */
export declare class BrowserRunner {
    #private;
    proc?: childProcess.ChildProcess;
    connection?: Connection;
    constructor(product: Product, executablePath: string, processArguments: string[], userDataDir: string, isTempUserDataDir?: boolean);
    start(options: LaunchOptions): void;
    close(): Promise<void>;
    kill(): void;
    setupWebDriverBiDiConnection(options: {
        timeout: number;
        slowMo: number;
        preferredRevision: string;
    }): Promise<BiDiConnection>;
    setupConnection(options: {
        usePipe?: boolean;
        timeout: number;
        slowMo: number;
        preferredRevision: string;
    }): Promise<Connection>;
}
//# sourceMappingURL=BrowserRunner.d.ts.map