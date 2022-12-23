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
import { Protocol } from 'devtools-protocol';
import { EventEmitter } from './EventEmitter.js';
import { Frame } from './Frame.js';
import { CDPSession } from './Connection.js';
/**
 * @public
 */
export interface Credentials {
    username: string;
    password: string;
}
/**
 * @public
 */
export interface NetworkConditions {
    download: number;
    upload: number;
    latency: number;
}
/**
 * @public
 */
export interface InternalNetworkConditions extends NetworkConditions {
    offline: boolean;
}
/**
 * We use symbols to prevent any external parties listening to these events.
 * They are internal to Puppeteer.
 *
 * @internal
 */
export declare const NetworkManagerEmittedEvents: {
    readonly Request: symbol;
    readonly RequestServedFromCache: symbol;
    readonly Response: symbol;
    readonly RequestFailed: symbol;
    readonly RequestFinished: symbol;
};
interface FrameManager {
    frame(frameId: string): Frame | null;
}
/**
 * @internal
 */
export declare class NetworkManager extends EventEmitter {
    #private;
    constructor(client: CDPSession, ignoreHTTPSErrors: boolean, frameManager: FrameManager);
    /**
     * Initialize calls should avoid async dependencies between CDP calls as those
     * might not resolve until after the target is resumed causing a deadlock.
     */
    initialize(): Promise<void>;
    authenticate(credentials?: Credentials): Promise<void>;
    setExtraHTTPHeaders(extraHTTPHeaders: Record<string, string>): Promise<void>;
    extraHTTPHeaders(): Record<string, string>;
    numRequestsInProgress(): number;
    setOfflineMode(value: boolean): Promise<void>;
    emulateNetworkConditions(networkConditions: NetworkConditions | null): Promise<void>;
    setUserAgent(userAgent: string, userAgentMetadata?: Protocol.Emulation.UserAgentMetadata): Promise<void>;
    setCacheEnabled(enabled: boolean): Promise<void>;
    setRequestInterception(value: boolean): Promise<void>;
}
export {};
//# sourceMappingURL=NetworkManager.d.ts.map