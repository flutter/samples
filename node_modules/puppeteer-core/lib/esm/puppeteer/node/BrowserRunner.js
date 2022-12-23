/**
 * Copyright 2020 Google Inc. All rights reserved.
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
var _BrowserRunner_product, _BrowserRunner_executablePath, _BrowserRunner_processArguments, _BrowserRunner_userDataDir, _BrowserRunner_isTempUserDataDir, _BrowserRunner_closed, _BrowserRunner_listeners, _BrowserRunner_processClosing;
import * as childProcess from 'child_process';
import * as fs from 'fs';
import * as path from 'path';
import * as readline from 'readline';
import removeFolder from 'rimraf';
import { promisify } from 'util';
import { Connection } from '../common/Connection.js';
import { debug } from '../common/Debug.js';
import { TimeoutError } from '../common/Errors.js';
import { NodeWebSocketTransport as WebSocketTransport } from '../common/NodeWebSocketTransport.js';
import { addEventListener, debugError, removeEventListeners, } from '../common/util.js';
import { assert } from '../util/assert.js';
import { isErrnoException, isErrorLike } from '../util/ErrorLike.js';
import { PipeTransport } from './PipeTransport.js';
const removeFolderAsync = promisify(removeFolder);
const renameAsync = promisify(fs.rename);
const unlinkAsync = promisify(fs.unlink);
const debugLauncher = debug('puppeteer:launcher');
const PROCESS_ERROR_EXPLANATION = `Puppeteer was unable to kill the process which ran the browser binary.
This means that, on future Puppeteer launches, Puppeteer might not be able to launch the browser.
Please check your open processes and ensure that the browser processes that Puppeteer launched have been killed.
If you think this is a bug, please report it on the Puppeteer issue tracker.`;
/**
 * @internal
 */
export class BrowserRunner {
    constructor(product, executablePath, processArguments, userDataDir, isTempUserDataDir) {
        _BrowserRunner_product.set(this, void 0);
        _BrowserRunner_executablePath.set(this, void 0);
        _BrowserRunner_processArguments.set(this, void 0);
        _BrowserRunner_userDataDir.set(this, void 0);
        _BrowserRunner_isTempUserDataDir.set(this, void 0);
        _BrowserRunner_closed.set(this, true);
        _BrowserRunner_listeners.set(this, []);
        _BrowserRunner_processClosing.set(this, void 0);
        __classPrivateFieldSet(this, _BrowserRunner_product, product, "f");
        __classPrivateFieldSet(this, _BrowserRunner_executablePath, executablePath, "f");
        __classPrivateFieldSet(this, _BrowserRunner_processArguments, processArguments, "f");
        __classPrivateFieldSet(this, _BrowserRunner_userDataDir, userDataDir, "f");
        __classPrivateFieldSet(this, _BrowserRunner_isTempUserDataDir, isTempUserDataDir, "f");
    }
    start(options) {
        var _a, _b;
        const { handleSIGINT, handleSIGTERM, handleSIGHUP, dumpio, env, pipe } = options;
        let stdio;
        if (pipe) {
            if (dumpio) {
                stdio = ['ignore', 'pipe', 'pipe', 'pipe', 'pipe'];
            }
            else {
                stdio = ['ignore', 'ignore', 'ignore', 'pipe', 'pipe'];
            }
        }
        else {
            if (dumpio) {
                stdio = ['pipe', 'pipe', 'pipe'];
            }
            else {
                stdio = ['pipe', 'ignore', 'pipe'];
            }
        }
        assert(!this.proc, 'This process has previously been started.');
        debugLauncher(`Calling ${__classPrivateFieldGet(this, _BrowserRunner_executablePath, "f")} ${__classPrivateFieldGet(this, _BrowserRunner_processArguments, "f").join(' ')}`);
        this.proc = childProcess.spawn(__classPrivateFieldGet(this, _BrowserRunner_executablePath, "f"), __classPrivateFieldGet(this, _BrowserRunner_processArguments, "f"), {
            // On non-windows platforms, `detached: true` makes child process a
            // leader of a new process group, making it possible to kill child
            // process tree with `.kill(-pid)` command. @see
            // https://nodejs.org/api/child_process.html#child_process_options_detached
            detached: process.platform !== 'win32',
            env,
            stdio,
        });
        if (dumpio) {
            (_a = this.proc.stderr) === null || _a === void 0 ? void 0 : _a.pipe(process.stderr);
            (_b = this.proc.stdout) === null || _b === void 0 ? void 0 : _b.pipe(process.stdout);
        }
        __classPrivateFieldSet(this, _BrowserRunner_closed, false, "f");
        __classPrivateFieldSet(this, _BrowserRunner_processClosing, new Promise((fulfill, reject) => {
            this.proc.once('exit', async () => {
                __classPrivateFieldSet(this, _BrowserRunner_closed, true, "f");
                // Cleanup as processes exit.
                if (__classPrivateFieldGet(this, _BrowserRunner_isTempUserDataDir, "f")) {
                    try {
                        await removeFolderAsync(__classPrivateFieldGet(this, _BrowserRunner_userDataDir, "f"));
                        fulfill();
                    }
                    catch (error) {
                        debugError(error);
                        reject(error);
                    }
                }
                else {
                    if (__classPrivateFieldGet(this, _BrowserRunner_product, "f") === 'firefox') {
                        try {
                            // When an existing user profile has been used remove the user
                            // preferences file and restore possibly backuped preferences.
                            await unlinkAsync(path.join(__classPrivateFieldGet(this, _BrowserRunner_userDataDir, "f"), 'user.js'));
                            const prefsBackupPath = path.join(__classPrivateFieldGet(this, _BrowserRunner_userDataDir, "f"), 'prefs.js.puppeteer');
                            if (fs.existsSync(prefsBackupPath)) {
                                const prefsPath = path.join(__classPrivateFieldGet(this, _BrowserRunner_userDataDir, "f"), 'prefs.js');
                                await unlinkAsync(prefsPath);
                                await renameAsync(prefsBackupPath, prefsPath);
                            }
                        }
                        catch (error) {
                            debugError(error);
                            reject(error);
                        }
                    }
                    fulfill();
                }
            });
        }), "f");
        __classPrivateFieldSet(this, _BrowserRunner_listeners, [addEventListener(process, 'exit', this.kill.bind(this))], "f");
        if (handleSIGINT) {
            __classPrivateFieldGet(this, _BrowserRunner_listeners, "f").push(addEventListener(process, 'SIGINT', () => {
                this.kill();
                process.exit(130);
            }));
        }
        if (handleSIGTERM) {
            __classPrivateFieldGet(this, _BrowserRunner_listeners, "f").push(addEventListener(process, 'SIGTERM', this.close.bind(this)));
        }
        if (handleSIGHUP) {
            __classPrivateFieldGet(this, _BrowserRunner_listeners, "f").push(addEventListener(process, 'SIGHUP', this.close.bind(this)));
        }
    }
    close() {
        if (__classPrivateFieldGet(this, _BrowserRunner_closed, "f")) {
            return Promise.resolve();
        }
        if (__classPrivateFieldGet(this, _BrowserRunner_isTempUserDataDir, "f")) {
            this.kill();
        }
        else if (this.connection) {
            // Attempt to close the browser gracefully
            this.connection.send('Browser.close').catch(error => {
                debugError(error);
                this.kill();
            });
        }
        // Cleanup this listener last, as that makes sure the full callback runs. If we
        // perform this earlier, then the previous function calls would not happen.
        removeEventListeners(__classPrivateFieldGet(this, _BrowserRunner_listeners, "f"));
        return __classPrivateFieldGet(this, _BrowserRunner_processClosing, "f");
    }
    kill() {
        // If the process failed to launch (for example if the browser executable path
        // is invalid), then the process does not get a pid assigned. A call to
        // `proc.kill` would error, as the `pid` to-be-killed can not be found.
        if (this.proc && this.proc.pid && pidExists(this.proc.pid)) {
            const proc = this.proc;
            try {
                if (process.platform === 'win32') {
                    childProcess.exec(`taskkill /pid ${this.proc.pid} /T /F`, error => {
                        if (error) {
                            // taskkill can fail to kill the process e.g. due to missing permissions.
                            // Let's kill the process via Node API. This delays killing of all child
                            // processes of `this.proc` until the main Node.js process dies.
                            proc.kill();
                        }
                    });
                }
                else {
                    // on linux the process group can be killed with the group id prefixed with
                    // a minus sign. The process group id is the group leader's pid.
                    const processGroupId = -this.proc.pid;
                    try {
                        process.kill(processGroupId, 'SIGKILL');
                    }
                    catch (error) {
                        // Killing the process group can fail due e.g. to missing permissions.
                        // Let's kill the process via Node API. This delays killing of all child
                        // processes of `this.proc` until the main Node.js process dies.
                        proc.kill('SIGKILL');
                    }
                }
            }
            catch (error) {
                throw new Error(`${PROCESS_ERROR_EXPLANATION}\nError cause: ${isErrorLike(error) ? error.stack : error}`);
            }
        }
        // Attempt to remove temporary profile directory to avoid littering.
        try {
            if (__classPrivateFieldGet(this, _BrowserRunner_isTempUserDataDir, "f")) {
                removeFolder.sync(__classPrivateFieldGet(this, _BrowserRunner_userDataDir, "f"));
            }
        }
        catch (error) { }
        // Cleanup this listener last, as that makes sure the full callback runs. If we
        // perform this earlier, then the previous function calls would not happen.
        removeEventListeners(__classPrivateFieldGet(this, _BrowserRunner_listeners, "f"));
    }
    async setupWebDriverBiDiConnection(options) {
        assert(this.proc, 'BrowserRunner not started.');
        const { timeout, slowMo, preferredRevision } = options;
        let browserWSEndpoint = await waitForWSEndpoint(this.proc, timeout, preferredRevision, /^WebDriver BiDi listening on (ws:\/\/.*)$/);
        browserWSEndpoint += '/session';
        const transport = await WebSocketTransport.create(browserWSEndpoint);
        const BiDi = await import('../common/bidi/bidi.js');
        return new BiDi.Connection(transport, slowMo);
    }
    async setupConnection(options) {
        assert(this.proc, 'BrowserRunner not started.');
        const { usePipe, timeout, slowMo, preferredRevision } = options;
        if (!usePipe) {
            const browserWSEndpoint = await waitForWSEndpoint(this.proc, timeout, preferredRevision);
            const transport = await WebSocketTransport.create(browserWSEndpoint);
            this.connection = new Connection(browserWSEndpoint, transport, slowMo);
        }
        else {
            // stdio was assigned during start(), and the 'pipe' option there adds the
            // 4th and 5th items to stdio array
            const { 3: pipeWrite, 4: pipeRead } = this.proc.stdio;
            const transport = new PipeTransport(pipeWrite, pipeRead);
            this.connection = new Connection('', transport, slowMo);
        }
        return this.connection;
    }
}
_BrowserRunner_product = new WeakMap(), _BrowserRunner_executablePath = new WeakMap(), _BrowserRunner_processArguments = new WeakMap(), _BrowserRunner_userDataDir = new WeakMap(), _BrowserRunner_isTempUserDataDir = new WeakMap(), _BrowserRunner_closed = new WeakMap(), _BrowserRunner_listeners = new WeakMap(), _BrowserRunner_processClosing = new WeakMap();
function waitForWSEndpoint(browserProcess, timeout, preferredRevision, regex = /^DevTools listening on (ws:\/\/.*)$/) {
    assert(browserProcess.stderr, '`browserProcess` does not have stderr.');
    const rl = readline.createInterface(browserProcess.stderr);
    let stderr = '';
    return new Promise((resolve, reject) => {
        const listeners = [
            addEventListener(rl, 'line', onLine),
            addEventListener(rl, 'close', () => {
                return onClose();
            }),
            addEventListener(browserProcess, 'exit', () => {
                return onClose();
            }),
            addEventListener(browserProcess, 'error', error => {
                return onClose(error);
            }),
        ];
        const timeoutId = timeout ? setTimeout(onTimeout, timeout) : 0;
        function onClose(error) {
            cleanup();
            reject(new Error([
                'Failed to launch the browser process!' +
                    (error ? ' ' + error.message : ''),
                stderr,
                '',
                'TROUBLESHOOTING: https://github.com/puppeteer/puppeteer/blob/main/docs/troubleshooting.md',
                '',
            ].join('\n')));
        }
        function onTimeout() {
            cleanup();
            reject(new TimeoutError(`Timed out after ${timeout} ms while trying to connect to the browser! Only Chrome at revision r${preferredRevision} is guaranteed to work.`));
        }
        function onLine(line) {
            stderr += line + '\n';
            const match = line.match(regex);
            if (!match) {
                return;
            }
            cleanup();
            // The RegExp matches, so this will obviously exist.
            resolve(match[1]);
        }
        function cleanup() {
            if (timeoutId) {
                clearTimeout(timeoutId);
            }
            removeEventListeners(listeners);
        }
    });
}
function pidExists(pid) {
    try {
        return process.kill(pid, 0);
    }
    catch (error) {
        if (isErrnoException(error)) {
            if (error.code && error.code === 'ESRCH') {
                return false;
            }
        }
        throw error;
    }
}
//# sourceMappingURL=BrowserRunner.js.map