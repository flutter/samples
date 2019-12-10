// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a bg locale. All the
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
  String get localeName => 'bg';

  static m0(value) =>
      "За да видите изходния код за това приложение, моля, посетете ${value}.";

  static m1(title) => "Заместващ текст за раздел ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Няма ресторанти', one: '1 ресторант', other: '${totalRestaurants} ресторанта')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Директен', one: '1 прекачване', other: '${numberOfStops} прекачвания')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Няма свободни имоти', one: '1 свободен имот', other: '${totalProperties} свободни имота')}";

  static m5(value) => "Артикул ${value}";

  static m6(error) => "Копирането в буферната памет не бе успешно: ${error}";

  static m7(name, phoneNumber) =>
      "Телефонният номер на ${name} е ${phoneNumber}";

  static m8(value) => "Избрахте: ${value}";

  static m9(accountName, accountNumber, amount) =>
      "${accountName} сметка ${accountNumber} с наличност ${amount}.";

  static m10(amount) =>
      "Този месец сте изхарчили ${amount} за такси за банкомат";

  static m11(percent) =>
      "Браво! Разплащателната ви сметка е с(ъс) ${percent} повече средства спрямо миналия месец.";

  static m12(percent) =>
      "Внимание! Изхарчихте ${percent} от бюджета си за пазаруване за този месец.";

  static m13(amount) => "Тази седмица сте изхарчили ${amount} за ресторанти.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Увеличете потенциалните данъчни облекчения! Задайте категории за 1 транзакция, която няма такива.', other: 'Увеличете потенциалните данъчни облекчения! Задайте категории за ${count} транзакции, които нямат такива.')}";

  static m15(billName, date, amount) =>
      "Сметка за ${billName} на стойност ${amount}, дължима на ${date}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Бюджет за ${budgetName}, от който са използвани ${amountUsed} от общо ${amountTotal} и остават ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'НЯМА АРТИКУЛИ', one: '1 АРТИКУЛ', other: '${quantity} АРТИКУЛА')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Количество: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Пазарска кошница – няма елементи', one: 'Пазарска кошница – 1 елемент', other: 'Пазарска кошница – ${quantity} елемента')}";

  static m21(product) => "Премахване на ${product}";

  static m22(value) => "Артикул ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Хранилище в Github с примери за Flutter"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Сметка"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Будилник"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Календар"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Коментари"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("БУТОН"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Създаване"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Колоездене"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Асансьор"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Камина"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Голям"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Среден"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Малък"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage(
            "Включване на светлинните индикатори"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Пералня"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("КЕХЛИБАРЕНО"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("СИНЬО"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("СИНЬО-СИВО"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("КАФЯВО"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("СИНЬО-ЗЕЛЕНО"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("НАСИТЕНО ОРАНЖЕВО"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("НАСИТЕНО ЛИЛАВО"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЗЕЛЕНО"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("СИВО"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ИНДИГО"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("СВЕТЛОСИНЬО"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("СВЕТЛОЗЕЛЕНО"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ЛИМОНОВОЗЕЛЕНО"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ОРАНЖЕВО"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("РОЗОВО"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ЛИЛАВО"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ЧЕРВЕНО"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("СИНЬО-ЗЕЛЕНО"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ЖЪЛТО"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Персонализирано приложение за пътувания"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ХРАНЕНЕ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Неапол, Италия"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пица в пещ на дърва"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Далас, САЩ"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалия"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жена, която държи огромен сандвич с пастърма"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Празен бар с високи столове"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордоба, Аржентина"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Хамбургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Портланд, САЩ"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Корейско тако"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Париж, Франция"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шоколадов десерт"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Сеул, Южна Корея"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Артистична зона за сядане в ресторант"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Сиатъл, САЩ"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ястие със скариди"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Нашвил, САЩ"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Вход към пекарна"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Атланта, САЩ"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Раци в чиния"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрид, Испания"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Щанд с печива в кафене"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Разглеждане на ресторанти по дестинация"),
        "craneFly": MessageLookupByLibrary.simpleMessage("ПОЛЕТИ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Аспън, САЩ"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Зимен пейзаж с шале и вечнозелени дървета"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Биг Сър, САЩ"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Кайро, Египет"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минаретата на джамията Ал-Азхар при залез"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалия"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тухлен фар край морето"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Напа, САЩ"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Басейн с палми"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Бали, Индонезия"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Крайбрежен басейн с палми"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Палатка на полето"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Долината Кхумбу, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Молитвени знамена на фона на заснежени планини"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу Пикчу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цитаделата Мачу Пикчу"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Мале, Малдиви"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бунгала над водата"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Вицнау, Швейцария"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хотел, разположен на брега на езеро, на фона на планини"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Град Мексико, Мексико"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Дворецът на изящните изкуства от птичи поглед"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Планината Ръшмор, САЩ"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Планината Ръшмор"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сингапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Горичка от супердървета"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Хавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мъж, облегнат на класическа синя кола"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Разглеждане на полети по дестинация"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Избор на дата"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Избор на дати"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Избор на дестинация"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Закусвални"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Избор на местоположение"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Избор на начална точка"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Избор на час"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Пътуващи"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("СПАНЕ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Мале, Малдиви"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бунгала над водата"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Аспън, САЩ"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Кайро, Египет"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минаретата на джамията Ал-Азхар при залез"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тайпе, Тайван"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Небостъргачът Тайпе 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Зимен пейзаж с шале и вечнозелени дървета"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу Пикчу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цитаделата Мачу Пикчу"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Хавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мъж, облегнат на класическа синя кола"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Вицнау, Швейцария"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хотел, разположен на брега на езеро, на фона на планини"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Биг Сър, САЩ"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Палатка на полето"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Напа, САЩ"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Басейн с палми"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Порто, Португалия"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Цветни апартаменти на площад „Рибейра“"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексико"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Майски руини на скала над плажа"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалия"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тухлен фар край морето"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Разглеждане на имоти по дестинация"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Разрешаване"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Ябълков сладкиш"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Отказ"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Чийзкейк"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Шоколадово брауни"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Моля, посочете любимия си десерт от списъка по-долу. Изборът ви ще се използва за персонализиране на предложения списък със заведения за хранене в района ви."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Отхвърляне"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Без разрешаване"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Изберете любим десерт"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Текущото ви местоположение ще се показва на картата и ще се използва за упътвания, резултати от търсенето в района и приблизително време на пътуване."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Да се разреши ли на Карти да осъществява достъп до местоположението ви, докато използвате приложението?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тирамису"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Бутон"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("С фон"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Показване на сигнала"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чиповете за действие представляват набор от опции, които задействат действие, свързано с основното съдържание. Те трябва да се показват в потребителския интерфейс динамично и спрямо контекста."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип за действие"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Диалоговият прозорец със сигнал информира потребителя за ситуации, в които се изисква потвърждение. Той включва незадължителни заглавие и списък с действия."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Сигнал"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Сигнал със заглавие"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Долните ленти за навигация са в долната част на екрана и в тях се показват от три до пет дестинации. Всяка дестинация е означена с икона и незадължителен текстов етикет. Когато потребителят докосне долна икона за навигация, преминава към навигационната дестинация от първо ниво, свързана с иконата."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Постоянни етикети"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Избран етикет"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Долна навигация с преливащи се изгледи"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Долна навигация"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Добавяне"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ПОКАЗВАНЕ НА ДОЛНИЯ ЛИСТ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Заглавка"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Модалният долен лист е алтернатива на менюто или диалоговия прозорец, като не допуска потребителят да взаимодейства с останалата част от приложението."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Модален долен лист"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Постоянният долен лист показва информация, допълваща основното съдържание на приложението. Той остава видим дори когато потребителят взаимодейства с други части на приложението."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Постоянен долен лист"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Постоянен и модален долен лист"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Долен лист"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Текстови полета"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Плоски, повдигащи се, с контури и др."),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Бутони"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Компактни елементи, които представят информация за въвеждане, атрибут или действие"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чипове"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чиповете за избор представят един избор от даден набор. Те съдържат свързан описателен текст или категории."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип за избор"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Примерен код"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Копирано в буферната памет."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("КОПИРАНЕ НА ВСИЧКО"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Цветове и константите на цветовите образци, които представляват цветовата палитра на Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Всички предварително зададени цветове"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Цветове"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Таблицата с действия представлява конкретен стил за сигнали, при който на потребителя се предоставя набор от две или повече възможности за избор, свързани с текущия контекст. Тя може да има заглавие, допълнително съобщение и списък с действия."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Таблица с действия"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Само бутоните за сигнали"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Сигнал с бутони"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Диалоговият прозорец със сигнал информира потребителя за ситуации, в които се изисква потвърждение. Той включва незадължителни заглавие, съдържание и списък с действия. Заглавието се показва над съдържанието, а действията – под него."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Сигнал"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Сигнал със заглавие"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Диалогови прозорци със сигнали в стил iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Сигнали"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Бутон в стил iOS. Включва текст и/или икона, които плавно избледняват и се появяват при докосване. По избор може да има фон."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Бутони в стил iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Бутони"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Служи за избор между няколко взаимоизключващи се опции. При избиране на някоя от опциите в сегментирания превключвател останалите се деактивират."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментиран превключвател в стил iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Сегментиран превключвател"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Опростени, със сигнал и на цял екран"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Диалогови прозорци"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Документация на API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чиповете за филтриране използват маркери или описателни думи за филтриране на съдържанието."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип за филтриране"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "При натискане плоските бутони показват разливане на мастило, но не се повдигат. Използвайте този тип бутони в ленти с инструменти, диалогови прозорци и при вграждане с вътрешни полета"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Плосък бутон"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Плаващият бутон за действие представлява бутон с кръгла икона, която се задържа над съдържанието, за да подпомогне основно действие в приложението."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Плаващ бутон за действие (ПБД)"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Свойството fullscreenDialog посочва дали входящата страница е модален диалогов прозорец на цял екран"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("На цял екран"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Цял екран"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Информация"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чиповете за въвеждане представят сложна информация, като например субект (лице, място или предмет) или разговорен текст, в компактен вид."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип за въвеждане"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL адресът не се показа:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Един ред с фиксирана височина, който обикновено съдържа текст и икона, поставена в началото или края."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Вторичен текст"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Оформления с превъртащ се списък"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Списъци"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Един ред"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Докоснете тук, за да видите наличните опции за тази демонстрация."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Преглед на опциите"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Опции"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "При натискане бутоните с контури стават плътни и се повдигат. Често са в двойка с повдигащ се бутон, за да посочат алтернативно вторично действие."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Бутон с контури"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Повдигащите се бутони добавят измерение към оформленията, които са предимно плоски. Така функциите изпъкват в претрупани или големи области."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Повдигащ се бутон"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Квадратчетата за отметка дават възможност на потребителя да избере няколко опции от даден набор. Стойността на нормалните квадратчета за отметка е true или false, а на тези, които имат три състояния, тя може да бъде и null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Квадратче за отметка"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Бутоните за избор дават възможност на потребителя да избере една опция от даден набор. Използвайте ги, ако смятате, че потребителят трябва да види всички налични опции една до друга."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Бутон за избор"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Квадратчета за отметка, бутони за избор и превключватели"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Превключвателите за включване/изключване променят състоянието на една опция в настройките. Състоянието на превключвателя, както и управляваната от него опция, трябва да са ясно посочени в съответния вграден етикет."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Превключвател"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Контроли за избор"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Опростеният диалогов прозорец предлага на потребителя възможност за избор между няколко опции. Той включва незадължително заглавие, което се показва над възможностите за избор."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Опростен"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Разделите служат за организиране на съдържанието на различни екрани, набори от данни и други взаимодействия."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Раздели със самостоятелно превъртащи се изгледи"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Раздели"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Текстовите полета дават възможност на потребителите да въвеждат текст в потребителския интерфейс. Те обикновено се срещат в диалогови прозорци и формуляри."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Имейл адрес"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Моля, въведете парола."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(XXX) XXX-XXXX – Въведете телефонен номер от САЩ."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Моля, коригирайте грешките в червено, преди да изпратите."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Скриване на паролата"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Пишете кратко, това е демонстрация."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Биография"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Име*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Трябва да въведете име."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Не повече от 8 знака."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Моля, въведете само букви."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Парола*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Паролите не съвпадат"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Телефонен номер*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* указва задължително поле"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Въведете отново паролата*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Заплата"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Показване на паролата"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("ИЗПРАЩАНЕ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Един ред от текст и числа, който може да се редактира"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Разкажете ни за себе си (напр. напишете с какво се занимавате или какви хобита имате)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Текстови полета"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Как ви наричат хората?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Как можем да се свържем с вас?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Имейл адресът ви"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Бутоните за превключване могат да се използват за групиране на сродни опции. За да изпъкнат групите със сродни бутони за превключване, всяка група трябва да споделя общ контейнер"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Бутони за превключване"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Два реда"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Дефиниции за различните типографски стилове в Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Всички предварително дефинирани текстови стилове"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Типография"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Добавяне на профил"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ПРИЕМАМ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ОТКАЗ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("НЕ ПРИЕМАМ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ОТХВЪРЛЯНЕ"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "Да се отхвърли ли черновата?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Демонстрация на диалогов прозорец на цял екран"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ЗАПАЗВАНЕ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Диалогов прозорец на цял екран"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Позволете на Google да помага на приложенията да определят местоположението. Това означава, че ще ни изпращате анонимни данни за него дори когато не се изпълняват приложения."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Да се използва ли услугата на Google за местоположението?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Задаване на профил за резервни копия"),
        "dialogShow": MessageLookupByLibrary.simpleMessage(
            "ПОКАЗВАНЕ НА ДИАЛОГОВИЯ ПРОЗОРЕЦ"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "СТИЛОВЕ ЗА СПРАВОЧНИЦИТЕ И МУЛТИМЕДИЯ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Категории"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерия"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Депозит за автомобил"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Разплащателна сметка"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Депозит за жилище"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Почивка"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Титуляр на сметката"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Годишна доходност"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Лихва през миналата година"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Лихвен процент"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Лихва от началото на годината"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Следващото извлечение"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Общо"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Сметки"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Сигнали"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Сметки"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Дължими"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Облекло"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кафенета"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Хранителни стоки"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ресторанти"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Остават"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Бюджети"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Приложение за лични финанси"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ОСТАВАТ"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("ВХОД"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Вход"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Вход в Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Нямате профил?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Парола"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Запомнете ме"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("РЕГИСТРИРАНЕ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Потребителско име"),
        "rallySeeAll":
            MessageLookupByLibrary.simpleMessage("ПРЕГЛЕД НА ВСИЧКИ"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage(
            "Преглед на всички банкови сметки"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Преглед на всички сметки"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Преглед на всички бюджети"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Намиране на банкомати"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Помощ"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Управление на сметките"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Известия"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Настройки за работа без хартия"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Код за достъп и Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Лична информация"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Изход"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Данъчни документи"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("СМЕТКИ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("СМЕТКИ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БЮДЖЕТИ"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("ОБЩ ПРЕГЛЕД"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("НАСТРОЙКИ"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Всичко за галерията на Flutter"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Дизайн от TOASTER от Лондон"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Затваряне на настройките"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Настройки"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Тъмна"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Изпращане на отзиви"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Светла"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Локал"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Механика на платформата"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Забавен каданс"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Система"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Посока на текста"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("От ляво надясно"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Въз основа на локала"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("От дясно наляво"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Промяна на мащаба на текста"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Огромен"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Голям"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Нормален"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Малък"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Настройки"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОТКАЗ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ИЗЧИСТВАНЕ НА КОШНИЦАТА"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("КОШНИЦА"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Доставка:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Междинна сума:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Данък:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("ОБЩО"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("АКСЕСОАРИ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ВСИЧКИ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ОБЛЕКЛО"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("ДОМАШНИ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Приложение за продажба на модни стоки"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Парола"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Потребителско име"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ИЗХОД"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МЕНЮ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("НАПРЕД"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Синя керамична чаша"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Черешова тениска"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Салфетки от шамбре"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Риза от шамбре"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Класическа бяла якичка"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Пастелен пуловер"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Полица от медна тел"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Тениска на райета"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Огърлица"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Шапка с периферия"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Мъжко яке"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Комплект за бюро"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Бежов шал"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Сива фланелка без ръкави"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Сервиз за чай"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Кухненски комплект"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Тъмносини панталони"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Бяла туника"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Маса"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Поднос"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Дамска риза"),
        "shrineProductSeaTunic": MessageLookupByLibrary.simpleMessage("Туника"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Светлосин пуловер"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Тениска"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Чанта за рамо"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Керамичен сервиз"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Слънчеви очила Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Обици"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Сукулентни растения"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Плажна рокля"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Светлосиня тениска"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Раница"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Спортни чорапи"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Бяла блуза"),
        "shrineProductWeaveKeyring": MessageLookupByLibrary.simpleMessage(
            "Халка за ключове с плетена дръжка"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Бяла риза с тънки райета"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Кафяв колан"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Добавяне към кошницата"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Затваряне на кошницата"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Затваряне на менюто"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Отваряне на менюто"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Премахване на артикула"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Търсене"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Настройки"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Адаптивно оформление за стартиране"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Основен текст"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("БУТОН"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Заглавие"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Подзаглавие"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Заглавие"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Приложение Starter"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Добавяне"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Означаване като любимо"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Търсене"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Споделяне")
      };
}
