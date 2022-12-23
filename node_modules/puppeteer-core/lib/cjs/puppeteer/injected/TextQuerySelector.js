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
Object.defineProperty(exports, "__esModule", { value: true });
exports.textQuerySelectorAll = exports.textQuerySelector = void 0;
const TextContent_js_1 = require("./TextContent.js");
/**
 * Queries the given node for a node matching the given text selector.
 *
 * @internal
 */
const textQuerySelector = (root, selector) => {
    for (const node of root.childNodes) {
        if (node instanceof Element && (0, TextContent_js_1.isSuitableNodeForTextMatching)(node)) {
            let matchedNode;
            if (node.shadowRoot) {
                matchedNode = (0, exports.textQuerySelector)(node.shadowRoot, selector);
            }
            else {
                matchedNode = (0, exports.textQuerySelector)(node, selector);
            }
            if (matchedNode) {
                return matchedNode;
            }
        }
    }
    if (root instanceof Element) {
        const textContent = (0, TextContent_js_1.createTextContent)(root);
        if (textContent.full.includes(selector)) {
            return root;
        }
    }
    return null;
};
exports.textQuerySelector = textQuerySelector;
/**
 * Queries the given node for all nodes matching the given text selector.
 *
 * @internal
 */
const textQuerySelectorAll = (root, selector) => {
    let results = [];
    for (const node of root.childNodes) {
        if (node instanceof Element) {
            let matchedNodes;
            if (node.shadowRoot) {
                matchedNodes = (0, exports.textQuerySelectorAll)(node.shadowRoot, selector);
            }
            else {
                matchedNodes = (0, exports.textQuerySelectorAll)(node, selector);
            }
            results = results.concat(matchedNodes);
        }
    }
    if (results.length > 0) {
        return results;
    }
    if (root instanceof Element) {
        const textContent = (0, TextContent_js_1.createTextContent)(root);
        if (textContent.full.includes(selector)) {
            return [root];
        }
    }
    return [];
};
exports.textQuerySelectorAll = textQuerySelectorAll;
//# sourceMappingURL=TextQuerySelector.js.map