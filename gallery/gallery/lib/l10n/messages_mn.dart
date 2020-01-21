// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a mn locale. All the
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
  String get localeName => 'mn';

  static m0(value) => "Энэ аппын эх кодыг харахын тулд ${value}-д зочилно уу.";

  static m1(title) => "Табын ${title} орлуулагч";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Ресторан алга', one: '1 ресторан', other: '${totalRestaurants} ресторан')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Шууд', one: '1 зогсолт', other: '${numberOfStops} зогсолт')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Боломжтой үл хөдлөх хөрөнгө алга', one: '1 боломжтой үл хөдлөх хөрөнгө байна', other: '${totalProperties} боломжтой үл хөдлөх хөрөнгө байна')}";

  static m5(value) => "Зүйл ${value}";

  static m6(error) => "Түр санах ойд хуулж чадсанүй: ${error}";

  static m7(value) => "Тасралтгүй: {утга}";

  static m8(value) => "Салангид: {утга}";

  static m9(value) => "Шалгасан: {утга}";

  static m10(value) => "Сонгосон: {утга}";

  static m11(name, phoneNumber) => "${name}-н утасны дугаар ${phoneNumber}";

  static m12(value) => "Та дараахыг сонгосон: \"${value}\"";

  static m13(accountName, accountNumber, amount) =>
      "${amount}-тай ${accountName}-н ${accountNumber} дугаартай данс.";

  static m14(amount) => "Та энэ сар ATM-н хураамжид ${amount} зарцуулсан байна";

  static m15(percent) =>
      "Сайн ажиллалаа! Таны чекийн данс өнгөрсөн сарынхаас ${percent}-р илүү байна.";

  static m16(percent) =>
      "Сануулга: Tа энэ сарын худалдан авалтынхаа төсвийн ${percent}-г ашигласан байна.";

  static m17(amount) => "Та энэ сар ресторанд ${amount} зарцуулсан байна.";

  static m18(count) =>
      "${Intl.plural(count, one: 'Татварын боломжит хасалтаа нэмэгдүүлээрэй! 1 оноогоогүй гүйлгээнд ангилал оноогоорой.', other: 'Татварын боломжит хасалтаа нэмэгдүүлээрэй! ${count} оноогоогүй гүйлгээнд ангилал оноогоорой.')}";

  static m19(billName, date, amount) =>
      "${billName}-н ${amount}-н тооцоог ${date}-с өмнө хийх ёстой.";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} төсвийн ${amountTotal}-с ${amountUsed}-г ашигласан, ${amountLeft} үлдсэн";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'ЗҮЙЛС АЛГА', one: '1 ЗҮЙЛ', other: '${quantity} ЗҮЙЛ')}";

  static m22(price) => "x ${price}";

  static m23(quantity) => "Тоо хэмжээ: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'Худалдан авах сагс, зүйлс алга', one: 'Худалдан авах сагс, 1 зүйл', other: 'Худалдан авах сагс, ${quantity} зүйл')}";

  static m25(product) => "Хасах ${product}";

  static m26(value) => "Зүйл ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "GitHub агуулахад хадгалсан Flutter-н дээж"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Галерей руу буцах"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Хэрчлээс"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Үйлдлийн хөвөгч товчлуурын байршил"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Суурилуулсан - төвд"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Суурилуулсан - төгсгөлд"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Хөвөгч - төвд"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Хөвөгч - төгсгөлд"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Данс"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Сэрүүлэг"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Календарь"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Камер"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Сэтгэгдлүүд"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ТОВЧЛУУР"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Үүсгэх"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Дугуй унах"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Цахилгаан шат"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Ил зуух"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Том"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Дундaж"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Жижиг"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("Гэрэл асаах"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Угаалгын машин"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("УЛБАР ШАР"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ЦЭНХЭР"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ХӨХ СААРАЛ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("БОР"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("НОГООН ЦЭНХЭР"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ГҮН УЛБАР ШАР"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ГҮН НИЛ ЯГААН"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("НОГООН"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("СААРАЛ"),
        "colorsIndigo":
            MessageLookupByLibrary.simpleMessage("ХӨХӨВТӨР НИЛ ЯГААН"),
        "colorsLightBlue":
            MessageLookupByLibrary.simpleMessage("ЦАЙВАР ЦЭНХЭР"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("ЦАЙВАР НОГООН"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("НИМБЭГНИЙ НОГООН"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("УЛБАР ШАР"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ЯГААН"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("НИЛ ЯГААН"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("УЛААН"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("УСАН ЦЭНХЭР"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ШАР"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("Хувийн болгосон аяллын апп"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ЗООГЛОХ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Итали, Неаполь"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Модоор галласан зуухан дахь пицца"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Даллас"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Португал, Лисбон"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Асар том пастрами сэндвич барьж буй эмэгтэй"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хоолны сандалтай хоосон уушийн газар"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Аргентин, Кордова"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Бургер"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Портланд"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Солонгос тако"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Франц, Парис"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Шоколадтай амттан"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Өмнөд Солонгос, Сөүл"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Уран чамин рестораны суух хэсэг"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Сиэтл"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Сам хорхойтой хоол"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Нашвилл"),
        "craneEat7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Талх нарийн боовны газрын хаалга"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн улс, Атланта"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Хавчны таваг"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Испани, Мадрид"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Гурилан бүтээгдэхүүнүүд өрсөн кафены лангуу"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Рестораныг очих газраар нь судлах"),
        "craneFly": MessageLookupByLibrary.simpleMessage("НИСЭХ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Аспен"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мөнх ногоон модтой, цастай байгаль дахь модон байшин"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Биг Сур"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Египет, Каир"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Нар жаргах үеийн Аль-Азхар сүмийн цамхгууд"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Португал, Лисбон"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Далай дахь тоосгон гэрэлт цамхаг"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Америкийн Нэгдсэн Улс, Напа"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Далдуу модтой усан сан"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Индонез, Бали"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Далдуу модтой далайн эргийн усан сан"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Талбай дээрх майхан"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Балба, Хумбу хөндий"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Цастай уулын урдах залбирлын тугууд"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Перу, Мачу Пикчу"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Мачу Пикчу хэрэм"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Мальдив, Мале"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Усан дээрх бунгало"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Швейцар, Вицнау"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Уулын урдах нуурын эргийн зочид буудал"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Мексик улс, Мексик хот"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Palacio de Bellas Artes-н агаараас харагдах байдал"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Рашмор"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Рашмор уул"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Сингапур"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree төгөл"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Куба, Хавана"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хуучны цэнхэр өнгийн машин налж буй эр"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Нислэгийг очих газраар нь судлах"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Огноо сонгох"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Огноо сонгох"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Очих газар сонгох"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("Зоог барих хүний тоо"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Байршил сонгох"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Эхлэх цэг сонгох"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Цаг сонгох"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Аялагчид"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ХОНОГЛОХ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Мальдив, Мале"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Усан дээрх бунгало"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Аспен"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Египет, Каир"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Нар жаргах үеийн Аль-Азхар сүмийн цамхгууд"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Тайвань, Тайбэй"),
        "craneSleep11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Тайбэй 101 тэнгэр баганадсан барилга"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Мөнх ногоон модтой, цастай байгаль дахь модон байшин"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Перу, Мачу Пикчу"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Мачу Пикчу хэрэм"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Куба, Хавана"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Хуучны цэнхэр өнгийн машин налж буй эр"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Швейцар, Вицнау"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Уулын урдах нуурын эргийн зочид буудал"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Америкийн Нэгдсэн Улс, Биг Сур"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Талбай дээрх майхан"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Америкийн Нэгдсэн Улс, Напа"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Далдуу модтой усан сан"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Португал, Порту"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Riberia Square дахь өнгөлөг орон сууцууд"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Мексик, Тулум"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Далайн эрэг дээрх хадан цохионы Майягийн балгас туурь"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Португал, Лисбон"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Далай дахь тоосгон гэрэлт цамхаг"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Үл хөдлөх хөрөнгийг очих газраар нь судлах"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Зөвшөөрөх"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Алимны бялуу"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Цуцлах"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Бяслагтай бялуу"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Шоколадтай брауни"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Доорх жагсаалтаас дуртай амттаныхаа төрлийг сонгоно уу. Таны сонголтыг танай бүсэд байгаа санал болгож буй хоолны газруудын жагсаалтыг өөрчлөхөд ашиглах болно."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Болих"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Зөвшөөрөхгүй"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Дуртай амттанаа сонгоно уу"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Таны одоогийн байршил газрын зураг дээр үзэгдэх бөгөөд үүнийг чиглэл, ойролцоох хайлтын илэрц болон очих хугацааг тооцоолоход ашиглана."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Та \"Газрын зураг\" аппыг ашиглах явцад үүнд таны байршилд хандахыг зөвшөөрөх үү?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Тирамисү"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Товчлуур"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Арын дэвсгэртэй"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Сэрэмжлүүлэг харуулах"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Чат"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Нүүр хуудас"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Профайл"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Үйлдлийн чип нь үндсэн контенттой хамааралтай үйлдлийг өдөөдөг сонголтын багц юм. Үйлдлийн чип нь UI-д динамикаар болон хам сэдэвтэй уялдсан байдлаар гарч ирэх ёстой."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Үйлдлийн чип"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Сэрэмжлүүлгийн харилцах цонх нь хэрэглэгчид батламж шаардлагатай нөхцөл байдлын талаар мэдээлдэг. Сэрэмжлүүлгийн харилцах цонхонд сонгох боломжтой гарчиг болон үйлдлийн жагсаалт байдаг."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Сэрэмжлүүлэг"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Гарчигтай сэрэмжлүүлэг"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Доод талд байрлах аппын самбар нь доод талын навигацийн шургуулга болон үйлдлийн хөвөгч товчлуурыг оролцуулаад дөрөв хүртэлх үйлдэлд хандах боломжийг олгодог."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Навигац болон үйлдлийг доод талд үзүүлдэг"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Доод талд байрлах аппын самбар"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Доод навигацийн самбар нь дэлгэцийн доод хэсэгт 3-5 очих газар үзүүлдэг. Очих газар бүрийг дүрс тэмдэг болон нэмэлт текстэн шошгоор илэрхийлдэг. Доод навигацийн дүрс тэмдэг дээр товшсон үед хэрэглэгчийг тухайн дүрс тэмдэгтэй холбоотой дээд түвшний навигацийн очих газарт аваачна."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Тогтмол шошго"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Сонгосон шошго"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Харилцан бүдгэрэх харагдах байдалтай доод навигаци"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Доод навигаци"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Нэмэх"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ДООД ХҮСНЭГТИЙГ ХАРУУЛАХ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Толгой хэсэг"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Зайлшгүй харилцах доод хүснэгт нь цэс эсвэл харилцах цонхны өөр хувилбар бөгөөд хэрэглэгчийг аппын бусад хэсэгтэй харилцахаас сэргийлдэг."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Зайлшгүй харилцах доод хүснэгт"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Тогтмол доод хүснэгт нь аппын үндсэн контентыг дэмждэг мэдээллийг харуулдаг. Тогтмол доод хүснэгт нь хэрэглэгчийг аппын бусад хэсэгтэй харилцаж байхад ч харагдсаар байдаг."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Тогтмол доод хүснэгт"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Тогтмол болон зайлшгүй харилцах доод хүснэгт"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Доод хүснэгт"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Текстийн талбар"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Хавтгай, товгор, гадна хүрээ болон бусад"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Товчлуур"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Шалгах хуудасны цэс"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Оруулга, атрибут эсвэл үйлдлийг илэрхийлдэг товч тодорхой элемент"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Чипүүд"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Сонголтын чип нь багцаас нэг сонголтыг илэрхийлдэг. Сонголтын чип нь контенттой холбоотой тайлбарласан текст эсвэл ангиллыг агуулдаг."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Сонголтын чип"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Материалын загварын эргэлтийн үйл явцын заалт нь аппликэйшн ажиллаж байгаа гэдгийг зааж эргэлддэг."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Эргэлтийн үйл явцын заалт"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Кодын жишээ"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Түр санах ойд хуулсан."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("БҮГДИЙГ ХУУЛАХ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Материалын загварын өнгөний нийлүүрийг төлөөлдөг өнгө болон өнгөний цуглуулгын хэмжигдэхүүн."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Урьдчилан тодорхойлсон бүх өнгө"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Өнгө"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Хам сэдэв цэс"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Үйлдлийн хүснэгт нь хэрэглэгчид одоогийн хам сэдэвтэй холбоотой хоёр эсвэл түүнээс дээш сонголтын багцыг харуулах тодорхой загварын сэрэмжлүүлэг юм. Үйлдлийн хүснэгт нь гарчиг, нэмэлт зурвас болон үйлдлийн жагсаалттай байж болно."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Үйлдлийн хүснэгт"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Цагийн зүүний дагуу эргэдэг iOS загварын үйл ажиллагааны заалт."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS загварын үйл ажиллагааны заалт"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Үйл ажиллагааны заалт"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Зөвхөн сэрэмжлүүлгийн товчлуур"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Товчлууртай сэрэмжлүүлэг"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Сэрэмжлүүлгийн харилцах цонх нь хэрэглэгчид батламж шаардлагатай нөхцөл байдлын талаар мэдээлдэг. Сэрэмжлүүлгийн харилцах цонх нь сонгох боломжтой гарчиг, контент болон үйлдлийн жагсаалттай байдаг. Гарчиг контентын дээр харагдах бөгөөд үйлдлүүд нь контентын доор харагдана."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Сэрэмжлүүлэг"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Гарчигтай сэрэмжлүүлэг"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS загварын сэрэмжлүүлгийн харилцах цонх"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Сэрэмжлүүлэг"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS загварын товчлуур. Үүнийг текстэд болон/эсвэл хүрэх үед гадагшаа болон дотогшоо уусдаг дүрс тэмдэгт ашиглана. Сонгох боломжтой арын дэвсгэртэй байж магадгүй."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS загварын товчлуурууд"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Товчлуур"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS загварын навигацийн самбар. Навигацийн самбар нь хамгийн багадаа хуудасны гарчгаас бүрддэг самбар бөгөөд энэ нь самбарын дунд хэсэгт байдаг."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS загварын навигацийн самбар"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Навигацийн самбар"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS загварын татаж сэргээдэг хяналтыг хэрэгжүүлдэг жижиг хэрэгсэл"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS загварын татаж сэргээдэг хяналт"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Татаж сэргээдэг"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Хэд хэдэн харилцан адилгүй сонголтоос сонгоход ашигладаг. Хэсэгчилсэн хяналтын нэг сонголтыг сонгосон үед үүний бусад сонголтыг сонгохоо болино."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS загварын хэсэгчилсэн хяналт"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Хэсэгчилсэн хяналт"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Утгын тасралтгүй эсвэл салангид олонлогийн аль нэгээс сонгохын тулд слайдерыг ашиглах боломжтой."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS загварын слайдер"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Слайдер"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Дан тохиргооны төлөвийг асаах/унтраахын тулд сэлгүүрийг ашигладаг."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS загварын сэлгүүр"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS загварын доод навигацийн табын самбар. Олон табыг үзүүлэх бөгөөд өгөгдмөл тохиргоогоор эхнийх нь идэвхтэй байдаг."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS загварын доод табын самбар"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Табын самбар"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Слайдер нь самбар дагуух утгын мужийг илэрхийлдэг бөгөөд хэрэглэгчид тэндээс дан утга эсвэл утгын мужийг сонгож болно. Слайдерыг загвартай болгох, өөрчлөх боломжтой."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Захиалгат слайдер"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Энгийн, сэрэмжлүүлэг болон бүтэн дэлгэц"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Харилцах цонх"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API-н баримтжуулалт"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Шүүлтүүрийн чип нь шошго эсвэл тайлбарласан үгийг контентыг шүүх арга болгон ашигладаг."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Шүүлтүүрийн чип"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Хавтгай товчлуур дээр дарахад бэх цацарч үзэгдэх хэдий ч өргөгдөхгүй. Хавтгай товчлуурыг самбар дээр, харилцах цонхонд болон мөрөнд доторх зайтайгаар ашиглана уу"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Хавтгай товчлуур"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Үйлдлийн хөвөгч товчлуур нь аппын үндсэн үйлдлийг дэмжих зорилгоор контентын дээр гүйх тойрог хэлбэрийн дүрс тэмдэг бүхий товчлуур юм."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Үйлдлийн хөвөгч товчлуур"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Бүтэн дэлгэцийн харилцах цонхны шинж чанар нь тухайн ирж буй хуудас бүтэн дэлгэцийн зайлшгүй харилцах цонх мөн эсэхийг тодорхойлдог"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Бүтэн дэлгэц"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Бүтэн дэлгэц"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Торон жагсаалт нь ихэвчлэн зураг зэрэг жигд тархацтай өгөгдлийг үзүүлэхэд хамгийн тохиромжтой. Торон жагсаалтын зүйл бүрийг дөрвөлж гэж нэрлэдэг."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Хөл хэсэгтэй"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Толгой хэсэгтэй"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Зөвхөн зураг"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Мөр болон баганын байршил"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Торон жагсаалт"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Мэдээлэл"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Оруулгын чип нь нэгж (хүн, газар эсвэл зүйл) эсвэл харилцан ярианы текст зэрэг цогц мэдээллийг товч тодорхой хэлбэрээр илэрхийлдэг."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Оруулгын чип"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL-г үзүүлж чадсангүй:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Материалын загварын шугаман үйл явцын заалт нь мөн явцын заалт гэж танигдсан."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Шугаман үйл явцын заалт"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Тогтмол өндөртэй ганц мөр нь ихэвчлэн зарим текст болон эхлэх эсвэл төгсгөх дүрс тэмдэг агуулдаг."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Хоёр дахь мөрний текст"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Жагсаалтын бүдүүвчийг гүйлгэх"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Жагсаалтууд"),
        "demoMenuADisabledMenuItem": MessageLookupByLibrary.simpleMessage(
            "Цэсийн идэвхгүй болгосон зүйл"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("Шалгах хуудасны цэстэй зүйл"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("Хам сэдэв цэстэй зүйл"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("Хэсэгчилсэн цэстэй зүйл"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Энгийн цэстэй зүйл"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Хадам сэдэв цэсийн нэгдүгээр зүйл"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Хадам сэдэв цэсийн гуравдугаар зүйл"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Цэс нь түр зуурын гадаргуу дээр сонголтын жагсаалтыг үзүүлдэг. Энэ нь хэрэглэгчид товчлуур, үйлдэл эсвэл бусад хяналттай харилцах үед харагддаг."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Дөрөв"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Холбоос авах"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Цэсийн нэгдүгээр зүйл"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Цэсийн гуравдугаар зүйл"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Цэсийн хоёрдугаар зүйл"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Нэг"),
        "demoMenuPreview":
            MessageLookupByLibrary.simpleMessage("Урьдчилан үзэх"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Хасах"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Хуваалцах"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Цэсийн товчлуур болон энгийн цэс"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Гурав"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Цэс"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Хоёр"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Нэг шугам"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Энэ демо хувилбарын боломжит сонголтуудыг харахын тулд энд товшино уу."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Сонголтуудыг харах"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Сонголт"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Гадна хүрээтэй товчлуурыг дарсан үед тодорч, дээшилдэг. Нэмэлт сонголт болон хоёрдогч үйлдлийг заахын тулд тэдгээрийг ихэвчлэн товгор товчлууртай хослуулдаг."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Гадна хүрээтэй товчлуур"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Шугаман, эргэлтийн, тогтоогоогүй"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Үйл явцын заалт"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Товгор товчлуур нь ихэвчлэн хавтгай бүдүүвчид хэмжээс нэмдэг. Тэд шигүү эсвэл өргөн зайтай функцийг онцолдог."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Товгор товчлуур"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Слайдер нь самбар дагуух утгын мужийг илэрхийлдэг. Энэ нь самбарын төгсгөлийн аль алинд утгын мужийг илэрхийлдэг дүрс тэмдэгтэй байх боломжтой. Энэ нь дууны түвшин, гэрэлтүүлэг зэрэг тохиргоог тохируулах эсвэл зургийн шүүлтүүрийг хэрэгжүүлэхэд яг таг тохирдог."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Мужийн слайдер"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Хэсэглэсэн цэс"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Checkboxes нь хэрэглэгчид багцаас олон сонголт сонгохыг зөвшөөрдөг. Энгийн checkbox-н утга нь үнэн эсвэл худал, tristate checkbox-н утга нь мөн тэг байж болно."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Checkbox"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Радио товчлуур нь хэрэглэгчид багцаас нэг сонголт сонгохийг зөвшөөрдөг. Хэрэв та хэрэглэгч бүх боломжит сонголтыг зэрэгцүүлэн харах шаардлагатай гэж бодож байвал онцгой сонголтод зориулсан радио товчлуурыг ашиглана уу."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Радио"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Checkboxes, радио товчлуур болон сэлгүүр"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Асаах/унтраах сэлгүүр нь дан тохиргооны сонголтын төлөвийг асаана/унтраана. Сэлгэх хяналтын сонголт Болон үүний байгаа төлөвийг харгалзах мөрийн шошгоос тодорхой болгох шаардлагатай."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Сэлгэх"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Хяналтын сонголт"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Энгийн харилцах цонх нь хэрэглэгчид хэд хэдэн сонголтыг санал болгодог. Энгийн харилцах цонх нь сонголтын дээр үзэгдэх сонгох боломжтой гарчигтай байна."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Энгийн"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Энгийн цэс"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Тасралтгүй"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Захиалгат загвар болон тасралтгүй утгатай мужийн слайдер"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Засаж болдог тоон утгатай тасралтгүй"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Слайдер нь самбар дагуух утгын мужийг илэрхийлдэг бөгөөд хэрэглэгчид тэндээс дан утгыг сонгож болно. Энэ нь дууны түвшин, гэрэлтүүлэг зэрэг тохиргоог тохируулах эсвэл зургийн шүүлтүүрийг хэрэгжүүлэхэд яг таг тохирдог."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Салангид"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Захиалгат загвар болон салангид утгатай слайдер"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Засаж болдог тоон утга"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Шудрах замаар утга сонгоход зориулсан жижиг хэрэгсэл"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Слайдер"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Та snackbar-н үйлдлийг дарлаа."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ҮЙЛДЭЛ"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("SNACKBAR-Г ХАРУУЛАХ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Snackbar нь аппын гүйцэтгэсэн эсвэл гүйцэтгэх процессын тухай хэрэглэгчдэд мэдээлдэг. Энэ нь дэлгэцийн доод талд түр хугацаанд харагддаг. Энэ нь хэрэглэгчийн туршлагад саад болох ёсгүй бөгөөд алга болохын тулд хэрэглэгчээс оролт шаарддаггүй."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Snackbar нь дэлгэцийн доод талд зурвасыг харуулдаг"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Энэ бол snackbar."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Snackbar"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Табууд нь өөр дэлгэцүүд, өгөгдлийн багц болон бусад харилцан үйлдэл хооронд контентыг цэгцэлдэг."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Чөлөөтэй гүйлгэх харагдацтай табууд"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Табууд"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Текстийн талбар нь хэрэглэгчид UI-д текст оруулах боломжийг олгодог. Эдгээр нь ихэвчлэн маягт болон харилцах цонхонд гарч ирдэг."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Имэйл"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Нууц үгээ оруулна уу."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - АНУ-ын утасны дугаар оруулна уу."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Илгээхээсээ өмнө улаанаар тэмдэглэсэн алдаануудыг засна уу."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Нууц үгийг нуух"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Энэ нь ердөө демо тул үүнийг товч байлгаарай."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Амьдралын түүх"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Нэр*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Нэр оруулах шаардлагатай."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "8-с дээшгүй тэмдэгт оруулна."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Зөвхөн цагаан толгойн үсэг оруулна уу."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Нууц үг*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Нууц үг таарахгүй байна"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Утасны дугаар*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* заавал бөглөх хэсгийг илэрхийлнэ"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Нууц үгийг дахин оруулна уу*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Цалин"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Нууц үгийг харуулах"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ИЛГЭЭХ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Засах боломжтой текст болон дугаарын нэг мөр"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Бидэнд өөрийнхөө талаар хэлнэ үү (ж.нь, та ямар ажил хийдэг эсвэл та ямар хоббитой талаараа бичнэ үү)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Текстийн талбар"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("Ам.доллар"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "Таныг хүмүүс хэн гэж дууддаг вэ?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Бид тантай ямар дугаараар холбогдох боломжтой вэ?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Таны имэйл хаяг"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Асаах товчийг холбоотой сонголтыг бүлэглэхэд ашиглаж болно. Асаах товчтой холбоотой бүлгийг онцлохын тулд тухайн бүлэг нийтлэг контэйнер хуваалцсан байх шаардлагатай"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Асаах товч"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Зөвлөмж нь товчлуурын функц эсвэл хэрэглэгчийн бусад харилцан үйлдлийн талаар тайлбарлахад тусалдаг текстийн шошгыг үзүүлдэг. Зөвлөмж нь хэрэглэгчид элемент дээр зөөх, сонгох эсвэл удаан дарах үед мэдээллийн текстийг үзүүлдэг."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Зөвлөмжийг үзүүлэхийн тулд удаан дарах эсвэл зөөнө үү."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Удаан дарах эсвэл зөөхөд үзүүлдэг богино зурвас"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Зөвлөмж"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Хоёр шугам"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Материалын загварт байх төрөл бүрийн үсгийн урлагийн загварын тодорхойлолт."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Бүх урьдчилан тодорхойлсон текстийн загвар"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Үсгийн урлаг"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Бүртгэл нэмэх"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ЗӨВШӨӨРӨХ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ЦУЦЛАХ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ЗӨВШӨӨРӨХГҮЙ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("БОЛИХ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Нооргийг устгах уу?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Бүтэн дэлгэцийн харилцах цонхны демо"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ХАДГАЛАХ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Бүтэн дэлгэцийн харилцах цонх"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google-д аппуудад байршлыг тодорхойлоход туслахыг зөвшөөрнө үү. Ингэснээр ямар ч апп ажиллаагүй байсан ч байршлын өгөгдлийг үл мэдэгдэх байдлаар Google-д илгээнэ."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google-н байршлын үйлчилгээг ашиглах уу?"),
        "dialogSelectedOption": m12,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Нөөц бүртгэл тохируулна уу"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ХАРИЛЦАХ ЦОНХЫГ ХАРУУЛАХ"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ЛАВЛАХ ЗАГВАР, МЕДИА"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("Ангилал"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Галерей"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Далайн эрэг"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Хүрэл эдлэлийн урлан"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Ченнай"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Четтинад"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Загасчин"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Цэцгийн зах"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Үдийн хоолны бэлтгэл"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Маркет"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Пондичерри"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Давсны ферм"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Скүтер"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("Торго нэхэгч"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Танжор"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Танжавүр сүм"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Автомашины хадгаламж"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Чекийн"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Гэрийн хадгаламж"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Амралт"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Данс эзэмшигч"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Жилийн өгөөжийн хувь"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Өнгөрсөн жил төлсөн хүү"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Хүүгийн хэмжээ"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Оны эхнээс өнөөдрийг хүртэлх хүү"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Дараагийн мэдэгдэл"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Нийт"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Данснууд"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Сэрэмжлүүлэг"),
        "rallyAlertsMessageATMFees": m14,
        "rallyAlertsMessageCheckingAccount": m15,
        "rallyAlertsMessageHeadsUpShopping": m16,
        "rallyAlertsMessageSpentOnRestaurants": m17,
        "rallyAlertsMessageUnassignedTransactions": m18,
        "rallyBillAmount": m19,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Тооцоо"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Эцсийн хугацаа"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Хувцас"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Кофе шопууд"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Хүнсний бүтээгдэхүүн"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ресторан"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Үлдсэн"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Төсөв"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Хувийн санхүүгийн апп"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ҮЛДСЭН"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("НЭВТРЭХ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Нэвтрэх"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally-д нэвтрэх"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Та бүртгэлгүй юу?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Нууц үг"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Намайг сануул"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("БҮРТГҮҮЛЭХ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Хэрэглэгчийн нэр"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("БҮГДИЙГ ХАРАХ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Бүх бүртгэлийг харах"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Бүх тооцоог харах"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Бүх төсвийг харах"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATM хайх"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Тусламж"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Бүртгэл удирдах"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Мэдэгдэл"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Цаасгүй тохиргоо"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Нууц код болон Хүрэх ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Хувийн мэдээлэл"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Гарах"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Татварын документ"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ДАНСНУУД"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ТООЦОО"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ТӨСӨВ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ТОЙМ"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ТОХИРГОО"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery-н тухай"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Лондон дахь TOASTER зохион бүтээсэн"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Тохиргоог хаах"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Тохиргоо"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Бараан"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Санал хүсэлт илгээх"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Цайвар"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Хэл болон улсын код"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Андройд"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Платформын механик"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Удаашруулсан"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Систем"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Текстийн чиглэл"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Зүүнээс баруун"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Хэл болон улсын код дээр суурилсан"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Баруунаас зүүн"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Текст томруулах"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Асар том"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("Том"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Энгийн"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Жижиг"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Загвар"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Тохиргоо"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ЦУЦЛАХ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("САГСЫГ ЦЭВЭРЛЭХ"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("САГС"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Тээвэрлэлт:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Нийлбэр дүн:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Татвар:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("НИЙТ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ГОЁЛ ЧИМЭГЛЭЛ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("БҮХ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ХУВЦАС"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("ГЭРИЙН"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Хувцас загварын жижиглэн борлуулах апп"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Нууц үг"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Хэрэглэгчийн нэр"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ГАРАХ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("ЦЭС"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ДАРААХ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Цэнхэр чулуун аяга"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Долгиолсон захтай ягаан цамц"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Тааран даавуун амны алчуур"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Тааран даавуун цамц"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Сонгодог цагаан зах"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Шаврын өнгөтэй цамц"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Зэс утсан тавиур"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Нарийн судалтай футболк"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Гарден странд"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Гэтсби малгай"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Жентри хүрэм"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Алтан шаргал оруулгатай гурван хос ширээ"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Шаргал өнгийн ороолт"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Саарал сул мак"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs цайны иж бүрдэл"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Гал тогооны куватро"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Цэнхэр өмд"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Нимгэн урт цамц"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Квадрат ширээ"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Борооны усны тосгуур"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Рамона кроссовер"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Нимгэн даашинз"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Сүлжмэл цамц"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Эргүүлдэг мөртэй футболк"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Нэг мөртэй цүнх"),
        "shrineProductSootheCeramicSet": MessageLookupByLibrary.simpleMessage(
            "Тайвшруулах керамик иж бүрдэл"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Стелла нарны шил"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut-н ээмэг"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Шүүслэг ургамлын сав"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Нарны хамгаалалттай даашинз"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Бэлтгэлийн цамц"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond-н даавуун тор"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Түрийгээрээ судалтай оймс"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Вальтер хэнли (цагаан)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Түлхүүрийн сүлжмэл бүл"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Босоо судалтай цагаан цамц"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Уитни бүс"),
        "shrineScreenReaderCart": m24,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Сагсанд нэмэх"),
        "shrineScreenReaderRemoveProductButton": m25,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Сагсыг хаах"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Цэсийг хаах"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Цэсийг нээх"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Зүйлийг хасах"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Хайх"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Тохиргоо"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Хариу үйлдэл сайтай гарааны бүдүүвч"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Үндсэн хэсэг"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ТОВЧЛУУР"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Толгой гарчиг"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Дэд гарчиг"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Гарчиг"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("Гарааны апп"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Нэмэх"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Дуртай"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Хайлт"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Хуваалцах")
      };
}
