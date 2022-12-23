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
/// <reference types="node" />
/// <reference types="node" />
import { Protocol } from 'devtools-protocol';
import type { Readable } from 'stream';
import type { Browser } from '../api/Browser.js';
import type { BrowserContext } from '../api/BrowserContext.js';
import { GeolocationOptions, MediaFeature, Metrics, Page, ScreenshotOptions, WaitForOptions, WaitTimeoutOptions } from '../api/Page.js';
import { Accessibility } from './Accessibility.js';
import { CDPSession } from './Connection.js';
import { Coverage } from './Coverage.js';
import { ElementHandle } from './ElementHandle.js';
import { FileChooser } from './FileChooser.js';
import { Frame, FrameAddScriptTagOptions, FrameAddStyleTagOptions, FrameWaitForFunctionOptions } from './Frame.js';
import { HTTPRequest } from './HTTPRequest.js';
import { HTTPResponse } from './HTTPResponse.js';
import { Keyboard, Mouse, MouseButton, Touchscreen } from './Input.js';
import { WaitForSelectorOptions } from './IsolatedWorld.js';
import { JSHandle } from './JSHandle.js';
import { Credentials, NetworkConditions } from './NetworkManager.js';
import { PDFOptions } from './PDFOptions.js';
import { Viewport } from './PuppeteerViewport.js';
import { Target } from './Target.js';
import { TaskQueue } from './TaskQueue.js';
import { Tracing } from './Tracing.js';
import { EvaluateFunc, HandleFor, NodeFor } from './types.js';
import { WebWorker } from './WebWorker.js';
/**
 * @internal
 */
export declare class CDPPage extends Page {
    #private;
    /**
     * @internal
     */
    static _create(client: CDPSession, target: Target, ignoreHTTPSErrors: boolean, defaultViewport: Viewport | null, screenshotTaskQueue: TaskQueue): Promise<CDPPage>;
    /**
     * @internal
     */
    constructor(client: CDPSession, target: Target, ignoreHTTPSErrors: boolean, screenshotTaskQueue: TaskQueue);
    /**
     * @internal
     */
    _client(): CDPSession;
    isDragInterceptionEnabled(): boolean;
    isJavaScriptEnabled(): boolean;
    waitForFileChooser(options?: WaitTimeoutOptions): Promise<FileChooser>;
    setGeolocation(options: GeolocationOptions): Promise<void>;
    target(): Target;
    browser(): Browser;
    browserContext(): BrowserContext;
    mainFrame(): Frame;
    get keyboard(): Keyboard;
    get touchscreen(): Touchscreen;
    get coverage(): Coverage;
    get tracing(): Tracing;
    get accessibility(): Accessibility;
    frames(): Frame[];
    workers(): WebWorker[];
    setRequestInterception(value: boolean): Promise<void>;
    setDragInterception(enabled: boolean): Promise<void>;
    setOfflineMode(enabled: boolean): Promise<void>;
    emulateNetworkConditions(networkConditions: NetworkConditions | null): Promise<void>;
    setDefaultNavigationTimeout(timeout: number): void;
    setDefaultTimeout(timeout: number): void;
    getDefaultTimeout(): number;
    $<Selector extends string>(selector: Selector): Promise<ElementHandle<NodeFor<Selector>> | null>;
    $$<Selector extends string>(selector: Selector): Promise<Array<ElementHandle<NodeFor<Selector>>>>;
    evaluateHandle<Params extends unknown[], Func extends EvaluateFunc<Params> = EvaluateFunc<Params>>(pageFunction: Func | string, ...args: Params): Promise<HandleFor<Awaited<ReturnType<Func>>>>;
    queryObjects<Prototype>(prototypeHandle: JSHandle<Prototype>): Promise<JSHandle<Prototype[]>>;
    $eval<Selector extends string, Params extends unknown[], Func extends EvaluateFunc<[
        ElementHandle<NodeFor<Selector>>,
        ...Params
    ]> = EvaluateFunc<[ElementHandle<NodeFor<Selector>>, ...Params]>>(selector: Selector, pageFunction: Func | string, ...args: Params): Promise<Awaited<ReturnType<Func>>>;
    $$eval<Selector extends string, Params extends unknown[], Func extends EvaluateFunc<[
        Array<NodeFor<Selector>>,
        ...Params
    ]> = EvaluateFunc<[Array<NodeFor<Selector>>, ...Params]>>(selector: Selector, pageFunction: Func | string, ...args: Params): Promise<Awaited<ReturnType<Func>>>;
    $x(expression: string): Promise<Array<ElementHandle<Node>>>;
    cookies(...urls: string[]): Promise<Protocol.Network.Cookie[]>;
    deleteCookie(...cookies: Protocol.Network.DeleteCookiesRequest[]): Promise<void>;
    setCookie(...cookies: Protocol.Network.CookieParam[]): Promise<void>;
    addScriptTag(options: FrameAddScriptTagOptions): Promise<ElementHandle<HTMLScriptElement>>;
    addStyleTag(options: Omit<FrameAddStyleTagOptions, 'url'>): Promise<ElementHandle<HTMLStyleElement>>;
    addStyleTag(options: FrameAddStyleTagOptions): Promise<ElementHandle<HTMLLinkElement>>;
    exposeFunction(name: string, pptrFunction: Function | {
        default: Function;
    }): Promise<void>;
    authenticate(credentials: Credentials): Promise<void>;
    setExtraHTTPHeaders(headers: Record<string, string>): Promise<void>;
    setUserAgent(userAgent: string, userAgentMetadata?: Protocol.Emulation.UserAgentMetadata): Promise<void>;
    metrics(): Promise<Metrics>;
    url(): string;
    content(): Promise<string>;
    setContent(html: string, options?: WaitForOptions): Promise<void>;
    goto(url: string, options?: WaitForOptions & {
        referer?: string;
    }): Promise<HTTPResponse | null>;
    reload(options?: WaitForOptions): Promise<HTTPResponse | null>;
    waitForNavigation(options?: WaitForOptions): Promise<HTTPResponse | null>;
    waitForRequest(urlOrPredicate: string | ((req: HTTPRequest) => boolean | Promise<boolean>), options?: {
        timeout?: number;
    }): Promise<HTTPRequest>;
    waitForResponse(urlOrPredicate: string | ((res: HTTPResponse) => boolean | Promise<boolean>), options?: {
        timeout?: number;
    }): Promise<HTTPResponse>;
    waitForNetworkIdle(options?: {
        idleTime?: number;
        timeout?: number;
    }): Promise<void>;
    waitForFrame(urlOrPredicate: string | ((frame: Frame) => boolean | Promise<boolean>), options?: {
        timeout?: number;
    }): Promise<Frame>;
    goBack(options?: WaitForOptions): Promise<HTTPResponse | null>;
    goForward(options?: WaitForOptions): Promise<HTTPResponse | null>;
    bringToFront(): Promise<void>;
    setJavaScriptEnabled(enabled: boolean): Promise<void>;
    setBypassCSP(enabled: boolean): Promise<void>;
    emulateMediaType(type?: string): Promise<void>;
    emulateCPUThrottling(factor: number | null): Promise<void>;
    emulateMediaFeatures(features?: MediaFeature[]): Promise<void>;
    emulateTimezone(timezoneId?: string): Promise<void>;
    emulateIdleState(overrides?: {
        isUserActive: boolean;
        isScreenUnlocked: boolean;
    }): Promise<void>;
    emulateVisionDeficiency(type?: Protocol.Emulation.SetEmulatedVisionDeficiencyRequest['type']): Promise<void>;
    setViewport(viewport: Viewport): Promise<void>;
    viewport(): Viewport | null;
    evaluate<Params extends unknown[], Func extends EvaluateFunc<Params> = EvaluateFunc<Params>>(pageFunction: Func | string, ...args: Params): Promise<Awaited<ReturnType<Func>>>;
    evaluateOnNewDocument<Params extends unknown[], Func extends (...args: Params) => unknown = (...args: Params) => unknown>(pageFunction: Func | string, ...args: Params): Promise<void>;
    setCacheEnabled(enabled?: boolean): Promise<void>;
    screenshot(options?: ScreenshotOptions): Promise<Buffer | string>;
    createPDFStream(options?: PDFOptions): Promise<Readable>;
    pdf(options?: PDFOptions): Promise<Buffer>;
    title(): Promise<string>;
    close(options?: {
        runBeforeUnload?: boolean;
    }): Promise<void>;
    isClosed(): boolean;
    get mouse(): Mouse;
    click(selector: string, options?: {
        delay?: number;
        button?: MouseButton;
        clickCount?: number;
    }): Promise<void>;
    focus(selector: string): Promise<void>;
    hover(selector: string): Promise<void>;
    select(selector: string, ...values: string[]): Promise<string[]>;
    tap(selector: string): Promise<void>;
    type(selector: string, text: string, options?: {
        delay: number;
    }): Promise<void>;
    waitForTimeout(milliseconds: number): Promise<void>;
    waitForSelector<Selector extends string>(selector: Selector, options?: WaitForSelectorOptions): Promise<ElementHandle<NodeFor<Selector>> | null>;
    waitForXPath(xpath: string, options?: {
        visible?: boolean;
        hidden?: boolean;
        timeout?: number;
    }): Promise<ElementHandle<Node> | null>;
    waitForFunction<Params extends unknown[], Func extends EvaluateFunc<Params> = EvaluateFunc<Params>>(pageFunction: Func | string, options?: FrameWaitForFunctionOptions, ...args: Params): Promise<HandleFor<Awaited<ReturnType<Func>>>>;
}
//# sourceMappingURL=Page.d.ts.map