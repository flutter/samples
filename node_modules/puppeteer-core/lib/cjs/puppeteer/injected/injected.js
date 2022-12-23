"use strict";
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
var __createBinding = (this && this.__createBinding) || (Object.create ? (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    var desc = Object.getOwnPropertyDescriptor(m, k);
    if (!desc || ("get" in desc ? !m.__esModule : desc.writable || desc.configurable)) {
      desc = { enumerable: true, get: function() { return m[k]; } };
    }
    Object.defineProperty(o, k2, desc);
}) : (function(o, m, k, k2) {
    if (k2 === undefined) k2 = k;
    o[k2] = m[k];
}));
var __setModuleDefault = (this && this.__setModuleDefault) || (Object.create ? (function(o, v) {
    Object.defineProperty(o, "default", { enumerable: true, value: v });
}) : function(o, v) {
    o["default"] = v;
});
var __importStar = (this && this.__importStar) || function (mod) {
    if (mod && mod.__esModule) return mod;
    var result = {};
    if (mod != null) for (var k in mod) if (k !== "default" && Object.prototype.hasOwnProperty.call(mod, k)) __createBinding(result, mod, k);
    __setModuleDefault(result, mod);
    return result;
};
Object.defineProperty(exports, "__esModule", { value: true });
const DeferredPromise_js_1 = require("../util/DeferredPromise.js");
const Poller_js_1 = require("./Poller.js");
const TextContent_js_1 = require("./TextContent.js");
const TextQuerySelector = __importStar(require("./TextQuerySelector.js"));
const XPathQuerySelector = __importStar(require("./XPathQuerySelector.js"));
const PierceQuerySelector = __importStar(require("./PierceQuerySelector.js"));
const util = __importStar(require("./util.js"));
/**
 * @internal
 */
const PuppeteerUtil = Object.freeze({
    ...util,
    ...TextQuerySelector,
    ...XPathQuerySelector,
    ...PierceQuerySelector,
    createDeferredPromise: DeferredPromise_js_1.createDeferredPromise,
    createTextContent: TextContent_js_1.createTextContent,
    IntervalPoller: Poller_js_1.IntervalPoller,
    isSuitableNodeForTextMatching: TextContent_js_1.isSuitableNodeForTextMatching,
    MutationPoller: Poller_js_1.MutationPoller,
    RAFPoller: Poller_js_1.RAFPoller,
});
/**
 * @internal
 */
exports.default = PuppeteerUtil;
//# sourceMappingURL=injected.js.map