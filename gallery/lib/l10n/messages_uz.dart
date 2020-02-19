// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a uz locale. All the
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
  String get localeName => 'uz';

  static m0(value) =>
      "Bu ilovaning manba kodini koʻrish uchun bu yerga kiring: ${value}.";

  static m1(title) => "${title} sahifasi uchun pleysholder";

  static m2(destinationName) => "Ochish: ${destinationName}";

  static m3(destinationName) => "Ulashish: ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Restoran topilmadi', one: '1 ta restoran', other: '${totalRestaurants} ta restoran')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Uzluksiz', one: '1 ta almashinuv', other: '${numberOfStops} ta almashinuv')}";

  static m7(hours) =>
      "${Intl.plural(hours, one: '1 soat', other: '${hours} soat')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 daqiqa', other: '${minutes} daqiqa')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Mavjud uy-joylar topilmadi', one: '1 ta uy-joy mavjud', other: '${totalProperties} ta uy-joy mavjud')}";

  static m10(value) => "${value} asal bilan";

  static m11(value) => "${value} shakar bilan";

  static m12(value) => "${value}-band";

  static m13(error) => "Klipbordga nusxalanmadi: ${error}";

  static m14(value) => "Uzluksiz: ${value}";

  static m15(value) => "Diskret: ${value}";

  static m16(value) => "Belgilangan qiymat: ${value}";

  static m17(value) => "Tanlangan qiymat: ${value}";

  static m18(name, phoneNumber) => "${name} telefoni raqami: ${phoneNumber}";

  static m19(value) => "Siz tanlagan qiymat: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "${accountNumber} raqamli ${accountName} hisobida ${amount} bor.";

  static m21(amount) =>
      "Siz bu oy bankomatlar komissiyasi uchun ${amount} sarfladingiz";

  static m22(percent) =>
      "Juda yaxshi! Bu oy hisobingizda oldingi oyga nisbatan ${percent} koʻp mablagʻ bor.";

  static m23(percent) =>
      "Diqqat! Bu oy budjetingizdan ${percent} sarfladingiz.";

  static m24(amount) => "Bu hafta restoranlar uchun ${amount} sarfladingiz.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Soliq imtiyozlaringizni oshiring! Noaniq 1 ta tranzaksiyani turkumlang.', other: 'Soliq imtiyozlaringizni oshiring! Noaniq ${count} ta tranzaksiyani turkumlang.')}";

  static m26(billName, date, amount) =>
      "${billName} uchun ${date} sanasigacha ${amount} toʻlash kerak.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} uchun ajratilgan ${amountTotal} dan ${amountUsed} ishlatildi, qolgan balans: ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'HECH NIMA', one: '1 TA ELEMENT', other: '${quantity} TA ELEMENT')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Soni: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Savatchaga hech nima joylanmagan', one: 'Savatchada 1 ta mahsulot', other: 'Savatchada ${quantity} ta mahsulot')}";

  static m32(product) => "Olib tashlash: ${product}";

  static m33(value) => "${value}-band";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "GitHub omboridan Flutter namunalari"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Galereyaga qaytish"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Matn ustidagi belgi"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Bir nechta amal"),
        "bannerDemoResetText": MessageLookupByLibrary.simpleMessage(
            "Bannerni yana bir marta chiqarish"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Boshqa qurilmangizda parolingiz yangilandi. Tizimga qaytadan kiring."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Kesim"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Erkin harakatlanuvchi amal tugmasi joylashuvi"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Markazga mahkamlangan"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Chekkaga mahkamlangan"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage(
                "Markazda erkin harakatlanuvchi"),
        "bottomAppBarPositionFloatingEnd": MessageLookupByLibrary.simpleMessage(
            "Chekkada erkin harakatlanuvchi"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Hisob"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Signal"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Taqvim"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Fikrlar"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("TUGMA"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Yaratish"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Ochish"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("Bosib turib tanlang"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage("Bosing"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("10 raqami"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Ipak yigiruvchilar"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Ibodatxonalar"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamilnadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamilnadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Tamilnadu hududidagi 10 ta borish tavsiya qilinadigan shahar"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Janubiy Hindiston sanʼat ustalari"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Brihadisvaradagi ibodatxona"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Velosipedda"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lift"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kamin"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Katta"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Oʻrtacha"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Kichik"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Chiroqlarni yoqish"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Kir yuvish mashinasi"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("QAHRABO RANG"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("KOʻK"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("MOVIY KULRANG"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("JIGARRANG"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ZANGORI"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TOʻQ APELSINRANG"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("TOʻQ SIYOHRANG"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("YASHIL"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("KULRANG"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("TOʻQ KOʻK"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("HAVORANG"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("OCH YASHIL"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("OCH YASHIL"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("TOʻQ SARIQ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PUSHTI"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("BINAFSHARANG"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("QIZIL"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("MOVIY"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("SARIQ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Sayohatlar uchun moslangan ilova"),
        "craneEat": MessageLookupByLibrary.simpleMessage("OVQATLAR"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapol, Italiya"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Yogʻoch oʻtinli oʻchoqdagi pitsa"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, AQSH"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugaliya"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pastromali katta sendvich ushlab turgan ayol"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Baland stullari bor boʻsh bar"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Kordova, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portlend, AQSH"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Koreyscha tako"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Parij, Fransiya"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Shokoladli desert"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seul, Janubiy Koreya"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ijodkorlar restoranidagi oʻtirish joyi"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Sietl, AQSH"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Krevetkali taom"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Neshvill, AQSH"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Nonvoyxonaga kirish qismi"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, AQSH"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Qisqichbaqalar likopchasi"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Ispaniya"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pishiriqli kafe peshtaxtasi"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Turli manzillardagi restoranlar"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("UCHISH"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, AQSH"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Qishloqdagi qorli yam-yashil daraxtlar bagʻridagi uy"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Katta Sur, AQSH"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Qohira, Misr"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kun botayotganda Al-Azhar masjidi minoralari"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugaliya"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dengiz boʻyidagi gʻishtdan qurilgan mayoq"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, AQSH"),
        "craneFly12SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Atrofida palmalari bor hovuz"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indoneziya"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dengiz boʻyidagi palmalari bor hovuz"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Daladagi chodir"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Xumbu vodiysi, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Qorli togʻ bagʻridagi ibodat bayroqlari"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu-Pikchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Pikchu qalʼasi"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("Male, Maldiv orollari"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Suv ustidagi bir qavatli imorat"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("Vitsnau, Shveytsariya"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Togʻlar bilan oʻralgan soy boʻyidagi mehmonxona"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Mexiko, Meksika"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Nafis saʼnat saroyining osmondan koʻrinishi"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Rashmor togʻi, AQSH"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rashmor togʻi"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Superdaraxtzor"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Gavana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Eski koʻk avtomobilga suyanib turgan odam"),
        "craneFlyStops": m6,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Turli manzillarga parvozlar"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Sanani tanlang"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Sanalarni tanlang"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Yakuniy manzilni tanlang"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("Tamaddixonalar"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Joylashuvni tanlang"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "Boshlangʻich manzilni tanlang"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Vaqtni tanlang"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Sayohatchilar"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("UYQU"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Male, Maldiv orollari"),
        "craneSleep0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Suv ustidagi bir qavatli imorat"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, AQSH"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Qohira, Misr"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kun botayotganda Al-Azhar masjidi minoralari"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taypey, Tayvan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taypey 101 minorasi"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Qishloqdagi qorli yam-yashil daraxtlar bagʻridagi uy"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu-Pikchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Pikchu qalʼasi"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Gavana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Eski koʻk avtomobilga suyanib turgan odam"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitsnau, Shveytsariya"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Togʻlar bilan oʻralgan soy boʻyidagi mehmonxona"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Katta Sur, AQSH"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Daladagi chodir"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, AQSH"),
        "craneSleep6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Atrofida palmalari bor hovuz"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugaliya"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Riberiya maydonidagi rang-barang xonadonlar"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksika"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sohil tepasidagi Maya vayronalari"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugaliya"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dengiz boʻyidagi gʻishtdan qurilgan mayoq"),
        "craneSleepProperties": m9,
        "craneSleepSubhead":
            MessageLookupByLibrary.simpleMessage("Turli manzillardagi joylar"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Ruxsat berish"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Olmali pirog"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Bekor qilish"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Chizkeyk"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Shokoladli brauni"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Quyidagi roʻyxatdan sevimli desertingizni tanlang. Tanlovingiz asosida biz yaqin-atrofdagi tavsiya etiladigan yemakxonalar roʻyxatini tuzamiz."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Bekor qilish"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Ruxsat berilmasin"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Sevimli desertingizni tanlang"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Joriy joylashuvingiz xaritada chiqadi va yoʻnalishlarni aniqlash, yaqin-atrofdagi qidiruv natijalari, qolgan sayohat vaqtlarini chiqarish uchun kerak boʻladi."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Ilovalardan foydalanishdan oldin “Xaritalar” ilovasiga joylashuv axborotidan foydalanishga ruxsat berasizmi?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Tugma"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Orqa fon bilan"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Bildirishnomani koʻrsatish"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Boshi"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Kalsiy (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Kaloriya"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Uglevodlar (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Desert (1 porsiya)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Yogʻlar ( g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Temir (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Oqsillar ( g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Natriy (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Ovqatlanish"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Olmali pirog"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Keks"),
        "dataTableRowDonut":
            MessageLookupByLibrary.simpleMessage("Yogʻli kulcha"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Ekler"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Muzlatilgan yogurt"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Shirin kulchalar"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Asalari uyasi"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Muzqaymoqli sendvich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Marmeladli draje"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Obakidandon"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Katakchalarni tahrirlash uchun bosing va sahnalarga surish uchun ishoralardan foydalaning. Panoramalash uchun suring, miqyosni oʻzgartirish uchun chimding, ikkita barmoq yordamida buring. Dastlabki joylashuviga qaytarish uchun tiklash tugmasini bosing."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Katakchani tahrirlash"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage(
                "Transformatsiyalarni tiklash"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Panorama, masshtab, burish"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D transformatsiya"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Amal chiplari asosiy kontentga oid amallarni faollashtiradigan parametrlar toʻplamini ifodalaydi. Amal chiplari dinamik tarzda chiqib, inteyfeysni boyitadi."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Amal elementi"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ogohlantiruvchi muloqot oynasi foydalanuvchini u eʼtibor qaratishi   lozim boʻlgan voqealar yuz berganda ogohlantiradi. Unda sarlavha va mavjud harakatlar roʻyxati boʻlishi mumkin."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Bildirishnoma"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sarlavhali bildirishnoma"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Bannerda qisqa, lekin kerakli axborot boʻladi. Bundan tashqari foydalanuvchi bajarilishi lozim boʻlgan amal joylashadi. Uni foydalanuvchi ekrandan olib tashlay oladi."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Banner roʻyxat ichida chiqmoqda"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Quyi ilovalar panelida navigatsiya paneli va toʻrttagacha amal joylash mumkin, jumladan, erkin harakatlanuvchi amal tugmasini ham."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigatsiya va amallar ekranning quyi qismida chiqadi"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Quyi ilovalar paneli"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Ekranning pastki qismidagi navigatsiya panelida xizmatning uchdan beshtagacha qismini joylashtirish mumkin. Ularning har biriga alohida belgi va matn (ixtiyoriy) kiritiladi. Foydalanuvchi belgilardan biriga bossa, kerakli qism ochiladi."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Doimiy yorliqlar"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Tanlangan yorliq"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Oson ochish uchun ekran pastidagi navigatsiya"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Ekran pastidagi navigatsiya"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Kiritish"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("QUYI EKRANNI CHIQARISH"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Yuqori sarlavha"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modal quyi ekrandan menyu yoki muloqot oynasi bilan birgalikda foydalanish mumkin. Bunday ekran ochiqligida ilovaning boshqa elementlaridan foydalanish imkonsiz."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modal quyi ekran"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Doimiy quyi ekranda ilovadagi qoʻshimcha maʼlumotlar chiqadi. Bunday ekran doim ochiq turadi, hatto foydalanuvchi ilovaning boshqa qismlari bilan ishlayotgan paytda ham."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Doimiy quyi ekran"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Doimiy va modal quyi ekranlar"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Quyi ekran"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Matn maydonchalari"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Yassi, qavariq, atrofi chizilgan va turli xil"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Tugmalar"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Bildirgiga qoʻshimcha axborot joylash mumkin, masalan, albom, taom, joylashuv va kontaktlar haqidagi axborotlarni."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Burchaklari oʻralgan pastda joylashgan bildirgilar"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Bildirgilar"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Nazoratli roʻyxatlar menyusi"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kiritish, xususiyat yoki amalni aks etuvchi ixcham elementlar"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Elementlar"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Tanlov chiplari toʻplamdagi variantlardan birini aks ettiradi. Ular tavsif matni yoki turkumdan iborat boʻladi."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Tanlov chipi"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "MD uslubidagi doirasimon jarayon indikatori, ilova bandligini aylantirib tasvirlaydi."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Doirasimon jarayon indikatori"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Demo versiya kodi"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Klipbordga nusxalandi."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("HAMMASINI NUSXALASH"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design ranglar majmuasini taqdim qiluvchi rang va gradiyentlar uchun konstantalar"),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Barcha standart ranglar"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Ranglar"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Kontekst menyusi"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Harakatlar sahifasi bildirishnomalarning maxsus uslubi boʻlib, unda foydalanuvchining joriy matnga aloqador ikki yoki undan ortiq tanlovlari majmuasi koʻrsatiladi. Harakatlar sahifasida sarlavha, qoʻshimcha xabar va harakatlar roʻyxati boʻlishi mumkin."),
        "demoCupertinoActionSheetTitle": MessageLookupByLibrary.simpleMessage(
            "Harakatlar keltirilgan sahifa"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Soatga teskari aylanadigan iOS uslubidagi faollik indikatori."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS uslubidagi faollik indikatori"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Faollik indikatori"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Faqat bildirishnoma tugmalari"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Tugmali bildirishnomalar"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Ogohlantiruvchi muloqot oynasi foydalanuvchini u eʼtibor qaratishi lozim boʻlgan voqealar yuz berganda ogohlantiradi. Unda sarlavha, kontent va mavjud harakatlar roʻyxati boʻlishi mumkin. Sarlavha matn tepasida, harakatlar esa ularning ostida joylashadi."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Bildirishnoma"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Sarlavhali bildirishnoma"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi bildirishnomali muloqot oynasi"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Bildirishnomalar"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi tugma. Unda bosganda chiqadigan va yoʻqoladigan matn yoki belgi boʻladi. Orqa fon boʻlishi ham mumkin."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS uslubidagi tugmalar"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Tugmalar"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS uslubidagi navigatsiya paneli – asboblar panelining oʻrtasida sahifaning nomi minimal joylashgan panel."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS uslubidagi navigatsiya paneli"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigatsiya paneli"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Sana"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Sana va vaqt"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi tanlash oynasi orqali sana va vaqtni sozlash mumkin."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi sana va vaqtni tanlash oynasi"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Vaqt"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Taymer"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Tanlash oynasi"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Sahifani yangilash uchun tepadan pastga tortiladigan iOS uslubidagi boshqaruv."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Sahifalarni yangilash uchun iOS uslubidagi boshqaruv"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Yangilash uchun torting"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Bir nechta variantdan faqat bittasini belgilashda ishlatiladi. Bir element tanlansa, qolgan tanlov avtomatik yechiladi."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS uslubidagi boshqaruv elementlari"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "Segmentlangan boshqaruv elementlari"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Slayder uzluksiz yoki diskret qiymatlarni tanlashda ishlatiladi."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS uslubidagi slayder"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Slayder"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Kalit tugma biror sozlamani yoqishi yoki faolsizlantirishi mumkin."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS uslubidagi kalit"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi quyi navigatsiya varaqlari paneli Bir nechta faol varaqlarni chiqaradi va birinchi varaq asosiy hisoblanadi."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi varaqlar paneli"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Varaqlar paneli"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Matn maydonchasiga tashqi yoki ekran klaviaturasi yordamida matn kiritish mumkin."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN kod"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS uslubidagi matn maydonchasi"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Matn maydonchalari"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slayderlar yordamida berilgan diapazondagi kerakli qiymat yoki qiymatlar diapazonini tanlash mumkin. Slayderlar maxsus dizaynda va moslashtirilgan ham boʻladi."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Maxsus slayderlar"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Jadvaldagi maʼlumotlar ustun va qatorlar boʻyicha ajratilgan. Bu foydalanuvchiga kerakli axborotni tezroq topish va taqdim etilgan variantlarni taqqoslash imkonini beradi."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jadval koʻrinishidagi maʼlumotlar"),
        "demoDataTableTitle": MessageLookupByLibrary.simpleMessage(
            "Maʼlumotlar keltirilgan jadvallar"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design uslubidagi oyna orqali sanani tanlash mumkin."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Sana tanlash oynasi"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Oddiy, bildirishnoma va butun ekran"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Muloqot oynalari"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API hujjatlari"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filtr chiplari kontentni teglar yoki tavsif soʻzlar bilan filtrlaydi."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filtr chipi"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tekis tugmalarni bossangiz, ular koʻtarilmaydi. Uning oʻrniga siyohli dogʻ paydo boʻladi. Bu tugmalardan asboblar panelida va muloqot oynalarida foydalaning yoki ularni maydonga kiriting"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Tekis tugma"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Erkin harakatlanuvchi amal tugmasi halqa shaklidagi tugma boʻlib, u boshqa kontentlarning tagida joylashadi va ilovadagi eng muhim harakatlarni belgilash imkonini beradi."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Erkin harakatlanuvchi amal tugmasi"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog xossasi butun ekran rejimidagi modal muloqot oynasida keyingi sahifa borligini koʻrsatadi"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Butun ekran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Butun ekran"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Jadval shaklidagi roʻyxatlar bir turdagi maʼlumotlarni koʻrsatish uchun juda qulay. Masalan, rasmlarni. Bunday roʻyxatga kiritilgan obyektlar elementlar deyiladi."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Quyi sarlavha bilan"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Sarlavha bilan"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Faqat rasm"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Qator va ustunlar maketi"),
        "demoGridListsTitle": MessageLookupByLibrary.simpleMessage(
            "Jadval shaklidagi roʻyxatlar"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Axborot"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Kiritish chiplari obyekt (shaxs, joy yoki narsa) haqida umumiy axborot beradi yoki chatdagi ixcham matn shaklida chiqaradi."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Kiritish chipi"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL ochilmadi:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "MD uslubidagi chiziqli jarayon indikatori holat paneli deb ham ataladi."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Chiziqli jarayon indikatori"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Balandligi mahkamlangan va odatda boshida yoki oxirida rasm aks etuvchi matnlardan iborat boʻladi."),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("Quyi matn"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Skrollanuvchi roʻyxat maketlari"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Roʻyxatlar"),
        "demoMenuADisabledMenuItem": MessageLookupByLibrary.simpleMessage(
            "Menyuning faolsizlantirilgan bandi"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Nazoratli roʻyxatlari bor menyuli obyekt"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("Kontekst menyuli obyekt"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("Qismli menyusi bor obyekt"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Oddiy menyuli obyekt"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Kontekst menyusining birinchi bandi"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Kontekst menyusining uchinchi bandi"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Menyuda alohida blokda joylashgan variantlar roʻyxati mavjud boʻladi. Foydalanuvchi tugmaga bosganda, biror amalni bajarganda yoki boshqa boshqaruv elementlaridan foydalanganda roʻyxat chiqadi."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Toʻrt"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Havolani olish"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Menyuning birinchi bandi"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Menyuning uchinchi bandi"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Menyuning ikkinchi bandi"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Bir"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Razm solish"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Olib tashlash"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Ulashish"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Menyu tugmalari va oddiy menyular"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Uch"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menyu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Ikki"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Bir qator"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Mavjud variantlarni koʻrish uchun bu yerga bosing."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Variantlarni koʻrish"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Parametrlar"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Atrofi chizilgan tugmani bosganda shaffof boʻladi va koʻtariladi. Ular odatda qavariq tugmalar bilan biriktiriladi va ikkinchi harakat, yaʼni muqobilini koʻrsatish uchun ishlatiladi."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Atrofi chizilgan tugma"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("TANLASH OYNASINI CHIQARISH"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Sana va vaqtni tanlash"),
        "demoPickersTitle":
            MessageLookupByLibrary.simpleMessage("Tanlash oynasi"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Chiziqli, doirasimon va noaniq"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Jarayon indikatorlari"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Qavariq tugmalar yassi maketni qavariqli qilish imkonini beradi. Katta va keng sahifalarda koʻzga tez tashlanadigan boʻladi"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Qavariq tugma"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slayderlar yordamida berilgan diapazondagi kerakli qiymatni tanlash mumkin. Slayderlarning ikkala uchida yaqqol qiymatlarni anglatuvchi belgilar bo‘lishi mumkin Ular bilan tovush balandligi, yorqinlik yoki tasvir filtrlarini ham sozlash mumkin."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Diapazonli slayderlar"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Qismli menyular"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Belgilash katakchasi bilan foydalanuvchi roʻyxatdagi bir nechta elementni tanlay oladi. Katakchalar ikki qiymatda boʻladi, ayrim vaqtlarda uchinchi qiymat ham ishlatiladi."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Belgilash katakchasi"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Radiotugma faqat bir tanlov imkonini beradi. Ular mavjud tanlovlarni bir roʻyxatda chiqarish uchun qulay."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radiotugma"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Belgilash katakchalari, radio tugmalar va almashtirgichlar"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Almashtirgich tugmasi yordamida foydalanuvchilar biror sozlamani yoqishi yoki faolsizlantirishi mumkin. Almashtirgich yonida doim sozlama nomi va holati chiqadi."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Almashtirgich"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Tanlov boshqaruvi"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Oddiy muloqot oynasida foydalanuvchiga tanlash uchun bir nechta variant beriladi. Oynada sarlavha boʻlsa, u variantlar ustida joylashadi."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Oddiy"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Oddiy menyu"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Uzluksiz"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Maxsus dizaynli uzluksiz diapazonli slayder"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Raqamli qiymatlari tahrirlanuvchi uzluksiz slayder"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slayderlar yordamida berilgan diapazondagi kerakli qiymatni tanlash mumkin. Ular bilan tovush balandligi, yorqinlik yoki tasvir filtrlarini ham sozlash mumkin."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Diskret"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Maxsus dizaynli diskret slayder"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Raqamli qiymatlari tahrirlanuvchi"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Qiymat svayplash orqali tanlanadigan vidjetlar"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Slayderlar"),
        "demoSnackbarsAction":
            MessageLookupByLibrary.simpleMessage("Snekbar amalini bosdingiz."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("AMAL"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("SNEKBARNI CHIQARISH"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Snekbarlar foydalanuvchilarga ilovaning amali yoki jarayoni haqida xabar qiladi. Ular ekranning quyi qismida vaqtincha chiqadi. Snekbarlar foydalanishga xalaqit qilmasligi kerak va bezovta qilmasdan yopilish kerak."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Snekbarlar ekranning quyi qismida xabarlar chiqaradi"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Bu – snekbar."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Snekbarlar"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Varaqlarda turli ekranlardagi kontent, axborot toʻplamlari va boshqa amallar jamlanadi."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Aylantirilmasin"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Aylantirish"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Alohida aylantiriladigan varaqlar"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Varaqlar"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Matn kiritish maydonchalari yordamida foydalanuvchilar grafik interfeysga matn kirita olishadi. Ular odatda shakl va muloqot oynalari shaklida chiqadi."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Parolni kiriting."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - AQSH telefon raqamini kiriting."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Yuborishdan oldin qizil bilan ajratilgan xatolarni tuzating."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parolni berkitish"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Qisqa yozing. Bu shunchaki matn namunasi."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Tarjimayi hol"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Ism*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Ismni kiriting."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8 ta belgidan oshmasin."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Faqat alifbodagi harflarni kiriting."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Parol*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Parollar mos kelmadi"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefon raqami*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* kiritish shart"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Parolni qayta kiriting*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Maosh"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parolni koʻrsatish"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("YUBORISH"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Harf va raqamlarni tahrirlash uchun bitta qator"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Oʻzingiz haqingizda aytib bering (masalan, nima ish qilishingiz yoki qanday hobbilaringiz borligini yozing)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Matn maydonchalari"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Ismingiz nima?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Qaysi raqamga telefon qilib sizni topamiz?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Email manzilingiz"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design uslubidagi oyna orqali vaqtni tanlash mumkin."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Vaqt tanlash oynasi"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Belgilash/olib tashlash tugmasi bilan oʻxshash parametrlarni guruhlash mumkin. Belgilash/olib tashlash tugmasiga aloqador guruhlar bitta umumiy konteynerda boʻlishi lozim."),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Belgilash/olib tashlash tugmalari"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Qalqib chiquvchi maslahat oynalari tugmalar va interfeysdagi boshqa elementlarni qanday ishlashini tushunishda yordam beradi. Element bosib turilganda, kursor uning ustiga olib borilganda yoki .unga kirilganda chiqadi."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Qalqib chiquvchi maslahat oynasi chiqishi uchun bosib turing yoki kursorni ustiga olib boring."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bosib turganda yoki kursorni ustiga olib borganda chiqadigan qisqa xabar"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage(
            "Qalqib chiquvchi maslahat oynalari"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Ikki qator"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design ichidagi har xil shriftlar uchun izoh."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Barcha standart matn uslublari"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Matn sozlamalari"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Hisob qoʻshish"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ROZIMAN"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("BEKOR QILISH"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ROZI EMASMAN"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("BEKOR QILISH"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Qoralama bekor qilinsinmi?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Butun ekran rejimidagi muloqot oynasining demo versiyasi"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SAQLASH"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Butun ekran rejimidagi muloqot oynasi"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google ilovalarga joylashuvni aniqlashda yordam berishi uchun ruxsat bering. Bu shuni bildiradiki, hech qanday ilova ishlamayotgan boʻlsa ham joylashuv axboroti maxfiy tarzda Googlega yuboriladi."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Googlening joylashuvni aniqlash xizmatidan foydalanilsinmi?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Hisobni tanlash"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MULOQOT OYNASINI CHIQARISH"),
        "dismiss": MessageLookupByLibrary.simpleMessage("YOPISH"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Eng muhim yangiliklar haqidagi ilova"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Yashil armiyalardagi ichki islohatlar"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Fermalardagi arilar taʼminoti yetishmayapti"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Dizaynerlar futuristik liboslar yaratishda foydalanadigan texnologiyalar"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Feministlar partizanlikka oʻtmoqda"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("Benzin kelajagi"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "Urushlarsiz, sogʻliqni saqlashdagi yutuqlar"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Aksiya stagnatsiyalari, valyutalar narxi"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Urush vaqtidagi amerika boʻlinmalari"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Soʻngi xabarlar"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Biznes"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Madaniyat"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Bosh sahifa"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Siyosat"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Ilm-fan"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Sport"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Texnologiya"),
        "fortnightlyMenuTravel":
            MessageLookupByLibrary.simpleMessage("Sayohat"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("AQSH"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("Dunyo"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("Yashil beretlar"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("Salomatlik inqiloblari"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Islohatlar"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Aksiyalar"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("TexDizayn"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("USLUBLAR VA BOSHQA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Turkumlar"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Gallereya"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Sohil"),
        "placeBronzeWorks": MessageLookupByLibrary.simpleMessage(
            "Bronzadan mahsulot ishlab chiqaradigan zavod"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennay"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Baliqchi"),
        "placeFlowerMarket": MessageLookupByLibrary.simpleMessage("Gul bozori"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Tushlikni tayyorlash"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Bozor"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherri"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Tuz fermasi"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Skuterchilar"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Ipak fabrikasida ishchi"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Thanjavurdagi ibodatxona"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Avtomobil olish uchun"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Hisobraqam"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Uy olish uchun"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Taʼtil"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Hisob egasi"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Yillik foiz daromadi"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Oʻtgan yili toʻlangan foiz"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Foiz stavkasi"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Yil boshidan beri foizlar"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Keyingi hisob qaydnomasi"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Jami"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Hisoblar"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Bildirishnomalar"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Qarz miqdori"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Toʻlangan summa"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Jami miqdori"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Hisob-kitob"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Muddati"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Kiyim-kechak"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Qahvaxonalar"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Baqqollik mollari"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restoranlar"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Qolgan summa"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Ishlatilgan summa"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Budjet miqdori"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Qoldiq"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budjetlar"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Budjetni rejalashtirish uchun ilova"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("QOLDI"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("KIRISH"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Kirish"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally hisobiga kirish"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Hisobingiz yoʻqmi?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Parol"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Eslab qolinsin"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ROʻYXATDAN OʻTISH"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Foydalanuvchi nomi"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("HAMMASI"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Barcha hisoblar"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Hisob-varaqlari"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Barcha budjetlar"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Bankomatlarni topish"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Yordam"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Hisoblarni boshqarish"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Bildirishnomalar"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Elektron hujjatlar sozlamalari"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Kirish kodi va Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Shaxsiy axborot"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Chiqish"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Soliq hujjatlari"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("HISOBLAR"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("HISOB-KITOB"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDJETLAR"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("UMUMIY"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("SOZLAMALAR"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery haqida"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Dizayn: TOASTER, London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Sozlamalarni yopish"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Sozlamalar"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Tungi"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Fikr-mulohaza yuborish"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Kunduzgi"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Hududiy sozlamalar"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Sekinlashuv"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Tizim"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Matn yoʻnalishi"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Chapdan oʻngga"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Mamlakat soliqlari asosida"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Oʻngdan chapga"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Matn oʻlchami"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Juda katta"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Yirik"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Kichik"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Mavzu"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Sozlamalar"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("BEKOR QILISH"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("SAVATCHANI TOZALASH"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("SAVATCHA"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Yetkazib berish:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Oraliq summa:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Soliq:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("JAMI"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESSUARLAR"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("HAMMASI"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("KIYIMLAR"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("UY"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Zamonaviy buyumlarni sotib olish uchun ilova"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parol"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Foydalanuvchi nomi"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("CHIQISH"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENYU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("KEYINGISI"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Koʻk finjon"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Shaftolirang futbolka"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Paxtali sochiqlar"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Paxtali koʻylak"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klassik oq bluzka"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Och jigarrang sviter"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Mis simli savat"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Chiziqli kofta"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Gulchambar"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Getsbi shlyapa"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Jentri kurtka"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Stol jamlanmasi"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Sariq sharf"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Kulrang mayka"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Choy ichish uchun jamlanma"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Oshxona jamlanmasi"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Kalta klesh shimlari"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Plaster tunika"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Aylana stol"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Yomgʻir suvi tarnovi"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ayollar bluzkasi"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Yengil sviter"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Yalpizli sviter"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Qoʻllar erkin harakatlanadigan futbolka"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Hobo sumka"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Sopol idishlar jamlanmasi"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella quyosh koʻzoynaklari"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Halqali zirak"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukkulent oʻsimliklari"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Yozgi koʻylak"),
        "shrineProductSurfAndPerfShirt": MessageLookupByLibrary.simpleMessage(
            "Dengiz toʻlqinlari rangidagi futbolka"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond sumkasi"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Sport paypoqlari"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Oq yengil kofta"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Toʻqilgan jevak"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Oq chiziqli koʻylak"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Charm kamar"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Savatga joylash"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Savatchani yopish"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Menyuni yopish"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Menyuni ochish"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Elementni olib tashlash"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Qidiruv"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Sozlamalar"),
        "signIn": MessageLookupByLibrary.simpleMessage("KIRISH"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Moslashuvchan maket"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Asosiy qism"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("TUGMA"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Sarlavha"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Taglavha"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Nomi"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Starter ilovasi"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Kiritish"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Sevimli"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Qidiruv"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Ulashish")
      };
}
