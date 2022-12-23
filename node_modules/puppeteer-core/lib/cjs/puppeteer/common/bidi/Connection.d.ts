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
import { ConnectionTransport } from '../ConnectionTransport.js';
import { EventEmitter } from '../EventEmitter.js';
interface CommandResponse {
    id: number;
    result: object;
}
/**
 * @internal
 */
export declare class Connection extends EventEmitter {
    #private;
    constructor(transport: ConnectionTransport, delay?: number);
    get closed(): boolean;
    send(method: string, params: object): Promise<CommandResponse['result']>;
    /**
     * @internal
     */
    protected onMessage(message: string): Promise<void>;
    dispose(): void;
}
export {};
//# sourceMappingURL=Connection.d.ts.map