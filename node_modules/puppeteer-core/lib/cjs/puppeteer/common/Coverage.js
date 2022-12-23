"use strict";
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
var _Coverage_jsCoverage, _Coverage_cssCoverage, _JSCoverage_instances, _JSCoverage_client, _JSCoverage_enabled, _JSCoverage_scriptURLs, _JSCoverage_scriptSources, _JSCoverage_eventListeners, _JSCoverage_resetOnNavigation, _JSCoverage_reportAnonymousScripts, _JSCoverage_includeRawScriptCoverage, _JSCoverage_onExecutionContextsCleared, _JSCoverage_onScriptParsed, _CSSCoverage_instances, _CSSCoverage_client, _CSSCoverage_enabled, _CSSCoverage_stylesheetURLs, _CSSCoverage_stylesheetSources, _CSSCoverage_eventListeners, _CSSCoverage_resetOnNavigation, _CSSCoverage_onExecutionContextsCleared, _CSSCoverage_onStyleSheet;
Object.defineProperty(exports, "__esModule", { value: true });
exports.CSSCoverage = exports.JSCoverage = exports.Coverage = void 0;
const assert_js_1 = require("../util/assert.js");
const util_js_1 = require("./util.js");
const ExecutionContext_js_1 = require("./ExecutionContext.js");
const util_js_2 = require("./util.js");
/**
 * The Coverage class provides methods to gathers information about parts of
 * JavaScript and CSS that were used by the page.
 *
 * @remarks
 * To output coverage in a form consumable by {@link https://github.com/istanbuljs | Istanbul},
 * see {@link https://github.com/istanbuljs/puppeteer-to-istanbul | puppeteer-to-istanbul}.
 *
 * @example
 * An example of using JavaScript and CSS coverage to get percentage of initially
 * executed code:
 *
 * ```ts
 * // Enable both JavaScript and CSS coverage
 * await Promise.all([
 *   page.coverage.startJSCoverage(),
 *   page.coverage.startCSSCoverage(),
 * ]);
 * // Navigate to page
 * await page.goto('https://example.com');
 * // Disable both JavaScript and CSS coverage
 * const [jsCoverage, cssCoverage] = await Promise.all([
 *   page.coverage.stopJSCoverage(),
 *   page.coverage.stopCSSCoverage(),
 * ]);
 * let totalBytes = 0;
 * let usedBytes = 0;
 * const coverage = [...jsCoverage, ...cssCoverage];
 * for (const entry of coverage) {
 *   totalBytes += entry.text.length;
 *   for (const range of entry.ranges) usedBytes += range.end - range.start - 1;
 * }
 * console.log(`Bytes used: ${(usedBytes / totalBytes) * 100}%`);
 * ```
 *
 * @public
 */
class Coverage {
    constructor(client) {
        _Coverage_jsCoverage.set(this, void 0);
        _Coverage_cssCoverage.set(this, void 0);
        __classPrivateFieldSet(this, _Coverage_jsCoverage, new JSCoverage(client), "f");
        __classPrivateFieldSet(this, _Coverage_cssCoverage, new CSSCoverage(client), "f");
    }
    /**
     * @param options - Set of configurable options for coverage defaults to
     * `resetOnNavigation : true, reportAnonymousScripts : false,`
     * `includeRawScriptCoverage : false, useBlockCoverage : true`
     * @returns Promise that resolves when coverage is started.
     *
     * @remarks
     * Anonymous scripts are ones that don't have an associated url. These are
     * scripts that are dynamically created on the page using `eval` or
     * `new Function`. If `reportAnonymousScripts` is set to `true`, anonymous
     * scripts URL will start with `debugger://VM` (unless a magic //# sourceURL
     * comment is present, in which case that will the be URL).
     */
    async startJSCoverage(options = {}) {
        return await __classPrivateFieldGet(this, _Coverage_jsCoverage, "f").start(options);
    }
    /**
     * @returns Promise that resolves to the array of coverage reports for
     * all scripts.
     *
     * @remarks
     * JavaScript Coverage doesn't include anonymous scripts by default.
     * However, scripts with sourceURLs are reported.
     */
    async stopJSCoverage() {
        return await __classPrivateFieldGet(this, _Coverage_jsCoverage, "f").stop();
    }
    /**
     * @param options - Set of configurable options for coverage, defaults to
     * `resetOnNavigation : true`
     * @returns Promise that resolves when coverage is started.
     */
    async startCSSCoverage(options = {}) {
        return await __classPrivateFieldGet(this, _Coverage_cssCoverage, "f").start(options);
    }
    /**
     * @returns Promise that resolves to the array of coverage reports
     * for all stylesheets.
     * @remarks
     * CSS Coverage doesn't include dynamically injected style tags
     * without sourceURLs.
     */
    async stopCSSCoverage() {
        return await __classPrivateFieldGet(this, _Coverage_cssCoverage, "f").stop();
    }
}
exports.Coverage = Coverage;
_Coverage_jsCoverage = new WeakMap(), _Coverage_cssCoverage = new WeakMap();
/**
 * @public
 */
class JSCoverage {
    constructor(client) {
        _JSCoverage_instances.add(this);
        _JSCoverage_client.set(this, void 0);
        _JSCoverage_enabled.set(this, false);
        _JSCoverage_scriptURLs.set(this, new Map());
        _JSCoverage_scriptSources.set(this, new Map());
        _JSCoverage_eventListeners.set(this, []);
        _JSCoverage_resetOnNavigation.set(this, false);
        _JSCoverage_reportAnonymousScripts.set(this, false);
        _JSCoverage_includeRawScriptCoverage.set(this, false);
        __classPrivateFieldSet(this, _JSCoverage_client, client, "f");
    }
    async start(options = {}) {
        (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _JSCoverage_enabled, "f"), 'JSCoverage is already enabled');
        const { resetOnNavigation = true, reportAnonymousScripts = false, includeRawScriptCoverage = false, useBlockCoverage = true, } = options;
        __classPrivateFieldSet(this, _JSCoverage_resetOnNavigation, resetOnNavigation, "f");
        __classPrivateFieldSet(this, _JSCoverage_reportAnonymousScripts, reportAnonymousScripts, "f");
        __classPrivateFieldSet(this, _JSCoverage_includeRawScriptCoverage, includeRawScriptCoverage, "f");
        __classPrivateFieldSet(this, _JSCoverage_enabled, true, "f");
        __classPrivateFieldGet(this, _JSCoverage_scriptURLs, "f").clear();
        __classPrivateFieldGet(this, _JSCoverage_scriptSources, "f").clear();
        __classPrivateFieldSet(this, _JSCoverage_eventListeners, [
            (0, util_js_1.addEventListener)(__classPrivateFieldGet(this, _JSCoverage_client, "f"), 'Debugger.scriptParsed', __classPrivateFieldGet(this, _JSCoverage_instances, "m", _JSCoverage_onScriptParsed).bind(this)),
            (0, util_js_1.addEventListener)(__classPrivateFieldGet(this, _JSCoverage_client, "f"), 'Runtime.executionContextsCleared', __classPrivateFieldGet(this, _JSCoverage_instances, "m", _JSCoverage_onExecutionContextsCleared).bind(this)),
        ], "f");
        await Promise.all([
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Profiler.enable'),
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Profiler.startPreciseCoverage', {
                callCount: __classPrivateFieldGet(this, _JSCoverage_includeRawScriptCoverage, "f"),
                detailed: useBlockCoverage,
            }),
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Debugger.enable'),
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Debugger.setSkipAllPauses', { skip: true }),
        ]);
    }
    async stop() {
        (0, assert_js_1.assert)(__classPrivateFieldGet(this, _JSCoverage_enabled, "f"), 'JSCoverage is not enabled');
        __classPrivateFieldSet(this, _JSCoverage_enabled, false, "f");
        const result = await Promise.all([
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Profiler.takePreciseCoverage'),
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Profiler.stopPreciseCoverage'),
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Profiler.disable'),
            __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Debugger.disable'),
        ]);
        (0, util_js_2.removeEventListeners)(__classPrivateFieldGet(this, _JSCoverage_eventListeners, "f"));
        const coverage = [];
        const profileResponse = result[0];
        for (const entry of profileResponse.result) {
            let url = __classPrivateFieldGet(this, _JSCoverage_scriptURLs, "f").get(entry.scriptId);
            if (!url && __classPrivateFieldGet(this, _JSCoverage_reportAnonymousScripts, "f")) {
                url = 'debugger://VM' + entry.scriptId;
            }
            const text = __classPrivateFieldGet(this, _JSCoverage_scriptSources, "f").get(entry.scriptId);
            if (text === undefined || url === undefined) {
                continue;
            }
            const flattenRanges = [];
            for (const func of entry.functions) {
                flattenRanges.push(...func.ranges);
            }
            const ranges = convertToDisjointRanges(flattenRanges);
            if (!__classPrivateFieldGet(this, _JSCoverage_includeRawScriptCoverage, "f")) {
                coverage.push({ url, ranges, text });
            }
            else {
                coverage.push({ url, ranges, text, rawScriptCoverage: entry });
            }
        }
        return coverage;
    }
}
exports.JSCoverage = JSCoverage;
_JSCoverage_client = new WeakMap(), _JSCoverage_enabled = new WeakMap(), _JSCoverage_scriptURLs = new WeakMap(), _JSCoverage_scriptSources = new WeakMap(), _JSCoverage_eventListeners = new WeakMap(), _JSCoverage_resetOnNavigation = new WeakMap(), _JSCoverage_reportAnonymousScripts = new WeakMap(), _JSCoverage_includeRawScriptCoverage = new WeakMap(), _JSCoverage_instances = new WeakSet(), _JSCoverage_onExecutionContextsCleared = function _JSCoverage_onExecutionContextsCleared() {
    if (!__classPrivateFieldGet(this, _JSCoverage_resetOnNavigation, "f")) {
        return;
    }
    __classPrivateFieldGet(this, _JSCoverage_scriptURLs, "f").clear();
    __classPrivateFieldGet(this, _JSCoverage_scriptSources, "f").clear();
}, _JSCoverage_onScriptParsed = async function _JSCoverage_onScriptParsed(event) {
    // Ignore puppeteer-injected scripts
    if (event.url === ExecutionContext_js_1.EVALUATION_SCRIPT_URL) {
        return;
    }
    // Ignore other anonymous scripts unless the reportAnonymousScripts option is true.
    if (!event.url && !__classPrivateFieldGet(this, _JSCoverage_reportAnonymousScripts, "f")) {
        return;
    }
    try {
        const response = await __classPrivateFieldGet(this, _JSCoverage_client, "f").send('Debugger.getScriptSource', {
            scriptId: event.scriptId,
        });
        __classPrivateFieldGet(this, _JSCoverage_scriptURLs, "f").set(event.scriptId, event.url);
        __classPrivateFieldGet(this, _JSCoverage_scriptSources, "f").set(event.scriptId, response.scriptSource);
    }
    catch (error) {
        // This might happen if the page has already navigated away.
        (0, util_js_1.debugError)(error);
    }
};
/**
 * @public
 */
class CSSCoverage {
    constructor(client) {
        _CSSCoverage_instances.add(this);
        _CSSCoverage_client.set(this, void 0);
        _CSSCoverage_enabled.set(this, false);
        _CSSCoverage_stylesheetURLs.set(this, new Map());
        _CSSCoverage_stylesheetSources.set(this, new Map());
        _CSSCoverage_eventListeners.set(this, []);
        _CSSCoverage_resetOnNavigation.set(this, false);
        __classPrivateFieldSet(this, _CSSCoverage_client, client, "f");
    }
    async start(options = {}) {
        (0, assert_js_1.assert)(!__classPrivateFieldGet(this, _CSSCoverage_enabled, "f"), 'CSSCoverage is already enabled');
        const { resetOnNavigation = true } = options;
        __classPrivateFieldSet(this, _CSSCoverage_resetOnNavigation, resetOnNavigation, "f");
        __classPrivateFieldSet(this, _CSSCoverage_enabled, true, "f");
        __classPrivateFieldGet(this, _CSSCoverage_stylesheetURLs, "f").clear();
        __classPrivateFieldGet(this, _CSSCoverage_stylesheetSources, "f").clear();
        __classPrivateFieldSet(this, _CSSCoverage_eventListeners, [
            (0, util_js_1.addEventListener)(__classPrivateFieldGet(this, _CSSCoverage_client, "f"), 'CSS.styleSheetAdded', __classPrivateFieldGet(this, _CSSCoverage_instances, "m", _CSSCoverage_onStyleSheet).bind(this)),
            (0, util_js_1.addEventListener)(__classPrivateFieldGet(this, _CSSCoverage_client, "f"), 'Runtime.executionContextsCleared', __classPrivateFieldGet(this, _CSSCoverage_instances, "m", _CSSCoverage_onExecutionContextsCleared).bind(this)),
        ], "f");
        await Promise.all([
            __classPrivateFieldGet(this, _CSSCoverage_client, "f").send('DOM.enable'),
            __classPrivateFieldGet(this, _CSSCoverage_client, "f").send('CSS.enable'),
            __classPrivateFieldGet(this, _CSSCoverage_client, "f").send('CSS.startRuleUsageTracking'),
        ]);
    }
    async stop() {
        (0, assert_js_1.assert)(__classPrivateFieldGet(this, _CSSCoverage_enabled, "f"), 'CSSCoverage is not enabled');
        __classPrivateFieldSet(this, _CSSCoverage_enabled, false, "f");
        const ruleTrackingResponse = await __classPrivateFieldGet(this, _CSSCoverage_client, "f").send('CSS.stopRuleUsageTracking');
        await Promise.all([
            __classPrivateFieldGet(this, _CSSCoverage_client, "f").send('CSS.disable'),
            __classPrivateFieldGet(this, _CSSCoverage_client, "f").send('DOM.disable'),
        ]);
        (0, util_js_2.removeEventListeners)(__classPrivateFieldGet(this, _CSSCoverage_eventListeners, "f"));
        // aggregate by styleSheetId
        const styleSheetIdToCoverage = new Map();
        for (const entry of ruleTrackingResponse.ruleUsage) {
            let ranges = styleSheetIdToCoverage.get(entry.styleSheetId);
            if (!ranges) {
                ranges = [];
                styleSheetIdToCoverage.set(entry.styleSheetId, ranges);
            }
            ranges.push({
                startOffset: entry.startOffset,
                endOffset: entry.endOffset,
                count: entry.used ? 1 : 0,
            });
        }
        const coverage = [];
        for (const styleSheetId of __classPrivateFieldGet(this, _CSSCoverage_stylesheetURLs, "f").keys()) {
            const url = __classPrivateFieldGet(this, _CSSCoverage_stylesheetURLs, "f").get(styleSheetId);
            (0, assert_js_1.assert)(typeof url !== 'undefined', `Stylesheet URL is undefined (styleSheetId=${styleSheetId})`);
            const text = __classPrivateFieldGet(this, _CSSCoverage_stylesheetSources, "f").get(styleSheetId);
            (0, assert_js_1.assert)(typeof text !== 'undefined', `Stylesheet text is undefined (styleSheetId=${styleSheetId})`);
            const ranges = convertToDisjointRanges(styleSheetIdToCoverage.get(styleSheetId) || []);
            coverage.push({ url, ranges, text });
        }
        return coverage;
    }
}
exports.CSSCoverage = CSSCoverage;
_CSSCoverage_client = new WeakMap(), _CSSCoverage_enabled = new WeakMap(), _CSSCoverage_stylesheetURLs = new WeakMap(), _CSSCoverage_stylesheetSources = new WeakMap(), _CSSCoverage_eventListeners = new WeakMap(), _CSSCoverage_resetOnNavigation = new WeakMap(), _CSSCoverage_instances = new WeakSet(), _CSSCoverage_onExecutionContextsCleared = function _CSSCoverage_onExecutionContextsCleared() {
    if (!__classPrivateFieldGet(this, _CSSCoverage_resetOnNavigation, "f")) {
        return;
    }
    __classPrivateFieldGet(this, _CSSCoverage_stylesheetURLs, "f").clear();
    __classPrivateFieldGet(this, _CSSCoverage_stylesheetSources, "f").clear();
}, _CSSCoverage_onStyleSheet = async function _CSSCoverage_onStyleSheet(event) {
    const header = event.header;
    // Ignore anonymous scripts
    if (!header.sourceURL) {
        return;
    }
    try {
        const response = await __classPrivateFieldGet(this, _CSSCoverage_client, "f").send('CSS.getStyleSheetText', {
            styleSheetId: header.styleSheetId,
        });
        __classPrivateFieldGet(this, _CSSCoverage_stylesheetURLs, "f").set(header.styleSheetId, header.sourceURL);
        __classPrivateFieldGet(this, _CSSCoverage_stylesheetSources, "f").set(header.styleSheetId, response.text);
    }
    catch (error) {
        // This might happen if the page has already navigated away.
        (0, util_js_1.debugError)(error);
    }
};
function convertToDisjointRanges(nestedRanges) {
    const points = [];
    for (const range of nestedRanges) {
        points.push({ offset: range.startOffset, type: 0, range });
        points.push({ offset: range.endOffset, type: 1, range });
    }
    // Sort points to form a valid parenthesis sequence.
    points.sort((a, b) => {
        // Sort with increasing offsets.
        if (a.offset !== b.offset) {
            return a.offset - b.offset;
        }
        // All "end" points should go before "start" points.
        if (a.type !== b.type) {
            return b.type - a.type;
        }
        const aLength = a.range.endOffset - a.range.startOffset;
        const bLength = b.range.endOffset - b.range.startOffset;
        // For two "start" points, the one with longer range goes first.
        if (a.type === 0) {
            return bLength - aLength;
        }
        // For two "end" points, the one with shorter range goes first.
        return aLength - bLength;
    });
    const hitCountStack = [];
    const results = [];
    let lastOffset = 0;
    // Run scanning line to intersect all ranges.
    for (const point of points) {
        if (hitCountStack.length &&
            lastOffset < point.offset &&
            hitCountStack[hitCountStack.length - 1] > 0) {
            const lastResult = results[results.length - 1];
            if (lastResult && lastResult.end === lastOffset) {
                lastResult.end = point.offset;
            }
            else {
                results.push({ start: lastOffset, end: point.offset });
            }
        }
        lastOffset = point.offset;
        if (point.type === 0) {
            hitCountStack.push(point.range.count);
        }
        else {
            hitCountStack.pop();
        }
    }
    // Filter out empty ranges.
    return results.filter(range => {
        return range.end - range.start > 0;
    });
}
//# sourceMappingURL=Coverage.js.map