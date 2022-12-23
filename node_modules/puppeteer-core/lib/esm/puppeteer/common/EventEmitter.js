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
import mitt from '../../third_party/mitt/index.js';
/**
 * The EventEmitter class that many Puppeteer classes extend.
 *
 * @remarks
 *
 * This allows you to listen to events that Puppeteer classes fire and act
 * accordingly. Therefore you'll mostly use {@link EventEmitter.on | on} and
 * {@link EventEmitter.off | off} to bind
 * and unbind to event listeners.
 *
 * @public
 */
export class EventEmitter {
    /**
     * @internal
     */
    constructor() {
        this.eventsMap = new Map();
        this.emitter = mitt(this.eventsMap);
    }
    /**
     * Bind an event listener to fire when an event occurs.
     * @param event - the event type you'd like to listen to. Can be a string or symbol.
     * @param handler - the function to be called when the event occurs.
     * @returns `this` to enable you to chain method calls.
     */
    on(event, handler) {
        this.emitter.on(event, handler);
        return this;
    }
    /**
     * Remove an event listener from firing.
     * @param event - the event type you'd like to stop listening to.
     * @param handler - the function that should be removed.
     * @returns `this` to enable you to chain method calls.
     */
    off(event, handler) {
        this.emitter.off(event, handler);
        return this;
    }
    /**
     * Remove an event listener.
     * @deprecated please use {@link EventEmitter.off} instead.
     */
    removeListener(event, handler) {
        this.off(event, handler);
        return this;
    }
    /**
     * Add an event listener.
     * @deprecated please use {@link EventEmitter.on} instead.
     */
    addListener(event, handler) {
        this.on(event, handler);
        return this;
    }
    /**
     * Emit an event and call any associated listeners.
     *
     * @param event - the event you'd like to emit
     * @param eventData - any data you'd like to emit with the event
     * @returns `true` if there are any listeners, `false` if there are not.
     */
    emit(event, eventData) {
        this.emitter.emit(event, eventData);
        return this.eventListenersCount(event) > 0;
    }
    /**
     * Like `on` but the listener will only be fired once and then it will be removed.
     * @param event - the event you'd like to listen to
     * @param handler - the handler function to run when the event occurs
     * @returns `this` to enable you to chain method calls.
     */
    once(event, handler) {
        const onceHandler = eventData => {
            handler(eventData);
            this.off(event, onceHandler);
        };
        return this.on(event, onceHandler);
    }
    /**
     * Gets the number of listeners for a given event.
     *
     * @param event - the event to get the listener count for
     * @returns the number of listeners bound to the given event
     */
    listenerCount(event) {
        return this.eventListenersCount(event);
    }
    /**
     * Removes all listeners. If given an event argument, it will remove only
     * listeners for that event.
     * @param event - the event to remove listeners for.
     * @returns `this` to enable you to chain method calls.
     */
    removeAllListeners(event) {
        if (event) {
            this.eventsMap.delete(event);
        }
        else {
            this.eventsMap.clear();
        }
        return this;
    }
    eventListenersCount(event) {
        var _a;
        return ((_a = this.eventsMap.get(event)) === null || _a === void 0 ? void 0 : _a.length) || 0;
    }
}
//# sourceMappingURL=EventEmitter.js.map