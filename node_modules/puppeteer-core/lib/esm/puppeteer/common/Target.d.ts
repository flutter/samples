/**
 * Copyright 2019 Google Inc. All rights reserved.
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
import { Page } from '../api/Page.js';
import { WebWorker } from './WebWorker.js';
import { CDPSession } from './Connection.js';
import type { Browser, IsPageTargetCallback } from '../api/Browser.js';
import type { BrowserContext } from '../api/BrowserContext.js';
import { Viewport } from './PuppeteerViewport.js';
import { Protocol } from 'devtools-protocol';
import { TaskQueue } from './TaskQueue.js';
import { TargetManager } from './TargetManager.js';
/**
 * Target represents a
 * {@link https://chromedevtools.github.io/devtools-protocol/tot/Target/ | CDP target}.
 * In CDP a target is something that can be debugged such a frame, a page or a
 * worker.
 *
 * @public
 */
export declare class Target {
    #private;
    /**
     * @internal
     */
    _initializedPromise: Promise<boolean>;
    /**
     * @internal
     */
    _initializedCallback: (x: boolean) => void;
    /**
     * @internal
     */
    _isClosedPromise: Promise<void>;
    /**
     * @internal
     */
    _closedCallback: () => void;
    /**
     * @internal
     */
    _isInitialized: boolean;
    /**
     * @internal
     */
    _targetId: string;
    /**
     * @internal
     */
    _isPageTargetCallback: IsPageTargetCallback;
    /**
     * @internal
     */
    constructor(targetInfo: Protocol.Target.TargetInfo, session: CDPSession | undefined, browserContext: BrowserContext, targetManager: TargetManager, sessionFactory: (isAutoAttachEmulated: boolean) => Promise<CDPSession>, ignoreHTTPSErrors: boolean, defaultViewport: Viewport | null, screenshotTaskQueue: TaskQueue, isPageTargetCallback: IsPageTargetCallback);
    /**
     * @internal
     */
    _session(): CDPSession | undefined;
    /**
     * Creates a Chrome Devtools Protocol session attached to the target.
     */
    createCDPSession(): Promise<CDPSession>;
    /**
     * @internal
     */
    _targetManager(): TargetManager;
    /**
     * @internal
     */
    _getTargetInfo(): Protocol.Target.TargetInfo;
    /**
     * If the target is not of type `"page"` or `"background_page"`, returns `null`.
     */
    page(): Promise<Page | null>;
    /**
     * If the target is not of type `"service_worker"` or `"shared_worker"`, returns `null`.
     */
    worker(): Promise<WebWorker | null>;
    url(): string;
    /**
     * Identifies what kind of target this is.
     *
     * @remarks
     *
     * See {@link https://developer.chrome.com/extensions/background_pages | docs} for more info about background pages.
     */
    type(): 'page' | 'background_page' | 'service_worker' | 'shared_worker' | 'other' | 'browser' | 'webview';
    /**
     * Get the browser the target belongs to.
     */
    browser(): Browser;
    /**
     * Get the browser context the target belongs to.
     */
    browserContext(): BrowserContext;
    /**
     * Get the target that opened this target. Top-level targets return `null`.
     */
    opener(): Target | undefined;
    /**
     * @internal
     */
    _targetInfoChanged(targetInfo: Protocol.Target.TargetInfo): void;
}
//# sourceMappingURL=Target.d.ts.map