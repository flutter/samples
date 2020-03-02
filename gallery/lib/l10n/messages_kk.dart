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

  static m2(destinationName) => "Шолу: ${destinationName}";

  static m3(destinationName) => "Бөлісу: ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Мейрамханалар жоқ', one: '1 мейрамхана', other: '${totalRestaurants} мейрамхана')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Тікелей рейс', one: '1 ауысып міну', other: '${numberOfStops} аялдама')}";

  static m7(hours) =>
      "${Intl.plural(hours, one: '1 сағ', other: '${hours} сағ')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 мин', other: '${minutes} мин')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Қолжетімді қонақүйлер жоқ', one: '1 қолжетімді қонақүй', other: '${totalProperties} қолжетімді қонақүй')}";

  static m10(value) => "${value} бал";

  static m11(value) => "${value} қант";

  static m12(value) => "${value}";

  static m13(error) => "Буферге көшірілмеді: ${error}";

  static m14(value) => "Үздіксіз: ${value}";

  static m15(value) => "Дискретті: ${value}";

  static m16(value) => "Тексерілген мән: ${value}";

  static m17(value) => "Таңдалған мән: ${value}";

  static m18(name, phoneNumber) => "${name}: ${phoneNumber}";

  static m19(value) => "Таңдалған мән: \"${value}\".";

  static m20(accountName, accountNumber, amount) =>
      "${accountNumber} нөмірлі ${accountName} банк шотында ${amount} сома бар.";

  static m21(amount) =>
      "Осы айда банкоматтардың комиссиялық алымына ${amount} жұмсадыңыз.";

  static m22(percent) =>
      "Тамаша! Шотыңызда өткен аймен салыстырғанда ${percent} артық ақша бар.";

  static m23(percent) =>
      "Назар аударыңыз! Сіз осы айға арналған бюджеттің ${percent} жұмсадыңыз.";

  static m24(amount) => "Осы аптада мейрамханаларға ${amount} жұмсадыңыз.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Салықтың шегерілетін сомасын арттырыңыз! 1 тағайындалмаған транзакцияға санаттар тағайындаңыз.', other: 'Салықтың шегерілетін сомасын арттырыңыз! ${count} тағайындалмаған транзакцияға санаттар тағайындаңыз.')}";

  static m26(billName, date, amount) =>
      "${amount} сомасындағы ${billName} төлемі ${date} күні төленуі керек.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} бюджеті: пайдаланылғаны: ${amountUsed}/${amountTotal}, қалғаны: ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ЭЛЕМЕНТТЕР ЖОҚ', one: '1 ЭЛЕМЕНТ', other: '${quantity} ЭЛЕМЕНТ')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Саны: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Себетте ешқандай зат жоқ', one: 'Себетте 1 зат бар', other: 'Себет, ${quantity} зат бар')}";

  static m32(product) => "${product} өшіру";

  static m33(value) => "${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "GitHub қоймасындағы Flutter үлгілері"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Галереяға қайта оралу"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Негізгі белгіше"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Бірнеше әрекет"),
        "bannerDemoResetText": MessageLookupByLibrary.simpleMessage(
            "Баннерді бастапқы күйге қайтару"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Басқа құрылғыңыздағы құпия сөз жаңартылды. Қайта кіріп көріңіз."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Кесік"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Қалқымалы әрекет түймесінің қалпы"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Бекітілген - ортасы"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Бекітілген - соңы"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Қалқымалы - ортасы"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Қалқымалы - соңы"),
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
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Шолу"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("Таңдалмалы (ұзақ басу)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage("Түртпелі"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Танджавур"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Четтинад"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("10 саны"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Жібек тоқымашылары"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Ғибадатханалар"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Танджавур, Тамилнад"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Шиваганга, Тамилнад"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Тамилнадтағы көруге тұрарлық 10 қала"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Оңтүстік Үндістанның қолөнершілері"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Брахадисвара ғибадатханасы"),
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
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Баратын жердегі мейрамханаларды қарау"),
        "craneFlightDuration": m5,
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
        "craneFlyStops": m6,
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
        "craneHours": m7,
        "craneMinutes": m8,
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
        "craneSleepProperties": m9,
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
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Чат"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Негізгі бет"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профиль"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Кальций (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Калория"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Көмірсу (г)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Десерт (1 порция)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Май (г)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Темір (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Ақуыз (г)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Натрий (мг)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Тамақтану"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Алма бәліші"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Кекс"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Бәліш"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Эклер"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Мұздатылған иогурт"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Gingerbread"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Honeycomb"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Ice cream sandwich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Желе кәмпиттер"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Мұз кәмпит"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Бөлшектерді өзгерту үшін түртіңіз және көріністі қимыл арқылы жылжытыңыз. Панорамалау үшін сүйреңіз, масштабтау үшін екі саусақты жақындатыңыз, екі саусақпен бұрыңыз. Бастапқы бағытқа оралу үшін қайтару түймесін басыңыз."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Бөлшекті өзгерту"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage(
                "Түрлендірулерді бастапқы күйге қайтару"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Панорама, масштабтау, бұру"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D түрлендірулер"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Әрекет чиптері — негізгі мазмұнға қатысты әрекетті іске қосатын параметрлер жиынтығы. Олар пайдаланушы интерфейсінде динамикалық және мәнмәтіндік күйде көрсетілуі керек."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Әрекет чипі"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ескертудің диалогтік терезесі пайдаланушыға назар аударуды қажет ететін жағдайларды хабарлайды. Бұл терезенің қосымша атауы және әрекеттер тізімі болады."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Ескерту"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Атауы бар ескерту"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Баннерде маңызды әрі қысқа хабар көрсетіледі және пайдаланушылар орындайтын әрекеттер тізімі (баннерден бас тарту) беріледі. Пайдаланушының әрекетінсіз бас тарту мүмкін емес."),
        "demoBannerSubtitle":
            MessageLookupByLibrary.simpleMessage("Баннерді тізімде көрсету"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Баннер"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Төменгі қолданба жолағы төменгі навигация тартпасына және қалқымалы әрекет мәзірін қоса, төрт әрекетке дейін кіруге мүмкіндік береді."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Навигацияны және әрекеттерді төменде көрсетеді."),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Төменгі қолданба жолағы"),
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
        "demoBottomSheetItem": m12,
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
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Карта — альбом, географиялық орны, тамақ, контакт мәліметтері сияқты ақпаратты көрсетуге пайдаланылатын парақ."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Бұрыштары дөңестелген негізгі карталар"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Карталар"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Тексеру тізімі бар мәзір"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Енгізуді, атрибутты немесе әрекетті көрсететін шағын элементтер"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чиптер"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Таңдау чиптері жиынтықтан бір таңдауды көрсетеді. Оларда сипаттайтын мәтін немесе санаттар болады."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Таңдау чипі"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Қолданбаның бос емес екенін көрсету үшін айналып тұратын Material Design шеңбер түріндегі орындалу индикаторы."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Шеңбер түріндегі орындалу индикаторы"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Демо код"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Буферге көшірілді."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("БАРЛЫҒЫН КӨШІРУ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design түстер палитрасын көрсететін түс және түс үлгілері."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Алдын ала белгіленген барлық түстер"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Түстер"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Мәнмәтіндік мәзір"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Әрекеттер парағы – пайдаланушыға ағымдағы мазмұнға қатысты екі не одан да көп таңдаулар жинағын ұсынатын ескертулердің арнайы стилі. Әрекеттер парағында оның атауы, қосымша хабары және әрекеттер тізімі қамтылуы мүмкін."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Әрекеттер парағы"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Сағат тілі бойынша айналатын iOS стильді әрекет индикаторлары."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS стильді әрекет индикаторлары"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Әрекет индикаторы"),
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
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS стиліндегі навигация жолағы. Навигация жолағы — беттің тақырыбы көрсетілген құралдар тақтасы. Беттің тақырыбы құралдар тақтасының ортасында көрсетіледі."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS стиліндегі навигация жолағы"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Навигация жолағы"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Күн"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Күн және уақыт"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Күндерді, уақытты немесе күн мен уақытты таңдауға қолданылатын iOS стиліндегі таңдағыш."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS стиліндегі күн және уақыт таңдағышы"),
        "demoCupertinoPickerTime":
            MessageLookupByLibrary.simpleMessage("Уақыт"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Таймер"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Таңдағыштар"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS стиліндегі жаңарту үшін төмен сырғытуды басқаратын виджет."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS стиліндегі жаңарту үшін төмен сырғытуды басқару"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Жаңарту үшін төмен сырғыту"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Бірнеше өзара жалғыз опциялар арасында таңдауға пайдаланылады. Сегменттелген басқаруда бір опция талдалса, ондағы басқа опциялар таңдалмайды."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS стильді сегменттелген басқару"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Cегменттелген басқару"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Жүгірткі үздіксіз немесе дискретті мәндер жиынтығын таңдауға пайдаланылады."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS стильді жүгірткі"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Жүгірткі"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Ауыстырғыш жеке параметрдің күйін қосу/өшіру үшін пайдаланылады."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS стильді ауыстырғыш"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS стильді төменгі навигация қойындысы жолағы. Бір қойындысы ашылған бірнеше қойындыларды көрсетеді. Бірінші қойынды әдепкісінше ашық болады."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS стильді төменгі қойынды жолағы"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Қойындылар жолағы"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Мәтін өрістері пайдаланушыға пернетақта немесе экрандағы пернетақта арқылы мәтін енгізуге мүмкіндік береді."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN коды"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS стиліндегі мәтін өрістері"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Мәтін өрістері"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Жүгірткілер жолақта мәндер аралығын көрсетеді, пайдаланушылар олардың ішінен бір мәнді не мәндер аралығын таңдай алады. Жүгірткілерге атау қоюға және бейімдеуге болады."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Арнаулы жүгірткілер"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Деректер кестесінде ақпарат жолдар мен бағандар, яғни тор форматында көрсетіледі. Пайдаланушылар кестедегі ақпаратты, өрнектер мен статистиканы оңай іздеп, табады."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ақпарат берілген жолдар мен бағандар"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Деректер кестесі"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design күн таңдағышы бар диалогтік терезені көрсетеді."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Күн таңдағыш"),
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
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Тор тізімдер біртекті деректерді, әдетте суреттерді көрсетуге ыңғайлы. Тор тізімдегі әр элемент бөлшек деп аталады."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Төменгі деректемесі бар"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Тақырыбы бар"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Тек сурет"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Жол және баған форматы"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Тор тізімдер"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Ақпарат"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Енгізу чиптері нысан туралы жалпы ақпаратты (адам, орын немесе зат) немесе жинақы күйдегі чаттың мәтінін көрсетеді."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Енгізу чипі"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL мекенжайы көрсетілмеді:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Material Design сызықтық орындалу индикаторы сондай-ақ орындалу жолағы деп те аталады."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Сызықтық орындалу индикаторы"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Биіктігі белгіленген бір жол. Әдетте оның мәтіні мен басында және аяғында белгішесі болады."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Қосымша мәтін"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Тізім форматтарын айналдыру"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Тізімдер"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Өшірілген мәзір элементі"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Тексеру тізімі бар мәзірді ашатын элемент"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Мәнмәтіндік мәзірі бар элемент"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Бөлшектелген мәзірді ашатын элемент"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Кәдімгі мәзірді ашатын элемент"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Мәнмәтіндік мәзірдегі бірінші элемент"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Мәнмәтіндік мәзірдегі үшінші элемент"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Мәзірде уақытша беттегі таңдаулар тізімі көрсетіледі. Олар пайдаланушылар түймені, әрекетті немесе басқа басқару элементтерін қолданған кезде шығады."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Төрт"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Сілтеме алу"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Мәзірдегі бірінші элемент"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Мәзірдегі үшінші элемент"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Мәзірдегі екінші элемент"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Бір"),
        "demoMenuPreview":
            MessageLookupByLibrary.simpleMessage("Алдын ала қарау"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Өшіру"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Бөлісу"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Мәзір түймелері және кәдімгі мәзірлер"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Үш"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Mәзір"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Екі"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Бір қатар"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Осы демо нұсқасында қолжетімді опцияларды көру үшін түртіңіз."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Опцияларды көру"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Oпциялар"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Контурлы түймелер күңгірт болады және оларды басқан кезде көтеріледі. Олар көбіне көтеріңкі түймелермен жұптасып, балама және қосымша әрекетті көрсетеді."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Контурлы түйме"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("ТАҢДАҒЫШТЫ КӨРСЕТУ"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Күн мен уақытты таңдау"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Таңдағыштар"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Сызықтық, шеңбер, анықталмаған"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Орындалу индикаторлары"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Көтеріңкі түймелер тегіс форматтағы мазмұндарға өң қосады. Олар мазмұн тығыз не сирек орналасқан кезде функцияларды ерекшелеу үшін қолданылады."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Көтеріңкі түйме"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Жүгірткілер тақтадағы мәндер аралығын көрсетеді. Олардың мәндер аралығын білдіретін белгішелері жолақтың екі шетінде берілуі мүмкін. Олар арқылы дыбыс деңгейі мен жарықтықты реттеуге және сурет сүзгілерін қолдануға болады."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Аралық жүгірткілері"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Бөлшектелген мәзір"),
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
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Кәдімгі мәзір"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Үздіксіз"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Арнаулы тақырыпты үздіксіз аралық жүгірткісі"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Үздіксіз, сандық мәні өңделеді"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Жүгірткілер тақтадағы мәндер аралығын көрсетеді, пайдаланушылар олардың біреуін таңдай алады. Олар арқылы дыбыс деңгейі мен жарықтықты реттеуге және сурет сүзгілерін қолдануға болады."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Дискреттік"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Арнаулы тақырыпты дискреттік жүгірткі"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Өңделетін сандық мән"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Сырғыту арқылы мән таңдауға арналған виджеттер"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Жүгірткілер"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Снэкбар әрекеті түймесін бастыңыз."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ӘРЕКЕТ"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("СНЭКБАРДЫ КӨРСЕТУ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Снэкбарлар пайдаланушыларға қолданбаның орындаған немесе орындайтын процесі туралы хабарлайды. Олар экранның төменгі жағынан уақытша көрсетіледі. Олар пайдаланушыларға кедергі келтірмейді және олардың қатысуынсыз өшеді."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Снэкбарлар экранның төменгі жағында хабарларды көрсетеді."),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Бұл — снэкбар."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Снэкбарлар"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Қойындылар түрлі экрандардағы, деректер жинағындағы және тағы басқа өзара қатынастардағы мазмұнды реттейді."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Айналдырылмайды"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Айналдыру"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Жеке айналмалы көріністері бар қойындылар"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Қойындылар"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Мәтін өрістері арқылы пайдаланушы интерфейсіне мәтін енгізуге болады. Әдетте олар үлгілер мен диалогтік терезелерге шығады."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Электрондық пошта"),
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
        "demoTextFieldNameHasPhoneNumber": m18,
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
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design уақыт таңдағышы бар диалогтік терезені көрсетеді."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Уақыт таңдағыш"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ауыстырып қосу түймелері ұқсас опцияларды топтастыруға пайдаланылады. Ұқсас ауыстырып қосу түймелерін белгілеу үшін топ ортақ контейнерде орналасқан болу керек."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ауыстырып қосу түймелері"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Қалқыма сөзкөмектерде түйменің функциясы немесе басқа пайдаланушы интерфейсі әрекеті туралы ақпарат беріледі. Пайдаланушы элементке тінтуір меңзерін апарса, ерекшелесе немесе оны ұзақ басып тұрса, қалқыма сөзкөмектер ақпараттық мәтін көрсетеді."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Қалқыма сөзкөмекті шығару үшін ұзақ басыңыз немесе тінтуір меңзерін апарыңыз."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ұзақ басқанда немесе үстіне апарғанда шығатын қысқа хабар."),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Қалқыма сөзкөмектер"),
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
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Сақтық есептік жазбасын реттеу"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ДИАЛОГТІК ТЕРЕЗЕНІ КӨРСЕТУ"),
        "dismiss": MessageLookupByLibrary.simpleMessage("ЖАБУ"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Мазмұнға бағытталған жаңалықтар қолданбасы"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Жасыл армияның ішкі реформалары"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Ауылшаруашылығында ара тапшы"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Футуристік маталар шығару үшін дизайнерлер жаңа технология пайдаланады"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Феминистер партизандық соғысқа шығады"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("Бензиннің болашағы"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "Денсаулық сақтау саласындағы үлкен реформа"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Акция курсының тоқырауы салдарынан инвесторлар ақшаға бет бұруда"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Соғыс кезіндегі америкалықтардың екіге айырылған өмірі"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Соңғы жаңа нұсқалар"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Бизнес"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Мәдениет"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Басты бет"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Саясат"),
        "fortnightlyMenuScience": MessageLookupByLibrary.simpleMessage("Ғылым"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Спорт"),
        "fortnightlyMenuTech": MessageLookupByLibrary.simpleMessage("Техника"),
        "fortnightlyMenuTravel": MessageLookupByLibrary.simpleMessage("Саяхат"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("АҚШ"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("Әлем"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("GreenArmy"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("HealthcareRevolution"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Reform"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Акциялар"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("TechDesign"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("СТИЛЬДЕР ЖӘНЕ ТАҒЫ БАСҚА"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Санаттар"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерея"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Жағажай"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Қоладан жасалған заттар"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Ченнай"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Четтинад"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Балықшы"),
        "placeFlowerMarket": MessageLookupByLibrary.simpleMessage("Гүл базары"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Түскі ас әзірлеу"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Базар"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Пудучерри"),
        "placeSaltFarm":
            MessageLookupByLibrary.simpleMessage("Тұз шаруашылығы"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Скутерлер"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("Жібек жасаушы"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Танджавур"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Брахадисвара"),
        "rallyAccountAmount": m20,
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
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Қарыз сома"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Төленген сома"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Жалпы сома"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Шоттар"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Төленетін сома:"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Киім"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кофеханалар"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Азық-түлік"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Мейрамханалар"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Қалған сома"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Жұмсалған сома"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Жалпы бюджет"),
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
        "shrineCartItemCount": m28,
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
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
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
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Себетке қосу"),
        "shrineScreenReaderRemoveProductButton": m32,
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
        "signIn": MessageLookupByLibrary.simpleMessage("КІРУ"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Адаптивті бастау үлгісі"),
        "starterAppDrawerItem": m33,
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
