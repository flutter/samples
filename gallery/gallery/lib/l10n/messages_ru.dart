// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ru locale. All the
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
  String get localeName => 'ru';

  static m0(value) =>
      "Чтобы посмотреть код этого приложения, откройте страницу ${value}.";

  static m1(title) => "Тег для вкладки \"${title}\"";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Нет ресторанов', one: '1 ресторан', few: '${totalRestaurants} ресторана', many: '${totalRestaurants} ресторанов', other: '${totalRestaurants} ресторана')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Без пересадок', one: '1 пересадка', few: '${numberOfStops} пересадки', many: '${numberOfStops} пересадок', other: '${numberOfStops} пересадки')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Нет доступных вариантов жилья', one: 'Доступен 1 вариант жилья', few: 'Доступно ${totalProperties} варианта жилья', many: 'Доступно ${totalProperties} вариантов жилья', other: 'Доступно ${totalProperties} варианта жилья')}";

  static m5(value) => "Пункт ${value}";

  static m6(error) => "Не удалось скопировать текст: ${error}";

  static m7(value) => "Непрерывный ползунок: ${value}";

  static m8(value) => "Дискретный ползунок: ${value}";

  static m9(value) => "Отмеченное значение: ${value}";

  static m10(value) => "Выбранное значение: ${value}";

  static m11(name, phoneNumber) => "${name}: ${phoneNumber}";

  static m12(value) => "Вы выбрали значение \"${value}\".";

  static m13(accountName, accountNumber, amount) =>
      "Счет \"${accountName}\" с номером ${accountNumber}. Баланс: ${amount}.";

  static m14(amount) =>
      "В этом месяце вы потратили ${amount} на оплату комиссии в банкоматах.";

  static m15(percent) =>
      "Отлично! В этом месяце на вашем счете на ${percent} больше средств по сравнению с прошлым месяцем.";

  static m16(percent) =>
      "Внимание! Вы израсходовали ${percent} своего бюджета на этот месяц.";

  static m17(amount) =>
      "На этой неделе вы потратили ${amount} на еду и напитки в ресторанах.";

  static m18(count) =>
      "${Intl.plural(count, one: 'Увеличьте сумму возможного налогового вычета, назначив категорию для одной нераспределенной транзакции.', few: 'Увеличьте сумму возможного налогового вычета, назначив категории для ${count} нераспределенных транзакций.', many: 'Увеличьте сумму возможного налогового вычета, назначив категории для ${count} нераспределенных транзакций.', other: 'Увеличьте сумму возможного налогового вычета, назначив категории для ${count} нераспределенной транзакции.')}";

  static m19(billName, date, amount) =>
      "Счет \"${billName}\" на сумму ${amount}. Срок оплаты: ${date}.";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Бюджет \"${budgetName}\". Израсходовано: ${amountUsed} из ${amountTotal}. Осталось: ${amountLeft}.";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'НЕТ ТОВАРОВ', one: '1 ТОВАР', few: '${quantity} ТОВАРА', many: '${quantity} ТОВАРОВ', other: '${quantity} ТОВАРА')}";

  static m22(price) => "x ${price}";

  static m23(quantity) => "Количество: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'Нет товаров в корзине', one: '1 товар в корзине', few: '${quantity} товара в корзине', many: '${quantity} товаров в корзине', other: '${quantity} товара в корзине')}";

  static m25(product) => "${product}: удалить товар";

  static m26(value) => "Пункт ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Пример Flutter из хранилища GitHub"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Назад на главную"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Выемка"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Положение плавающей командной кнопки"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("На панели в центре"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("На панели с краю"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Над панелью в центре"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Над панелью с краю"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Банковский счет"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Будильник"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Календарь"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Комментарии"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("КНОПКА"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Создать"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Велосипед"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Лифт"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Камин"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Большой"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Средний"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Маленький"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Включить индикаторы"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Стиральная машина"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ЯНТАРНЫЙ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("СИНИЙ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("СИНЕ-СЕРЫЙ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("КОРИЧНЕВЫЙ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("БИРЮЗОВЫЙ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("НАСЫЩЕННЫЙ ОРАНЖЕВЫЙ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ТЕМНО-ФИОЛЕТОВЫЙ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЗЕЛЕНЫЙ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("СЕРЫЙ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ИНДИГО"),
        "colorsLightBlue":
            MessageLookupByLibrary.simpleMessage("СВЕТЛО-ГОЛУБОЙ"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("СВЕТЛО-ЗЕЛЕНЫЙ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ЛАЙМОВЫЙ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ОРАНЖЕВЫЙ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("РОЗОВЫЙ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ФИОЛЕТОВЫЙ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("КРАСНЫЙ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("БИРЮЗОВЫЙ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ЖЕЛТЫЙ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Персонализированное приложение для путешествий"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ЕДА"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Неаполь, Италия"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пицца в дровяной печи"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Даллас, США"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Женщина, которая держит огромный сэндвич с пастромой"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Пустой бар с высокими стульями"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордова, Аргентина"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Портленд, США"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тако по-корейски"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Париж, Франция"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шоколадный десерт"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Сеул, Южная Корея"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Стильный зал ресторана"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Сиэтл, США"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Блюдо с креветками"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Нашвилл, США"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Вход в пекарню"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Атланта, США"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тарелка раков"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрид, Испания"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Прилавок с пирожными в кафе"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage("Рестораны"),
        "craneFly": MessageLookupByLibrary.simpleMessage("АВИАПЕРЕЛЕТЫ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Аспен, США"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Шале на фоне заснеженного пейзажа с хвойными деревьями"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Биг-Сур, США"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Каир, Египет"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минареты мечети аль-Азхар на закате"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Кирпичный маяк на фоне моря"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Напа, США"),
        "craneFly12SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бассейн, окруженный пальмами"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Бали, Индонезия"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бассейн у моря, окруженный пальмами"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Палатка в поле"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Долина Кхумбу, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Молитвенные флаги на фоне заснеженной горы"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу-Пикчу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Крепость Мачу-Пикчу"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Мале, Мальдивы"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бунгало над водой"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Вицнау, Швейцария"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Гостиница у озера на фоне гор"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Мехико, Мексика"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Вид с воздуха на Дворец изящных искусств"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Гора Рашмор, США"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Гора Рашмор"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сингапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Роща сверхдеревьев"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мужчина, который опирается на синий ретроавтомобиль"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Куда бы вы хотели отправиться?"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Выберите дату"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Выберите даты"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Выберите пункт назначения"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Закусочные"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Выберите местоположение"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Выберите пункт отправления"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Выберите время"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Число путешествующих"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ГДЕ ПЕРЕНОЧЕВАТЬ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Мале, Мальдивы"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бунгало над водой"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Аспен, США"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Каир, Египет"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минареты мечети аль-Азхар на закате"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тайбэй, Тайвань"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Небоскреб Тайбэй 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Шале на фоне заснеженного пейзажа с хвойными деревьями"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу-Пикчу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Крепость Мачу-Пикчу"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мужчина, который опирается на синий ретроавтомобиль"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Вицнау, Швейцария"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Гостиница у озера на фоне гор"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Биг-Сур, США"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Палатка в поле"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Напа, США"),
        "craneSleep6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бассейн, окруженный пальмами"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Порту, Португалия"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Яркие дома на площади Рибейра"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексика"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Руины майя на утесе над пляжем"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Кирпичный маяк на фоне моря"),
        "craneSleepProperties": m4,
        "craneSleepSubhead":
            MessageLookupByLibrary.simpleMessage("Варианты жилья"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Разрешить"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Яблочный пирог"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Отмена"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Чизкейк"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Брауни с шоколадом"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Выберите свой любимый десерт из списка ниже. На основе выбранного варианта мы настроим список рекомендуемых заведений поблизости."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Удалить"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Запретить"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Выберите любимый десерт"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Ваше текущее местоположение будет показываться на карте и использоваться для составления маршрутов, выдачи актуальных результатов поиска и расчета времени в пути."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Разрешить Картам доступ к вашему местоположению при работе с приложением?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тирамису"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Кнопка"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("С фоном"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Показать оповещение"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Чат"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Главная"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профиль"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чипы действий представляют собой набор динамических параметров, которые запускают действия, связанные с основным контентом. Как правило, чипы действий отображаются в интерфейсе в зависимости от контекста."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Чипы действий"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Диалоговое окно с оповещением сообщает пользователю о событиях, требующих внимания. Оно может иметь заголовок, а также список доступных действий."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Оповещение"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Оповещение с заголовком"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "На нижней панели приложения можно разместить панель навигации и до четырех действий, включая плавающую командную кнопку."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "На панели в нижней части экрана располагаются элементы навигации и доступные действия"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Нижняя панель приложения"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "На панели навигации в нижней части экрана можно разместить от трех до пяти разделов. Каждый раздел представлен значком и может иметь текстовую надпись. Если пользователь нажмет на один из значков, то перейдет в соответствующий раздел верхнего уровня."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Постоянные ярлыки"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Выбранный ярлык"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Навигация внизу экрана с плавным переходом"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Навигация внизу экрана"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Добавить"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ПОКАЗАТЬ НИЖНИЙ ЭКРАН"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Заголовок"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Модальный нижний экран можно использовать вместо меню или диалогового окна. Пока такой экран открыт, пользователю недоступны другие элементы приложения."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Модальный нижний экран"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Постоянный нижний экран показывает дополнительную информацию в приложении. Такой экран всегда остается видимым, даже когда пользователь взаимодействует с другими разделами."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Постоянный нижний экран"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Постоянный и модальный нижние экраны"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Нижний экран"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Текстовые поля"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Плоские, приподнятые, контурные и не только"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Кнопки"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Меню с контрольным списком"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Компактные элементы, обозначающие объект, атрибут или действие"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чипы"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Каждый чип выбора представляет собой один из вариантов выбора. Чип выбора может содержать описание или название категории."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип выбора"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Кольцевой индикатор прогресса в стиле Material Design показывает, что приложение обрабатывает запрос пользователя."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Кольцевой индикатор прогресса"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Пример кода"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Текст скопирован в буфер обмена."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("КОПИРОВАТЬ ВСЕ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Константы для цветов и градиентов, которые представляют цветовую палитру Material Design."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Все стандартные цвета"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Цвета"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Контекстное меню"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Окно действия – тип оповещения, в котором пользователю предлагается как минимум два варианта действий в зависимости от контекста. Окно может иметь заголовок, дополнительное сообщение, а также список действий."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Окно действия"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Вращающийся по часовой стрелке индикатор выполнения в стиле iOS."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Индикаторы выполнения в стиле iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Индикатор выполнения"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Только кнопки из оповещения"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Оповещение с кнопками"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Диалоговое окно с оповещением сообщает пользователю о событиях, требующих внимания. Оно может иметь заголовок, содержимое, а также список доступных действий. Заголовок располагается над содержимым, а действия – под ним."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Оповещение"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Оповещение с заголовком"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Диалоговые окна с оповещениями в стиле iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Оповещения"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Кнопка в стиле iOS. Содержит текст или значок, который исчезает и появляется при нажатии. Может иметь фон."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Кнопки в стиле iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Кнопки"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Панель навигации в стиле iOS – это панель инструментов, обязательным атрибутом которой является название страницы, расположенное посередине."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Панель навигации в стиле iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Панель навигации"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Элемент управления в стиле iOS для обновления страницы с помощью движения сверху вниз."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Элемент управления в стиле iOS для обновления страницы"),
        "demoCupertinoPullToRefreshTitle": MessageLookupByLibrary.simpleMessage(
            "Обновление страницы с помощью движения сверху вниз"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Позволяет переключаться между несколькими взаимоисключающими вариантами (сегментами). Выделен только тот вариант, который был выбран."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментированный элемент управления в стиле iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментированный элемент управления"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Ползунок можно использовать для выбора определенного значения в указанном диапазоне."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Ползунок в стиле iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Ползунок"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "С помощью переключателя можно включить или отключить отдельную настройку."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Переключатель в стиле iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Нижняя навигационная панель вкладок в стиле iOS. Содержит несколько вкладок, одна из которых активна. По умолчанию активной считается первая вкладка."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Нижняя панель вкладок в стиле iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Панель вкладок"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Ползунки позволяют выбрать одно из значений или указать диапазон значений. К ползункам также можно применить тему и собственные настройки."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Настраиваемые ползунки"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Обычные, с оповещением и полноэкранные"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Диалоговые окна"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Документация по API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чипы фильтров содержат теги и описания, которые помогают отсеивать ненужный контент."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип фильтра"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "При нажатии плоской кнопки отображается цветовой эффект, но кнопка не поднимается. Используйте такие кнопки на панелях инструментов, в диалоговых окнах или как встроенные элементы с полями."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Плоская кнопка"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Плавающая командная кнопка – круглая кнопка, которая располагается над остальным контентом и позволяет выделить самое важное действие в приложении."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Плавающая командная кнопка"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Свойство fullscreenDialog определяет, будет ли следующая страница полноэкранным модальным диалоговым окном."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Полноэкранный режим"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Полноэкранный режим"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Табличные списки больше всего подходят для показа однотипных данных, например изображений. Объекты, включенные в такие списки, называются элементами."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("С нижним колонтитулом"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("С верхним колонтитулом"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Только изображение"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Макет строк и столбцов"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Табличные списки"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Информация"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чипы записи представляют сложные данные в компактной форме, например объекты (людей, места, вещи) или текстовые диалоги."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип записи"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Не удалось открыть URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Линейный индикатор прогресса в стиле Material Design, который также называют индикатором выполнения."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Линейный индикатор прогресса"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Одна строка с фиксированным размером, которая обычно содержит текст и значок."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Дополнительный текст"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Макеты прокручиваемых списков"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Списки"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Недоступный пункт меню"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Объект, у которого есть меню с контрольным списком"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Объект, у которого есть контекстное меню"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Объект, у которого есть меню с разделами"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Объект, у которого есть простое меню"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Первый пункт контекстного меню"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Третий пункт контекстного меню"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Меню содержит список вариантов, которые располагаются в отдельном блоке. Список появляется, когда пользователь нажимает кнопку, выполняет действие или взаимодействует с другим элементом управления."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("4"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Получить ссылку"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Первый пункт меню"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Третий пункт меню"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Второй пункт меню"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("1"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Предпросмотр"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Удалить"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Поделиться"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("Кнопки меню и простые меню"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("3"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Меню"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("2"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Одна строка"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Нажмите, чтобы посмотреть доступные параметры для этой демоверсии."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Показ параметров"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Параметры"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Контурные кнопки при нажатии становятся непрозрачными и поднимаются. Часто они используются вместе с приподнятыми кнопками, чтобы обозначить альтернативное, дополнительное действие."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Контурная кнопка"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Линейные, кольцевые и неопределенные"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Индикаторы прогресса"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Приподнятые кнопки позволяют сделать плоские макеты более объемными, а функции на насыщенных или широких страницах – более заметными."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Приподнятая кнопка"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Ползунки позволяют выбрать нужное значение в заданном диапазоне. Для понятности по краям диапазона можно расположить значки. С помощью ползунков удобно регулировать уровень громкости, настраивать яркость и фильтры изображений."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Ползунки диапазона"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Меню с разделами"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "С помощью флажка пользователь может выбрать несколько параметров из списка. Чаще всего у флажка есть два состояния. В некоторых случаях предусмотрено третье."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Флажок"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "С помощью радиокнопки пользователь может выбрать один параметр из списка. Радиокнопки хорошо подходят для тех случаев, когда вы хотите показать все доступные варианты в одном списке."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Радиокнопка"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Флажки, радиокнопки и переключатели"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "С помощью переключателя пользователь может включить или отключить отдельную настройку. Рядом с переключателем должно быть ясно указано название настройки и ее состояние."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Переключатель"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Элементы управления выбором"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "В обычном диалоговом окне пользователю предлагается несколько вариантов на выбор. Если у окна есть заголовок, он располагается над вариантами."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Обычное"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Простое меню"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Непрерывный"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Непрерывный ползунок диапазона с пользовательской темой"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Непрерывный ползунок с возможностью редактировать числовое значение"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Ползунки позволяют выбрать нужное значение в заданном диапазоне. С помощью ползунков удобно регулировать уровень громкости, настраивать яркость и фильтры изображений."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Дискретный"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Дискретный ползунок с пользовательской темой"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Числовое значение"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Чтобы выбрать определенное значение, пользователю нужно провести пальцем по экрану"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Ползунки"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Вы нажали кнопку на снэк-панели."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("КНОПКА"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ПОКАЗАТЬ СНЭК-ПАНЕЛЬ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Снэк-панели – это уведомления, которые на некоторое время появляются в нижней части экрана. Они сообщают о действии, которое было или будет выполнено в приложении. Снэк-панели не отвлекают пользователя, так как их не нужно закрывать вручную."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Снэк-панели – это уведомления, которые появляются в нижней части экрана"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Это снэк-панель."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Cнэк-панели"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Вкладки позволяют упорядочить контент на экранах, в наборах данных и т. д."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Вкладки, прокручиваемые по отдельности"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Вкладки"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "С помощью текстовых полей пользователи могут заполнять формы и вводить данные в диалоговых окнах."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Электронная почта"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Введите пароль."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Укажите номер телефона в США в следующем формате: (###) ###-####."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Прежде чем отправлять форму, исправьте ошибки, отмеченные красным цветом."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Скрыть пароль"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Не пишите много, это только пример."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Биография"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Имя*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Введите имя."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Не более 8 символов."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Используйте только буквы."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Пароль*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Пароли не совпадают."),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Номер телефона*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "Звездочкой (*) отмечены поля, обязательные для заполнения."),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Введите пароль ещё раз*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Зарплата"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Показать пароль"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("ОТПРАВИТЬ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Одна строка для редактирования текста и чисел"),
        "demoTextFieldTellUsAboutYourself":
            MessageLookupByLibrary.simpleMessage(
                "Расскажите о себе (например, какое у вас хобби)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Текстовые поля"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Как вас зовут?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "По какому номеру с вами можно связаться?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Ваш адрес электронной почты"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "С помощью переключателей можно сгруппировать связанные параметры. У группы связанных друг с другом переключателей должен быть общий контейнер."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Переключатели"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Подсказки помогают понять, как работают кнопки и другие элементы интерфейса. Они появляются при долгом нажатии на элемент, переходе к нему или наведении на него указателя."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Чтобы увидеть подсказку, наведите указатель на элемент или нажмите на него и удерживайте."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Короткое сообщение, которое появляется при долгом нажатии или наведении указателя"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Подсказки"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Две строки"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Определения разных стилей текста в Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Все стандартные стили текста"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Параметры текста"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Добавить аккаунт"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ОК"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ОТМЕНА"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ОТМЕНА"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("УДАЛИТЬ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Удалить черновик?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Демоверсия диалогового окна в полноэкранном режиме."),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("СОХРАНИТЬ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Диалоговое окно в полноэкранном режиме"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Отправка анонимных геоданных в Google помогает приложениям точнее определять ваше местоположение. Данные будут отправляться, даже если не запущено ни одно приложение."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Использовать геолокацию Google?"),
        "dialogSelectedOption": m12,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Настройка аккаунта для резервного копирования"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ПОКАЗАТЬ ДИАЛОГОВОЕ ОКНО"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("РЕФЕРЕНСЫ И МЕДИА"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Категории"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерея"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Пляж"),
        "placeBronzeWorks": MessageLookupByLibrary.simpleMessage(
            "Завод по производству изделий из бронзы"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Ченнай"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Четтинад"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Рыбак"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Цветочный рынок"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Приготовление обеда"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Рынок"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Пондичерри"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Соляная ферма"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Скутеристы"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Рабочий на шелковой фабрике"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Танджор"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Храм в Танджавуре"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Сбережения на машину"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Расчетный счет"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Сбережения на дом"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Отпуск"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Владелец аккаунта"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Годовая процентная доходность"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Процент, уплаченный в прошлом году"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Процентная ставка"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Процент с начала года"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Следующая выписка по счету"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Всего"),
        "rallyAccounts":
            MessageLookupByLibrary.simpleMessage("Банковские счета"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Оповещения"),
        "rallyAlertsMessageATMFees": m14,
        "rallyAlertsMessageCheckingAccount": m15,
        "rallyAlertsMessageHeadsUpShopping": m16,
        "rallyAlertsMessageSpentOnRestaurants": m17,
        "rallyAlertsMessageUnassignedTransactions": m18,
        "rallyBillAmount": m19,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Счета"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Срок"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Одежда"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кофейни"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Продукты"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Рестораны"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Остаток"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Бюджеты"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Приложение для планирования бюджета"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ОСТАЛОСЬ"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("ВОЙТИ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Войти"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Вход в Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Нет аккаунта?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Запомнить меня"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ЗАРЕГИСТРИРОВАТЬСЯ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Имя пользователя"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ПОКАЗАТЬ ВСЕ"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage(
            "Показать все банковские счета"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Показать все счета"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Показать все бюджеты"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Найти банкоматы"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Справка"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Управление аккаунтами"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Уведомления"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Настройки электронных документов"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Код доступа и Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Персональные данные"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Выйти"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Налоговые документы"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("БАНКОВСКИЕ СЧЕТА"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("СЧЕТА"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БЮДЖЕТЫ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ОБЗОР"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("НАСТРОЙКИ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("О Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Дизайн: TOASTER, Лондон"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Закрыть настройки"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Настройки"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Тёмная"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Отправить отзыв"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Светлая"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Региональные настройки"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Платформа"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Замедленная анимация"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Системные настройки"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Направление текста"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Слева направо"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Региональные настройки"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Справа налево"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Масштабирование текста"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Очень крупный"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Крупный"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Обычный"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Мелкий"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Настройки"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОТМЕНА"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОЧИСТИТЬ КОРЗИНУ"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("КОРЗИНА"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Доставка:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Итого:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Налог:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("ВСЕГО"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("АКСЕССУАРЫ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ВСЕ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ОДЕЖДА"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("ДЛЯ ДОМА"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Приложение для покупки стильных вещей"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Пароль"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Имя пользователя"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ВЫЙТИ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МЕНЮ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ДАЛЕЕ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Синяя кружка"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Персиковая футболка"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Хлопковые салфетки"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Хлопковая рубашка"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Классическая белая блузка"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Бежевый свитер"),
        "shrineProductCopperWireRack": MessageLookupByLibrary.simpleMessage(
            "Корзинка из медной проволоки"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Кофта в полоску"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Цветочные бусы"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Шляпа в стиле Гэтсби"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Куртка в стиле джентри"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Настольный набор"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Имбирный шарф"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Серая майка"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Прозрачный чайный набор"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Кухонный набор"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Короткие брюки клеш"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Кремовая туника"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Круглый стол"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Минималистичный поднос"),
        "shrineProductRamonaCrossover": MessageLookupByLibrary.simpleMessage(
            "Женственная блузка с запахом"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Легкий свитер"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Мятный свитер"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Футболка со свободным рукавом"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Сумка хобо"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Набор керамической посуды"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Солнцезащитные очки Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Серьги на кольцах"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Суккуленты"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Летнее платье"),
        "shrineProductSurfAndPerfShirt": MessageLookupByLibrary.simpleMessage(
            "Футболка цвета морской волны"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Сумка-ранец"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Спортивные носки"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Белая легкая кофта"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Плетеный брелок"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Рубашка в белую полоску"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Кожаный ремень"),
        "shrineScreenReaderCart": m24,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Добавить в корзину"),
        "shrineScreenReaderRemoveProductButton": m25,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Закрыть корзину"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Закрыть меню"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Открыть меню"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Удалить товар"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Поиск"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Настройки"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Адаптивный макет"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Основной текст"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("КНОПКА"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Заголовок"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Подзаголовок"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Название"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("Starter"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Добавить"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Избранное"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Поиск"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Поделиться")
      };
}
