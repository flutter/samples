// Copyright 2019 The Flutter team. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';

import 'package:gallery/l10n/gallery_localizations.dart';
import 'package:gallery/studies/rally/formatters.dart';

/// Calculates the sum of the primary amounts of a list of [AccountData].
double sumAccountDataPrimaryAmount(List<AccountData> items) =>
    sumOf<AccountData>(items, (item) => item.primaryAmount);

/// Calculates the sum of the primary amounts of a list of [BillData].
double sumBillDataPrimaryAmount(List<BillData> items) =>
    sumOf<BillData>(items, (item) => item.primaryAmount);

/// Calculates the sum of the primary amounts of a list of [BudgetData].
double sumBudgetDataPrimaryAmount(List<BudgetData> items) =>
    sumOf<BudgetData>(items, (item) => item.primaryAmount);

/// Calculates the sum of the amounts used of a list of [BudgetData].
double sumBudgetDataAmountUsed(List<BudgetData> items) =>
    sumOf<BudgetData>(items, (item) => item.amountUsed);

/// Utility function to sum up values in a list.
double sumOf<T>(List<T> list, double getValue(T elt)) {
  double sum = 0;
  for (T elt in list) {
    sum += getValue(elt);
  }
  return sum;
}

/// A data model for an account.
///
/// The [primaryAmount] is the balance of the account in USD.
class AccountData {
  const AccountData({this.name, this.primaryAmount, this.accountNumber});

  /// The display name of this entity.
  final String name;

  /// The primary amount or value of this entity.
  final double primaryAmount;

  /// The full displayable account number.
  final String accountNumber;
}

/// A data model for a bill.
///
/// The [primaryAmount] is the amount due in USD.
class BillData {
  const BillData({this.name, this.primaryAmount, this.dueDate});

  /// The display name of this entity.
  final String name;

  /// The primary amount or value of this entity.
  final double primaryAmount;

  /// The due date of this bill.
  final String dueDate;
}

/// A data model for a budget.
///
/// The [primaryAmount] is the budget cap in USD.
class BudgetData {
  const BudgetData({this.name, this.primaryAmount, this.amountUsed});

  /// The display name of this entity.
  final String name;

  /// The primary amount or value of this entity.
  final double primaryAmount;

  /// Amount of the budget that is consumed or used.
  final double amountUsed;
}

/// A data model for an alert.
class AlertData {
  AlertData({this.message, this.iconData});

  /// The alert message to display.
  final String message;

  /// The icon to display with the alert.
  final IconData iconData;
}

class DetailedEventData {
  const DetailedEventData({
    this.title,
    this.date,
    this.amount,
  });

  final String title;
  final DateTime date;
  final double amount;
}

/// A data model for account data.
class AccountDetailData {
  AccountDetailData({this.title, this.value});

  /// The display name of this entity.
  final String title;

  /// The value of this entity.
  final String value;
}

/// Class to return dummy data lists.
///
/// In a real app, this might be replaced with some asynchronous service.
class DummyDataService {
  static List<AccountData> getAccountDataList(BuildContext context) {
    return <AccountData>[
      AccountData(
        name: GalleryLocalizations.of(context).rallyAccountDataChecking,
        primaryAmount: 2215.13,
        accountNumber: '1234561234',
      ),
      AccountData(
        name: GalleryLocalizations.of(context).rallyAccountDataHomeSavings,
        primaryAmount: 8678.88,
        accountNumber: '8888885678',
      ),
      AccountData(
        name: GalleryLocalizations.of(context).rallyAccountDataCarSavings,
        primaryAmount: 987.48,
        accountNumber: '8888889012',
      ),
      AccountData(
        name: GalleryLocalizations.of(context).rallyAccountDataVacation,
        primaryAmount: 253,
        accountNumber: '1231233456',
      ),
    ];
  }

  static List<AccountDetailData> getAccountDetailList(BuildContext context) {
    return <AccountDetailData>[
      AccountDetailData(
        title: GalleryLocalizations.of(context)
            .rallyAccountDetailDataAnnualPercentageYield,
        value: percentFormat(context).format(0.001),
      ),
      AccountDetailData(
        title:
            GalleryLocalizations.of(context).rallyAccountDetailDataInterestRate,
        value: usdWithSignFormat(context).format(1676.14),
      ),
      AccountDetailData(
        title:
            GalleryLocalizations.of(context).rallyAccountDetailDataInterestYtd,
        value: usdWithSignFormat(context).format(81.45),
      ),
      AccountDetailData(
        title: GalleryLocalizations.of(context)
            .rallyAccountDetailDataInterestPaidLastYear,
        value: usdWithSignFormat(context).format(987.12),
      ),
      AccountDetailData(
        title: GalleryLocalizations.of(context)
            .rallyAccountDetailDataNextStatement,
        value: shortDateFormat(context).format(DateTime.utc(2019, 12, 25)),
      ),
      AccountDetailData(
        title:
            GalleryLocalizations.of(context).rallyAccountDetailDataAccountOwner,
        value: 'Philip Cao',
      ),
    ];
  }

  static List<DetailedEventData> getDetailedEventItems() {
    // The following titles are not localized as they're product/brand names.
    return <DetailedEventData>[
      DetailedEventData(
        title: 'Genoe',
        date: DateTime.utc(2019, 1, 24),
        amount: -16.54,
      ),
      DetailedEventData(
        title: 'Fortnightly Subscribe',
        date: DateTime.utc(2019, 1, 5),
        amount: -12.54,
      ),
      DetailedEventData(
        title: 'Circle Cash',
        date: DateTime.utc(2019, 1, 5),
        amount: 365.65,
      ),
      DetailedEventData(
        title: 'Crane Hospitality',
        date: DateTime.utc(2019, 1, 4),
        amount: -705.13,
      ),
      DetailedEventData(
        title: 'ABC Payroll',
        date: DateTime.utc(2018, 12, 15),
        amount: 1141.43,
      ),
      DetailedEventData(
        title: 'Shrine',
        date: DateTime.utc(2018, 12, 15),
        amount: -88.88,
      ),
      DetailedEventData(
        title: 'Foodmates',
        date: DateTime.utc(2018, 12, 4),
        amount: -11.69,
      ),
    ];
  }

  static List<BillData> getBillDataList(BuildContext context) {
    // The following names are not localized as they're product/brand names.
    return <BillData>[
      BillData(
        name: 'RedPay Credit',
        primaryAmount: 45.36,
        dueDate: dateFormatAbbreviatedMonthDay(context)
            .format(DateTime.utc(2019, 1, 29)),
      ),
      BillData(
        name: 'Rent',
        primaryAmount: 1200,
        dueDate: dateFormatAbbreviatedMonthDay(context)
            .format(DateTime.utc(2019, 2, 9)),
      ),
      BillData(
        name: 'TabFine Credit',
        primaryAmount: 87.33,
        dueDate: dateFormatAbbreviatedMonthDay(context)
            .format(DateTime.utc(2019, 2, 22)),
      ),
      BillData(
        name: 'ABC Loans',
        primaryAmount: 400,
        dueDate: dateFormatAbbreviatedMonthDay(context)
            .format(DateTime.utc(2019, 2, 29)),
      ),
    ];
  }

  static List<BudgetData> getBudgetDataList(BuildContext context) {
    return <BudgetData>[
      BudgetData(
        name: GalleryLocalizations.of(context).rallyBudgetCategoryCoffeeShops,
        primaryAmount: 70,
        amountUsed: 45.49,
      ),
      BudgetData(
        name: GalleryLocalizations.of(context).rallyBudgetCategoryGroceries,
        primaryAmount: 170,
        amountUsed: 16.45,
      ),
      BudgetData(
        name: GalleryLocalizations.of(context).rallyBudgetCategoryRestaurants,
        primaryAmount: 170,
        amountUsed: 123.25,
      ),
      BudgetData(
        name: GalleryLocalizations.of(context).rallyBudgetCategoryClothing,
        primaryAmount: 70,
        amountUsed: 19.45,
      ),
    ];
  }

  static List<String> getSettingsTitles(BuildContext context) {
    return <String>[
      GalleryLocalizations.of(context).rallySettingsManageAccounts,
      GalleryLocalizations.of(context).rallySettingsTaxDocuments,
      GalleryLocalizations.of(context).rallySettingsPasscodeAndTouchId,
      GalleryLocalizations.of(context).rallySettingsNotifications,
      GalleryLocalizations.of(context).rallySettingsPersonalInformation,
      GalleryLocalizations.of(context).rallySettingsPaperlessSettings,
      GalleryLocalizations.of(context).rallySettingsFindAtms,
      GalleryLocalizations.of(context).rallySettingsHelp,
      GalleryLocalizations.of(context).rallySettingsSignOut,
    ];
  }

  static List<AlertData> getAlerts(BuildContext context) {
    return <AlertData>[
      AlertData(
        message: GalleryLocalizations.of(context)
            .rallyAlertsMessageHeadsUpShopping(
                percentFormat(context, decimalDigits: 0).format(0.9)),
        iconData: Icons.sort,
      ),
      AlertData(
        message: GalleryLocalizations.of(context)
            .rallyAlertsMessageSpentOnRestaurants(
                usdWithSignFormat(context, decimalDigits: 0).format(120)),
        iconData: Icons.sort,
      ),
      AlertData(
        message: GalleryLocalizations.of(context).rallyAlertsMessageATMFees(
            usdWithSignFormat(context, decimalDigits: 0).format(24)),
        iconData: Icons.credit_card,
      ),
      AlertData(
        message: GalleryLocalizations.of(context)
            .rallyAlertsMessageCheckingAccount(
                percentFormat(context, decimalDigits: 0).format(0.04)),
        iconData: Icons.attach_money,
      ),
      AlertData(
        message: GalleryLocalizations.of(context)
            .rallyAlertsMessageUnassignedTransactions(16),
        iconData: Icons.not_interested,
      ),
    ];
  }
}
