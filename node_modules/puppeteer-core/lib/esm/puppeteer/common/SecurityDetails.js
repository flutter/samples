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
var _SecurityDetails_subjectName, _SecurityDetails_issuer, _SecurityDetails_validFrom, _SecurityDetails_validTo, _SecurityDetails_protocol, _SecurityDetails_sanList;
/**
 * The SecurityDetails class represents the security details of a
 * response that was received over a secure connection.
 *
 * @public
 */
export class SecurityDetails {
    /**
     * @internal
     */
    constructor(securityPayload) {
        _SecurityDetails_subjectName.set(this, void 0);
        _SecurityDetails_issuer.set(this, void 0);
        _SecurityDetails_validFrom.set(this, void 0);
        _SecurityDetails_validTo.set(this, void 0);
        _SecurityDetails_protocol.set(this, void 0);
        _SecurityDetails_sanList.set(this, void 0);
        __classPrivateFieldSet(this, _SecurityDetails_subjectName, securityPayload.subjectName, "f");
        __classPrivateFieldSet(this, _SecurityDetails_issuer, securityPayload.issuer, "f");
        __classPrivateFieldSet(this, _SecurityDetails_validFrom, securityPayload.validFrom, "f");
        __classPrivateFieldSet(this, _SecurityDetails_validTo, securityPayload.validTo, "f");
        __classPrivateFieldSet(this, _SecurityDetails_protocol, securityPayload.protocol, "f");
        __classPrivateFieldSet(this, _SecurityDetails_sanList, securityPayload.sanList, "f");
    }
    /**
     * @returns The name of the issuer of the certificate.
     */
    issuer() {
        return __classPrivateFieldGet(this, _SecurityDetails_issuer, "f");
    }
    /**
     * @returns {@link https://en.wikipedia.org/wiki/Unix_time | Unix timestamp}
     * marking the start of the certificate's validity.
     */
    validFrom() {
        return __classPrivateFieldGet(this, _SecurityDetails_validFrom, "f");
    }
    /**
     * @returns {@link https://en.wikipedia.org/wiki/Unix_time | Unix timestamp}
     * marking the end of the certificate's validity.
     */
    validTo() {
        return __classPrivateFieldGet(this, _SecurityDetails_validTo, "f");
    }
    /**
     * @returns The security protocol being used, e.g. "TLS 1.2".
     */
    protocol() {
        return __classPrivateFieldGet(this, _SecurityDetails_protocol, "f");
    }
    /**
     * @returns The name of the subject to which the certificate was issued.
     */
    subjectName() {
        return __classPrivateFieldGet(this, _SecurityDetails_subjectName, "f");
    }
    /**
     * @returns The list of {@link https://en.wikipedia.org/wiki/Subject_Alternative_Name | subject alternative names (SANs)} of the certificate.
     */
    subjectAlternativeNames() {
        return __classPrivateFieldGet(this, _SecurityDetails_sanList, "f");
    }
}
_SecurityDetails_subjectName = new WeakMap(), _SecurityDetails_issuer = new WeakMap(), _SecurityDetails_validFrom = new WeakMap(), _SecurityDetails_validTo = new WeakMap(), _SecurityDetails_protocol = new WeakMap(), _SecurityDetails_sanList = new WeakMap();
//# sourceMappingURL=SecurityDetails.js.map