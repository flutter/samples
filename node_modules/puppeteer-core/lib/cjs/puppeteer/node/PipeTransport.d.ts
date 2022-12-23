/// <reference types="node" />
/**
 * Copyright 2018 Google Inc. All rights reserved.
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
import { ConnectionTransport } from '../common/ConnectionTransport.js';
/**
 * @internal
 */
export declare class PipeTransport implements ConnectionTransport {
    #private;
    onclose?: () => void;
    onmessage?: (value: string) => void;
    constructor(pipeWrite: NodeJS.WritableStream, pipeRead: NodeJS.ReadableStream);
    send(message: string): void;
    close(): void;
}
//# sourceMappingURL=PipeTransport.d.ts.map