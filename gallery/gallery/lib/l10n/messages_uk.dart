// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uk locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'uk';

  static m0(value) =>
      "Щоб переглянути вихідний код цього додатка, відвідайте сторінку ${value}.";

  static m1(title) => "Заповнювач для вкладки \"${title}\"";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Немає ресторанів', one: '1 ресторан', few: '${totalRestaurants} ресторани', many: '${totalRestaurants} ресторанів', other: '${totalRestaurants} ресторану')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Прямий рейс', one: '1 зупинка', few: '${numberOfStops} зупинки', many: '${numberOfStops} зупинок', other: '${numberOfStops} зупинки')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Немає доступних готелів або помешкань', one: '1 доступний готель або помешкання', few: '${totalProperties} доступні готелі або помешкання', many: '${totalProperties} доступних готелів або помешкань', other: '${totalProperties} доступного готелю або помешкання')}";

  static m5(value) => "Позиція ${value}";

  static m6(error) => "Не вдалося скопіювати в буфер обміну: ${error}";

  static m7(value) => "Безперервний: ${value}";

  static m8(value) => "Дискретний: ${value}";

  static m9(value) => "Вибрано: ${value}";

  static m10(value) => "Вибрано: ${value}";

  static m11(name, phoneNumber) =>
      "Номер телефону користувача ${name}: ${phoneNumber}";

  static m12(value) => "Вибрано: \"${value}\"";

  static m13(accountName, accountNumber, amount) =>
      "Рахунок \"${accountName}\" (${accountNumber}), на якому зберігається ${amount}.";

  static m14(amount) =>
      "Цього місяця ви витратили ${amount} на комісії банкоматів";

  static m15(percent) =>
      "Чудова робота! На вашому розрахунковому рахунку на ${percent} більше коштів, ніж минулого місяця.";

  static m16(percent) =>
      "Увага! Ви витратили ${percent} місячного бюджету на покупки.";

  static m17(amount) => "Цього тижня ви витратили в ресторанах ${amount}.";

  static m18(count) =>
      "${Intl.plural(count, one: 'Збільште можливу податкову пільгу! Призначте категорії 1 трансакції.', few: 'Збільште можливу податкову пільгу! Призначте категорії ${count} трансакціям.', many: 'Збільште можливу податкову пільгу! Призначте категорії ${count} трансакціям.', other: 'Збільште можливу податкову пільгу! Призначте категорії ${count} трансакції.')}";

  static m19(billName, date, amount) =>
      "Рахунок \"${billName}\" на суму ${amount} потрібно сплатити до ${date}.";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "З бюджету \"${budgetName}\" (${amountTotal}) використано ${amountUsed}, залишок – ${amountLeft}";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'НЕМАЄ ТОВАРІВ', one: '1 ТОВАР', few: '${quantity} ТОВАРИ', many: '${quantity} ТОВАРІВ', other: '${quantity} ТОВАРУ')}";

  static m22(price) => "x ${price}";

  static m23(quantity) => "Кількість: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'Кошик без товарів', one: 'Кошик з 1 товаром', few: 'Кошик із ${quantity} товарами', many: 'Кошик з ${quantity} товарами', other: 'Кошик з ${quantity} товару')}";

  static m25(product) => "Вилучити товар \"${product}\"";

  static m26(value) => "Позиція ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Сховище зразків GitHub у Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Назад до Галереї"),
        "bottomAppBarNotch":
            MessageLookupByLibrary.simpleMessage("Виріз екрана"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Розташування плаваючої командної кнопки"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Закріплена (посередині)"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Закріплена (в кінці)"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Плаваюча (посередині)"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Плаваюча (в кінці)"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Рахунок"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Сповіщення"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Календар"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Коментарі"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("КНОПКА"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Створити"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Велоспорт"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ліфт"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Камін"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Великий"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Середній"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Малий"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Увімкнути світло"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Пральна машина"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("БУРШТИНОВИЙ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("СИНІЙ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("СІРО-СИНІЙ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("КОРИЧНЕВИЙ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("БЛАКИТНИЙ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("НАСИЧЕНИЙ ОРАНЖЕВИЙ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("НАСИЧЕНИЙ ПУРПУРОВИЙ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЗЕЛЕНИЙ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("СІРИЙ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ІНДИГО"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("СВІТЛО-СИНІЙ"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("СВІТЛО-ЗЕЛЕНИЙ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ЛИМОННО-ЗЕЛЕНИЙ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ОРАНЖЕВИЙ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("РОЖЕВИЙ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ПУРПУРОВИЙ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ЧЕРВОНИЙ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("БІРЮЗОВИЙ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ЖОВТИЙ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Персоналізований додаток для подорожей"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ЇЖА"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Неаполь, Італія"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Піца в печі на дровах"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Даллас, США"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лісабон, Португалія"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жінка, яка тримає величезний сендвіч із пастромою"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Безлюдний бар із високими стільцями"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордова, Аргентина"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Портленд, США"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Корейське тако"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Париж, Франція"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шоколадний десерт"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Сеул, Республіка Корея"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Інтер\'єр модного ресторану"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Сіетл, США"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Креветки"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Нашвілл, США"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Вхід у пекарню"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Атланта, США"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тарілка раків"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрид, Іспанія"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Прилавок кафе з кондитерськими виробами"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Огляд ресторанів за пунктом призначення"),
        "craneFly": MessageLookupByLibrary.simpleMessage("ПОЛЬОТИ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Аспен, США"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Шале на сніжному тлі в оточенні хвойних дерев"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Біґ-Сур, США"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Каїр, Єгипет"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мечеть аль-Азхар під час заходу сонця"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лісабон, Португалія"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цегляний маяк біля моря"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Напа, США"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Басейн із пальмами"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Балі, Індонезія"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Басейн біля моря з пальмами"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Намет у полі"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Долина Кхумбу, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Молитовні прапори на тлі сніжних гір"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу-Пікчу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цитадель Мачу-Пікчу"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Мале, Мальдіви"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бунгало над водою"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Віцнау, Швейцарія"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Готель біля озера на гірському тлі"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Мехіко, Мексика"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Загальний вигляд Палацу образотворчих мистецтв"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Гора Рашмор, США"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Гора Рашмор"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сінгапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Сади біля затоки"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Чоловік, який спирається на раритетний синій автомобіль"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Огляд авіарейсів за пунктом призначення"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Виберіть дату"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Виберіть дати"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Виберіть пункт призначення"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Закусочні"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Виберіть місцезнаходження"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Виберіть пункт відправлення"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Виберіть час"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Мандрівники"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("СОН"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Мале, Мальдіви"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бунгало над водою"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Аспен, США"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Каїр, Єгипет"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мечеть аль-Азхар під час заходу сонця"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тайбей, Тайвань"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Хмарочос Тайбей 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Шале на сніжному тлі в оточенні хвойних дерев"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу-Пікчу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цитадель Мачу-Пікчу"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Чоловік, який спирається на раритетний синій автомобіль"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Віцнау, Швейцарія"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Готель біля озера на гірському тлі"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Біґ-Сур, США"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Намет у полі"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Напа, США"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Басейн із пальмами"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Порту, Португалія"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Барвисті будинки на площі Рібейра"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексика"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Руїни Майя на кручі над берегом"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лісабон, Португалія"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цегляний маяк біля моря"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Огляд готелів чи житла за пунктом призначення"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Дозволити"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Яблучний пиріг"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Скасувати"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Чізкейк"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Брауні"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Виберіть свій улюблений десерт зі списку нижче. Ваш вибір буде використано для створення списку рекомендованих кафе у вашому районі."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Відхилити"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Заборонити"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Виберіть улюблений десерт"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Ваше поточне місцезнаходження відображатиметься на карті й використовуватиметься для прокладання маршрутів, пошуку закладів поблизу та прогнозування часу на дорогу."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Надавати Картам доступ до геоданих, коли ви використовуєте додаток?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тірамісу"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Кнопка"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("З фоном"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Показати сповіщення"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Чат"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Головна"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профіль"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Інтерактивні елементи дій – це набір параметрів, які активують дії, пов\'язані з основним контентом. Вони мають з\'являтися динамічно й доповнювати інтерфейс."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Інтерактивний елемент дії"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Діалогове вікно сповіщення повідомляє користувачів про ситуації, про які вони мають знати. Воно може мати назву та список дій (необов\'язково)."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Сповіщення"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Сповіщення з назвою"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Нижня панель додатків надає доступ до нижньої панелі навігації та до щонайбільше чотирьох командних кнопок, зокрема плаваючої."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Показує кнопки навігації та командні кнопки внизу екрана"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Нижня панель додатків"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "На нижній панелі навігації відображається від трьох до п\'яти розділів у нижній частині екрана. Кожен розділ має значок і текстові мітку (необов\'язково). Коли користувач натискає значок на нижній панелі навігації, він переходить на вищий рівень розділу навігації, зв\'язаний із цим значком."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Постійні мітки"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Вибрана мітка"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Нижня панель навігації зі зникаючими вікнами перегляду"),
        "demoBottomNavigationTitle": MessageLookupByLibrary.simpleMessage(
            "Навігація в нижній частині екрана"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Додати"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "ПОКАЗАТИ СТОРІНКУ, ЩО РОЗГОРТАЄТЬСЯ ЗНИЗУ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Заголовок"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Модальна сторінка, що розгортається знизу, замінює меню або діалогове вікно й не дає користувачеві взаємодіяти з іншими частинами додатка."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Модальна сторінка, що розгортається знизу"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "На постійній сторінці, що розгортається знизу, міститься супровідна інформація для основного контенту додатка. Ця сторінка відображається, навіть коли користувач взаємодіє з іншими частинами додатка."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Постійна сторінка, що розгортається знизу"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Постійна й модальна сторінки, що розгортаються знизу"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage(
            "Сторінка, що розгортається знизу"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Текстові поля"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Пласкі, опуклі, з контуром тощо"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Кнопки"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Меню у вигляді контрольного списку"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Компактні елементи, які представляють введений текст, атрибут або дію"),
        "demoChipTitle":
            MessageLookupByLibrary.simpleMessage("Інтерактивні елементи"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Інтерактивні елементи вибору представляють один варіант із кількох доступних. Вони містять пов\'язаний описовий текст або категорії."),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage(
            "Інтерактивний елемент вибору"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Індикатор циклічного перебігу з матеріальним дизайном обертається, вказуючи на роботу додатка."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Індикатор циклічного перебігу"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Приклад коду"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Скопійовано в буфер обміну."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("КОПІЮВАТИ ВСЕ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Колір і зразок кольору, які представляють палітру кольорів матеріального дизайну."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Усі стандартні кольори"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Кольори"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Контекстне меню"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Аркуш дій – це особливий вид сповіщення, який показує користувачу набір із двох або більше варіантів вибору, пов\'язаних із поточною ситуацією. Він може мати назву, додаткове повідомлення та список дій."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Аркуш дій"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Індикатор активності в стилі iOS, який обертається за годинниковою стрілкою."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Індикатори активності в стилі iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Індикатор активності"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Лише кнопки сповіщень"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Сповіщення з кнопками"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Діалогове вікно сповіщення повідомляє користувачів про ситуації, про які вони мають знати. Воно може мати назву, вміст і список дій (необов\'язково). Назва відображається над вмістом, а список дій – під ним."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Сповіщення"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Сповіщення з назвою"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Діалогове вікно зі сповіщенням у стилі iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Сповіщення"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Кнопка в стилі iOS. Якщо натиснути на неї, з\'явиться текст та/або значок, який світлішає й темнішає. Може мати фон (необов\'язково)."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Кнопки в стилі iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Кнопки"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Панель навігації в стилі iOS. Панель навігації – це панель інструментів, основною складовою якої є розміщена посередині назва сторінки."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Панель навігації в стилі iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Панель навігації"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Віджет, що реалізує елемент керування в стилі iOS, який дає змогу потягнути, щоб оновити контент."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Елемент керування в стилі iOS \"Потягнути, щоб оновити\""),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Потягніть, щоб оновити"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Використовується для вибору одного із взаємовиключних варіантів. Якщо вибрано один варіант у сегментованому контролі, вибір іншого варіанта буде скасовано."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментований контроль у стилі iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Сегментований контроль"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Повзунок можна використовувати для вибору з безперервного або дискретного набору значень."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Повзунок у стилі iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Повзунок"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Перемикач використовують, щоб вмикати й вимикати окремі налаштування."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Перемикач у стилі iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Нижня панель навігації з вкладками в стилі iOS містить кілька вкладок, з яких одна активна (за умовчанням – перша)."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Нижня панель вкладок у стилі iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Панель вкладок"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "За допомогою повзунків можна вибирати різні значення з діапазону. Їх тема та вигляд можуть бути різними."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Власні повзунки"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Просте, зі сповіщенням і на весь екран"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Діалогові вікна"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Документація API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Інтерактивні елементи фільтрів використовують теги або описові слова для фільтрування контенту."),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage(
            "Інтерактивний елемент фільтра"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "За натискання пласкої кнопки з\'являється чорнильна пляма. Кнопка не об\'ємна. Використовуйте пласкі кнопки на панелях інструментів, у діалогових вікнах і вбудованих елементах із відступами."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Пласка кнопка"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Плаваюча командна кнопка – це круглий значок, який накладається на контент, щоб привернути увагу до основних дій у додатку."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Плаваюча командна кнопка"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Параметр fullscreenDialog визначає, чи є сторінка, що з\'явиться, діалоговим вікном на весь екран"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("На весь екран"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("На весь екран"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Списки-сітки найкраще підходять для представлення однотипних даних, зокрема зображень. Елементи в такому списку називається плитками."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("З нижнім колонтитулом"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("З верхнім колонтитулом"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Лише зображення"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Макет рядків і стовпців"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Списки-сітки"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Інформація"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Інтерактивні елементи введення надають складну інформацію в спрощеній формі (наприклад, про людину, місце, річ, фрагмент розмовного тексту тощо)."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage(
            "Інтерактивний елемент введення"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Не вдалося показати URL-адресу:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Індикатор лінійного перебігу з матеріальним дизайном також називають панеллю перебігу."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Індикатор лінійного перебігу"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Один рядок фіксованої висоти, який зазвичай містить текст і значок на початку або в кінці."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Другорядний текст"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Макети списків із прокруткою"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Списки"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Вимкнений пункт меню"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Елемент із меню у вигляді контрольного списку"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("Елемент із контекстним меню"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Елемент, що відкриває меню з розділами"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Елемент із простим меню"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Перший пункт контекстного меню"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Третій пункт контекстного меню"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "У меню показано список варіантів, які з\'являються під час взаємодії користувачів із кнопкою, дією чи іншим елементом керування."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Чотири"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Отримати посилання"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Перший пункт меню"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Третій пункт меню"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Другий пункт меню"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Один"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Переглянути"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Вилучити"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Поділитися"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("Кнопки меню та прості меню"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Три"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Меню"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Два"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Один рядок"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Натисніть, щоб переглянути параметри для цієї демо-версії."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Параметри перегляду"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Параметри"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Кнопки з контуром стають прозорими й піднімаються, якщо їх натиснути. Зазвичай їх використовують з опуклими кнопками для позначення альтернативних і другорядних дій."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Кнопка з контуром"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Лінійний, циклічний, невизначений"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Індикатори перебігу"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Опуклі кнопки роблять пласкі макети помітнішими. Вони привертають увагу до функцій на заповнених або пустих місцях."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Опукла кнопка"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Повзунки показують діапазон значень уздовж панелі та можуть мати на обох кінцях значки, які показують цей діапазон. Вони найкраще підходять для налаштування таких параметрів, як звук і яскравість, або застосування фільтрів зображень."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Повзунки з діапазонами"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Меню з розділами"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Прапорці дають користувачам змогу вибирати кілька параметрів із набору. Звичайний прапорець обмежується значеннями true або false, тоді як трьохпозиційний також може мати значення null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Прапорець"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Радіокнопки дають користувачам змогу вибирати один параметр із набору. Використовуйте радіокнопки, коли потрібно, щоб користувач бачив усі доступні варіанти, а вибирав лише один."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Радіокнопка"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Прапорці, радіокнопки й перемикачі"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Перемикачі \"Увімкнути/вимкнути\" вмикають або вимикають окремі налаштування. Налаштування, яким керує перемикач, і його стан має бути чітко описано в тексті мітки."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Перемикач"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Елементи керування вибором"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Просте діалогове вікно дає користувачу змогу обрати один із кількох варіантів. Воно може мати назву, яка відображається над варіантами (необов\'язково)."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Простий"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Просте меню"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Безперервний"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Повзунок із безперервним діапазоном значень і власною темою"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Безперервні числові значення, які можна змінювати"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "За допомогою повзунків можна вибирати одне значення з діапазону, показаного вздовж панелі. Вони найкраще підходять для налаштування таких параметрів, як звук і яскравість, або застосування фільтрів зображень."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Дискретний"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Повзунок із дискретним діапазоном значень і власною темою"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Змінне числове значення"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Віджети для вибору значення проведенням пальця"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Повзунки"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Ви натиснули кнопку на панелі підказок."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ДІЯ"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ПОКАЗАТИ ПАНЕЛЬ ПІДКАЗОК"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Панель підказок інформує користувачів про процеси в додатках. Такі повідомлення ненадовго з\'являються й автоматично зникають унизу екрана, тому вони не заважатимуть роботі користувача."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Панель підказок показує повідомлення внизу екрана"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Це панель підказок."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Панель підказок"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "На вкладках наведено контент із різних екранів, набори даних та іншу інформацію про взаємодії."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Вкладки з окремим прокручуванням"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Вкладки"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Користувачі можуть вводити текст у текстові поля. Зазвичай вони з\'являються у формах і вікнах."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Електронна пошта"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Введіть пароль."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – введіть номер телефону в США."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Перш ніж надсилати, виправте помилки, позначені червоним кольором."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Сховати пароль"),
        "demoTextFieldKeepItShort":
            MessageLookupByLibrary.simpleMessage("Біографія має бути стислою."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Біографія"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Назва*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Укажіть своє ім\'я."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Щонайбільше 8 символів."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Можна вводити лише буквенні символи."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Пароль*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Паролі не збігаються*"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Номер телефону*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* позначає обов\'язкове поле"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Введіть пароль ще раз*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("Заробітна плата"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Показати пароль"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("НАДІСЛАТИ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Один рядок тексту й цифр, які можна змінити"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Розкажіть про себе (наприклад, ким ви працюєте або які у вас хобі)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Текстові поля"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("дол. США"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Як вас звати?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Як з вами можна зв\'язатися?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Ваша електронна адреса"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Перемикач можна використовувати для групування пов\'язаних параметрів. Щоб виділити групу пов\'язаних перемикачів, вона повинна мати спільний контейнер"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Перемикачі"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Спливаючі підказки містять текст, що допомагає пояснити функцію кнопки чи іншої дії інтерфейсу користувача. Цей текст з\'являється, коли користувач утримує елемент або наводить на нього курсор."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Щоб підказка з\'явилася, утримуйте елемент або наведіть на нього курсор."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Коротке повідомлення, що з\'являється під час утримування елемента або наведення на нього курсора"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Спливаючі підказки"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Два рядки"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Визначення різних друкарських стилів із каталогу матеріального дизайну."),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("Усі стандартні стилі тексту"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Оформлення"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Додати обліковий запис"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ПРИЙНЯТИ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("СКАСУВАТИ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ВІДХИЛИТИ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ВІДХИЛИТИ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Закрити чернетку?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Демо-версія діалогового вікна на весь екран"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ЗБЕРЕГТИ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Діалогове вікно на весь екран"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Дозвольте Google допомагати додаткам визначати місцезнаходження. Це означає, що в Google надсилатимуться анонімні геодані, навіть коли на пристрої взагалі не запущено додатків."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Використовувати Служби локації Google?"),
        "dialogSelectedOption": m12,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Налаштуйте резервний обліковий запис"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ПОКАЗАТИ ДІАЛОГОВЕ ВІКНО"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ДОВІДКОВІ СТИЛІ Й МЕДІА"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Категорії"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерея"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Пляж"),
        "placeBronzeWorks": MessageLookupByLibrary.simpleMessage("Бронзворкс"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Ченнаї"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Четтінад"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Риболов"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Квітковий ринок"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Приготування обіду"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Ринок"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Пудучеррі"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Соляна ферма"),
        "placeScooters":
            MessageLookupByLibrary.simpleMessage("Люди на скутерах"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Виробник шовку"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Тханджавур"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Тханджавурський храм"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Заощадження на автомобіль"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Розрахунковий"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Заощадження на будинок"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Відпустка"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Власник рахунку"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Річний дохід у відсотках"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Проценти, виплачені минулого року"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Процентна ставка"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Проценти від початку року до сьогодні"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Наступна виписка"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Усього"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Рахунки"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Сповіщення"),
        "rallyAlertsMessageATMFees": m14,
        "rallyAlertsMessageCheckingAccount": m15,
        "rallyAlertsMessageHeadsUpShopping": m16,
        "rallyAlertsMessageSpentOnRestaurants": m17,
        "rallyAlertsMessageUnassignedTransactions": m18,
        "rallyBillAmount": m19,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Платежі"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Потрібно сплатити:"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Одяг"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кав\'ярні"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Гастрономи"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ресторани"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Залишок"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Бюджети"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Додаток для керування особистими фінансами"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("(ЗАЛИШОК)"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("УВІЙТИ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Увійти"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Увійти в Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Не маєте облікового запису?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Запам\'ятати мене"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ЗАРЕЄСТРУВАТИСЯ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Ім\'я користувача"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ПОКАЗАТИ ВСІ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Переглянути всі рахунки"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Переглянути всі платежі"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Переглянути всі бюджети"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Знайти банкомати"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Довідка"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Керувати рахунками"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Сповіщення"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Налаштування Paperless"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Код доступу й Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Особиста інформація"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Вийти"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Податкова документація"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("РАХУНКИ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ПЛАТЕЖІ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БЮДЖЕТИ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ОГЛЯД"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("НАЛАШТУВАННЯ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Про Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Створено TOASTER (Лондон)"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Закрити налаштування"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Налаштування"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Темна"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Надіслати відгук"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Світла"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Мовний код"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Механіка платформи"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Уповільнення"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Система"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Напрямок тексту"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Зліва направо"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("На основі мовного коду"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Справа наліво"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Масштаб тексту"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Дуже великий"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Великий"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Звичайний"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Малий"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Налаштування"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("СКАСУВАТИ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ВИДАЛИТИ ВСЕ З КОШИКА"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("КОШИК"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Доставка:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Проміжний підсумок:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Податок:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("УСЬОГО"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("АКСЕСУАРИ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("УСІ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ОДЯГ"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("ТОВАРИ ДЛЯ ДОМУ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Додаток для покупки модних товарів"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Пароль"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Ім\'я користувача"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ВИЙТИ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МЕНЮ"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("ДАЛІ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Чашка Blue Stone"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Футболка вишневого кольору з хвилястим комірцем"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Серветки з тканини шамбре"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Сорочка з тканини шамбре"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Класичний білий комірець"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Коричневий светр"),
        "shrineProductCopperWireRack": MessageLookupByLibrary.simpleMessage(
            "Дротяна стійка мідного кольору"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Футболка Fine Line"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Садовий кабель"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Картуз"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Піджак"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Три позолочені столики"),
        "shrineProductGingerScarf": MessageLookupByLibrary.simpleMessage(
            "Шарф світло-коричневого кольору"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Майка сірого кольору"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Чайний сервіз Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Кухня Quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Штани темно-синього кольору"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Туніка бежевого кольору"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Стіл для чотирьох осіб"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Дощоприймальний жолоб"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Кросовер Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Туніка в пляжному стилі"),
        "shrineProductSeabreezeSweater": MessageLookupByLibrary.simpleMessage(
            "Светр кольору морської хвилі"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Футболка з манжетами на рукавах"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Сумка Shrug"),
        "shrineProductSootheCeramicSet": MessageLookupByLibrary.simpleMessage(
            "Набір керамічної плитки Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Окуляри Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Сережки Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Горщики для сукулентів"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Вільна сукня"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Футболка Surf and Perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Сумка-мішок Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Шкарпетки Varsity"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Футболка Walter Henley (біла)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Брелок із плетеним ремінцем"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Біла сорочка в тонку смужку"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Ремінь Whitney"),
        "shrineScreenReaderCart": m24,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Додати в кошик"),
        "shrineScreenReaderRemoveProductButton": m25,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Закрити кошик"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Закрити меню"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Відкрити меню"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Вилучити товар"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Шукати"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Налаштування"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Адаптивний макет запуску"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Основний текст"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("КНОПКА"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Заголовок"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Підзаголовок"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Назва"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Запуск додатка"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Додати"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Вибране"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Пошук"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Поділитися")
      };
}
