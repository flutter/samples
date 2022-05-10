// Copyright 2022, the Flutter project authors. Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:logging/logging.dart';

import '../style/snack_bar.dart';
import 'ad_removal.dart';

/// Allows buying in-app. Facade of `package:in_app_purchase`.
class InAppPurchaseController extends ChangeNotifier {
  static final Logger _log = Logger('InAppPurchases');

  StreamSubscription<List<PurchaseDetails>>? _subscription;

  InAppPurchase inAppPurchaseInstance;

  AdRemovalPurchase _adRemoval = const AdRemovalPurchase.notStarted();

  /// Creates a new [InAppPurchaseController] with an injected
  /// [InAppPurchase] instance.
  ///
  /// Example usage:
  ///
  ///     var controller = InAppPurchaseController(InAppPurchase.instance);
  InAppPurchaseController(this.inAppPurchaseInstance);

  /// The current state of the ad removal purchase.
  AdRemovalPurchase get adRemoval => _adRemoval;

  /// Launches the platform UI for buying an in-app purchase.
  ///
  /// Currently, the only supported in-app purchase is ad removal.
  /// To support more, ad additional classes similar to [AdRemovalPurchase]
  /// and modify this method.
  Future<void> buy() async {
    if (!await inAppPurchaseInstance.isAvailable()) {
      _reportError('InAppPurchase.instance not available');
      return;
    }

    _adRemoval = const AdRemovalPurchase.pending();
    notifyListeners();

    _log.info('Querying the store with queryProductDetails()');
    final response = await inAppPurchaseInstance
        .queryProductDetails({AdRemovalPurchase.productId});

    if (response.error != null) {
      _reportError('There was an error when making the purchase: '
          '${response.error}');
      return;
    }

    if (response.productDetails.length != 1) {
      _log.info(
        'Products in response: '
        '${response.productDetails.map((e) => '${e.id}: ${e.title}, ').join()}',
      );
      _reportError('There was an error when making the purchase: '
          'product ${AdRemovalPurchase.productId} does not exist?');
      return;
    }
    final productDetails = response.productDetails.single;

    _log.info('Making the purchase');
    final purchaseParam = PurchaseParam(productDetails: productDetails);
    try {
      final success = await inAppPurchaseInstance.buyNonConsumable(
          purchaseParam: purchaseParam);
      _log.info('buyNonConsumable() request was sent with success: $success');
      // The result of the purchase will be reported in the purchaseStream,
      // which is handled in [_listenToPurchaseUpdated].
    } catch (e) {
      _log.severe(
          'Problem with calling inAppPurchaseInstance.buyNonConsumable(): '
          '$e');
    }
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

  /// Asks the underlying platform to list purchases that have been already
  /// made (for example, in a previous session of the game).
  Future<void> restorePurchases() async {
    if (!await inAppPurchaseInstance.isAvailable()) {
      _reportError('InAppPurchase.instance not available');
      return;
    }

    try {
      await inAppPurchaseInstance.restorePurchases();
    } catch (e) {
      _log.severe('Could not restore in-app purchases: $e');
    }
    _log.info('In-app purchases restored');
  }

  /// Subscribes to the [inAppPurchaseInstance.purchaseStream].
  void subscribe() {
    _subscription?.cancel();
    _subscription =
        inAppPurchaseInstance.purchaseStream.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription?.cancel();
    }, onError: (dynamic error) {
      _log.severe('Error occurred on the purchaseStream: $error');
    });
  }

  Future<void> _listenToPurchaseUpdated(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (final purchaseDetails in purchaseDetailsList) {
      _log.info(() => 'New PurchaseDetails instance received: '
          'productID=${purchaseDetails.productID}, '
          'status=${purchaseDetails.status}, '
          'purchaseID=${purchaseDetails.purchaseID}, '
          'error=${purchaseDetails.error}, '
          'pendingCompletePurchase=${purchaseDetails.pendingCompletePurchase}');

      if (purchaseDetails.productID != AdRemovalPurchase.productId) {
        _log.severe("The handling of the product with id "
            "'${purchaseDetails.productID}' is not implemented.");
        _adRemoval = const AdRemovalPurchase.notStarted();
        notifyListeners();
        continue;
      }

      switch (purchaseDetails.status) {
        case PurchaseStatus.pending:
          _adRemoval = const AdRemovalPurchase.pending();
          notifyListeners();
          break;
        case PurchaseStatus.purchased:
        case PurchaseStatus.restored:
          bool valid = await _verifyPurchase(purchaseDetails);
          if (valid) {
            _adRemoval = const AdRemovalPurchase.active();
            if (purchaseDetails.status == PurchaseStatus.purchased) {
              showSnackBar('Thank you for your support!');
            }
            notifyListeners();
          } else {
            _log.severe('Purchase verification failed: $purchaseDetails');
            _adRemoval = AdRemovalPurchase.error(
                StateError('Purchase could not be verified'));
            notifyListeners();
          }
          break;
        case PurchaseStatus.error:
          _log.severe('Error with purchase: ${purchaseDetails.error}');
          _adRemoval = AdRemovalPurchase.error(purchaseDetails.error!);
          notifyListeners();
          break;
        case PurchaseStatus.canceled:
          _adRemoval = const AdRemovalPurchase.notStarted();
          notifyListeners();
          break;
      }

      if (purchaseDetails.pendingCompletePurchase) {
        // Confirm purchase back to the store.
        await inAppPurchaseInstance.completePurchase(purchaseDetails);
      }
    }
  }

  void _reportError(String message) {
    _log.severe(message);
    showSnackBar(message);
    _adRemoval = AdRemovalPurchase.error(message);
    notifyListeners();
  }

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    _log.info('Verifying purchase: ${purchaseDetails.verificationData}');
    // TODO: verify the purchase.
    // See the info in [purchaseDetails.verificationData] to learn more.
    // There's also a codelab that explains purchase verification
    // on the backend:
    // https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#9
    return true;
  }
}
