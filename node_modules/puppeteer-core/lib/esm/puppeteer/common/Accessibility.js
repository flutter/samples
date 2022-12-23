/**
 * Copyright 2018 Google Inc. All rights reserved.
 *
 * Licensed under the Apache License, Version 2.0 (the 'License');
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an 'AS IS' BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
var __classPrivateFieldSet = (this && this.__classPrivateFieldSet) || function (receiver, state, value, kind, f) {
    if (kind === "m") throw new TypeError("Private method is not writable");
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a setter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot write private member to an object whose class did not declare it");
    return (kind === "a" ? f.call(receiver, value) : f ? f.value = value : state.set(receiver, value)), value;
};
var __classPrivateFieldGet = (this && this.__classPrivateFieldGet) || function (receiver, state, kind, f) {
    if (kind === "a" && !f) throw new TypeError("Private accessor was defined without a getter");
    if (typeof state === "function" ? receiver !== state || !f : !state.has(receiver)) throw new TypeError("Cannot read private member from an object whose class did not declare it");
    return kind === "m" ? f : kind === "a" ? f.call(receiver) : f ? f.value : state.get(receiver);
};
var _Accessibility_client, _AXNode_instances, _AXNode_richlyEditable, _AXNode_editable, _AXNode_focusable, _AXNode_hidden, _AXNode_name, _AXNode_role, _AXNode_ignored, _AXNode_cachedHasFocusableChild, _AXNode_isPlainTextField, _AXNode_isTextOnlyObject, _AXNode_hasFocusableChild;
/**
 * The Accessibility class provides methods for inspecting Chromium's
 * accessibility tree. The accessibility tree is used by assistive technology
 * such as {@link https://en.wikipedia.org/wiki/Screen_reader | screen readers} or
 * {@link https://en.wikipedia.org/wiki/Switch_access | switches}.
 *
 * @remarks
 *
 * Accessibility is a very platform-specific thing. On different platforms,
 * there are different screen readers that might have wildly different output.
 *
 * Blink - Chrome's rendering engine - has a concept of "accessibility tree",
 * which is then translated into different platform-specific APIs. Accessibility
 * namespace gives users access to the Blink Accessibility Tree.
 *
 * Most of the accessibility tree gets filtered out when converting from Blink
 * AX Tree to Platform-specific AX-Tree or by assistive technologies themselves.
 * By default, Puppeteer tries to approximate this filtering, exposing only
 * the "interesting" nodes of the tree.
 *
 * @public
 */
export class Accessibility {
    /**
     * @internal
     */
    constructor(client) {
        _Accessibility_client.set(this, void 0);
        __classPrivateFieldSet(this, _Accessibility_client, client, "f");
    }
    /**
     * Captures the current state of the accessibility tree.
     * The returned object represents the root accessible node of the page.
     *
     * @remarks
     *
     * **NOTE** The Chromium accessibility tree contains nodes that go unused on
     * most platforms and by most screen readers. Puppeteer will discard them as
     * well for an easier to process tree, unless `interestingOnly` is set to
     * `false`.
     *
     * @example
     * An example of dumping the entire accessibility tree:
     *
     * ```ts
     * const snapshot = await page.accessibility.snapshot();
     * console.log(snapshot);
     * ```
     *
     * @example
     * An example of logging the focused node's name:
     *
     * ```ts
     * const snapshot = await page.accessibility.snapshot();
     * const node = findFocusedNode(snapshot);
     * console.log(node && node.name);
     *
     * function findFocusedNode(node) {
     *   if (node.focused) return node;
     *   for (const child of node.children || []) {
     *     const foundNode = findFocusedNode(child);
     *     return foundNode;
     *   }
     *   return null;
     * }
     * ```
     *
     * @returns An AXNode object representing the snapshot.
     */
    async snapshot(options = {}) {
        var _a, _b;
        const { interestingOnly = true, root = null } = options;
        const { nodes } = await __classPrivateFieldGet(this, _Accessibility_client, "f").send('Accessibility.getFullAXTree');
        let backendNodeId;
        if (root) {
            const { node } = await __classPrivateFieldGet(this, _Accessibility_client, "f").send('DOM.describeNode', {
                objectId: root.remoteObject().objectId,
            });
            backendNodeId = node.backendNodeId;
        }
        const defaultRoot = AXNode.createTree(nodes);
        let needle = defaultRoot;
        if (backendNodeId) {
            needle = defaultRoot.find(node => {
                return node.payload.backendDOMNodeId === backendNodeId;
            });
            if (!needle) {
                return null;
            }
        }
        if (!interestingOnly) {
            return (_a = this.serializeTree(needle)[0]) !== null && _a !== void 0 ? _a : null;
        }
        const interestingNodes = new Set();
        this.collectInterestingNodes(interestingNodes, defaultRoot, false);
        if (!interestingNodes.has(needle)) {
            return null;
        }
        return (_b = this.serializeTree(needle, interestingNodes)[0]) !== null && _b !== void 0 ? _b : null;
    }
    serializeTree(node, interestingNodes) {
        const children = [];
        for (const child of node.children) {
            children.push(...this.serializeTree(child, interestingNodes));
        }
        if (interestingNodes && !interestingNodes.has(node)) {
            return children;
        }
        const serializedNode = node.serialize();
        if (children.length) {
            serializedNode.children = children;
        }
        return [serializedNode];
    }
    collectInterestingNodes(collection, node, insideControl) {
        if (node.isInteresting(insideControl)) {
            collection.add(node);
        }
        if (node.isLeafNode()) {
            return;
        }
        insideControl = insideControl || node.isControl();
        for (const child of node.children) {
            this.collectInterestingNodes(collection, child, insideControl);
        }
    }
}
_Accessibility_client = new WeakMap();
class AXNode {
    constructor(payload) {
        _AXNode_instances.add(this);
        this.children = [];
        _AXNode_richlyEditable.set(this, false);
        _AXNode_editable.set(this, false);
        _AXNode_focusable.set(this, false);
        _AXNode_hidden.set(this, false);
        _AXNode_name.set(this, void 0);
        _AXNode_role.set(this, void 0);
        _AXNode_ignored.set(this, void 0);
        _AXNode_cachedHasFocusableChild.set(this, void 0);
        this.payload = payload;
        __classPrivateFieldSet(this, _AXNode_name, this.payload.name ? this.payload.name.value : '', "f");
        __classPrivateFieldSet(this, _AXNode_role, this.payload.role ? this.payload.role.value : 'Unknown', "f");
        __classPrivateFieldSet(this, _AXNode_ignored, this.payload.ignored, "f");
        for (const property of this.payload.properties || []) {
            if (property.name === 'editable') {
                __classPrivateFieldSet(this, _AXNode_richlyEditable, property.value.value === 'richtext', "f");
                __classPrivateFieldSet(this, _AXNode_editable, true, "f");
            }
            if (property.name === 'focusable') {
                __classPrivateFieldSet(this, _AXNode_focusable, property.value.value, "f");
            }
            if (property.name === 'hidden') {
                __classPrivateFieldSet(this, _AXNode_hidden, property.value.value, "f");
            }
        }
    }
    find(predicate) {
        if (predicate(this)) {
            return this;
        }
        for (const child of this.children) {
            const result = child.find(predicate);
            if (result) {
                return result;
            }
        }
        return null;
    }
    isLeafNode() {
        if (!this.children.length) {
            return true;
        }
        // These types of objects may have children that we use as internal
        // implementation details, but we want to expose them as leaves to platform
        // accessibility APIs because screen readers might be confused if they find
        // any children.
        if (__classPrivateFieldGet(this, _AXNode_instances, "m", _AXNode_isPlainTextField).call(this) || __classPrivateFieldGet(this, _AXNode_instances, "m", _AXNode_isTextOnlyObject).call(this)) {
            return true;
        }
        // Roles whose children are only presentational according to the ARIA and
        // HTML5 Specs should be hidden from screen readers.
        // (Note that whilst ARIA buttons can have only presentational children, HTML5
        // buttons are allowed to have content.)
        switch (__classPrivateFieldGet(this, _AXNode_role, "f")) {
            case 'doc-cover':
            case 'graphics-symbol':
            case 'img':
            case 'Meter':
            case 'scrollbar':
            case 'slider':
            case 'separator':
            case 'progressbar':
                return true;
            default:
                break;
        }
        // Here and below: Android heuristics
        if (__classPrivateFieldGet(this, _AXNode_instances, "m", _AXNode_hasFocusableChild).call(this)) {
            return false;
        }
        if (__classPrivateFieldGet(this, _AXNode_focusable, "f") && __classPrivateFieldGet(this, _AXNode_name, "f")) {
            return true;
        }
        if (__classPrivateFieldGet(this, _AXNode_role, "f") === 'heading' && __classPrivateFieldGet(this, _AXNode_name, "f")) {
            return true;
        }
        return false;
    }
    isControl() {
        switch (__classPrivateFieldGet(this, _AXNode_role, "f")) {
            case 'button':
            case 'checkbox':
            case 'ColorWell':
            case 'combobox':
            case 'DisclosureTriangle':
            case 'listbox':
            case 'menu':
            case 'menubar':
            case 'menuitem':
            case 'menuitemcheckbox':
            case 'menuitemradio':
            case 'radio':
            case 'scrollbar':
            case 'searchbox':
            case 'slider':
            case 'spinbutton':
            case 'switch':
            case 'tab':
            case 'textbox':
            case 'tree':
            case 'treeitem':
                return true;
            default:
                return false;
        }
    }
    isInteresting(insideControl) {
        const role = __classPrivateFieldGet(this, _AXNode_role, "f");
        if (role === 'Ignored' || __classPrivateFieldGet(this, _AXNode_hidden, "f") || __classPrivateFieldGet(this, _AXNode_ignored, "f")) {
            return false;
        }
        if (__classPrivateFieldGet(this, _AXNode_focusable, "f") || __classPrivateFieldGet(this, _AXNode_richlyEditable, "f")) {
            return true;
        }
        // If it's not focusable but has a control role, then it's interesting.
        if (this.isControl()) {
            return true;
        }
        // A non focusable child of a control is not interesting
        if (insideControl) {
            return false;
        }
        return this.isLeafNode() && !!__classPrivateFieldGet(this, _AXNode_name, "f");
    }
    serialize() {
        const properties = new Map();
        for (const property of this.payload.properties || []) {
            properties.set(property.name.toLowerCase(), property.value.value);
        }
        if (this.payload.name) {
            properties.set('name', this.payload.name.value);
        }
        if (this.payload.value) {
            properties.set('value', this.payload.value.value);
        }
        if (this.payload.description) {
            properties.set('description', this.payload.description.value);
        }
        const node = {
            role: __classPrivateFieldGet(this, _AXNode_role, "f"),
        };
        const userStringProperties = [
            'name',
            'value',
            'description',
            'keyshortcuts',
            'roledescription',
            'valuetext',
        ];
        const getUserStringPropertyValue = (key) => {
            return properties.get(key);
        };
        for (const userStringProperty of userStringProperties) {
            if (!properties.has(userStringProperty)) {
                continue;
            }
            node[userStringProperty] = getUserStringPropertyValue(userStringProperty);
        }
        const booleanProperties = [
            'disabled',
            'expanded',
            'focused',
            'modal',
            'multiline',
            'multiselectable',
            'readonly',
            'required',
            'selected',
        ];
        const getBooleanPropertyValue = (key) => {
            return properties.get(key);
        };
        for (const booleanProperty of booleanProperties) {
            // RootWebArea's treat focus differently than other nodes. They report whether
            // their frame  has focus, not whether focus is specifically on the root
            // node.
            if (booleanProperty === 'focused' && __classPrivateFieldGet(this, _AXNode_role, "f") === 'RootWebArea') {
                continue;
            }
            const value = getBooleanPropertyValue(booleanProperty);
            if (!value) {
                continue;
            }
            node[booleanProperty] = getBooleanPropertyValue(booleanProperty);
        }
        const tristateProperties = ['checked', 'pressed'];
        for (const tristateProperty of tristateProperties) {
            if (!properties.has(tristateProperty)) {
                continue;
            }
            const value = properties.get(tristateProperty);
            node[tristateProperty] =
                value === 'mixed' ? 'mixed' : value === 'true' ? true : false;
        }
        const numericalProperties = [
            'level',
            'valuemax',
            'valuemin',
        ];
        const getNumericalPropertyValue = (key) => {
            return properties.get(key);
        };
        for (const numericalProperty of numericalProperties) {
            if (!properties.has(numericalProperty)) {
                continue;
            }
            node[numericalProperty] = getNumericalPropertyValue(numericalProperty);
        }
        const tokenProperties = [
            'autocomplete',
            'haspopup',
            'invalid',
            'orientation',
        ];
        const getTokenPropertyValue = (key) => {
            return properties.get(key);
        };
        for (const tokenProperty of tokenProperties) {
            const value = getTokenPropertyValue(tokenProperty);
            if (!value || value === 'false') {
                continue;
            }
            node[tokenProperty] = getTokenPropertyValue(tokenProperty);
        }
        return node;
    }
    static createTree(payloads) {
        const nodeById = new Map();
        for (const payload of payloads) {
            nodeById.set(payload.nodeId, new AXNode(payload));
        }
        for (const node of nodeById.values()) {
            for (const childId of node.payload.childIds || []) {
                const child = nodeById.get(childId);
                if (child) {
                    node.children.push(child);
                }
            }
        }
        return nodeById.values().next().value;
    }
}
_AXNode_richlyEditable = new WeakMap(), _AXNode_editable = new WeakMap(), _AXNode_focusable = new WeakMap(), _AXNode_hidden = new WeakMap(), _AXNode_name = new WeakMap(), _AXNode_role = new WeakMap(), _AXNode_ignored = new WeakMap(), _AXNode_cachedHasFocusableChild = new WeakMap(), _AXNode_instances = new WeakSet(), _AXNode_isPlainTextField = function _AXNode_isPlainTextField() {
    if (__classPrivateFieldGet(this, _AXNode_richlyEditable, "f")) {
        return false;
    }
    if (__classPrivateFieldGet(this, _AXNode_editable, "f")) {
        return true;
    }
    return __classPrivateFieldGet(this, _AXNode_role, "f") === 'textbox' || __classPrivateFieldGet(this, _AXNode_role, "f") === 'searchbox';
}, _AXNode_isTextOnlyObject = function _AXNode_isTextOnlyObject() {
    const role = __classPrivateFieldGet(this, _AXNode_role, "f");
    return role === 'LineBreak' || role === 'text' || role === 'InlineTextBox';
}, _AXNode_hasFocusableChild = function _AXNode_hasFocusableChild() {
    if (__classPrivateFieldGet(this, _AXNode_cachedHasFocusableChild, "f") === undefined) {
        __classPrivateFieldSet(this, _AXNode_cachedHasFocusableChild, false, "f");
        for (const child of this.children) {
            if (__classPrivateFieldGet(child, _AXNode_focusable, "f") || __classPrivateFieldGet(child, _AXNode_instances, "m", _AXNode_hasFocusableChild).call(child)) {
                __classPrivateFieldSet(this, _AXNode_cachedHasFocusableChild, true, "f");
                break;
            }
        }
    }
    return __classPrivateFieldGet(this, _AXNode_cachedHasFocusableChild, "f");
};
//# sourceMappingURL=Accessibility.js.map