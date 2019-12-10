// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a kk locale. All the
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
  String get localeName => 'kk';

  static m0(value) => "Қолданбаның кодын көру үшін ${value} бетін ашыңыз.";

  static m1(title) => "${title} қойындысына арналған толтырғыш белгі";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Мейрамханалар жоқ', one: '1 мейрамхана', other: '${totalRestaurants} мейрамхана')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Тікелей рейс', one: '1 ауысып міну', other: '${numberOfStops} аялдама')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Қолжетімді қонақүйлер жоқ', one: '1 қолжетімді қонақүй', other: '${totalProperties} қолжетімді қонақүй')}";

  static m5(value) => "${value}";

  static m6(error) => "Буферге көшірілмеді: ${error}";

  static m7(name, phoneNumber) => "${name}: ${phoneNumber}";

  static m8(value) => "Таңдалған мән: \"${value}\".";

  static m9(accountName, accountNumber, amount) =>
      "${accountNumber} нөмірлі ${accountName} банк шотында ${amount} сома бар.";

  static m10(amount) =>
      "Осы айда банкоматтардың комиссиялық алымына ${amount} жұмсадыңыз.";

  static m11(percent) =>
      "Тамаша! Шотыңызда өткен аймен салыстырғанда ${percent} артық ақша бар.";

  static m12(percent) =>
      "Назар аударыңыз! Сіз осы айға арналған бюджеттің ${percent} жұмсадыңыз.";

  static m13(amount) => "Осы аптада мейрамханаларға ${amount} жұмсадыңыз.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Салықтың шегерілетін сомасын арттырыңыз! 1 тағайындалмаған транзакцияға санаттар тағайындаңыз.', other: 'Салықтың шегерілетін сомасын арттырыңыз! ${count} тағайындалмаған транзакцияға санаттар тағайындаңыз.')}";

  static m15(billName, date, amount) =>
      "${amount} сомасындағы ${billName} төлемі ${date} күні төленуі керек.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} бюджеті: пайдаланылғаны: ${amountUsed}/${amountTotal}, қалғаны: ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'ЭЛЕМЕНТТЕР ЖОҚ', one: '1 ЭЛЕМЕНТ', other: '${quantity} ЭЛЕМЕНТ')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Саны: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Себетте ешқандай зат жоқ', one: 'Себетте 1 зат бар', other: 'Себет, ${quantity} зат бар')}";

  static m21(product) => "${product} өшіру";

  static m22(value) => "${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Github қоймасындағы Flutter үлгілері"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Есептік жазба"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Дабыл"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Күнтізбе"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камера"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Пікірлер"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ТҮЙМЕ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Жасау"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Велосипедпен жүру"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Лифт"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Алауошақ"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Үлкен"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Орташа"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Кішкене"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Шамдарды қосу"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Кір жуғыш машина"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ҚОЮ САРЫ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("КӨК"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("КӨКШІЛ СҰР"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ҚОҢЫР"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("КӨКШІЛ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ҚОЮ ҚЫЗҒЫЛТ САРЫ"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ҚОЮ КҮЛГІН"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ЖАСЫЛ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("СҰР"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ИНДИГО"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("КӨГІЛДІР"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("АШЫҚ ЖАСЫЛ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("АШЫҚ ЖАСЫЛ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ҚЫЗҒЫЛТ САРЫ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ҚЫЗҒЫЛТ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("КҮЛГІН"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ҚЫЗЫЛ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("КӨКШІЛ ЖАСЫЛ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("САРЫ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Саяхатқа арналған жекелендірілген қолданба"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ТАҒАМ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Неаполь, Италия"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ағаш жағылатын пештегі пицца"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Даллас, АҚШ"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Пастрами қосылған үлкен сэндвичті ұстаған әйел"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Дөңгелек орындықтар қойылған бос бар"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Кордова, Аргентина"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Портленд, АҚШ"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Корей такосы"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Париж, Франция"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шоколад десерті"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Сеул, Оңтүстік Корея"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Artsy мейрамханасының демалыс орны"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Сиэтл, АҚШ"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Асшаян тағамы"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Нашвилл, АҚШ"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Наубайхана есігі"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Атланта, АҚШ"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шаян салынған тәрелке"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Мадрид, Испания"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Кафедегі тоқаштар қойылған сөре"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Баратын жердегі мейрамханаларды қарау"),
        "craneFly": MessageLookupByLibrary.simpleMessage("ҰШУ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Аспен, АҚШ"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мәңгі жасыл ағаштар өскен қарлы жердегі шале"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Биг-Сур, АҚШ"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Каир, Мысыр"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Күн батқан кездегі Әл-Азхар мешітінің мұнаралары"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Теңіз жағалауындағы кірпіш шамшырақ"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Напа, АҚШ"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пальма ағаштары бар бассейн"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Бали, Индонезия"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Пальма ағаштары өскен теңіз жағасындағы бассейн"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Даладағы шатыр"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("Кхумбу, Непал"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Қарлы тау алдындағы сыйыну жалаулары"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Мачу-Пикчу, Перу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Мачу-пикчу цитаделі"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("Мале, Мальдив аралдары"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Су үстіндегі бунгалолар"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Вицнау, Швейцария"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Таулар алдындағы көл жағасындағы қонақүй"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Мехико, Мексика"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Әсем өнерлер сарайының үстінен көрінісі"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Рашмор, АҚШ"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Рашмор тауы"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сингапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Суперағаштар орманы"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ескі көк автокөлікке сүйеніп тұрған ер адам"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Баратын жерге ұшақ билеттерін қарау"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Күнді таңдау"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Күндерді таңдау"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Баратын жерді таңдаңыз"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Дәмханалар"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Аймақты таңдаңыз"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Жөнелу орнын таңдаңыз"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Уақытты таңдаңыз"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Саяхатшылар"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ҰЙҚЫ"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Мале, Мальдив аралдары"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Су үстіндегі бунгалолар"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Аспен, АҚШ"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Каир, Мысыр"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Күн батқан кездегі Әл-Азхар мешітінің мұнаралары"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тайбэй, Тайвань"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Тайбэй 101 зәулім үйі"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мәңгі жасыл ағаштар өскен қарлы жердегі шале"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Мачу-Пикчу, Перу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Мачу-пикчу цитаделі"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Гавана, Куба"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ескі көк автокөлікке сүйеніп тұрған ер адам"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Вицнау, Швейцария"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Таулар алдындағы көл жағасындағы қонақүй"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Биг-Сур, АҚШ"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Даладағы шатыр"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Напа, АҚШ"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Пальма ағаштары бар бассейн"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Порту, Потугалия"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Рибейра алаңындағы түрлі түсті үйлер"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Тулум, Мексика"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Жағалау жанындағы жарда орналасқан майя тайпасының қирандылары"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Лиссабон, Португалия"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Теңіз жағалауындағы кірпіш шамшырақ"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Баратын жердегі қонақүйлерді қарау"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Рұқсат беру"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Алма бәліші"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Бас тарту"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Чизкейк"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("\"Брауни\" шоколад бәліші"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Төмендегі тізімнен өзіңізге ұнайтын десерт түрін таңдаңыз. Таңдауыңызға сәйкес аймағыңыздағы асханалардың ұсынылған тізімі реттеледі."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Жабу"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Рұқсат бермеу"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Ұнайтын десертті таңдау"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Қазіргі геодерегіңіз картада көрсетіледі және бағыттар, маңайдағы іздеу нәтижелері және болжалды сапар уақытын анықтау үшін пайдаланылады."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Қолданбаны пайдаланған кезде, \"Maps\" қызметінің геодерегіңізді қолдануына рұқсат бересіз бе?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тирамису"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Түйме"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Фоны бар"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Ескертуді көрсету"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Әрекет чиптері — негізгі мазмұнға қатысты әрекетті іске қосатын параметрлер жиынтығы. Олар пайдаланушы интерфейсінде динамикалық және мәнмәтіндік күйде көрсетілуі керек."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Әрекет чипі"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ескертудің диалогтік терезесі пайдаланушыға назар аударуды қажет ететін жағдайларды хабарлайды. Бұл терезенің қосымша атауы және әрекеттер тізімі болады."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Ескерту"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Атауы бар ескерту"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Төменгі навигация жолағына үштен беске дейін бөлім енгізуге болады. Әр бөлімнің белгішесі және мәтіні (міндетті емес) болады. Пайдаланушы осы белгішелердің біреуін түртсе, сәйкес бөлімге өтеді."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Тұрақты белгілер"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Таңдалған белгі"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Біртіндеп күңгірттелген төменгі навигация"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Төменгі навигация"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("Қосу"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ТӨМЕНГІ ПАРАҚШАНЫ КӨРСЕТУ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Тақырып"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Модальдік төменгі парақшаны мәзірдің немесе диалогтік терезенің орнына пайдалануға болады. Бұл парақша ашық кезде, пайдаланушы қолданбаның басқа бөлімдеріне өте алмайды."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Модальдік төменгі парақша"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Тұрақты төменгі парақшада қолданбаның негізгі бөлімдеріне қосымша ақпарат көрсетіледі. Пайдаланушы басқа бөлімдерді пайдаланғанда да, мұндай парақша әрдайым экранның төменгі жағында тұрады."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Тұрақты төменгі парақша"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Тұрақты және модальдік төменгі парақшалар"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Төменгі парақша"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Мәтін өрістері"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Тегіс, көтеріңкі, контурлы және тағы басқа"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Түймелер"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Енгізуді, атрибутты немесе әрекетті көрсететін шағын элементтер"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чиптер"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Таңдау чиптері жиынтықтан бір таңдауды көрсетеді. Оларда сипаттайтын мәтін немесе санаттар болады."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Таңдау чипі"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Код үлгісі"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Буферге көшірілді."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("БАРЛЫҒЫН КӨШІРУ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design түстер палитрасын көрсететін түс және түс үлгілері."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Алдын ала белгіленген барлық түстер"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Түстер"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Әрекеттер парағы – пайдаланушыға ағымдағы мазмұнға қатысты екі не одан да көп таңдаулар жинағын ұсынатын ескертулердің арнайы стилі. Әрекеттер парағында оның атауы, қосымша хабары және әрекеттер тізімі қамтылуы мүмкін."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Әрекеттер парағы"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Тек ескерту түймелері"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Түймелері бар ескерту"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Ескертудің диалогтік терезесі пайдаланушыға назар аударуды қажет ететін жағдайларды хабарлайды. Бұл терезенің қосымша атауы, мазмұны және әрекеттер тізімі болады. Атауы мазмұнның үстінде, ал әрекеттер мазмұнның астында көрсетіледі."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Дабыл"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Атауы бар ескерту"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS стильді ескертудің диалогтік терезелері"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Ескертулер"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS стиліндегі түйме. Оны басқан кезде мәтін және/немесе белгіше пайда болады не жоғалады. Түйменің фоны да болуы мүмкін."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS стильді түймелер"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Түймелер"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Бірнеше өзара жалғыз опциялар арасында таңдауға пайдаланылады. Сегменттелген басқаруда бір опция талдалса, ондағы басқа опциялар таңдалмайды."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS стильді сегменттелген басқару"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Cегменттелген басқару"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Қарапайым, ескерту және толық экран"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Диалогтік терезелер"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API құжаттамасы"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cүзгі чиптері мазмұнды сүзу үшін тэгтер немесе сипаттаушы сөздер пайдаланады."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Сүзгі чипі"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Тегіс түймені басқан кезде, ол көтерілмейді. Бірақ экранға сия дағы шығады. Тегіс түймелерді аспаптар тақтасында, диалогтік терезелерде және шегініс қолданылған мәтінде пайдаланыңыз."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Тегіс түйме"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Қалқымалы әрекет түймесі – қолданбадағы негізгі әрекетті жарнамалау үшін мазмұн үстінде тұратын белгішесі бар домалақ түйме."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Қалқымалы әрекет түймесі"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog сипаты кіріс бетінің толық экранды модальдік диалогтік терезе екенін анықтайды."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Толық экран"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Толық экран"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Ақпарат"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Енгізу чиптері нысан туралы жалпы ақпаратты (адам, орын немесе зат) немесе жинақы күйдегі чаттың мәтінін көрсетеді."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Енгізу чипі"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL мекенжайы көрсетілмеді:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Биіктігі белгіленген бір жол. Әдетте оның мәтіні мен басында және аяғында белгішесі болады."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Қосымша мәтін"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Тізім форматтарын айналдыру"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Тізімдер"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Бір қатар"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tap here to view available options for this demo."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("View options"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Oпциялар"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Контурлы түймелер күңгірт болады және оларды басқан кезде көтеріледі. Олар көбіне көтеріңкі түймелермен жұптасып, балама және қосымша әрекетті көрсетеді."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Контурлы түйме"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Көтеріңкі түймелер тегіс форматтағы мазмұндарға өң қосады. Олар мазмұн тығыз не сирек орналасқан кезде функцияларды ерекшелеу үшін қолданылады."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Көтеріңкі түйме"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Құсбелгі ұяшықтары пайдаланушыға бір жиынтықтан бірнеше опцияны таңдауға мүмкіндік береді. Әдетте құсбелгі ұяшығы \"true\" не \"false\" болады, кейде \"null\" болуы мүмкін."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Құсбелгі ұяшығы"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ауыстырып қосқыш пайдаланушыға жиыннан бір опцияны таңдап алуға мүмкіндік береді. Барлық қолжетімді опцияларды бір жерден көруді қалаған кезде, ауыстырып қосқышты пайдаланыңыз."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Радио"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Құсбелгі ұяшықтары, ауыстырып қосқыштар және ауыстырғыштар"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Қосу/өшіру ауыстырғыштарымен жеке параметрлер опциясының күйін ауыстырып қоса аласыз. Басқару элементтерін қосу/өшіру опциясы және оның күйі сәйкес белгі арқылы анық көрсетілуі керек."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Ауысу"),
        "demoSelectionControlsTitle": MessageLookupByLibrary.simpleMessage(
            "Таңдауды басқару элементтері"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Қарапайым диалогтік терезе пайдаланушыға опцияны таңдауға мүмкіндік береді. Қарапайым диалогтік терезеге атау берілсе, ол таңдаулардың үстінде көрсетіледі."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Қарапайым"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Қойындылар түрлі экрандардағы, деректер жинағындағы және тағы басқа өзара қатынастардағы мазмұнды реттейді."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Жеке айналмалы көріністері бар қойындылар"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Қойындылар"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Мәтін өрістері арқылы пайдаланушы интерфейсіне мәтін енгізуге болады. Әдетте олар үлгілер мен диалогтік терезелерге шығады."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Электрондық хабар"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Құпия сөзді енгізіңіз."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – АҚШ телефон нөмірін енгізіңіз."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Жібермес бұрын қызылмен берілген қателерді түзетіңіз."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Құпия сөзді жасыру"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Қысқаша жазыңыз. Бұл – жай демо нұсқа."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Өмірбаян"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Аты*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Аты-жөніңізді енгізіңіз."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8 таңбадан артық емес."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Тек әріптер енгізіңіз."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Құпия сөз*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Құпия сөздер сәйкес емес."),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Телефон нөмірі*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* міндетті өрісті білдіреді"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Құпия сөзді қайта теріңіз*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Жалақы"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Құпия сөзді көрсету"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ЖІБЕРУ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Мәтін мен сандарды өңдеуге арналған жалғыз сызық"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Өзіңіз туралы айтып беріңіз (мысалы, немен айналысасыз немесе хоббиіңіз қандай)."),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Мәтін өрістері"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("АҚШ доллары"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Адамдар сізді қалай атайды?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Сізбен қалай хабарласуға болады?"),
        "demoTextFieldYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Электрондық пошта мекенжайыңыз"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ауыстырып қосу түймелері ұқсас опцияларды топтастыруға пайдаланылады. Ұқсас ауыстырып қосу түймелерін белгілеу үшін топ ортақ контейнерде орналасқан болу керек."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ауыстырып қосу түймелері"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Екі қатар"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design-дағы түрлі стильдердің анықтамалары бар."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Алдын ала анықталған мәтін стильдері"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Типография"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Есептік жазбаны енгізу"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("КЕЛІСЕМІН"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("БАС ТАРТУ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("КЕЛІСПЕЙМІН"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ЖАБУ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Нобай қабылданбасын ба?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Толық экран диалогтік терезенің демо нұсқасы"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("САҚТАУ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Толық экран диалогтік терезесі"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Қолданбалардың орынды анықтауына Google-дың көмектесуіне рұқсат етіңіз. Яғни қолданбалар іске қосылмаған болса да, Google-ға анонимді геодеректер жіберіле береді."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google орынды анықтау қызметін пайдалану керек пе?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Сақтық есептік жазбасын реттеу"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ДИАЛОГТІК ТЕРЕЗЕНІ КӨРСЕТУ"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "АНЫҚТАМАЛЫҚ СТИЛЬДЕР ЖӘНЕ МЕДИАМАЗМҰН"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Санаттар"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерея"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Көлік алуға арналған жинақ"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Банк шоты"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Үй алуға арналған жинақ"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Демалыс"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Есептік жазба иесі"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Жылдық пайыздық көрсеткіш"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Өткен жылы төленген пайыз"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Пайыздық мөлшерлеме"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Жылдың басынан бергі пайыз"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Келесі үзінді көшірме"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Барлығы"),
        "rallyAccounts":
            MessageLookupByLibrary.simpleMessage("Есептік жазбалар"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Ескертулер"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Шоттар"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Төленетін сома:"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Киім"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кофеханалар"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Азық-түлік"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Мейрамханалар"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Қалды"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Бюджеттер"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Бюджет жоспарлауға арналған қолданба"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ҚАЛДЫ"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("КІРУ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Кіру"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally-ге кіру"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Есептік жазбаңыз жоқ па?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Құпия сөз"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Мені есте сақтасын."),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("ТІРКЕЛУ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Пайдаланушы аты"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("БАРЛЫҒЫН КӨРУ"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage(
            "Барлық есептік жазбаларды көру"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Барлық төлемдерді көру"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Барлық бюджеттерді көру"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Банкоматтар табу"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Анықтама"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Есептік жазбаларды басқару"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Хабарландырулар"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Виртуалды реттеулер"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Рұқсат коды және Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Жеке ақпарат"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Шығу"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Салық құжаттары"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("ЕСЕПТІК ЖАЗБАЛАР"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ШОТТАР"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("БЮДЖЕТТЕР"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ШОЛУ"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("ПАРАМЕТРЛЕР"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Flutter Gallery туралы ақпарат"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Дизайн: TOASTER, Лондон"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Параметрлерді жабу"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Параметрлер"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Қараңғы"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Пікір жіберу"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Ашық"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Тіл"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Платформа"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Баяу бейне"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Жүйе"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Мәтін бағыты"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("СОЛДАН ОҢҒА"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Тіл негізінде"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("ОҢНАН СОЛҒА"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Мәтінді масштабтау"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Өте үлкен"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Үлкен"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Қалыпты"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Кішi"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Тақырып"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Параметрлер"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("БАС ТАРТУ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("СЕБЕТТІ ТАЗАЛАУ"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("СЕБЕТ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Жөнелту:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Барлығы:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Салық:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("БАРЛЫҒЫ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ӘШЕКЕЙЛЕР"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("БАРЛЫҒЫ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("КИІМ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ҮЙ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Сәнді заттар сатып алуға арналған қолданба"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Құпия сөз"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Пайдаланушы аты"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ШЫҒУ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("МӘЗІР"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("КЕЛЕСІ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Көк саптыаяқ"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Қызғылт сары футболка"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Шүберек майлықтар"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Шамбре жейде"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Классикалық ақ жаға"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Ақшыл сары свитер"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Мыс сымнан тоқылған себет"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Жолақты футболка"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Гүлдерден жасалған моншақ"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Гэтсби стиліндегі шляпа"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Джентри стиліндегі күртке"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Үстелдер жиынтығы"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Зімбір түсті мойынорағыш"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Сұр майка"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs шай сервизі"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Quattro ас үйі"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Қысқа балақ шалбарлар"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Ақшыл сары туника"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Төртбұрышты үстел"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Жаңбырдың суы ағатын науа"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Қаусырмалы блузка"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Жеңіл туника"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Көкшіл свитер"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Кең жеңді футболка"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Хобо сөмкесі"),
        "shrineProductSootheCeramicSet": MessageLookupByLibrary.simpleMessage(
            "Керамика ыдыс-аяқтар жиынтығы"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella көзілдірігі"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Дөңгелек пішінді сырғалар"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Суккуленттер"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Жаздық көйлек"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Көкшіл жасыл футболка"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Арқаға асатын сөмке"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Спорттық шұлықтар"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Жеңіл ақ кофта"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Өрілген салпыншақ"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Жолақты жейде"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Былғары белдік"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Себетке қосу"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Себетті жабу"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Мәзірді жабу"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Мәзірді ашу"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Элементті өшіру"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Іздеу"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Параметрлер"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Адаптивті бастау үлгісі"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Негізгі мәтін"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ТҮЙМЕ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Тақырып"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Субтитр"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Атауы"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage(
            "Жаңа пайдаланушыларға арналған қолданба"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Қосу"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Таңдаулы"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Іздеу"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Бөлісу")
      };
}
