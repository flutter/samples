// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a mk locale. All the
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
  String get localeName => 'mk';

  static m0(value) =>
      "За да го видите изворниот код на апликацијава, одете на ${value}.";

  static m1(title) => "Резервирано место за картичката ${title}";

  static m2(destinationName) => "Истражете го местото ${destinationName}";

  static m3(destinationName) => "Споделете го местото ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Нема ресторани', one: '1 ресторан', other: '${totalRestaurants} ресторани')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Директен', one: '1 застанување', other: '${numberOfStops} застанувања')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Нема достапни сместувања', one: '1 достапно сместување', other: '${totalProperties} достапни сместувања')}";

  static m10(value) => "${value} со мед";

  static m11(value) => "${value} со шеќер";

  static m12(value) => "Ставка ${value}";

  static m13(error) =>
      "Не успеа да се копира во привремената меморија: ${error}";

  static m14(value) => "Континуиран: ${value}";

  static m15(value) => "Дискретен: ${value}";

  static m16(value) => "Штиклирано: ${value}";

  static m17(value) => "Избрано: ${value}";

  static m18(name, phoneNumber) =>
      "Телефонскиот број на ${name} е ${phoneNumber}";

  static m19(value) => "Избравте: „${value}“";

  static m20(accountName, accountNumber, amount) =>
      "${accountName} сметка ${accountNumber} со ${amount}.";

  static m21(amount) => "Потрошивте ${amount} на провизија за банкомат месецов";

  static m22(percent) =>
      "Одлично! Салдото на сметката ви е ${percent} поголемо од минатиот месец.";

  static m23(percent) =>
      "Внимавајте, сте искористиле ${percent} од буџетот за купување месецов.";

  static m24(amount) => "Потрошивте ${amount} на ресторани седмицава.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Зголемете го потенцијалното одбивање данок! Назначете категории на 1 неназначена трансакција.', other: 'Зголемете го потенцијалното одбивање данок! Назначете категории на ${count} неназначени трансакции.')}";

  static m26(billName, date, amount) =>
      "${billName} треба да се плати до ${date} и изнесува ${amount}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} буџет со искористени ${amountUsed} од ${amountTotal}, преостануваат ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'НЕМА СТАВКИ', one: '1 СТАВКА', other: '${quantity} СТАВКИ')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Количина: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Кошничка за купување, нема ставки', one: 'Кошничка за купување, 1 ставка', other: 'Кошничка за купување, ${quantity} ставки')}";

  static m32(product) => "Отстранете ${product}";

  static m33(value) => "Ставка ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Примери за Flutter од складиштето на GitHub"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Назад во галеријата"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Икона на почетокот"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Повеќе дејства"),
        "bannerDemoResetText": MessageLookupByLibrary.simpleMessage(
            "Ресетирај го рекламниот натпис"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Лозинката беше ажурирана на другиот уред. Најавете се повторно."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Исечок"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Позиција на лебдечкото копче за дејство"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Сокриено - на средина"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Сокриено - на крај"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Лебдечко - на средина"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Лебдечко - на крај"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Сметка"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Аларм"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Календар"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Коментари"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("КОПЧЕ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Создајте"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Истражете"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Може да се избере (со долго притискање)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Може да се допре"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Танџавур"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Четинад"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Број 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Предачи на свила"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Храмови"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Танџавур, Тамил Наду"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Сиваганга, Тамил Наду"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "10 најдобри града што може да ги посетите во Тамил Наду"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Занаетчии од јужна Индија"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Храмот Брихадисвара"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Возење велосипед"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Лифт"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Камин"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Голем"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Среден"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Мал"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Вклучете ги светлата"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Машина за перење алишта"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("КИЛИБАРНА"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("СИНА"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("СИНОСИВА"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("КАФЕАВА"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ЦИЈАН"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ТЕМНОПОРТОКАЛОВА"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ТЕМНОПУРПУРНА"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЗЕЛЕНА"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("СИВА"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ИНДИГО"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("СВЕТЛОСИНА"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("СВЕТЛОЗЕЛЕНА"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ЛИМЕТА"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ПОРТОКАЛОВА"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("РОЗОВА"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ВИОЛЕТОВА"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ЦРВЕНА"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ТИРКИЗНА"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ЖОЛТА"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Персонализирана апликација за патување"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ЈАДЕЊЕ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Неапол, Италија"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пица во фурна на дрва"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Далас, САД"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалија"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жена држи огромен сендвич со пастрма"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Празен шанк со столици во стилот на американските ресторани"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордоба, Аргентина"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Хамбургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Портланд, САД"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Корејско тако"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Париз, Франција"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Чоколаден десерт"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Сеул, Јужна Кореја"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Простор за седење во ресторан со уметничка атмосфера"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Сиетл, САД"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Порција ракчиња"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Нешвил, САД"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Влез на пекарница"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Атланта, САД"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Чинија со ракови"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрид, Шпанија"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шанк во кафуле со печива"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Истражувајте ресторани по дестинација"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("ЛЕТАЊЕ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Аспен, САД"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Вила во снежен пејзаж со зимзелени дрва"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Биг Сур, САД"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Каиро, Египет"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минарињата на џамијата Ал-Азар на зајдисонце"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалија"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Светилник од тули на море"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Напа, САД"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Базен со палми"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Бали, Индонезија"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Базен крај море со палми"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шатор на поле"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Долина Кумбу, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Молитвени знамиња пред снежна планина"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу Пикчу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тврдината Мачу Пикчу"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Мале, Малдиви"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Надводни бунгалови"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Вицнау, Швјцарија"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хотел крај езеро пред планини"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Мексико Сити, Мексико"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Поглед одозгора на Палатата на ликовни уметности"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Маунт Рашмор, САД"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Маунт Рашмор"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сингапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Градина со супердрва"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Хавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Маж се потпира на старински син автомобил"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Истражувајте летови по дестинација"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Изберете датум"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Изберете датуми"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Изберете дестинација"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage(
            "Ресторани во американски стил"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Изберете локација"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Изберете место на поаѓање"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Изберете време"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Патници"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("СПИЕЊЕ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Мале, Малдиви"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Надводни бунгалови"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Аспен, САД"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Каиро, Египет"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Минарињата на џамијата Ал-Азар на зајдисонце"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тајпеј, Тајван"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Облакодерот Тајпеј 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Вила во снежен пејзаж со зимзелени дрва"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу Пикчу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тврдината Мачу Пикчу"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Хавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Маж се потпира на старински син автомобил"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Вицнау, Швјцарија"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хотел крај езеро пред планини"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Биг Сур, САД"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шатор на поле"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Напа, САД"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Базен со палми"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Порто, Португалија"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Живописни апартмани на плоштадот Рибеира"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексико"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Урнатини на Маите на карпа над плажа"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лисабон, Португалија"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Светилник од тули на море"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Истражувајте сместувања по дестинација"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Дозволи"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Пита со јаболка"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Откажи"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Торта со сирење"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Чоколадно колаче"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Изберете го омилениот тип десерт од списокот подолу. Вашиот избор ќе се искористи за да се приспособи предложениот список со места за јадење во вашата област."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Отфрли"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Не дозволувај"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Изберете го омилениот десерт"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Вашата моментална локација ќе се прикаже на картата и ќе се користи за насоки, резултати од пребрувањето во близина и проценети времиња за патување."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Да се дозволи „Карти“ да пристапува до вашата локација додека ја користите апликацијата?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тирамису"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Копче"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Со заднина"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Прикажи предупреување"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Разговор"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Почетна страница"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профил"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Калциум (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Калории"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Јаглехидрати (гр.)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Десерт (1 порција)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Масти (гр.)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Железо (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Протеини (гр.)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Натриум (мг)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Исхрана"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Пита со јаболка"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Тортичка"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Крофна"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Еклер"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Замрзнат јогурт"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Колачиња со ѓумбир"),
        "dataTableRowHoneycomb": MessageLookupByLibrary.simpleMessage("Саќе"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Сендвич-сладолед"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Желе-бонбонче"),
        "dataTableRowLollipop": MessageLookupByLibrary.simpleMessage("Лижавче"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Tap to edit tiles, and use gestures to move around the scene. Drag to pan, pinch to zoom, rotate with two fingers. Press the reset button to return to the starting orientation."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Edit tile"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Reset transformations"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Pan, zoom, rotate"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D transformations"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Иконите за дејства се збир на опции коишто активираат дејство поврзано со примарните содржини. Иконите за дејства треба да се појавуваат динамично и контекстуално во корисничкиот интерфејс."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Икона за дејство"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Дијалогот за предупредување го информира корисникот за ситуациите што бараат потврда. Дијалогот за предупредување има изборен наслов и изборен список со дејства."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Предупредување"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Предупредување со наслов"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Рекламниот натпис прикажува важна, концизна порака и им обезбедува на корисниците дејства за извршување (или отфрлање на натписот). За да се отфрли, потребно е дејство на корисникот."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Се прикажува рекламен натпис во список"),
        "demoBannerTitle":
            MessageLookupByLibrary.simpleMessage("Рекламен натпис"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Долните ленти со апликации обезбедуваат пристап до една долна фиока за навигација и најмногу четири дејства, вклучувајќи го и лебдечкото копче за дејство."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Прикажува навигација и дејства во долниот дел"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Долна лента со апликации"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Долните ленти за навигација прикажуваат три до пет дестинации најдолу на екранот. Секоја дестинација е прикажана со икона и со изборна текстуална етикета. Кога ќе допре долна икона за навигација, тоа го води корисникот до дестинацијата за навигација од највисоко ниво поврзана со таа икона."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Постојани етикети"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Избрана етикета"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Долна навигација со напречно избледувачки прикази"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Долна навигација"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Додајте"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ПРИКАЖИ ДОЛЕН ЛИСТ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Заглавие"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Модалниот долен лист е алтернатива за мени или дијалог и го спречува корисникот да комуницира со остатокот од апликацијата."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Модален долен лист"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Постојаниот долен лист прикажува информации што ги дополнуваат примарните содржини на апликацијата. Постојаниот долен лист останува видлив дури и при интеракцијата на корисникот со другите делови на апликацијата."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Постојан долен лист"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Постојан и модален долен лист"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Долен лист"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Полиња за текст"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Рамни, подигнати, со контура и други"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Копчиња"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Картичката е лист од материјал што се користи за прикажување поврзани податоци како, на пр., албум, географска локација, оброк, детали за контакт итн."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Основни картички со заоблени агли"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Картички"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Мени со список за проверка"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Компактни елементи што претставуваат внес, атрибут или дејство"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Икони"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Иконите за избор прикажуваат еден избор од збир избори. Иконите за избор содржат поврзан описен текст или категории."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Икона за избор"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Кружен индикатор на напредок во Material Design, којшто се врти за да покаже дека апликацијата работи."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Кружен индикатор на напредок"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Код за демонстрација"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Копирано во привремената меморија."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("КОПИРАЈ ГИ СИТЕ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Константи за бои и мостри што ја претставуваат палетата на бои на Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Сите однапред дефинирани бои"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Бои"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Контекстуално мени"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Листот со дејства е посебен стил на предупредување со кое пред корисникот се претставува група од две или повеќе опции поврзани со тековниот контекст. Листот со дејства може да има наслов, дополнителна порака и список со дејства."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Лист со дејства"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Индикатор на активност во iOS-стил што се врати во насока на стрелките на часовникот."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Индикатори на активност во iOS-стил"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Само копчиња за предупредување"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Предупредување со копчиња"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Дијалогот за предупредување го информира корисникот за ситуациите што бараат потврда. Дијалогот за предупредување има изборен наслов, изборни содржини и изборен список со дејства. Насловот е прикажан над содржините, а дејствата се прикажани под содржините."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Предупредување"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Предупредување со наслов"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Дијалози за предупредување во iOS-стил"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Предупредувања"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Копче во iOS-стил. Содржи текст и/или икона што бледее и се појавува при допир. По избор, може да има и заднина."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Копчиња во iOS-стил"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Копчиња"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Лента за навигација во iOS-стил. Лентата за навигација е алатник, што содржи најмалку наслов на страницата, во средина на алатникот."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Лента за навигација во iOS-стил"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Датум"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Датум и време"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Виџет за избор во iOS-стил што може да се користи за избирање датуми, времиња или и двете."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Избирачи на датум и време во iOS-стил"),
        "demoCupertinoPickerTime":
            MessageLookupByLibrary.simpleMessage("Време"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Тајмер"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Избирачи"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Виџет што ја користи контролата на содржини „Повлечете за освежување“ во iOS-стил."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Контрола „Повлечете за освежување“ во iOS-стил"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Се користи за избирање помеѓу број на самостојни опции. Кога ќе се избере една опција во сегментираната контрола, ќе се поништи изборот на другите опции."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментирана контрола во iOS-стил"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Лизгачот може да се користи за избор од континуиран или дискретен збир на вредности."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Лизгач во iOS-стил"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Лизгач"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Прекинувачот се користи за менување на состојбата вклучено/исклучено на една поставка."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Прекинувач во iOS-стил"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Долна лента за навигација со картички во iOS-стил. Прикажува повеќе картички, од коишто првата прикажана стандардно е активна."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Долна лента со картички во iOS-стил"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Полето за текст му овозможува на корисникот внесување текст или со хардверска тастатура или со тастатура на екран."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("Полиња за текст во iOS-стил"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Лизгачите прикажуваат голем број вредности на лента, а корисниците може да изберат една од тие вредности. Може да бидат со теми и приспособени."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Лизгачи за приспособување"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Табелите со податоци прикажуваат податоци во формат во вид на мрежа од редови и колони. Тие ги организираат податоците да бидат лесни за скенирање, така што корисниците може да бараат шеми и увид."),
        "demoDataTableSubtitle":
            MessageLookupByLibrary.simpleMessage("Редови и колони со податоци"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Табели со податоци"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Прикажува дијалог што содржи избирач на датум во Material Design."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Избирач на датум"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Едноставен, за предупредување и на цел екран"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Дијалози"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Документација за API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Иконите за филтри користат ознаки или описни зборови за филтрирање содржини."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Икона за филтер"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Рамното копче прикажува дамка од мастило при притискање, но не се подига. Користете рамни копчиња во алатници, во дијалози и во линија со дополнување"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Рамно копче"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Лебдечкото копче за дејство е копче во вид на кружна икона што лебди над содржините за да поттикне примарно дејство во апликацијата."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Лебдечко копче за дејство"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Својството fullscreenDialog одредува дали дојдовната страница е во модален дијалог на цел екран"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Цел екран"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Цел екран"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "„Списоците на табела“ се најпогодни за прикажување хомогени податоци, најчесто слики. Секој елемент во списокот на табелата се вика плочка."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Со подножје"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Со заглавие"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Само слика"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Распоред на редови и колони"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Списоци на табела"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Информации"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Иконите за внесување прикажуваат сложени податоци, како што се ентитет (лице, место или предмет) или разговорен текст во компактна форма."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Икона за внесување"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL-адресата не можеше да се прикаже:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Линиски индикатор на напредок во Material Design, познат и како лента за напредок."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Линиски индикатор на напредок"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Еден ред со фиксна висина што обично содржи текст, како и икона на почетокот или на крајот."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Секундарен текст"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Распореди на подвижен список"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Списоци"),
        "demoMenuADisabledMenuItem": MessageLookupByLibrary.simpleMessage(
            "Оневозможена ставка на менито"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Ставка со мени со список за проверка"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Ставка со контекстуално мени"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("Ставка со мени со секции"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Ставка со едноставно мени"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Прва ставка на контекстуално мени"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Трета ставка на контекстуално мени"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Менито прикажува список со избори на привремена површина. Тие се појавуваат кога корисникот ќе користи копче, дејство или друга контрола."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Четири"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Добијте линк"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Прва ставка од менито"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Трета ставка од менито"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Втора ставка од менито"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Еден"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Преглед"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Отстрани"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Сподели"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Копчиња на мени и едноставни менија"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Три"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Мени"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Два"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Една линија"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Допрете тука за да се прикажат достапните опции за оваа демонстрација."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Прикажи ги опциите"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Опции"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Копчињата со контура стануваат непроѕирни и се подигнуваат кога ќе ги притиснете. Честопати се спаруваат со подигнатите копчиња за да означат алтернативно секундарно дејство."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Копче со контура"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("ПРИКАЖИ ИЗБИРАЧ"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Избор на датум и време"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Избирачи"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("Линиски, кружни, неодредени"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Индикатори на напредок"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Подигнатите копчиња додаваат димензионалност во распоредите што се претежно рамни. Ги нагласуваат функциите во збиените или широките простори."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Подигнато копче"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Лизгачите прикажуваат голем број вредности на лента. Може да имаат икони на двата краја на лентата со опсег на вредности. Идеални се за приспособување на поставките, како што се јачината на звукот, осветленоста или примената на филтри за слики."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Лизгачи на опсег"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Мени со секции"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Полињата за избор му овозможуваат на корисникот да избере повеќе опции од еден збир. Вредноста на обичното поле за избор е „точно“ или „неточно“, а вредноста на полето со три избори може да биде и нула."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Поле за избор"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Тркалезните копчиња му овозможуваат на корисникот да избере една опција од збир опции. Користете ги за исклучителен избор доколку мислите дека корисникот треба да ги види сите достапни опции една до друга."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Тркалезно копче"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Полиња за избор, тркалезни копчиња и прекинувачи"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Прекинувачите за вклучување/исклучување ја менуваат состојбата на опција со една поставка. Опцијата што прекинувачот ја контролира, како и нејзината состојба, треба да е јасно одредена со соодветна етикета."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Прекинувач"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Контроли за избор"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Едноставниот дијалог му нуди на корисникот избор помеѓу неколку опции. Едноставниот дијалог има изборен наслов прикажан над опциите."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Едноставен"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Едноставно мени"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Континуиран"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Континуиран лизгач на опсег со приспособена тема"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Континуиран со нумеричка вредност што може да се изменува"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Лизгачите прикажуваат голем број вредности на лента, а корисниците може да изберат една од нив. Идеални се за приспособување на поставките, како што се јачината на звукот, осветленоста или примената на филтри за слики."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Дискретен"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Дискретен лизгач со приспособена тема"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Нумеричка вредност што може да се изменува"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Виџети за избор на вредност со повлекување"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Лизгачи"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Го притиснавте копчето за дејство на снекбар-пораката."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ДЕЈСТВО"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ПРИКАЖИ СНЕКБАР-ПОРАКА"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Снекбар-пораките ги информираат корисниците дека некоја апликација извршила или ќе изврши некаков процес. Тие се појавуваат привремено, кон дното на екранот. Не треба да го прекинуваат корисникот и не бараат од него да внесе податоци за да исчезнат."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Снекбар-пораките се прикажуваат на дното на екранот"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Ова е снекбар-порака."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Снекбар-пораки"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Картичките ги организираат содржините на различни екрани, збирови податоци и други интеракции."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Картички со прикази што се лизгаат неазависно еден од друг"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Картички"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Полињата за текст им овозможуваат на корисниците да внесуваат текст во корисничкиот интерфејс. Обично се појавуваат во формулари и дијалози."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Е-пошта"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Внесете лозинка."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Внесете телефонски број од САД."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Поправете ги грешките означени со црвено пред да испратите."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Сокријте ја лозинката"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Нека биде кратко, ова е само пример."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Животна приказна"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Име*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Потребно е име."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Не повеќе од 8 знаци."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Внесете само букви."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Лозинка*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Лозинките не се совпаѓаат"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Телефонски број*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* означува задолжително поле"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Повторно внесете лозинка*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Плата"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Прикажи ја лозинката"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ИСПРАТИ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Еден ред текст и броеви што може да се изменуваат"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Кажете ни нешто за вас (на пр., напишете што работите или со кое хоби се занимавате)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Полиња за текст"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Како ви се обраќаат луѓето?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Како може да стапиме во контакт со вас?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Вашата адреса на е-пошта"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Прикажува дијалог што содржи избирач на време во Material Design."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Избирач на време"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Копчињата за префрлање може да се користат за групирање поврзани опции. За да се нагласат групи на поврзани копчиња за префрлање, групата треба да споделува заеднички контејнер"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Копчиња за префрлање"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Советите за алатки даваат текстуални етикети што ја објаснуваат функцијата на копчето или на друго дејство на корисничкиот интерфејс. Советите за алатки прикажуваат информативен текст кога корисниците ќе го наместат глушецот над елемент, ќе фокусираат или долго ќе притиснат некој елемент."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Долго притиснете или наместете го глушецот над елемент за да се прикаже совет за алатката."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Кратка порака што се прикажува при долго притискање или местење на глушецот над елементот"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Совети за алатки"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Две линии"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Дефиниции за различните типографски стилови во Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Сите однапред дефинирани стилови на текст"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Типографија"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Додајте сметка"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("СЕ СОГЛАСУВАМ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ОТКАЖИ"),
        "dialogDisagree":
            MessageLookupByLibrary.simpleMessage("НЕ СЕ СОГЛАСУВАМ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ОТФРЛИ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Да се отфрли нацртот?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Демонстрација за дијалог на цел екран"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ЗАЧУВАЈ"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Дијалог на цел екран"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Дозволете Google да им помогне на апликациите да ја утврдуваат локацијата. Тоа подразбира испраќање анонимни податоци за локација до Google, дури и кога не се извршуваат апликации."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Да се користи услугата според локација на Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Поставете резервна сметка"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ПРИКАЖИ ГО ДИЈАЛОГОТ"),
        "dismiss": MessageLookupByLibrary.simpleMessage("ОТФРЛИ"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Категории"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерија"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Плажа"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Бронзени изработки"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Ченај"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Четинад"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Рибар"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Цветен пазар"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Подготовка за ручек"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Пазар"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Пудучери"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Фарма за сол"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Скутери"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Пазар за свила"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Танџавур"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Храм во Танџавур"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings": MessageLookupByLibrary.simpleMessage(
            "Штедна сметка за автомобилот"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Тековна сметка"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Штедна сметка за домот"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Одмор"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Сопственик на сметка"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Годишен принос во процент"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Камата платена минатата година"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Каматна стапка"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Годишна камата до денес"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Следниот извод"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Вкупно"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Сметки"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Предупредувања"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Сметки"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Краен рок"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Облека"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кафе-барови"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Намирници"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ресторани"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Преостанато"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Буџети"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Апликација за лични финансии"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ПРЕОСТАНАТО"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("НАЈАВЕТЕ СЕ"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Најавете се"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Најавете се на Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Немате ли сметка?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Лозинка"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Запомни ме"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("РЕГИСТРИРАЈТЕ СЕ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Корисничко име"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ПРИКАЖИ СЀ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Прикажи ги сите сметки"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Прикажи ги сите сметки"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Прикажи ги сите буџети"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Најдете банкомати"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Помош"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Управувајте со сметките"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Известувања"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Поставки за пошта без хартија"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Лозинка и ID на допир"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Лични податоци"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Одјавете се"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Даночни документи"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("СМЕТКИ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("СМЕТКИ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БУЏЕТИ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ПРЕГЛЕД"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ПОСТАВКИ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("За Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Дизајн на TOASTER во Лондон"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Затвори ги поставките"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Поставки"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Темна"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage(
            "Испратете повратни информации"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Светла"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Локален стандард"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Механика на платформа"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Бавно движење"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Систем"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Насока на текстот"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Лево кон десно"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Според локација"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Десно кон лево"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Скалирање текст"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Огромен"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Голем"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Нормално"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("Мал"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тема"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Поставки"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОТКАЖИ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ИСПРАЗНИ КОШНИЧКА"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("КОШНИЧКА"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Испорака:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Подзбир:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Данок:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("ВКУПНО"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ДОДАТОЦИ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("СИТЕ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ОБЛЕКА"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("ДОМАЌИНСТВО"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Модерна апликација за малопродажба"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Лозинка"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Корисничко име"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ОДЈАВЕТЕ СЕ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МЕНИ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("СЛЕДНО"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Сина камена шолја"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Порабена маица Cerise"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Салфети Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Kошула Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Класична бела јака"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Џемпер Clay"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Полица од бакарна жица"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Маица Fine lines"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Орнамент за во градина"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Капа Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Јакна Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Три масички Gilt"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Шал во боја на ѓумбир"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Сива маица без ракави"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Сет за чај Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Кујнски сет од 4 парчиња"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Панталони во морско сина"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Туника Plaster"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Маса Quartet"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Послужавник Rainwater"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Женска блуза Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Туника во морски тонови"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Џемпер Seabreeze"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Маица со спуштени ракави"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Чанта Shrug"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Керамички сет Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Очила за сонце Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Обетки Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Саксии за сукуленти"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Фустан за на плажа"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Маица Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Ранец Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Чорапи Varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (бела)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Привезок за клучеви Weave"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Бела кошула со риги"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Ремен Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Додајте во кошничката"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Затворете ја кошничката"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Затворете го менито"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Отворете го менито"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Отстрани ја ставката"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Пребарај"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Поставки"),
        "signIn": MessageLookupByLibrary.simpleMessage("НАЈАВИ СЕ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Распоред што овозможува брзо стартување"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Главен текст"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("КОПЧЕ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Наслов"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Поднаслов"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Наслов"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Апликација за стартување"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Додајте"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Омилена"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Пребарување"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Сподели")
      };
}
