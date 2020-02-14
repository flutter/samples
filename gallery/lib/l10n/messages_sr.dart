// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sr locale. All the
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
  String get localeName => 'sr';

  static m0(value) =>
      "Да бисте видели изворни кôд за ову апликацију, посетите: ${value}.";

  static m1(title) => "Чувар места за картицу ${title}";

  static m2(destinationName) => "Истражите: ${destinationName}";

  static m3(destinationName) => "Делите: ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Нема ресторана', one: '1 ресторан', few: '${totalRestaurants} ресторана', other: '${totalRestaurants} ресторана')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Директан', one: '1 заустављање', few: '${numberOfStops} заустављања', other: '${numberOfStops} заустављања')}";

  static m7(hours) =>
      "${Intl.plural(hours, one: '1 ч', few: '${hours} ч', other: '${hours} ч')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 м', few: '${minutes} м', other: '${minutes} м')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Нема доступних објеката', one: '1 доступан објекат', few: '${totalProperties} доступна објекта', other: '${totalProperties} доступних објеката')}";

  static m10(value) => "${value} са медом";

  static m11(value) => "${value} са шећером";

  static m12(value) => "Ставка: ${value}";

  static m13(error) => "Копирање у привремену меморију није успело: ${error}";

  static m14(value) => "Непрекидно: ${value}";

  static m15(value) => "Дискретно: ${value}";

  static m16(value) => "Означено: ${value}";

  static m17(value) => "Изабрано: ${value}";

  static m18(name, phoneNumber) => "${name} има број телефона ${phoneNumber}";

  static m19(value) => "Изабрали сте: „${value}“";

  static m20(accountName, accountNumber, amount) =>
      "${accountName} рачун ${accountNumber} са ${amount}.";

  static m21(amount) =>
      "Овог месеца сте потрошили ${amount} на накнаде за банкомате";

  static m22(percent) =>
      "Одлично! На текућем рачуну имате ${percent} више него прошлог месеца.";

  static m23(percent) =>
      "Пажња! Искористили сте ${percent} буџета за куповину за овај месец.";

  static m24(amount) => "Ове недеље сте потрошили ${amount} на ресторане.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Повећајте могући одбитак пореза! Доделите категорије 1 недодељеној трансакцији.', few: 'Повећајте могући одбитак пореза! Доделите категорије за ${count} недодељене трансакције.', other: 'Повећајте могући одбитак пореза! Доделите категорије за ${count} недодељених трансакција.')}";

  static m26(billName, date, amount) =>
      "Рачун (${billName}) од ${amount} доспева ${date}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Буџет за ${budgetName}, потрошено је ${amountUsed} од ${amountTotal}, преостало је ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'НЕМА СТАВКИ', one: '1 СТАВКА', few: '${quantity} СТАВКЕ', other: '${quantity} СТАВКИ')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Количина: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Корпа за куповину, нема артикала', one: 'Корпа за куповину, 1 артикал', few: 'Корпа за куповину, ${quantity} артикла', other: 'Корпа за куповину, ${quantity} артикала')}";

  static m32(product) => "Уклони производ ${product}";

  static m33(value) => "Ставка: ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "GitHub складиште за Flutter узорке"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Назад у галерију"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Почетна икона"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Више радњи"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Ресетуј банер"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Лозинка је ажурирана на другом уређају. Пријавите се поново."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Урез"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Положај плутајућег дугмета за радњу"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage(
                "На траци са апликацијама – у средини"),
        "bottomAppBarPositionDockedEnd": MessageLookupByLibrary.simpleMessage(
            "На траци са апликацијама – на крају"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Плутање – у средини"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Плутање – на крају"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Налог"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Аларм"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Календар"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Коментари"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ДУГМЕ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Направите"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Истражите"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Може да се изабере (дуги притисак)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Може да се додирне"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Танџавур"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Четинад"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("10. место"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Произвођачи свиле"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Храмови"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Танџавур, Тамил Наду"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Сиваганга, Тамил Наду"),
        "cardsDemoTravelDestinationTitle1": MessageLookupByLibrary.simpleMessage(
            "Најпопуларнијих 10 градова које треба да посетите у Тамил Надуу"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Занатлије јужне Индије"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Храм Брихадисвара"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Вожња бицикла"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Лифт"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Камин"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Велика"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Средња"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Мала"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Укључи светла"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Машина за прање веша"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ЖУТОБРАОН"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ПЛАВА"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ПЛАВОСИВА"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("БРАОН"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ТИРКИЗНА"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ТАМНОНАРАНЏАСТА"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ТАМНОЉУБИЧАСТА"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЗЕЛЕНО"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("СИВА"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ТАМНОПЛАВА"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("СВЕТЛОПЛАВО"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("СВЕТЛОЗЕЛЕНА"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ЗЕЛЕНОЖУТА"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("НАРАНЏАСТА"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("РОЗЕ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ЉУБИЧАСТА"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ЦРВЕНА"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ТИРКИЗНА"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ЖУТА"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Персонализована апликација за путовања"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ИСХРАНА"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Напуљ, Италија"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пица у пећи на дрва"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "Далас, Сједињене Америчке Државе"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалија"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жена држи велики сендвич са пастрмом"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Празан бар са високим барским столицама"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордоба, Аргентина"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пљескавица"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Портланд, Сједињене Америчке Државе"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Корејски такос"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Париз, Француска"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Чоколадни десерт"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Сеул, Јужна Кореја"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Део за седење у ресторану са уметничком атмосфером"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "Сијетл, Сједињене Америчке Државе"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Јело са шкампима"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Нешвил, Сједињене Америчке Државе"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Улаз у пекару"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "Атланта, Сједињене Америчке Државе"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тањир са речним раковима"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрид, Шпанија"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шанк у кафеу са пецивом"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Истражујте ресторане према одредишту"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("ЛЕТ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "Аспен, Сједињене Америчке Државе"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Планинска колиба у снежном пејзажу са зимзеленим дрвећем"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Биг Сур, Сједињене Америчке Државе"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Каиро, Египат"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минарети џамије Ал-Аџар у сумрак"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалија"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Светионик од цигала на мору"),
        "craneFly12": MessageLookupByLibrary.simpleMessage(
            "Напа, Сједињене Америчке Државе"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Базен са палмама"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Бали, Индонезија"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Базен на обали мора са палмама"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шатор у пољу"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Долина Кумбу, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Молитвене заставице испред снегом прекривене планине"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу Пикчу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тврђава у Мачу Пикчуу"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Мале, Малдиви"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бунгалови који се надвијају над водом"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Вицнау, Швајцарска"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хотел на обали језера испред планина"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Мексико Сити, Мексико"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Поглед на Палату лепих уметности из ваздуха"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Маунт Рашмор, Сједињене Америчке Државе"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Маунт Рашмор"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сингапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Хавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Човек се наслања на стари плави аутомобил"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Истражујте летове према дестинацији"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Изаберите датум"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Изаберите датуме"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Одаберите одредиште"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("Експрес ресторани"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Изаберите локацију"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Одаберите место поласка"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Изаберите време"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Путници"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("НОЋЕЊЕ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Мале, Малдиви"),
        "craneSleep0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бунгалови који се надвијају над водом"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "Аспен, Сједињене Америчке Државе"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Каиро, Египат"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минарети џамије Ал-Аџар у сумрак"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тајпеј, Тајван"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Небодер Тајпеј 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Планинска колиба у снежном пејзажу са зимзеленим дрвећем"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу Пикчу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тврђава у Мачу Пикчуу"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Хавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Човек се наслања на стари плави аутомобил"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Вицнау, Швајцарска"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хотел на обали језера испред планина"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Биг Сур, Сједињене Америчке Државе"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шатор у пољу"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage(
            "Напа, Сједињене Америчке Државе"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Базен са палмама"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Порто, Португалија"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Шарени станови на тргу Рибеира"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексико"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мајанске рушевине на литици изнад плаже"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалија"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Светионик од цигала на мору"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Истражујте смештајне објекте према одредишту"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Дозволи"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Пита од јабука"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Откажи"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Чизкејк"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Чоколадни брауни"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "На листи у наставку изаберите омиљени тип посластице. Ваш избор ће се користити за прилагођавање листе предлога за ресторане у вашој области."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Одбаци"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Не дозволи"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Изаберите омиљену посластицу"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Актуелна локација ће се приказивати на мапама и користи се за путање, резултате претраге за ствари у близини и процењено трајање путовања."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Желите ли да дозволите да Мапе приступају вашој локацији док користите ту апликацију?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тирамису"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Дугме"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Са позадином"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Прикажи обавештење"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Ћаскање"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Почетна"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профил"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Калцијум (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Калорије"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Угљени хидрати (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Дезерт (1 порција)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Масти (g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Гвожђе (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Протеини (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Натријум (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Исхрана"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Пита од јабука"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Мафин"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Крофна"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Еклер"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Замрзнут јогурт"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Медењак"),
        "dataTableRowHoneycomb": MessageLookupByLibrary.simpleMessage("Саће"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Сладолед сендвич"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Желе бомбона"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Лизалица"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Додирните да бисте изменили делове слике и користите покрете да бисте се кретали по сцени. Превуците да бисте померали, скупите прсте да бисте зумирали и ротирајте помоћу два прста. Притисните дугме за ресетовање да бисте се вратили на почетни положај."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Измените део слике"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Ресетујте трансформације"),
        "demo2dTransformationsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Померање, зумирање, ротирање"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D трансформације"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чипови радњи су скуп опција које покрећу радњу повезану са примарним садржајем. Чипови радњи треба да се појављују динамички и контекстуално у корисничком интерфејсу."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип радњи"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Дијалог обавештења информише кориснике о ситуацијама које захтевају њихову пажњу. Дијалог обавештења има опционални наслов и опционалну листу радњи."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Обавештење"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Обавештење са насловом"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Банер приказује важну, сажету поруку и наводи радње које корисници могу да обаве (или могу да одбаце банер). Неопходно је да корисник обави радњу одбацивања."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Приказује банер у оквиру листе"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Банер"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Доње траке са апликацијама пружају приступ доњој фиоки за навигацију и највише четири радње, укључујући плутајуће дугме за радњу."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Приказује навигацију и радње у дну"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Доња трака са апликацијама"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Доња трака за навигацију приказује три до пет одредишта у дну екрана. Свако одредиште представљају икона и опционална текстуална ознака. Када корисник додирне доњу икону за навигацију, отвара се одредиште за дестинацију највишег нивоа које је повезано са том иконом."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Трајне ознаке"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Изабрана ознака"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Доња навигација која се постепено приказује и нестаје"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Доња навигација"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Додајте"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ПРИКАЖИ ДОЊУ ТАБЕЛУ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Заглавље"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Модална доња табела је алтернатива менију или дијалогу и онемогућава интеракцију корисника са остатком апликације."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Модална доња табела"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Трајна доња табела приказује информације које допуњују примарни садржај апликације. Трајна доња табела остаје видљива и при интеракцији корисника са другим деловима апликације."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Трајна доња табела"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Трајне и модалне доње табеле"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Доња табела"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Поља за унос текста"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Равна, издигнута, оивичена и друга"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Дугмад"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Картица је елемент материјалног дизајна који се користи за представљање сродних информација, на пример, албума, географске локације, оброка, података за контакт итд."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Основне картице са заобљеним угловима"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Картице"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Мени са контролним листама"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Компактни елементи који представљају унос, атрибут или радњу"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чипови"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чипови избора представљају појединачну изабрану ставку из скупа. Чипови избора садрже повезани описни текст или категорије."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип избора"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Кружни индикатор напретка материјалног дизајна који се окреће да би показао да је апликација заузета."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Кружни индикатор напретка"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Демо кôд"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Копирано је у привремену меморију."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("КОПИРАЈ СВЕ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Боје и шема боја које представљају палету боја материјалног дизајна."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Све унапред одређене боје"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Боје"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Контекстуални мени"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Табела радњи је посебан стил обавештења којим се корисницима нуде два или више избора у вези са актуелним контекстом. Табела радњи може да има наслов, додатну поруку и листу радњи."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Табела радњи"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Индикатор активности у iOS стилу који се окреће у смеру кретања казаљке на сату"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Индикатори активности у iOS стилу"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Индикатор активности"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Само дугмад са обавештењем"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Обавештење са дугмади"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Дијалог обавештења информише кориснике о ситуацијама које захтевају њихову пажњу. Дијалог обавештења има опционални наслов, опционални садржај и опционалну листу радњи. Наслов се приказује изнад садржаја, а радње се приказују испод садржаја."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Обавештење"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Обавештење са насловом"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Дијалози обавештења у iOS стилу"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Обавештења"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Дугме у iOS стилу. Садржи текст и/или икону који постепено нестају или се приказују када се дугме додирне. Опционално може да има позадину."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Дугмад у iOS стилу"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Дугмад"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Трака за навигацију са iOS стилом. Трака за навигацију је трака с алаткама која у најгорем случају садржи само наслов странице на средини."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Трака за навигацију у iOS стилу"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Трака за навигацију"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Датум"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Датум и време"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Виџет бирача у iOS стилу који може да се користи за бирање датума, времена или и датума и времена."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Бирачи за датум и време у iOS стилу"),
        "demoCupertinoPickerTime":
            MessageLookupByLibrary.simpleMessage("Време"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Тајмер"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Бирачи"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Виџет који примењује контролу за повлачење ради освежавања садржаја у iOS стилу."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Контрола за повлачење ради освежавања у iOS стилу"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Повуците да бисте освежили"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Користи се за бирање једне од међусобно искључивих опција. Када је изабрана једна опција у сегментираној контроли, опозива се избор осталих опција у тој сегментираној контроли."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментирана контрола у iOS стилу"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Сегментирана контрола"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Клизач може да се користи да бисте изабрали непрекидан или дискретан скуп вредности."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Клизач у iOS стилу"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Клизач"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Прекидач се користи за укључивање/искључивање појединачних подешавања."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Прекидач у iOS стилу"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Доња трака са картицама за навигацију у iOS стилу. Приказује више картица, при чему је само једна активна, а према подразумеваним подешавањима то је прва картица."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Доња трака са картицама у iOS стилу"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Трака са картицама"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Поље за унос текста омогућава кориснику да уноси текст помоћу физичке тастатуре или тастатуре на екрану."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Поља за унос текста у iOS стилу"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Поља за унос текста"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Клизачи одражавају опсег вредности на траци, а корисници могу да изаберу једну вредност или опсег вредности. Клизачи могу да имају тему и да се прилагоде."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Прилагођени клизачи"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Табеле са подацима приказују информације у облику мреже са редовима и колонама. У њима су информације организоване тако да могу лако да се прегледају и да би корисници могли да траже шаблоне и увиде."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Редови и колоне са информацијама"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Табеле са подацима"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Приказује дијалог са бирачем датума материјалног дизајна."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Бирач датума"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Једноставан, са обавештењем и преко целог екрана"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Дијалози"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Документација о API-јима"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чипови филтера користе ознаке или описне речи као начин да филтрирају садржај."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Чип филтера"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Када се притисне, равно дугме приказује мрљу боје, али се не подиже. Равну дугмад користите на тракама с алаткама, у дијалозима и у тексту са размаком"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Равно дугме"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Плутајуће дугме за радњу је кружна икона дугмета које се приказује изнад садржаја ради истицања примарне радње у апликацији."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Плутајуће дугме за радњу"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Производ fullscreenDialog одређује да ли се следећа страница отвара у модалном дијалогу преко целог екрана"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Цео екран"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Цео екран"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Листе у облику координатних мрежа су најбоље за приказивање хомогених података, најчешће слика. Свака ставка на листи у облику координатне мреже се зове плочица."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Са подножјем"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Са заглављем"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Само слике"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Изглед са редовима и колонама"),
        "demoGridListsTitle": MessageLookupByLibrary.simpleMessage(
            "Листе у облику координатних мрежа"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Информације"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чипови уноса представљају сложене информације, попут ентитета (особе, места или ствари) или текста из говорног језика, у компактном облику."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("Чип уноса"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Приказивање URL-а није успело:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Линеарни индикатор напретка материјалног дизајна, познат и као трака напретка."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Линеарни индикатор напретка"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Један ред фиксне висине који обично садржи неки текст, као и икону на почетку или на крају."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Секундарни текст"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Изгледи покретних листа"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Листе"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Онемогућена ставка менија"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Ставка са менијем са контролним листама"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Ставка са контекстуалним менијем"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Ставка са менијем са одељцима"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Ставка са једноставним менијем"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Прва ставка контекстуалног менија"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Трећа ставка контекстуалног менија"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Мени приказује листу опција на привременој површини. Оне се приказују када корисници остварују интеракцију са дугметом, радњом или другом контролом."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Четири"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Преузми линк"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Прва ставка менија"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Трећа ставка менија"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Друга ставка менија"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Један"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Преглед"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Уклони"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Дели"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Дугмад менија и једноставни менији"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Три"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Мени"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Два"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Један ред"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Додирните овде да бисте видели доступне опције за ову демонстрацију."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Прегледајте опције"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Опције"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Оивичена дугмад постаје непрозирна и подиже се када се притисне. Обично се упарује заједно са издигнутом дугмади да би означила алтернативну, секундарну радњу."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Оивичено дугме"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("ПРИКАЖИ БИРАЧ"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Бирање датума и времена"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Бирачи"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Линеарни, кружни, неодређени"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Индикатори напретка"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Издигнута дугмад пружа тродимензионални изглед на равном приказу. Она наглашава функције у широким просторима или онима са пуно елемената."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Издигнуто дугме"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Клизачи одражавају опсег вредности на траци. Могу да имају иконе на оба краја траке који одражавају опсег вредности. Идеални су за прилагођавање подешавања као што су јачина звука, осветљеност или примена филтера за слике."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Клизачи опсега"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Мени са одељцима"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Поља за потврду омогућавају кориснику да изабере више опција из скупа. Вредност уобичајеног поља за потврду је Тачно или Нетачно, а вредност троструког поља за потврду може да буде и Ништа."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Поље за потврду"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Дугмад за избор омогућавају кориснику да изабере једну опцију из скупа. Користите дугмад за избор да бисте омогућили ексклузивни избор ако сматрате да корисник треба да види све доступне опције једну поред друге."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Дугме за избор"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Поља за потврду, дугмад за избор и прекидачи"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Прекидачи за укључивање/искључивање мењају статус појединачних опција подешавања. На основу одговарајуће ознаке у тексту корисницима треба да буде јасно коју опцију прекидач контролише и који је њен статус."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Прекидач"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Контроле избора"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Једноставан дијалог кориснику нуди избор између неколико опција. Једноставан дијалог има опционални наслов који се приказује изнад тих избора."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Једноставан"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Једноставни мени"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Непрекидан"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Непрекидан клизач опсега са прилагођеном темом"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Непрекидан са нумеричком вредношћу која може да се измени"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Клизачи одражавају опсег вредности на траци, а корисници могу да изаберу једну вредност. Идеални су за прилагођавање подешавања као што су јачина звука, осветљеност или примена филтера за слике."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Дискретан"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Дискретан клизач са прилагођеном темом"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Нумеричка вредност која може да се измени"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Виџети за бирање вредности превлачењем прстом"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Клизачи"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Притиснули сте радњу траке за обавештења."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("РАДЊА"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "ПРИКАЗУЈ ТРАКУ ЗА ОБАВЕШТЕЊА"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Траке за обавештења обавештавају кориснике о процесу који је нека апликација обавила или ће обавити. Привремено се приказују у дну екрана. Не би требало да ометају кориснички доживљај и не захтевају активност корисника да би нестале."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Траке за обавештења приказују поруке у дну екрана"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Ово је трака за обавештења."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Траке за обавештења"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Картице организују садржај на различитим екранима, у скуповима података и другим интеракцијама."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Без померања"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Померање"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Картице са приказима који могу засебно да се померају"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Картице"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Поља за унос текста омогућавају корисницима да унесу текст у кориснички интерфејс. Обично се приказују у облику образаца и дијалога."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Имејл"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Унесите лозинку."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – унесите број телефона у Сједињеним Америчким Државама"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Пре слања исправите грешке означене црвеном бојом."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Сакриј лозинку"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Нека буде кратко, ово је само демонстрација."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Биографија"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Име*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Име је обавезно."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Не више од 8 знакова."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Уносите само абецедне знакове."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Лозинка*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Лозинке се не подударају"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Број телефона*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* означава обавезно поље"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Поново унесите лозинку*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Плата"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Прикажи лозинку"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ПОШАЉИ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Један ред текста и бројева који могу да се измене"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Реците нам нешто о себи (нпр. напишите чиме се бавите или које хобије имате)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Поља за унос текста"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Како вас људи зову?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Где можемо да вас контактирамо?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Ваша имејл адреса"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Приказује дијалог са бирачем времена материјалног дизајна."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Бирач времена"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Дугмад за укључивање/искључивање може да се користи за груписање сродних опција. Да бисте нагласили групе сродне дугмади за укључивање/искључивање, група треба да има заједнички контејнер"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Дугмад за укључивање/искључивање"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Објашњења пружају текстуалне ознаке које објашњавају функцију дугмета или неке друге радње у корисничком интерфејсу. Објашњења приказују информативни текст када корисници прелазе курсором преко елемента, односно када се фокусирају на њега или га дуго притискају."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Дуго притискајте елемент или пређите курсором преко њега да би се приказало објашњење."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Кратка порука која се приказује при дугом притиску или преласку курсором"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Објашњења"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Два реда"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Дефиниције разних типографских стилова у материјалном дизајну."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Сви унапред дефинисани стилови текста"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Типографија"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Додај налог"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ПРИХВАТАМ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ОТКАЖИ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("НЕ ПРИХВАТАМ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ОДБАЦИ"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "Желите ли да одбаците радну верзију?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Демонстрација дијалога на целом екрану"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("САЧУВАЈ"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Дијалог преко целог екрана"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Дозволите да Google помаже апликацијама у одређивању локације. То значи да се Google-у шаљу анонимни подаци о локацији, чак и када ниједна апликација није покренута."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Желите ли да користите Google услуге локације?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Подесите резервни налог"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ПРИКАЖИ ДИЈАЛОГ"),
        "dismiss": MessageLookupByLibrary.simpleMessage("ОДБАЦИ"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Апликација за вести фокусирана на садржај"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Реформисање Зелене армије изнутра"),
        "fortnightlyHeadlineBees":
            MessageLookupByLibrary.simpleMessage("Недостају пчеле за фарме"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Дизајнери користе технологију да би правили футуристичке тканине"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Феминисткиње се баве политиком"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("Будућност бензина"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "Тиха, али моћна револуција здравственог система"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Док акције стагнирају, многи се окрећу валути"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Раздвојени амерички животи током рата"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Најновије вести"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Бизнис"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Култура"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Насловна страница"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Политика"),
        "fortnightlyMenuScience": MessageLookupByLibrary.simpleMessage("Наука"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Спорт"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Технологија"),
        "fortnightlyMenuTravel":
            MessageLookupByLibrary.simpleMessage("Путовања"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("САД"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("Свет"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("GreenArmy"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("HealthcareRevolution"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Reform"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Stocks"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("TechDesign"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("СТИЛОВИ И ДРУГО"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Категорије"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерија"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Плажа"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Бронзани радови"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Ченај"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Четинад"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Рибар"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Цветна пијаца"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Спремање ручка"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Пијаца"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Пондишери"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Солана"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Скутери"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Произвођач свиле"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Танџавур"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Храм у Танџавуру"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings": MessageLookupByLibrary.simpleMessage(
            "Штедња за куповину аутомобила"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Текући"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Штедња за куповину дома"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Одмор"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Власник налога"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Годишњи проценат добити"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Камата плаћена прошле године"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Каматна стопа"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Камата од почетка године до данас"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Следећи извод"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Укупно"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Налози"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Обавештења"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Износ задужења"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Плаћени износ"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Укупан износ"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Обрачуни"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Доспева на наплату"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Одећа"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кафићи"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Бакалницe"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ресторани"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Преостали износ"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Искоришћени износ"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Укупно ограничење"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Преостаје"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Буџети"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Апликација за личне финансије"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ПРЕОСТАЈЕ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ПРИЈАВИ МЕ"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Пријави ме"),
        "rallyLoginLoginToRally": MessageLookupByLibrary.simpleMessage(
            "Пријавите се у апликацију Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Немате налог?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Лозинка"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Запамти ме"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("РЕГИСТРУЈ МЕ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Корисничко име"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ПРИКАЖИ СВЕ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Прикажи све рачуне"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Прикажи све рачуне"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Прикажи све буџете"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Пронађите банкомате"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Помоћ"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Управљајте налозима"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Обавештења"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Подешавања без папира"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Шифра и ИД за додир"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Лични подаци"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Одјавите се"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Порески документи"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("НАЛОЗИ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ОБРАЧУНИ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БУЏЕТИ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ПРЕГЛЕД"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("ПОДЕШАВАЊА"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("О услузи Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Дизајнирала агенција TOASTER из Лондона"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Затворите подешавања"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Подешавања"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Тамна"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Пошаљи повратне информације"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Светла"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Локалитет"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Механика платформе"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Успорени снимак"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Систем"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Смер текста"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Слева надесно"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("На основу локалитета"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Здесна налево"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Промена величине текста"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Огроман"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Велики"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Уобичајен"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Мали"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Подешавања"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОТКАЖИ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОБРИШИ СВЕ ИЗ КОРПЕ"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("КОРПА"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Испорука:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Међузбир:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Порез:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("УКУПНО"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ДОДАЦИ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("СВЕ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ОДЕЋА"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("КУЋА"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Модерна апликација за малопродају"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Лозинка"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Корисничко име"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОДЈАВИ МЕ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МЕНИ"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("ДАЉЕ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Плава камена шоља"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Тамноружичаста мајица са таласастим рубом"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Платнене салвете"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Платнена мајица"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Класична бела кошуља"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Џемпер боје глине"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Бакарна вешалица"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Мајица са танким цртама"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Баштенски конопац"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Качкет"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry јакна"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Трио позлаћених сточића"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Црвени шал"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Сива мајица без рукава"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Чајни сет Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Кухињски сет из четири дела"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Тамноплаве панталоне"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Туника боје гипса"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Сто за четири особе"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Посуда за кишницу"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Женска блуза Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Тамноплава туника"),
        "shrineProductSeabreezeSweater": MessageLookupByLibrary.simpleMessage(
            "Џемпер са шаблоном морских таласа"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Мајица са заврнутим рукавима"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage(
            "Торба са ручком за ношење на рамену"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Керамички сет Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Наочаре за сунце Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut минђуше"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Саксије за сочнице"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Хаљина за заштиту од сунца"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Сурферска мајица"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Врећаста торба"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Чарапе са пругама"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Мајица са изрезом у облику слова v (беле боје)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Плетени привезак за кључеве"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Бела кошуља са пругама"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Каиш Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Додај у корпу"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Затворите корпу"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Затворите мени"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Отворите мени"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Уклоните ставку"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Претражите"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Подешавања"),
        "signIn": MessageLookupByLibrary.simpleMessage("ПРИЈАВИТЕ СЕ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Изглед апликације за покретање која реагује"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Главни текст"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ДУГМЕ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Наслов"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Титл"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Наслов"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Апликација за покретање"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Додајте"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Омиљено"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Претрага"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Делите")
      };
}
