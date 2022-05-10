// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// Represents the state of an in-app purchase of ad removal such as
/// [AdRemovalPurchase.notStarted()] or [AdRemovalPurchase.active()].
class AdRemovalPurchase {
  /// The representation of this product on the stores.
  static const productId = 'remove_ads';

  /// This is `true` if the `remove_ad` product has been purchased and verified.
  /// Do not show ads if so.
  final bool active;

  /// This is `true` when the purchase is pending.
  final bool pending;

  /// If there was an error with the purchase, this field will contain
  /// that error.
  final Object? error;

  const AdRemovalPurchase.active() : this._(true, false, null);

  const AdRemovalPurchase.error(Object error) : this._(false, false, error);

  const AdRemovalPurchase.notStarted() : this._(false, false, null);

  const AdRemovalPurchase.pending() : this._(false, true, null);

  const AdRemovalPurchase._(this.active, this.pending, this.error);

  @override
  int get hashCode => Object.hash(active, pending, error);

  @override
  bool operator ==(Object other) =>
      other is AdRemovalPurchase &&
      other.active == active &&
      other.pending == pending &&
      other.error == error;
}
