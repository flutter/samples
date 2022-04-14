import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:in_app_purchase/in_app_purchase.dart';
import 'package:logging/logging.dart';

import '../style/snack_bar.dart';
import 'ad_removal.dart';

class InAppPurchaseController extends ChangeNotifier {
  static final Logger _log = Logger('InAppPurchases');

  StreamSubscription<List<PurchaseDetails>>? _subscription;

  InAppPurchase inAppPurchaseInstance;

  AdRemovalPurchase _adRemoval = const AdRemovalPurchase.notStarted();

  AdRemovalPurchase get adRemoval => _adRemoval;

  InAppPurchaseController(this.inAppPurchaseInstance);

  /// Subscribes to the provided [purchaseStream].
  ///
  /// In production, you'll want to call this with:
  ///
  /// ```
  /// inAppPurchaseNotifier.subscribe(InAppPurchase.instance.purchaseStream);
  /// ```
  ///
  /// In testing, you can of course provide a mock stream.
  void subscribe() {
    _subscription =
        inAppPurchaseInstance.purchaseStream.listen((purchaseDetailsList) {
      _listenToPurchaseUpdated(purchaseDetailsList);
    }, onDone: () {
      _subscription?.cancel();
    });
  }

  @override
  void dispose() {
    _subscription?.cancel();
    super.dispose();
  }

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

  Future<void> _listenToPurchaseUpdated(
      List<PurchaseDetails> purchaseDetailsList) async {
    for (var purchaseDetails in purchaseDetailsList) {
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

  Future<bool> _verifyPurchase(PurchaseDetails purchaseDetails) async {
    _log.info('Verifying purchase: ${purchaseDetails.verificationData}');
    // TODO: verify the purchase.
    // See the info in [purchaseDetails.verificationData] to learn more.
    // There's also a codelab that explains purchase verification
    // on the backend:
    // https://codelabs.developers.google.com/codelabs/flutter-in-app-purchases#9
    return true;
  }

  void _reportError(String message) {
    _log.severe(message);
    showSnackBar(message);
    _adRemoval = AdRemovalPurchase.error(message);
    notifyListeners();
  }

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
      _reportError('There was an error when making the purchase: '
          'product ${AdRemovalPurchase.productId} does not exist.');
      response.productDetails
          .map((e) => '${e.id}: ${e.title}')
          .forEach(_log.info);
      return;
    }
    final productDetails = response.productDetails.single;

    _log.info('Making the purchase');
    final purchaseParam = PurchaseParam(productDetails: productDetails);
    final success = await inAppPurchaseInstance.buyNonConsumable(
        purchaseParam: purchaseParam);
    _log.info('buyNonConsumable() request was sent with success: $success');
    // The result of the purchase will be reported in the purchaseStream,
    // which is handled in [_listenToPurchaseUpdated].
  }
}
