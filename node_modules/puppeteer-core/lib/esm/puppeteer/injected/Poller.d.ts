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
/**
 * @internal
 */
export interface Poller<T> {
    start(): Promise<void>;
    stop(): Promise<void>;
    result(): Promise<T>;
}
/**
 * @internal
 */
export declare class MutationPoller<T> implements Poller<T> {
    #private;
    constructor(fn: () => Promise<T>, root: Node);
    start(): Promise<void>;
    stop(): Promise<void>;
    result(): Promise<T>;
}
/**
 * @internal
 */
export declare class RAFPoller<T> implements Poller<T> {
    #private;
    constructor(fn: () => Promise<T>);
    start(): Promise<void>;
    stop(): Promise<void>;
    result(): Promise<T>;
}
/**
 * @internal
 */
export declare class IntervalPoller<T> implements Poller<T> {
    #private;
    constructor(fn: () => Promise<T>, ms: number);
    start(): Promise<void>;
    stop(): Promise<void>;
    result(): Promise<T>;
}
//# sourceMappingURL=Poller.d.ts.map