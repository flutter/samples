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
import { CDPSession, Connection } from './Connection.js';
import { EventEmitter } from './EventEmitter.js';
import { Target } from './Target.js';
import { TargetFilterCallback } from '../api/Browser.js';
import { TargetInterceptor, TargetFactory, TargetManager } from './TargetManager.js';
/**
 * ChromeTargetManager uses the CDP's auto-attach mechanism to intercept
 * new targets and allow the rest of Puppeteer to configure listeners while
 * the target is paused.
 *
 * @internal
 */
export declare class ChromeTargetManager extends EventEmitter implements TargetManager {
    #private;
    constructor(connection: Connection, targetFactory: TargetFactory, targetFilterCallback?: TargetFilterCallback);
    initialize(): Promise<void>;
    dispose(): void;
    getAvailableTargets(): Map<string, Target>;
    addTargetInterceptor(session: CDPSession | Connection, interceptor: TargetInterceptor): void;
    removeTargetInterceptor(client: CDPSession | Connection, interceptor: TargetInterceptor): void;
}
//# sourceMappingURL=ChromeTargetManager.d.ts.map