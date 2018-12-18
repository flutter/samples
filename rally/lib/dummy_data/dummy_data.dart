import 'package:rally_proto/financial_entity/financial_entity.dart';

/// Class to return dummy data lists.
///
/// In a real app, this might be replaced with some asynchronous service.
class DummyDatas {
  static List<AccountItem> getAccountItems() {
    return <AccountItem>[
      AccountItem(
        name: 'Checking',
        primaryAmount: 2215.13,
        accountNumber: '1234561234',
      ),
      AccountItem(
        name: 'Home Savings',
        primaryAmount: 8678.88,
        accountNumber: '8888885678',
      ),
      AccountItem(
        name: 'Car Savings',
        primaryAmount: 987.48,
        accountNumber: '8888889012',
      ),
      AccountItem(
        name: 'Vacation',
        primaryAmount: 253.0,
        accountNumber: '1231233456',
      ),
    ];
  }

  static List<DetailedEventItem> getDetailedEventItems() {
    return <DetailedEventItem>[
      DetailedEventItem(
          title: 'Genoe',
          date: DateTime.utc(2019, 1, 24),
          amount: -16.54
      ),
      DetailedEventItem(
          title: 'Fortnightly Subscribe',
          date: DateTime.utc(2019, 1, 5),
          amount: -12.54
      ),
      DetailedEventItem(
          title: 'Circle Cash',
          date: DateTime.utc(2019, 1, 5),
          amount: 365.65
      ),
      DetailedEventItem(
          title: 'Crane Hospitality',
          date: DateTime.utc(2019, 1, 4),
          amount: -705.13
      ),
      DetailedEventItem(
          title: 'ABC Payroll',
          date: DateTime.utc(2018, 12, 15),
          amount: 1141.43
      ),
      DetailedEventItem(
          title: 'Shrine',
          date: DateTime.utc(2018, 12, 15),
          amount: -88.88
      ),
      DetailedEventItem(
          title: 'Foodmates',
          date: DateTime.utc(2018, 12, 4),
          amount: -11.69
      ),
    ];
  }

  static List<BillItem> getBillItems() {
    return <BillItem>[
      BillItem(
        name: 'RedPay Credit',
        primaryAmount: 45.36,
        dueDate: 'Jan 29',
      ),
      BillItem(
        name: 'Rent',
        primaryAmount: 1200.0,
        dueDate: 'Feb 9',
      ),
      BillItem(
        name: 'TabFine Credit',
        primaryAmount: 87.33,
        dueDate: 'Feb 22',
      ),
      BillItem(
        name: 'ABC Loans',
        primaryAmount: 400.0,
        dueDate: 'Feb 29',
      ),
    ];
  }

  static List<BudgetItem> getBudgetsModel() {
    return <BudgetItem>[
      BudgetItem(
        name: 'Coffee Shops',
        primaryAmount: 70.0,
        amountUsed: 45.49,
      ),
      BudgetItem(
        name: 'Groceries',
        primaryAmount: 170.0,
        amountUsed: 16.45,
      ),
      BudgetItem(
        name: 'Restaurants',
        primaryAmount: 170.0,
        amountUsed: 123.25,
      ),
      BudgetItem(
        name: 'Clothing',
        primaryAmount: 70.0,
        amountUsed: 19.45,
      ),
    ];
  }

  static List<String> getSettingsTitles() {
    return <String>[
      'Manage Accounts',
      'Tax Documents',
      'Passcode and Touch ID',
      'Notifications',
      'Personal Information',
      'Paperless Settings',
      'Find ATMs',
      'Help',
    ];
  }
}
