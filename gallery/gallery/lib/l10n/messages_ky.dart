// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ky locale. All the
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
  String get localeName => 'ky';

  static m0(value) =>
      "Бул колдонмо үчүн булак кодун көрүү үчүн төмөнкүгө баш багыңыз: ${value}.";

  static m1(title) => "${title} өтмөгү үчүн толтургуч";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Ресторандар жок', one: '1 ресторан', other: '${totalRestaurants} ресторан')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Үзгүлтүксүз', one: '1 жолу токтойт', other: '${numberOfStops} жолу токтойт')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Жеткиликтүү жайлар жок', one: '1 жеткиликтүү жай бар', other: '${totalProperties} жеткиликтүү жай бар')}";

  static m5(value) => "Нерсе ${value}";

  static m6(error) => "Алмашуу буферине көчүрүлгөн жок: ${error}";

  static m7(value) => "Үзгүлтүксүз: ${value}";

  static m8(value) => "Дискреттик: ${value}";

  static m9(name, phoneNumber) => "${name} телефон номери ${phoneNumber}";

  static m10(value) => "Сиз төмөнкүнү тандадыңыз: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "${accountNumber} номериндеги ${accountName} аккаунтунда ${amount} бар.";

  static m12(amount) =>
      "Бул айда банкомат сыйакылары катары ${amount} төлөдүңүз";

  static m13(percent) =>
      "Азаматсыз! Текшерүү эсебиңиз акыркы айга салыштырмалуу ${percent} жогорураак болду.";

  static m14(percent) =>
      "Көңүл буруңуз, бул айда Соода кылуу бюджетиңиздин ${percent} сарптадыңыз.";

  static m15(amount) => "Бул аптада ресторандарда ${amount} сарптадыңыз.";

  static m16(count) =>
      "${Intl.plural(count, one: 'Мүмкүн болгон салыктын өлчөмүн чоңойтуңуз! Белгиленбеген 1 транзакциянын категориясын белгилеңиз.', other: 'Мүмкүн болгон салыктын өлчөмүн чоңойтуңуз! Белгиленбеген ${count} транзакциянын категориясын белгилеңиз.')}";

  static m17(billName, date, amount) =>
      "${amount} суммасындагы ${billName} эсеби ${date} төлөнүшү керек.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} бюджетинен ${amountUsed} өлчөмүндөгү сумма ${amountTotal} үчүн сарпталып, ${amountLeft} калды";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'ЭЧ НЕРСЕ ЖОК', one: '1 НЕРСЕ', other: '${quantity} НЕРСЕ')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "Саны: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Арабада эч нерсе жок', one: 'Арабада 1 нерсе бар', other: 'Арабада ${quantity} нерсе бар')}";

  static m23(product) => "${product} алып салуу";

  static m24(value) => "Нерсе ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "GitHub repo\'нун Flutter үлгүлөрү"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Галереяга кайтуу"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Аккаунт"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Ойготкуч"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Жылнаама"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Пикирлер"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("БАСКЫЧ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Түзүү"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Велосипед тебүү"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Лифт"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Камин"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Чоң"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Орточо"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Кичине"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Жарыкты күйгүзүү"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Жуугуч"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ЯНТАРДАЙ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("КӨК"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("КӨГҮШ БОЗ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("КҮРӨҢ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("КӨГҮЛТҮР"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("КОЧКУЛ КЫЗГЫЛТ САРЫ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("КОЧКУЛ КЫЗГЫЛТ КӨГҮШ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЖАШЫЛ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("БОЗ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ИНДИГО"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("МАЛА КӨК"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("МАЛА ЖАШЫЛ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("АЧЫК ЖАШЫЛ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("КЫЗГЫЛТ САРЫ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("КЫЗГЫЛТЫМ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("КЫЗГЫЛТЫМ КӨГҮШ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("КЫЗЫЛ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("КӨГҮШ ЖАШЫЛ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("САРЫ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Жекелештирилген саякат колдонмосу"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ТАМАК-АШ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Неаполь, Италия"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жыгач отун менен меште бышырылган пицца"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "Даллас, Америка Кошмо Штаттары"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бастурма менен жасалган чоң сэндвич кармаган аял"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жеңил тамак ичүүгө арналган бийик отургучтар коюлган бош бар"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордоба, Аргентина"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Портлэнд, Америка Кошмо Штаттары"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Корей такосу"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Париж, Франция"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шоколаддан жасалган десерт"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Сеул, Түштүк Корея"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Artsy ресторанындагы эс алуу аймагы"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "Сиетл, Америка Кошмо Штаттары"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Креветкадан жасалган тамак"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Нашвилл, Америка Кошмо Штаттары"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Наабайканага кире бериш"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "Атланта, Америка Кошмо Штаттары"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Лангуст табагы"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрид, Испания"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Кафедеги таттуу азыктар коюлган текче"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Ресторандарды бара турган жер боюнча изилдөө"),
        "craneFly": MessageLookupByLibrary.simpleMessage("УЧУУ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "Аспен, Америка Кошмо Штаттары"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Карга жамынган жашыл дарактардын арасындагы шале"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Биг-Сур, Америка Кошмо Штаттары"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Каир, Египет"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Аль-Ажар мечитинин мунаралары күн баткан учурда"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Деңиздеги кирпичтен курулган маяк"),
        "craneFly12": MessageLookupByLibrary.simpleMessage(
            "Напа, Америка Кошмо Штаттары"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пальмалары бар бассейн"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Бали, Индонезия"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Пальма бактары бар деңиздин жээгиндеги бассейн"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Талаадагы чатыр"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Хумбу өрөөнү, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Кар жамынган тоонун алдындагы сыйынуу желектери"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу-Пичу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Мачу-Пичу цитадели"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("Мале, Мальдив аралдары"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Суунун үстүндө жайгашкан бунгалолор"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Витзнау, Швейцария"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Тоолордун этегиндеги көлдүн жеегинде жайгашкан мейманкана"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Мехико, Мексика"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Көркөм өнөр сарайынын бийиктиктен көрүнүшү"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Рашмор тоосу, Америка Кошмо Штаттары"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Рашмор тоосу"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сингапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Супертри багы"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Антиквардык көк унаага таянган киши"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Аба каттамдарын бара турган жер боюнча изилдөө"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Күн тандоо"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Күндөрдү тандоо"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Бара турган жерди тандоо"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Коноктор"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Жайгашкан жерди тандоо"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Учуп чыккан шаарды тандоо"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Убакыт тандоо"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Жүргүнчүлөр"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("УКТОО"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Мале, Мальдив аралдары"),
        "craneSleep0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Суунун үстүндө жайгашкан бунгалолор"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "Аспен, Америка Кошмо Штаттары"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Каир, Египет"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Аль-Ажар мечитинин мунаралары күн баткан учурда"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тайпей, Тайвань"),
        "craneSleep11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Тайпейдеги 101 кабаттан турган асман тиреген бийик имарат"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Карга жамынган жашыл дарактардын арасындагы шале"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу-Пичу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Мачу-Пичу цитадели"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Антиквардык көк унаага таянган киши"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Витзнау, Швейцария"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Тоолордун этегиндеги көлдүн жеегинде жайгашкан мейманкана"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Биг-Сур, Америка Кошмо Штаттары"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Талаадагы чатыр"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage(
            "Напа, Америка Кошмо Штаттары"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пальмалары бар бассейн"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Порто, Португалия"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Рибейра аянтындагы түстүү батирлер"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексика"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жээктеги асканын үстүндөгү Майя цивилизациясынын урандылары"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Деңиздеги кирпичтен курулган маяк"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Жайларды бара турган жер боюнча изилдөө"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Уруксат берүү"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Алма пирогу"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Жокко чыгаруу"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Чизкейк"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Брауни шоколады"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Төмөнкү тизмеден жакшы көргөн десертиңизди тандаңыз. Тандооңуз сиздин аймагыңыздагы тамак-аш жайларынын сунушталган тизмесин ыңгайлаштыруу үчүн колдонулат."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Өчүрүү"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Уруксат берилбесин"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Жакшы көргөн десертти тандоо"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Учурдагы жайгашкан жериңиз картада көрсөтүлүп, багыттарды, жакын жерлерди издөө жыйынтыктарын жана болжолдуу саякаттоо убакытын аныктоо үчүн колдонулат."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "\"Карталарга\" сиз колдонмону пайдаланып жаткан учурда жайгашкан жериңизге кирүүгө уруксат берилсинби?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тирамису"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Баскыч"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Фону менен"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Билдирмени көрсөтүү"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Чат"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Башкы бет"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профиль"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Аракет чиптери негизги мазмунга тийиштүү аракетти ишке киргизүүчү параметрлердин топтому. Аракет чиптери колдонуучунун интерфейсинде динамикалык жана мазмундук формада көрүнүшү керек."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Аракет чиби"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Билдирме диалогу колдонуучуга анын ырастоосун талап кылган кырдаалдар тууралуу кабар берет. Билдирме диалогунун аталышы жана аракеттер тизмеси болушу мүмкүн."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Билдирме"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Аталышы бар билдирме"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Ылдый жакта жайгашкан чабыттоо тилкелеринде экрандын ылдый жагында үчтөн бешке чейинки бара турган жерлер көрсөтүлөт. Ар бир бара турган жердин сүрөтчөсү жана энбелгиде текст көрүнөт. Ылдый жактагы чабыттоо сүрөтчөсүн басканда колдонуучу ал сүрөтчө менен байланышкан жогорку деңгээлдеги бара турган жерге чабытталат."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Туруктуу энбелгилер"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Тандалган энбелги"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Өчүүчү көрүнүштөрү бар ылдый жактагы чабыттоо тилкеси"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Ылдый чабыттоо"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Кошуу"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "ЫЛДЫЙ ЖАКТАГЫ МЕНЮНУ КӨРСӨТҮҮ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Жогорку колонтитул"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Ылдый жакта жайгашкан модалдык барак менюга же диалогго кошумча келип, колдонуучунун колдонмонун башка бөлүмдөрү менен иштешине тоскоол болот."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Ылдый жактагы модалдык барак"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ылдый жакта жайгашкан туруктуу барак колдонмодогу негизги мазмунга кошумча маалыматты көрсөтөт. Ылдый жакта жайгашкан туруктуу барак колдонуучу колдонмонун башка бөлүмдөрүн колдонуп жатса да, ар дайым көрүнүп турат."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Ылдый жактагы туруктуу барак"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ылдый жакта жайгашкан туруктуу жана модалдык барактар"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Ылдый жактагы меню"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Түз, көтөрүлгөн, четки сызыктар жана башкалар"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Баскычтар"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Киргизүүнү, атрибутту же аракетти көрсөткөн жыйнактуу элементтер"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чиптер"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Тандоо чиптери топтомдогу бир тандоону көрсөтөт. Тандоо чиптери тийиштүү сүрөттөөчү текстти же категорияларды камтыйт."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Тандоо чиби"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Коддун үлгүсү"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Алмашуу буферине көчүрүлдү."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("БААРЫН КӨЧҮРҮҮ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design кызматынын түстөр топтомун аныктаган түс жана түс үлгүлөрү."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Бардык алдын ала аныкталган түстөр"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Түстөр"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Аракеттер барагы бул учурдагы мазмунга тиешелүү эки же андан көп тандоолордун топтомун көрсөткөн билдирмелердин белгилүү бир стили. Аракеттер барагынын аталышы болуп, кошумча билдирүү менен аракеттер тизмеси камтылышы мүмкүн."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Аракеттер барагы"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Билдирме баскычтары гана"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Баскычтар аркылуу эскертүү"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Билдирме диалогу колдонуучуга анын ырастоосун талап кылган кырдаалдар тууралуу кабар берет. Билдирме диалогунун аталышы, мазмуну жана аракеттер тизмеси болушу мүмкүн. Аталышы мазмундун жогору жагында, ал эми аракеттер мазмундун төмөн жагында жайгашкан."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Эскертүү"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Аталышы бар билдирме"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS стилиндеги билдирме диалогдору"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Эскертүүлөр"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS стилиндеги баскыч. Ал текст же сүрөтчө формасында болуп, жана тийгенде көрүнбөй калышы мүмкүн. Фону бар болушу мүмкүн."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS стилиндеги баскычтар"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Баскычтар"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Бири-бирин четтеткен бир нече параметрдин ичинен тандоо үчүн колдонулат. Сегмент боюнча көзөмөлдөнгөн аракет үчүн бир параметр тандалганда башка параметрлерди тандоо мүмкүн болбой калат."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS стилиндеги сегменттер боюнча көзөмөлдөө"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегменттер боюнча көзөмөлдөө"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Сыдырманы үзгүлтүксүз же дискреттик маанилерди тандоо үчүн колдонууга болот."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS стилиндеги сыдырма"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Сыдырма"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Өзгөчө которгуч жалгыз жөндөөнүн абалын күйгүзүү/өчүрүү үчүн колдонулат."),
        "demoCupertinoSwitchSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS стилиндеги өзгөчө которгуч"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS стилиндеги ылдый жакта жайгашкан чабыттоо өтмөгүнүн тилкеси. Демейки катары биринчи өтмөк жигердүү болгон бир нече өтмөктү көрсөтөт."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS стилиндеги ылдый жакта жайгашкан өтмөк тилкеси"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Өтмөк тилкеси"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Жөнөкөй, шашылыш жана толук экран"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Диалогдор"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API документтери"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чыпка чиптери мазмунду чыпкалоо үчүн тэгдерди же сүрөттөөчү сөздөрдү колдонот."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Чыпкалоо чиби"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Түз баскычты басканда сыя чыгат, бирок баскыч көтөрүлбөйт. Түз баскычтарды куралдар тилкелеринде, диалогдордо жана кемтик менен бирге колдонуңуз"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Жалпак баскыч"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Аракеттердин калкыма баскычы бул колдонмодогу негизги аракетти жүргүзүү үчүн курсорду мазмундун үстүнө алып келген сүрөтчөсү бар тегерек баскыч."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Калкыма аракеттер баскычы"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Кирүүчү барак толук экрандуу модалдык диалог экени толук экрандуу диалогдун касиеттеринде аныкталган"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Толук экран"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Толук экран"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Маалымат"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Киргизүү чиптери объект (адам, жер же нерсе) же жазышуу тексти сыяктуу татаал маалыматты жыйнактуу формада көрсөтөт."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Киргизүү чиби"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL\'ди чагылдыруу мүмкүн эмес:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Адатта текст жана сүрөтчө камтылган, бийиктиги бекитилген жалгыз сап."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Кошумча текст"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Тизме калыптарын сыдыруу"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Тизмелер"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Бир сап"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Бул демо версиядагы жеткиликтүү параметрлерди көрүү үчүн бул жерди таптап коюңуз."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Параметрлерди көрүү"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Параметрлер"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Четки сызыктар баскычтар басылганда алар тунук эмес болуп, көтөрүлүп калат. Алар көп учурда көтөрүлгөн баскычтар менен жупташтырылып, альтернативдүү жана кошумча аракетти билдирет."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Четки сызыктар баскычы"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Көтөрүлгөн баскычтар көбүнчө түз калыптарга чен-өлчөм кошот. Алар бош эмес же кең мейкиндиктердеги функциялар болуп эсептелет."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Көтөрүлгөн баскыч"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Белгилөө кутучалары колдонуучуга топтомдогу бир нече параметрди тандоо үчүн керек. Кадимки белгилөө кутучасынын мааниси \"true\" же \"false\", ал эми үч абалды көрсөтүүчү белгилөө кутучасынын мааниси \"null\" болушу мүмкүн."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Белгилөө кутучасы"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Радио баскычтар колдонуучуга топтомдогу бир параметрди тандоо үчүн керек. Эгер колдонуучу бардык жеткиликтүү параметрлерди катары менен көрсүн десеңиз, радио баскычтарды колдонуңуз."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Радио"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Белгилөө кутучалары, радио баскычтар жана которуштургучтар"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Жөндөөлөрдүн жалгыз параметрин өчүрүп/күйгүзөт. Которулуу жөндөөсү көзөмөлдөгөн параметр, ошондой эле анын абалы, тийиштүү курама энбелгиде так көрсөтүлүшү керек."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Которулуу"),
        "demoSelectionControlsTitle": MessageLookupByLibrary.simpleMessage(
            "Тандоону көзөмөлдөө каражаттары"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Жөнөкөй диалог колдонуучуга бир нече варианттардын бирин тандоо мүмкүнчүлүгүн берет. Жөнөкөй диалогдо тандоолордун жогору жагында жайгашкан аталышы болушу мүмкүн."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Жөнөкөй"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Маалымат тактасындагы аракетти бастыңыз."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("АРАКЕТ"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("МААЛЫМАТ ТАКТАСЫН КӨРСӨТҮҮ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Маалымат такталарын колдонмо аткарган же аткарганы жаткан процесс тууралуу кабарлап турушат. Алар экрандын ылдый жагында убактылуу пайда болушат. Алар колдонуучуга тоскоол болушпайт жана өздөрү эле көрүнбөй калышат."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Маалымат такталары билдирүүлөрдү экрандын ылдый жагында көрсөтөт"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Бул маалымат тактасы."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Маалымат такталары"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Өтмөктөр ар башка экрандардагы, дайындар топтомдорундагы жана башка аракеттердеги мазмунду иреттешет."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Өз-өзүнчө сыдырылма көрүнүштөрү бар өтмөктөр"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Өтмөктөр"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Текст киргизилүүчү талаалар аркылуу колдонуучулар колдонуучу интерфейсине текст киргизе алышат. Адатта алар диалог формасында көрүнөт."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Электрондук почта"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Сырсөз киргизиңиз."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – АКШ телефон номерин киргизиңиз."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Тапшыруудан мурда кызыл болуп белгиленген каталарды оңдоңуз."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Сырсөздү жашыруу"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Кыскараак жазыңыз. Бул болгону демо версия."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Өмүр баян"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Аталышы*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Аталышы талап кылынат."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8 белгиден ашпашы керек."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Алфавиттеги тамгаларды гана киргизиңиз."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Сырсөз*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Сырсөздөр дал келген жок"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Телефон номери*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* сөзсүз түрдө толтурулушу керек"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Сырсөздү кайра териңиз*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Маяна"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Сырсөздү көрсөтүү"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ТАПШЫРУУ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Түзөтүлүүчү текст жана сандардан турган жалгыз сап"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Өзүңүз жөнүндө айтып бериңиз (мис., эмне иш кыларыңызды же кандай хоббилериңиз бар экенин айтып бериңиз)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Текст киргизилүүчү талаалар"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("АКШ доллары"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "Башкалар сизге кантип кайрылат?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Сиз менен кантип байланыша алабыз?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Электрондук почта дарегиңиз"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Күйгүзүү/өчүрүү баскычтары тиешелүү варианттарды топтоо үчүн колдонулушу мүмкүн. Тиешелүү күйгүзүү/өчүрүү баскычтарынын топторун белгилөө үчүн топтун жалпы контейнери болушу мүмкүн"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Күйгүзүү/өчүрүү баскычтары"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Эки сап"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design кызматындагы ар түрдүү типографиялык стилдердин аныктамалары."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Бардык алдын ала аныкталган текст стилдери"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Типография"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Аккаунт кошуу"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("МАКУЛ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ЖОККО ЧЫГАРУУ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("МАКУЛ ЭМЕСМИН"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ӨЧҮРҮҮ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Сомдомо өчүрүлсүнбү?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Толук экрандуу диалогдун демо версиясы"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("САКТОО"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Толук экрандуу диалог"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google\'га колдонмолорго жайгашкан жерди аныктоого уруксат бериңиз. Бул жайгашкан жердин дайындары Google\'га колдонмолор иштебей турганда да жашырууун жөнөтүлөрүн түшүндүрөт."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google\'дун жайгашкан жерди аныктоо кызматы колдонулсунбу?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Көмөкчү аккаунтту жөндөө"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ДИАЛОГДУ КӨРСӨТҮҮ"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ҮЛГҮ СТИЛДЕР ЖАНА МЕДИА"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Категориялар"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерея"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings": MessageLookupByLibrary.simpleMessage(
            "Унаага чогултулуп жаткан каражат"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Текшерилүүдө"),
        "rallyAccountDataHomeSavings": MessageLookupByLibrary.simpleMessage(
            "Үйгө чогултулуп жаткан каражат"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Эс алуу"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Аккаунттун ээси"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Жылдык пайыздык киреше"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Өткөн жылы төлөнгөн пайыз"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Үстөк баасы"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Үстөк YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Кийинки билдирүү"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Жалпы"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Аккаунттар"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Эскертүүлөр"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Эсептер"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Мөөнөтү"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Кийим-кече"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кофейнялар"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Азык-түлүк"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ресторандар"),
        "rallyBudgetLeft":
            MessageLookupByLibrary.simpleMessage("Бюджетте калган сумма"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Бюджеттер"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Жеке каржы колдонмосу"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("КАЛДЫ"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("КИРҮҮ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Кирүү"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Раллиге кирүү"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Аккаунтуңуз жокпу?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Сырсөз"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Мени эстеп калсын"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("КАТТАЛУУ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Колдонуучунун аты"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("БААРЫН КӨРҮҮ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Бардык аккаунттарды көрүү"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Бардык эсептерди көрүү"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Бардык бюджеттерди көрүү"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Банкоматтарды табуу"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Жардам"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Аккаунттарды башкаруу"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Билдирмелер"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Кагазсыз жөндөөлөр"),
        "rallySettingsPasscodeAndTouchId": MessageLookupByLibrary.simpleMessage(
            "Өткөрүүчү код жана басуу идентификатору"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Жеке маалымат"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Чыгуу"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Салык документтери"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("АККАУНТТАР"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ЭСЕПТЕР"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БЮДЖЕТТЕР"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("СЕРЕП САЛУУ"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ЖӨНДӨӨЛӨР"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Flutter галереясы жөнүндө маалымат"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Лондондогу TOASTER тарабынан жасалгаланды"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Жөндөөлөрдү жабуу"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Жөндөөлөр"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Караңгы"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Пикир билдирүү"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Жарык"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Тил параметри"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Платформанын механикасы"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Жай кыймыл"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Тутум"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Тексттин багыты"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("СО"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Тилдин негизинде"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("ОС"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Тексттин өлчөмүн жөндөө"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Өтө чоң"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("Чоң"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Орточо"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Кичине"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Жөндөөлөр"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ЖОККО ЧЫГАРУУ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("АРАБАНЫ ТАЗАЛОО"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("АРАБА"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Жеткирүү"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Орто-аралык сумма:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Салык:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("ЖАЛПЫ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("АКСЕССУАРЛАР"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("БААРЫ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("КИЙИМ-КЕЧЕ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ҮЙ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Саркеч кийимдерди сатуу колдонмосу"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Сырсөз"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Колдонуучунун аты"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ЧЫГУУ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МЕНЮ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("КИЙИНКИ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Көк таштан жасалган кружка"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Футболка"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Шамбрай майлыктары"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Пахта көйнөгү"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Классикалык ак жака"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Свитер"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Жез тордон жасалган тосмо"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Ичке сызыктуу футболка"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Бакча тирөөчү"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Гэтсби шляпасы"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Жентри кемсели"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Үч столдон турган топтом"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Шарф"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Боз түстөгү майка"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs чай сервиси"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Кватро ашканасы"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Кара-көк шым"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Туника"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Квартет столу"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Жаандын суусу үчүн батыныс"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Рамона кроссовери"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Деңиз туникасы"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Деңиз свитери"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Ийинден ылдый түшкөн футболка"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Ийинге асып алма баштык"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Керамика топтому"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Стелла көз айнеги"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Сөйкөлөр"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Ширелүү өсүмдүк өстүргүчтөр"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Жайкы көйнөк"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Серфинг футболкасы"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Вагабонд кабы"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Университет байпактары"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (ак)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Токулма ачкычка таккыч"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Ак сызыктуу көйнөк"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Уитни куру"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Арабага кошуу"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Арабаны жабуу"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Менюну жабуу"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Менюну ачуу"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Нерсени алып салуу"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Издөө"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Жөндөөлөр"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Адаптивдүү баштапкы калык"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Негизги текст"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("БАСКЫЧ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Башкы сап"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Коштомо жазуу"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Аталышы"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage(
            "Жаңы колдонуучулар үчүн даярдалган колдонмо"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Кошуу"),
        "starterAppTooltipFavorite": MessageLookupByLibrary.simpleMessage(
            "Сүйүктүүлөргө кошуу боюнча кеңештер"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Издөө"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Бөлүшүү")
      };
}
