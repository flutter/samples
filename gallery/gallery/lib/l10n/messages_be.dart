// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a be locale. All the
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
  String get localeName => 'be';

  static m0(value) =>
      "Каб праглядзець зыходны код гэтай праграмы, акрыйце старонку ${value}.";

  static m1(title) => "Запаўняльнік для ўкладкі ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Няма рэстаранаў', one: '1 рэстаран', few: '${totalRestaurants} рэстараны', many: '${totalRestaurants} рэстаранаў', other: '${totalRestaurants} рэстарана')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Без перасадак', one: '1 перасадка', few: '${numberOfStops} перасадкі', many: '${numberOfStops} перасадак', other: '${numberOfStops} перасадкі')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Няма даступных месцаў для пражывання', one: 'Даступна 1 месца для пражывання', few: 'Даступна ${totalProperties} месцы для пражывання', many: 'Даступна ${totalProperties} месцаў для пражывання', other: 'Даступна ${totalProperties} месца для пражывання')}";

  static m5(value) => "Элемент ${value}";

  static m6(error) => "Не ўдалося скапіраваць у буфер абмену: ${error}";

  static m7(value) => "Непарыўны: ${value}";

  static m8(value) => "Дыскрэтны: ${value}";

  static m9(name, phoneNumber) =>
      "Нумар тэлефона карыстальніка ${name}: ${phoneNumber}";

  static m10(value) => "Вы выбралі: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "Рахунак ${accountName} ${accountNumber} з ${amount}.";

  static m12(amount) =>
      "У гэтым месяцы вы патрацілі ${amount} на аплату камісіі ў банкаматах";

  static m13(percent) =>
      "Выдатна! У гэтым месяцы на вашым разліковым рахунку засталося на ${percent} больш сродкаў, чым у мінулым.";

  static m14(percent) =>
      "Увага! Вы зрасходавалі ${percent} свайго месячнага бюджэту на пакупкі.";

  static m15(amount) => "На гэтым тыдні вы выдаткавалі ${amount} на рэстараны.";

  static m16(count) =>
      "${Intl.plural(count, one: 'Павялічце свой патэнцыяльны падатковы вылік! Прызначце катэгорыі для 1 непрызначанай трансакцыі.', few: 'Павялічце свой патэнцыяльны падатковы вылік! Прызначце катэгорыі для ${count} непрызначаных трансакцый.', many: 'Павялічце свой патэнцыяльны падатковы вылік! Прызначце катэгорыі для ${count} непрызначаных трансакцый.', other: 'Павялічце свой патэнцыяльны падатковы вылік! Прызначце катэгорыі для ${count} непрызначаных трансакцый.')}";

  static m17(billName, date, amount) =>
      "${billName}: трэба заплаціць ${amount} да ${date}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Бюджэт ${budgetName}: выкарыстана ${amountUsed} з ${amountTotal}, засталося ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'НЯМА ЭЛЕМЕНТАЎ', one: '1 ЭЛЕМЕНТ', few: '${quantity} ЭЛЕМЕНТЫ', many: '${quantity} ЭЛЕМЕНТАЎ', other: '${quantity} ЭЛЕМЕНТА')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "Колькасць: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Кошык, няма прадуктаў', one: 'Кошык, 1 прадукт', few: 'Кошык, ${quantity} прадукты', many: 'Кошык, ${quantity} прадуктаў', other: 'Кошык, ${quantity} прадукту')}";

  static m23(product) => "Выдаліць прадукт: ${product}";

  static m24(value) => "Элемент ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Узоры Flutter са сховішча GitHub"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Вярнуцца ў галерэю"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Уліковы запіс"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Будзільнік"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Каляндар"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Каментарыі"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("КНОПКА"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Стварыць"),
        "chipBiking":
            MessageLookupByLibrary.simpleMessage("Язда на веласіпедзе"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ліфт"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Камін"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Вялікі"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Сярэдні"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Малы"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Уключыць святло"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Пральная машына"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ЯНТАРНЫ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("СІНІ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ШЫЗЫ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("КАРЫЧНЕВЫ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("БЛАКІТНЫ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ЦЁМНА-АРАНЖАВЫ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ЦЁМНА-ФІЯЛЕТАВЫ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЗЯЛЁНЫ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ШЭРЫ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ІНДЫГА"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("СВЕТЛА-СІНІ"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("СВЕТЛА-ЗЯЛЁНЫ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ЛАЙМАВЫ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("АРАНЖАВЫ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("РУЖОВЫ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ФІЯЛЕТАВЫ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ЧЫРВОНЫ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("СІНЕ-ЗЯЛЁНЫ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ЖОЎТЫ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Персаналізаваная праграма для падарожжаў"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ЕЖА"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Неапаль, Італія"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Піца ў дрывяной печы"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Далас, ЗША"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лісабон, Партугалія"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жанчына з вялікім сандвічам пастрамі ў руках"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Пусты бар з круглымі барнымі крэсламі"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордава, Аргенціна"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Портланд, ЗША"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Така па-карэйскі"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Парыж, Францыя"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шакаладны дэсерт"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Сеул, Паўднёвая Карэя"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Гасцёўня моднага рэстарана"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Сіэтл, ЗША"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Страва з крэветкамі"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Нашвіл, ЗША"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Уваход у пякарню"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Атланта, ЗША"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Талерка з ракамі"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрыд, Іспанія"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Прылавак кафэ з кандытарскімі вырабамі"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Агляд рэстаранаў у пункце прызначэння"),
        "craneFly": MessageLookupByLibrary.simpleMessage("РЭЙС"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Аспен, ЗША"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Заснежаны краявід з сельскім домікам і вечназялёнымі дрэвамі"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Біг-Сур, ЗША"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Каір, Егіпет"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мінарэты мячэці аль-Азхар на захадзе сонца"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лісабон, Партугалія"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цагельны маяк на моры"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Напа, ЗША"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Басейн з пальмамі"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Балі, Інданезія"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Басейн з пальмамі з відам на мора"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Палатка ў полі"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("Кхумбу, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Малітвеныя флажкі на фоне заснежанай гары"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу-Пікчу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цытадэль Мачу-Пікчу"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Мале, Мальдывы"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бунгала над воднай паверхняй"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Віцнау, Швейцарыя"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Гасцініца на беразе возера пад гарой"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Мехіка, Мексіка"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Від зверху на Палац вытанчаных мастацтваў"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Гара Рашмар, ЗША"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Гара Рашмар"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сінгапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Сады каля заліва"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мужчына, які абапіраецца на антыкварны сіні аўтамабіль"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Агляд рэйсаў у пункт прызначэння"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Выберыце дату"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Выберыце даты"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Выберыце пункт прызначэння"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Закусачныя"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Выберыце месца"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Выберыце пункт адпраўлення"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Выберыце час"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Падарожнікі"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("НАЧЛЕГ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Мале, Мальдывы"),
        "craneSleep0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Бунгала над воднай паверхняй"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Аспен, ЗША"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Каір, Егіпет"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мінарэты мячэці аль-Азхар на захадзе сонца"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тайбэй, Тайвань"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Небаскроб Тайбэй 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Заснежаны краявід з сельскім домікам і вечназялёнымі дрэвамі"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу-Пікчу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цытадэль Мачу-Пікчу"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мужчына, які абапіраецца на антыкварны сіні аўтамабіль"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Віцнау, Швейцарыя"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Гасцініца на беразе возера пад гарой"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Біг-Сур, ЗША"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Палатка ў полі"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Напа, ЗША"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Басейн з пальмамі"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Порту, Партугалія"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Каляровыя дамы на плошчы Рыбейра"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексіка"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Руіны цывілізацыі мая на ўцёсе над пляжам"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лісабон, Партугалія"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Цагельны маяк на моры"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Агляд месцаў для пражывання ў пункце прызначэння"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Дазволіць"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Скасаваць"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Чызкейк"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Шакаладны браўні"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Выберыце ўлюбёны тып дэсерту са спіса ўнізе. З улікам выбранага вамі варыянта будзе складацца спіс месцаў паблізу, дзе гатуюць падобныя ласункі."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Адхіліць"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Не дазваляць"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Выберыце ўлюбёны дэсерт"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Ваша месцазнаходжанне будзе паказвацца на карце і выкарыстоўвацца для пракладкі маршрутаў, пошуку месцаў паблізу і вызначэння прыкладнага часу паездак."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Дазволіць \"Картам\" мець доступ да звестак пра ваша месцазнаходжанне падчас выкарыстання праграмы?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тырамісу"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Кнопка"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("З фонам"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Паказаць абвестку"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Чат"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Галоўная"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профіль"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чыпы дзеянняў – гэта набор параметраў, якія запускаюць дзеянне, звязанае з асноўным змесцівам. Чыпы дзеянняў паказваюцца ў карыстальніцкім інтэрфейсе дынамічна і ў залежнасці ад кантэксту."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Чып дзеяння"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Дыялогавае акно абвесткі інфармуе карыстальніка пра сітуацыі, для якіх патрабуецца пацвярджэнне. Дыялогавае акно абвесткі можа мець назву і спіс дзеянняў."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Абвестка"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Абвестка з назвай"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "На панэлях навігацыі ў ніжняй частцы экрана могуць змяшчацца ад трох да пяці элементаў. Кожны з іх мае значок і (неабавязкова) тэкставую метку. Націснуўшы значок на ніжняй панэлі, карыстальнік пяройдзе на элемент вышэйшага ўзроўню навігацыі, звязаны з гэтым значком."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Пастаянныя меткі"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Выбраная метка"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ніжняя панэль навігацыі з плаўным пераходам"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Навігацыя ўнізе экрана"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Дадаць"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ПАКАЗАЦЬ НІЖНІ АРКУШ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Загаловак"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Мадальны ніжні аркуш можна выкарыстоўваць замест меню ці дыялогавага акна. Дзякуючы яму карыстальнік можа не ўзаемадзейнічаць з астатнімі раздзеламі праграмы."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Мадальны ніжні аркуш"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Пастаянны ніжні аркуш паказвае дадатковую інфармацыю да асноўнага змесціва праграмы. Ён заўсёды застаецца бачным, нават калі карыстальнік узаемадзейнічае з іншымі раздзеламі праграмы."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Пастаянны ніжні аркуш"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Пастаянныя і мадальныя ніжнія аркушы"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Ніжні аркуш"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Плоская, выпуклая, с контурам і іншыя"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Кнопкі"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Кампактныя элементы, якія ўвасабляюць увод, атрыбут або дзеянне"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чыпы"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чыпы выбару дазваляюць выбраць з набору адзін варыянт. Чыпы выбару змяшчаюць звязаны апісальны тэкст або катэгорыі."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Чып выбару"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Прыклад кода"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Скапіравана ў буфер абмену."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("КАПІРАВАЦЬ УСЁ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Колеры і ўзоры колераў, якія прадстаўляюць палітру колераў матэрыялу."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Усе тыповыя колеры"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Колеры"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Аркуш дзеяння – гэта асаблівы стыль абвесткі, калі карыстальніку ў сувязі з пэўным змесцівам прапануецца на выбар больш за адзін варыянт. Аркуш дзеяння можа мець назву, дадатковае паведамленне і спіс дзеянняў."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Аркуш дзеяння"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Толькі кнопкі абвестак"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Абвестка з кнопкамі"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Дыялогавае акно абвесткі інфармуе карыстальніка пра сітуацыі, для якіх патрабуецца пацвярджэнне. Дыялогавае акно абвесткі можа мець назву, змесціва і спіс дзеянняў. Назва паказваецца над змесцівам, а дзеянні – пад ім."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Абвестка"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Абвестка з назвай"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Дыялогавыя вокны абвестак у стылі iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Абвесткі"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Кнопка ў стылі iOS. Яна ўключае тэкст і (ці) значок, якія знікаюць і паяўляюцца пры дакрананні. Можа мець фон (неабавязкова)."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Кнопкі ў стылі iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Кнопкі"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Выкарыстоўваецца для выбару з некалькіх узаемавыключальных варыянтаў. Калі ў сегментаваным элеменце кіравання выбраны адзін з варыянтаў, іншыя варыянты будуць недаступныя для выбару ў гэтым элеменце."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментаваныя элементы кіравання ў стылі iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "Сегментаваныя элементы кіравання"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Паўзунок можна выкарыстоўваць для выбару як з непарыўнага, так і з дыскрэтнага мноства значэнняў."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Паўзунок у стылі iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Паўзунок"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Пераключальнікі выкарыстоўваюцца для ўключэння і выключэння асобных налад."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Пераключальнік у стылі iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Ніжняя навігацыйная панэль укладак у стылі iOS. Змяшчае некалькі ўкладак, адна з якіх актыўная (стандартна – першая)."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ніжняя панэль укладак у стылі iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Панэль укладак"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Простае дыялогавае акно, абвестка і поўнаэкраннае акно"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Дыялогавыя вокны"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Дакументацыя API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чыпы фільтраў выкарыстоўваюць цэтлікі ці апісальныя словы для фільтравання змесціва."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Чып фільтра"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Пры націсканні плоскай кнопкі паказваецца эфект чарніла, і кнопка не падымаецца ўверх. Выкарыстоўвайце плоскія кнопкі на панэлі інструментаў, у дыялогавых вокнах і ў тэксце з палямі"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Плоская кнопка"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Рухомая кнопка дзеяння – гэта круглы значок, які рухаецца над змесцівам для выканання асноўнага дзеяння ў праграме."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Рухомая кнопка дзеяння"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Уласцівасць поўнаэкраннасці вызначае, ці будзе ўваходная старонка выглядаць як мадальнае дыялогавае акно ў поўнаэкранным рэжыме"),
        "demoFullscreenDialogTitle": MessageLookupByLibrary.simpleMessage(
            "Поўнаэкраннае дыялогавае акно"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Поўнаэкранны рэжым"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Інфармацыя"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Чыпы ўводу змяшчаюць у кампактнай форме складаныя элементы інфармацыі, такія як аб\'ект (асоба, месца або рэч) ці тэкст размовы."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("Чып уводу"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Не ўдалося адлюстраваць URL-адрас:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Адзіны фіксаваны па вышыні радок, які звычайна ўтрымлівае тэкст, а таксама пачатковы і канцавы значкі."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Другасны тэкст"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Макеты спісаў, якія прагортваюцца"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Спісы"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Адзін радок"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Націсніце тут, каб праглядзець даступныя варыянты для гэтай дэманстрацыі."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Праглядзець варыянты"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Параметры"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Кнопкі з контурамі цямнеюць і падымаюцца ўгору пры націсканні. Яны часта спалучаюцца з выпуклымі кнопкамі для вызначэння альтэрнатыўнага, другаснага дзеяння."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Кнопка з контурам"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Выпуклыя кнопкі надаюць аб\'ёмнасць пераважна плоскім макетам. Яны паказваюць функцыі ў занятых або шырокіх абласцях."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Выпуклая кнопка"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Палі для птушак дазваляюць карыстальніку выбраць з набору некалькі параметраў. Звычайнае значэнне ў полі для птушак – гэта \"true\" або \"false\", а значэнне поля для птушак з трыма станамі можа быць роўным нулю."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Поле для птушкі"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Радыёкнопкі дазваляюць карыстальніку выбраць з набору адзін варыянт. Выкарыстоўвайце іх для выбару ў асаблівых сітуацыях, каб карыстальнікі маглі бачыць усе даступныя варыянты."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Радыё"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Палі для птушак, радыёкнопкі і пераключальнікі"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Пераключальнікі мяняюць стан аднаго параметра налад з уключанага на выключаны і наадварот. Параметр, якім кіруе пераключальнік, а таксама яго стан павінны адлюстроўвацца ў адпаведнай убудаванай метцы."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Пераключальнік"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Элементы кіравання выбарам"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Простае дыялогавае акно прапануе карыстальніку выбар паміж некалькімі варыянтамі. Простае дыялогавае акно можа мець назву, якая паказваецца над варыянтамі выбару."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Простае дыялогавае акно"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Вы націснулі дзеянне на ўсплывальнай панэлі."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ДЗЕЯННЕ"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "ПАКАЗАЦЬ УСПЛЫВАЛЬНУЮ ПАНЭЛЬ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Усплывальныя панэлі паведамляюць карыстальніку пра працэсы, якія адбываюцца або будуць адбывацца ў праграмах. Такія паведамленні з\'яўляюцца на кароткі час унізе экрана і самастойна знікаюць, каб не перашкаджаць карыстальніку."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Усплывальныя панэлі паказваюць паведамленні ўнізе экрана"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Гэта ўсплывальная панэль."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Усплывальныя панэлі"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Укладкі групуюць змесціва па розных экранах для прагляду, па розных наборах даных і іншых узаемадзеяннях."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Укладкі, якія можна праглядаць асобна"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Укладкі"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Тэкставыя палі дазваляюць карыстальнікам уводзіць тэкст у карыстальніцкі інтэрфейс. Звычайна яны паяўляюцца ў формах і дыялогавых вокнах."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Электронная пошта"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Увядзіце пароль."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Увядзіце нумар тэлефона ў ЗША ў наступным фармаце: (###) ###-####."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Перад адпраўкай выправіце памылкі, пазначаныя чырвоным колерам."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Схаваць пароль"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Не пішыце многа – біяграфія павінна быць сціслай."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Біяграфія"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Імя*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Увядзіце назву."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Не больш за 8 сімвалаў."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Уводзьце толькі літары."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Пароль*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Паролі не супадаюць"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Нумар тэлефона*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* абавязковае поле"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Увядзіце пароль яшчэ раз*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Зарплата"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Паказаць пароль"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("АДПРАВІЦЬ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Адзін радок тэксту і лічбаў, якія можна змяніць"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Паведаміце нам пра сябе (напрыклад, напішыце, чым вы захапляецеся)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Тэкставыя палі"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("Долар ЗША"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Як вас завуць?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Па якім нумары з вамі можна звязацца?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Ваш адрас электроннай пошты"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Кнопкі пераключэння могуць выкарыстоўвацца для групавання звязаных параметраў. Каб вылучыць групы звязаных кнопак пераключэння, у групы павінен быць абагулены кантэйнер"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Кнопкі пераключэння"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Два радкі"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Азначэнні для розных друкарскіх стыляў з каталога матэрыяльнага дызайну."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Усе стандартныя стылі тэксту"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Афармленне тэксту"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Дадаць уліковы запіс"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ЗГАДЖАЮСЯ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("СКАСАВАЦЬ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("НЕ ЗГАДЖАЮСЯ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("АДХІЛІЦЬ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Адхіліць чарнавік?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Дэманстрацыя поўнаэкраннага дыялогавага акна"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ЗАХАВАЦЬ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Поўнаэкраннае дыялогавае акно"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Дазвольце Google вызначаць ваша месцазнаходжанне для розных праграм. Ананімныя даныя пра месцазнаходжанне будуць адпраўляцца ў Google, нават калі ніякія праграмы не запушчаны."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Выкарыстоўваць службу геалакацыі Google?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Задаць уліковы запіс для рэзервовага капіравання"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ПАКАЗАЦЬ ДЫЯЛОГАВАЕ АКНО"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("АПОРНЫЯ СТЫЛІ І МУЛЬТЫМЕДЫЯ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Катэгорыі"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерэя"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Зберажэнні на аўтамабіль"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Разліковы"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Зберажэнні для дома"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Адпачынак"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Уладальнік уліковага запісу"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Гадавая працэнтная даходнасць"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Працэнты, выплачаныя ў мінулым годзе"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Працэнтная стаўка"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Працэнты ад пачатку года да сённяшняга дня"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage(
                "Наступная выпіска з банкаўскага рахунку"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Усяго"),
        "rallyAccounts":
            MessageLookupByLibrary.simpleMessage("Уліковыя запісы"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Абвесткі"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Рахункі"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Тэрмін пагашэння"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Адзенне"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кавярні"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Прадуктовыя тавары"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Рэстараны"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Засталося"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Бюджэты"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Праграма для кіравання асабістымі фінансамі"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ЗАСТАЛОСЯ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("УВАЙСЦІ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Увайсці"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Уваход у Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Няма ўліковага запісу?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Пароль"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Запомніць мяне"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ЗАРЭГІСТРАВАЦЦА"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Імя карыстальніка"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ПРАГЛЕДЗЕЦЬ УСЁ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Прагледзець усе рахункі"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Паказаць усе рахункі"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Прагледзець усе бюджэты"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Знайсці банкаматы"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Даведка"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Кіраваць уліковымі запісамі"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Апавяшчэнні"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Віртуальныя налады"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Пароль і Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Асабістая інфармацыя"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Выйсці"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Падатковыя дакументы"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("УЛІКОВЫЯ ЗАПІСЫ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("РАХУНКІ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БЮДЖЭТЫ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("АГЛЯД"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("НАЛАДЫ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Пра Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Дызайн: TOASTER, Лондан"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Закрыць налады"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Налады"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Цёмная"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Адправіць водгук"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Светлая"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Рэгіянальныя налады"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Механізм платформы"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Запаволены рух"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Сістэма"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Напрамак тэксту"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Злева направа"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "На падставе рэгіянальных налад"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Справа налева"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Маштаб тэксту"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Вялізны"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Вялікі"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Звычайны"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Дробны"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тэма"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Налады"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("СКАСАВАЦЬ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("АЧЫСЦІЦЬ КОШЫК"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("КОШЫК"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Дастаўка:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Прамежкавы вынік:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Падатак:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("УСЯГО"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("АКСЕСУАРЫ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("УСЕ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("АДЗЕННЕ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ДОМ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Праграма для куплі модных тавараў"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Пароль"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Імя карыстальніка"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ВЫЙСЦІ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МЕНЮ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ДАЛЕЙ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Сіні кубак"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Светла-вішнёвая футболка"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Ільняныя сурвэткі"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Ільняная клятчастая кашуля"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Класічная белая блузка"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Бэжавы світар"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Драцяная стойка"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Кофта ў палоску"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Кветачныя пацеркі"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Картуз"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Куртка ў стылі джэнтры"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Трайны стол"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Рыжы шаль"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Шэрая майка"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Чайны набор"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Кухонны набор"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Цёмна-сінія штаны"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Крэмавая туніка"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Квадратны стол"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Латок для дажджавой вады"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Жаноцкая блузка з захватам"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Пляжная туніка"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Джэмпер"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Футболка са свабодным рукавом"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Сумка балеро"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Набор керамічнага посуду"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Сонцаахоўныя акуляры Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Завушніцы \"цвікі\""),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Вазоны для сукулентаў"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Летняя сукенка"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Бірузовая футболка"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Сумка-ранец"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Спартыўныя шкарпэткі"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Лёгкая кофта (белая)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Плеценая бірулька"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Кашуля ў белую палоску"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Скураны рамень"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Дадаць у кошык"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Закрыць кошык"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Закрыць меню"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Адкрыць меню"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Выдаліць элемент"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Пошук"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("Налады"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Адаптыўны макет запуску"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Асноўны тэкст"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("КНОПКА"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Загаловак"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Падзагаловак"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Назва"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Праграма запуску"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Дадаць"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Абранае"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Пошук"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Абагуліць")
      };
}
