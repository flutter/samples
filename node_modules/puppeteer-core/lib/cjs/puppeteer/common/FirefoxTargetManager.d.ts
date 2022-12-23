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
import { Target } from './Target.js';
import { TargetFilterCallback } from '../api/Browser.js';
import { TargetFactory, TargetInterceptor, TargetManager } from './TargetManager.js';
import { EventEmitter } from './EventEmitter.js';
/**
 * FirefoxTargetManager implements target management using
 * `Target.setDiscoverTargets` without using auto-attach. It, therefore, creates
 * targets that lazily establish their CDP sessions.
 *
 * Although the approach is potentially flaky, there is no other way for Firefox
 * because Firefox's CDP implementation does not support auto-attach.
 *
 * Firefox does not support targetInfoChanged and detachedFromTarget events:
 *
 * - https://bugzilla.mozilla.org/show_bug.cgi?id=1610855
 * - https://bugzilla.mozilla.org/show_bug.cgi?id=1636979
 *   @internal
 */
export declare class FirefoxTargetManager extends EventEmitter implements TargetManager {
    #private;
    constructor(connection: Connection, targetFactory: TargetFactory, targetFilterCallback?: TargetFilterCallback);
    addTargetInterceptor(client: CDPSession | Connection, interceptor: TargetInterceptor): void;
    removeTargetInterceptor(client: CDPSession | Connection, interceptor: TargetInterceptor): void;
    setupAttachmentListeners(session: CDPSession | Connection): void;
    removeSessionListeners(session: CDPSession): void;
    getAvailableTargets(): Map<string, Target>;
    dispose(): void;
    initialize(): Promise<void>;
}
//# sourceMappingURL=FirefoxTargetManager.d.ts.map