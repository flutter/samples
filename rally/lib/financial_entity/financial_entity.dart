/// A simple data model for most entites within Rally.
class FinancialEntity {
  const FinancialEntity({this.name, this.primaryAmount});

  /// The display name of this entity .
  final String name;

  // The primary amount or value of this entity.
  final double primaryAmount;
}

/// Utils for [FinancialEntity].
class FinancialEntities {
  /// Calculates the sum of the primary amounts of a list of entites.
  static double sumPrimaryAmounts(List<FinancialEntity> items) {
    return items.fold(0.0, (double sum, FinancialEntity next) => sum + next.primaryAmount);
  }
}

/// A data model for an account.
///
/// The [primaryAmount] is the balance of the account in USD.
class AccountItem extends FinancialEntity {
  const AccountItem({String name, double primaryAmount, this.accountNumber})
      : super(name: name, primaryAmount: primaryAmount);

  /// The full displayable account number.
  final String accountNumber;
}

/// A data model for a bill.
///
/// The [primaryAmount] is the amount due in USD.
class BillItem extends FinancialEntity {
  const BillItem({String name, double primaryAmount, this.dueDate})
      : super(name: name, primaryAmount: primaryAmount);

  /// The due date of this bill.
  ///
  /// TODO(clocksmith): use DateTime and format separately.
  final String dueDate;
}

/// A data model for a budget.
///
/// The [primaryAmount] is the budget cap in USD.
class BudgetItem extends FinancialEntity {
  const BudgetItem({String name, double primaryAmount, this.amountUsed})
      : super(name: name, primaryAmount: primaryAmount);

  /// Amount of the budget that is consumed or used.
  final double amountUsed;
}

/// Utils for [BudgetItem].
class BudgetItems {
  static double sumAmountsUsed(List<BudgetItem> items) {
    return items.fold(0.0, (double sum, BudgetItem next) => sum + next.amountUsed);
  }
}

class DetailedEventItem {
  const DetailedEventItem({
    this.title,
    this.date,
    this.amount,
  });

  final String title;
  final DateTime date;
  final double amount;
}
