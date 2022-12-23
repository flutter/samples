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
import NodeWebSocket from 'ws';
import { ConnectionTransport } from '../common/ConnectionTransport.js';
/**
 * @internal
 */
export declare class NodeWebSocketTransport implements ConnectionTransport {
    #private;
    static create(url: string, headers?: Record<string, string>): Promise<NodeWebSocketTransport>;
    onmessage?: (message: NodeWebSocket.Data) => void;
    onclose?: () => void;
    constructor(ws: NodeWebSocket);
    send(message: string): void;
    close(): void;
}
//# sourceMappingURL=NodeWebSocketTransport.d.ts.map