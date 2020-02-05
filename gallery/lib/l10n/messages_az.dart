// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a az locale. All the
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
  String get localeName => 'az';

  static m0(value) =>
      "Bu tətbiqin mənbə koduna baxmaq üçün ${value} ünvanına daxil olun.";

  static m1(title) => "${title} tabeli üçün yertutan";

  static m2(destinationName) => "${destinationName} məkanını araşdırın";

  static m3(destinationName) => "${destinationName} məkanını paylaşın";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Restoran yoxdur', one: '1 restoran', other: '${totalRestaurants} restoran')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Birbaşa', one: '1 dayanacaq', other: '${numberOfStops} dayanacaq')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Əlçatan obyekt yoxdur', one: '1 əlçatan obyekt', other: '${totalProperties} əlçatan obyekt')}";

  static m10(value) => "Ballı ${value}";

  static m11(value) => "Şəkərli ${value}";

  static m12(value) => "Element ${value}";

  static m13(error) => "Mübadilə buferinə kopyalamaq alınmadı: ${error}";

  static m14(value) => "Ardıcıl: ${value}";

  static m15(value) => "Ayrı: ${value}";

  static m16(value) => "İşarələnib: ${value}";

  static m17(value) => "Seçilib: ${value}";

  static m18(name, phoneNumber) => "${name} telefon nömrəsi: ${phoneNumber}";

  static m19(value) => "\"${value}\" seçdiniz";

  static m20(accountName, accountNumber, amount) =>
      "${amount} ilə ${accountName} hesabı ${accountNumber}.";

  static m21(amount) => "Bu ay bankomat rüsumları üçün ${amount} xərcləmisiniz";

  static m22(percent) =>
      "Afərin! Ödəniş hesabınızın balansı keçən ayla müqayisədə ${percent} çoxdur.";

  static m23(percent) =>
      "Nəzərə alın ki, bu aylıq Alış-veriş büdcənizin ${percent} qədərindən çoxunu istifadə etmisiniz.";

  static m24(amount) => "Bu həftə restoranlarda ${amount} xərcləmisiniz.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Potensial vergi ödənişini artırın! 1 təyin edilməmiş əməliyyata kateqoriya təyin edin.', other: 'Potensial vergi ödənişini artırın! ${count} təyin edilməmiş əməliyyata kateqoriya təyin edin.')}";

  static m26(billName, date, amount) =>
      "${date} tarixinə ${amount} məbləğində ${billName} ödənişi.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} büdcəsi ${amountUsed}/${amountTotal} istifadə edilib, ${amountLeft} qalıb";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ELEMENT YOXDUR', one: '1 ELEMENT', other: '${quantity} ELEMENT')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Miqdar: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Alış-veriş səbəti, element yoxdur', one: 'Alış-veriş səbəti, 1 element', other: 'Alış-veriş səbəti, ${quantity} element')}";

  static m32(product) => "${product} məhsulunu silin";

  static m33(value) => "Element ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter nümunələrinin GitHub yaddaş yeri"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Qalereyaya geri qayıdın"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Əsas ikona"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Bir neçə əməliyyat"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Banneri sıfırlayın"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Parolunuz başqa cihazınızda güncəllənib. Yenidən daxil olun."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Nişan"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Üzən Əməliyyat Düyməsi Mövqeyi"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Əlavə edilib - Mərkəz"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Əlavə edilib - Son"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Üzən - Mərkəz"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Üzən - Son"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Hesab"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Xəbərdarlıq"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Təqvim"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Şərhlər"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("DÜYMƏ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Yaradın"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Araşdırın"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Seçilə bilən (basıb saxlayın)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Toxunula bilən"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Tancavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Çettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Nömrə 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("İpəkəyirənlər"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Məbədlər"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Tancavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaqanqa, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Tamil Nadu ştatında gəzməli ən populyar 10 şəhər"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Cənubi Hindistandan olan sənətkarlar"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Brihadisvara Məbədi"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Velosiped"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lift"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Buxarı"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Böyük"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Orta"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Kiçik"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("İşıqları yandırın"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Paltaryuyan"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("KƏHRƏBA"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("MAVİ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("MAVİ-BOZ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("QƏHVƏYİ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("MAVİ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TÜND NARINCI"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("TÜND BƏNÖVŞƏYİ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("YAŞIL"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("BOZ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("GÖY RƏNG"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("AÇIQ MAVİ"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("AÇIQ YAŞIL"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("AÇIQ YAŞIL"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("NARINCI"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ÇƏHRAYI"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("BƏNÖVŞƏYİ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("QIRMIZI"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("FİRUZƏYİ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("SARI"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Fərdiləşdirilmiş səyahət tətbiqi"),
        "craneEat": MessageLookupByLibrary.simpleMessage("YEMƏK"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapol, İtaliya"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Odun sobasında pizza"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, ABŞ"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portuqaliya"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Əlində böyük basdırmalı sandviç olan qadın"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar oturacaqları olan boş bar"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Kordova, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portlend, ABŞ"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Koreya takosu"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Fransa"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Şokolad deserti"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seul, Cənubi Koreya"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "İncəsənət üslublu restoranda oturma sahəsi"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Sietl, ABŞ"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Krevetdən hazırlanan xörək"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Neşvill, ABŞ"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bulka dükanının girişi"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, ABŞ"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bir boşqab xərçəng"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, İspaniya"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Qənnadı məmulatları düzülmüş kafe piştaxtası"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Təyinat yeri üzrə restoranları araşdırın"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("UÇUŞ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, ABŞ"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Həmişəyaşıl ağaclar olan qarlı yerdə ağacdan ev"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Biq Sur, ABŞ"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Qahirə, Misir"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gün batımı zamanı Əl-Əzhər Məscidinin minarələri"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portuqaliya"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Dənizdə kərpic dəniz fənəri"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, ABŞ"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Palma ağacları olan hovuz"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, İndoneziya"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Palma ağacları olan dənizkənarı hovuz"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sahədə çadır"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Xumbu vadisi, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Qarlı dağın qarşısında dua bayraqları"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Maçu Pikçu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maçu Pikçu qalası"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("Male, Maldiv adaları"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Suüstü bunqalolar"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, İsveçrə"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dağların qarşısında göl kənarı otel"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexiko şəhəri, Meksika"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "İncəsənət Sarayının yuxarıdan görünüşü"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Raşmor dağı, ABŞ"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Raşmor dağı"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Sinqapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove parkı"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Qədim mavi avtomobilə söykənən kişi"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Təyinat yeri üzrə uçuşları araşdırın"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Tarix seçin"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Tarixlər seçin"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Təyinat yeri seçin"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Restoranlar"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Məkan seçin"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "Səyahətin başladığı yeri seçin"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Vaxt seçin"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Səyahətçilər"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("YUXU"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Male, Maldiv adaları"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Suüstü bunqalolar"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, ABŞ"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Qahirə, Misir"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gün batımı zamanı Əl-Əzhər Məscidinin minarələri"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taybey, Tayvan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taybey 101 göydələni"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Həmişəyaşıl ağaclar olan qarlı yerdə ağacdan ev"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Maçu Pikçu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maçu Pikçu qalası"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Qədim mavi avtomobilə söykənən kişi"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, İsveçrə"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dağların qarşısında göl kənarı otel"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Biq Sur, ABŞ"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sahədə çadır"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, ABŞ"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Palma ağacları olan hovuz"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Portu, Portuqaliya"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ribeyra Meydanında rəngarəng mənzillər"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksika"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Çimərlikdəki qayalıqlarda Maya xarabalığı"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portuqaliya"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Dənizdə kərpic dəniz fənəri"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Təyinat yeri üzrə əmlakları araşdırın"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("İcazə verin"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Alma Piroqu"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Ləğv edin"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Çizkeyk"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Şokoladlı Brauni"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Aşağıdakı siyahıdan sevimli desert növünüzü seçin. Seçiminiz ərazinizdə təklif edilən restoranlardan ibarət siyahını fərdiləşdirmək üçün istifadə ediləcək."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("İmtina edin"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("İcazə verməyin"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Sevimli Desertinizi Seçin"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Cari məkanınız xəritədə göstəriləcək və istiqamətlər, yaxınlıqdakı axtarış nəticələri və təqribi səyahət vaxtları üçün istifadə ediləcək."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Tətbiqdən istifadə etdiyiniz zaman \"Xəritə\"yə məkanınıza giriş imkanı verilsin?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Düymə"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Arxa fonlu"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Xəbərdarlığı Göstərin"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Söhbət"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Əsas səhifə"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Kalsium (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Kalori"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Karbohidrat (q)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Desert (1 porsiya)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Yağ (q)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Dəmir (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Zülal (q)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Natrium (mq)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Qidalanma"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Alma piroqu"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Keks"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Ponçik"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Ekler"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Dondurulmuş yoqurt"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Zəncəfilli kökə"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Arı şanı konfeti"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Dondurmalı sendviç"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Marmeladlı konfet"),
        "dataTableRowLollipop": MessageLookupByLibrary.simpleMessage("Nabat"),
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
            "Əməliyyat çipləri əsas məzmun ilə əlaqədar əməliyyatı işə salan seçimlər qrupudur. Əməliyyat çipləri İstifadəçi İnterfeysində dinamik və kontekstual tərzdə görünməlidir."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Əməliyyat Çipi"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Xəbərdarlıq dialoqu istifadəçiyə razılıq tələb edən məqamlar barədə bildirir. Xəbərdarlıq dialoqunda şərti başlıq və əməliyyatların şərti siyahısı olur."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Xəbərdarlıq"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Başlıqlı Xəbərdarlıq"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Banner vacib, qısa mesajı göstərir və istifadəçilərə yönləndirmə (və ya banneri rədd etmə) üzrə əməliyyatlar təqdim edir. Rədd edilməsi üçün istifadəçi əməliyyatı tələb edilir."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bannerin siyahıda göstərilməsi"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Alt tətbiq panelləri alt naviqasiya siyirməsi və dördə qədər əməliyyata, o cümlədən, üzən əməliyyat düyməsinə giriş təmin edir."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Alt hissədə naviqasiya və əməliyyatları göstərir"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Alt tətbiq paneli"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Alt naviqasiya panelləri ekranın aşağısında üç-beş təyinat yeri göstərir. Hər bir təyinat yeri ikona və şərti mətn nişanı ilə təqdim edilir. Alt naviqasiya ikonasına toxunulduqda istifadəçi həmin ikona ilə əlaqələndirilən üst səviyyə naviqasiya təyinatına yönləndirilir."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Sabit nişanlar"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Seçilmiş nişan"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Çarpaz solğun görünüşlü alt naviqasiya"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Alt naviqasiya"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Əlavə edin"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("AŞAĞIDAKI VƏRƏQİ GÖSTƏRİN"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("Başlıq"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modal alt vərəq menyu və ya dialoqa alternativdir və istifadəçinin tətbiqin qalan hissələri ilə işləməsinin qarşısını alır."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modal alt vərəq"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Sabit alt vərəq tətbiqin ilkin məzmununa əlavə edilən məlumatları göstərir. Sabit alt vərəq istifadəçi tətbiqin digər hissələri ilə işlədikdə belə görünür."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Sabit alt vərəq"),
        "demoBottomSheetSubtitle":
            MessageLookupByLibrary.simpleMessage("Sabit və modal alt vərəqlər"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Aşağıdakı vərəq"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Mətn sahələri"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Yastı, qabarıq, haşiyəli və digərləri"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Düymələr"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Kart albom, coğrafi məkan, yemək, əlaqə məlumatları və sair kimi əlaqədar məlumatların təqdim edilməsi üçün istifadə edilən Material vərəqidir."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kənarları yuvarlaqlaşdırılmış əsas kartlar"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Kartlar"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Yoxlama siyahısı menyusu"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Məlumat, atribut və ya əməliyyatı əks etdirən yığcam elementlər"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Çiplər"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Seçim çipləri qrupun içindən tək bir seçimi təqdim edir. Seçim çipləri əlaqədar təsviri mətn və ya kateqoriyalar ehtiva edir."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Seçim Çipi"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Fırlanaraq tətbiqin məşğul olduğunu göstərən Material Dizaynlı dairəvi gedişat indikatoru."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Dairəvi Gedişat İndikatoru"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Demo Kodu"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Mübadilə buferinə kopyalandı."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("HAMISINI KOPYALAYIN"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Material Dizaynının rəng palitrasını əks etdirən rəng və rəng nümunəsi konstantları."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Əvvəlcədən təyin edilmiş rənglərin hamısı"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Rənglər"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Kontekst menyusu"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Əməliyyat cədvəli istifadəçiyə cari kontekstlə əlaqəli iki və ya daha çox seçim dəsti təqdim edən xüsusi xəbərdarlıq üslubudur. Əməliyyat cədvəlində başlıq, əlavə mesaj və əməliyyatların siyahısı ola bilər."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Əməliyyat Cədvəli"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Saatın əqrəbi istiqamətinə fırlanan iOS üslublu fəaliyyət indikatoru."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS üslublu fəaliyyət indikatorları"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Yalnız Xəbərdarlıq Düymələri"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Düymələrlə Xəbərdarlıq"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Xəbərdarlıq dialoqu istifadəçiyə razılıq tələb edən məqamlar barədə bildirir. Xəbərdarlıq dialoqunda şərti başlıq, şərti məzmun və əməliyyatların şərti siyahısı olur. Başlıq məzmunun yuxarısında, əməliyyatlar isə məzmunun aşağısında göstərilir."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Xəbərdarlıq"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Başlıqlı Xəbərdarlıq"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS üslubunda xəbərdarlıq dialoqları"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Xəbərdarlıqlar"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS üslublu düymə. O, toxunduqda solğunlaşan və tündləşən mətn və/və ya ikonanı əks etdirir. İstəyə uyğun arxa fon təyin edilə bilər."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS üslublu düymələr"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Düymələr"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS üslublu naviqasiya paneli. Naviqasiya paneli ortasında minimal səhifə başlığı olan alət panelidir."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS üslublu naviqasiya paneli"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Tarix"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Tarix və Vaxt"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Tarixi, vaxtı, yaxud eyni anda həm tarixi, həm də vaxtı seçmək üçün istifadə oluna biləcək iOS üslubunda seçici vidceti."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-üslubunda tarix və vaxt seçiciləri"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Vaxt"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Taymer"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Seçicilər"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS üslublu \"yeniləmək üçün çəkin\" məzmun nizamlayıcısını tətbiq edən vidcet."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS üslublu \"yeniləmək üçün çəkin\" nizamlayıcısı"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Qarşılıqlı eksklüziv variantlar arasından seçmək üçün istifadə edilir. Seqmentləşdirilmiş nəzarətdə bir variant seçildikdə, digər variantları seçmək olmur."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS üslubunda seqmentləşdirilmiş nəzarət"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Ardıcıl və ya ayrı dəyərlər arasından seçim etmək üçün slayder istifadə edilə bilər."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS üslublu slayder"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Slayder"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Ayarı aktiv/deaktiv etmək üçün dəyişdirici istifadə edilir."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS üslublu dəyişdirici"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS üslublu alt naviqasiya tabı paneli. Bir tab aktiv olmaqla (defolt olaraq ilk tab) bir neçə tabı göstərir."),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS üslublu alt tab paneli"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Mətn sahəsi istifadəçiyə mətni aparat klaviaturasından və ya ekran klaviaturasından daxil etməyə imkan verir."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS ülublu mətn sahələri"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slayderlər panel boyunca dəyərlər silsiləsini göstərir, istifadəçilər bu dəyərlərdən birini və ya dəyər silsiləsini seçə bilər. Slayderlər tema ilə bəzədilə və fərdiləşdirilə bilər."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Fərdi Slayderlər"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Data cədvəlləri məlumatları sıra və sütunlardan ibarət tor şəklində göstərir. Onlar məlumatları skan etməyi asanlaşdıran qaydaya salır, beləcə istifadəçilər struktur və məlumatları axtara bilərlər."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Məlumat sıraları və sütunları"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Data Cədvəlləri"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design tarix seçicisini ehtiva edən dialoq pəncərəsini göstərir."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Tarix Seçicisi"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sadə, xəbərdarlıq və tam ekran"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialoqlar"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API Sənədi"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filtr çipləri məzmunu filtrləmək üçün teqlərdən və ya təsviri sözlərdən istifadə edir."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filtr Çipi"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Yastı düyməyə basdıqda mürəkkəb rəngi alır, lakın yuxarı qalxmır. Yastı düymələrdən alətlər panelində, dialoqlarda və sətir içlərində dolğu ilə istifadə edin"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Yastı Düymə"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Üzən əməliyyat düyməsi tətbiqdə əsas əməliyyatı önə çıxarmaq üçün məzmun üzərində hərəkət edən dairəvi ikona düyməsidir."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Üzən Əməliyyat Düyməsi"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Tam ekran dialoqu xüsusiyyəti yeni səhifənin tam ekran modal dialoqu olub-olmadığını göstərir"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Tam ekran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Tam Ekran"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Tor Siyahılar şəkillər kimi homogen datanın təqdimatı üçün tam uyğundur. Tor siyahıdakı hər element plitə adlanır."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Aşağı sərlövhə ilə"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Yuxarı sərlövhə ilə"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Yalnız şəkil"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Sıra və sütun düzəni"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Tor Siyahılar"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Məlumat"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Məlumat çipləri obyekt (şəxs, məkan və ya əşya) və ya danışıq mətni kimi qarışıq məlumatlar toplusunu yığcam formada təqdim edir."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Məlumat Çipi"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL\'i göstərmək mümkün olmadı:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Gedişat paneli olaraq da tanınan Material Dizaynlı xətti gedişat indikatoru."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Xətti Gedişat İndikatoru"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Adətən mətn, öndə və sonda ikona daxil olan hündürlüyü sabit olan bir sətir."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("İkinci dərəcəli mətn"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Sürüşən siyahı düzənləri"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Siyahılar"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Deaktiv menyu elementi"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Yoxlama siyahısı menyusu ilə element"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Kontekst menyusu ilə element"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("Bölməli menyu ilə element"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Sadə menyu ilə element"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Birinci kontekst menyusu elementi"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Üçüncü kontekst menyusu elementi"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Menyu müvəqqəti səthdə seçimlərin siyahısını göstərir. İstifadəçilər düyməyə toxunduqda, əməliyyat etdikdə və ya başqa nizamlayıcıya toxunduqda onlar görünür."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Dörd"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Keçid əldə edin"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Birinci menyu elementi"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Üçüncü menyu elementi"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("İkinci menyu elementi"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Bir"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Önizləmə"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Silin"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Paylaşın"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Menyu düymələri və sadə menyular"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Üç"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menyu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("İki"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Bir sətir"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Bu demo üçün əlçatan seçimlərə baxmaq üçün bura toxunun."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Seçimlərə baxın"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Seçimlər"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Haşiyəli düymələrə basdıqda qeyri-şəffaf və qabarıq olurlar. Onlar, adətən, alternativ, ikinci dərəcəli əməliyyatı göstərmək üçün qabarıq düymələrlə birləşdirilir."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Haşiyəli Düymə"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("SEÇİCİNİ GÖSTƏRİN"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Tarix və vaxt seçimi"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Seçicilər"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Xətti, dairəvi, qeyri-müəyyən"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Gedişat indikatorları"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Qabarıq düymələr əsasən yastı düzənlərin üzərində ölçücə böyük olur. Onlar dolu və ya geniş səthlərdə funksiyaları vurğulayır."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Qabarıq Düymə"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slayderlər panel boyunca dəyərlər silsiləsini göstərir. Zolağın hər iki ucunda dəyərlər silsiləsini göstərən ikonalar ola bilər. Onlar səs səviyyəsi, parlaqlıq kimi ayarları tənzimləməyə və ya şəkil filtrlərini tətbiq etməyə imkan verir."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Silsilə Slayderlər"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Bölməli menyu"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Qeyd xanaları istifadəçiyə dəstdən bir neçə seçim etmək imkanı verir. Adi qeyd xanasındakı dəyər doğru və ya yanlış olur, üç vəziyyətli qeyd xanasındakı dəyər isə boş da ola bilər."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Qeyd xanası"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Radio düymələri istifadəçiyə dəstdən bir seçim etmək imkanı verir. İstifadəçinin bütün əlçatan seçimləri yan-yana görməli olduğunu düşünsəniz, eksklüziv seçim üçün radio düymələrindən istifadə edin."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Qeyd xanaları, radio düymələri və dəyişdiricilər"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Aktiv/deaktiv etmə dəyişdiriciləri bir ayarlar seçiminin vəziyyətini dəyişir. Dəyişdirici vasitəsilə idarə edilən seçim və onun olduğu vəziyyət müvafiq daxili nişandan aydın olmalıdır."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Dəyişdirici"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Seçim idarə elementləri"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Sadə dialoq istifadəçiyə bir neçə seçim təqdim edir. Sadə dialoqda seçimlərin yuxarısında göstərilən şərti başlıq olur."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Sadə"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Sadə menyu"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Davamlı"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Fərdi Temalı Davamlı Silsilə Slayder"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Redaktə olunan Rəqəmli Dəyər ilə Davamlı"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slayderlər panel boyunca dəyərlər silsiləsini göstərir, istifadəçilər bu dəyərlərdən birini seçə bilər. Onlar səs səviyyəsi, parlaqlıq kimi ayarları tənzimləməyə və ya şəkil filtrlərini tətbiq etməyə imkan verir."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Ayrı"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage("Fərdi Temalı Ayrı Slayder"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Redaktə olunan rəqəmli dəyər"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sürüşdürərək dəyər seçmək üçün vidcetlər"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Slayderlər"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Snekpanel əməliyyatına toxunmusunuz."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ƏMƏLİYYAT"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("SNEKPANEL GÖSTƏRİN"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Snekpanellər tətbiqin icra etdiyi və ya edəcəyi prosesi istifadəçilərə bildirir. Onlar ekranın aşağısına doğru müvəqqəti göstərilir. Onlar istifadəçinin təcrübəsinə mane olmamalıdır, yoxa çıxmaq üçün istifadəçi girişinə ehtiyac duymurlar."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Snekpanellər ekranın aşağısında mesajlar göstərir"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Bu, snekpaneldir."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Snekpanellər"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Tablar müxtəlif ekranlar, data dəstləri və digər qarşılıqlı əməliyyatlarda məzmunu təşkil edir."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Müstəqil şəkildə sürüşdürülə bilən baxışlarla tablar"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Tablar"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Mətn sahələri istifadəçilərə İstifadəçi İnterfeysinə mətn daxil etmək imkanı verir. Onlar, əsasən, forma və dialoqlarda görünür."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-poçt"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Parol daxil edin."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - ABŞ telefon nömrəsi daxil edin."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Təqdim etməzdən əvvəl qırmızı rəngdə olan xətalara düzəliş edin."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parolu gizlədin"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Qısa edin. Bu, sadəcə nümayişdir."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Həyat hekayəsi"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Ad*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Ad tələb edilir."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "8 simvoldan çox olmamalıdır."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Yalnız hərf daxil edin."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Parol*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Parollar uyğun gəlmir"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefon nömrəsi*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* tələb olunan sahələri göstərir"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Parolu yenidən yazın*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Maaş"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parolu göstərin"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("GÖNDƏRİN"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Redaktə edilə bilən mətn və rəqəmlərdən ibarət tək sıra"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Özünüz barədə bildirin (məsələn, nə işlə məşğul olduğunuz və ya maraqlarınız barədə yazın)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Mətn sahələri"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Adınız nədir?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Sizinlə necə əlaqə saxlaya bilərik?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("E-poçt ünvanınız"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design vaxt seçicisini ehtiva edən dialoq pəncərəsini göstərir."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Vaxt Seçicisi"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Dəyişdirici düymələrdən əlaqəli seçimləri qruplaşdırmaq üçün istifadə etmək mümkündür. Əlaqəli dəyişdirici düymələr qrupunu vurğulamaq üçün qrupun ümumi konteyneri olmalıdır"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Dəyişdirici Düymələr"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "İpucular düymə funksiyasını və ya digər istifadəçi interfeysi əməliyyatını izah etməyə kömək edən mətn etiketləri təmin edir. İstifadəçilər elementin üzərində sürüşdürdükdə, fokuslandıqda və ya basıb saxladıqda ipucular məlumatlandırıcı mətn göstərir."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "İpucunu göstərmək üçün basıb saxlayın və ya üzərində sürüşdürün."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Basıb saxladıqda və ya üzərində sürüşdürdükdə göstərilən qısa mesaj"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("İpucular"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("İki sətir"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Dizaynındakı müxtəlif tipoqrafik üslubların izahları."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Əvvəldən müəyyənləşdirilmiş bütün mətn üslubları"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipoqrafiya"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Hesab əlavə edin"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("RAZIYAM"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("LƏĞV EDİN"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("RAZI DEYİLƏM"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("İMTİNA EDİN"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Qaralama silinsin?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("Tam ekran dialoq demosu"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("YADDA SAXLAYIN"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Tam Ekran Dialoqu"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google\'a məkanı müəyyənləşdirməkdə tətbiqlərə kömək etmək imkanı verin. Bu, hətta heç bir tətbiq icra olunmadıqda belə Google\'a anonim məkan məlumatları göndərmək deməkdir."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google\'un məkan xidmətindən istifadə edilsin?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Yedəkləmə hesabı ayarlayın"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("DİALOQU GÖSTƏRİN"),
        "dismiss": MessageLookupByLibrary.simpleMessage("RƏDD EDİN"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kateqoriyalar"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Qalereya"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Çimərlik"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Bürünc İşləmə Müəssisəsi"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Çennay"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Çettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Balıqçı"),
        "placeFlowerMarket": MessageLookupByLibrary.simpleMessage("Gül Dükanı"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Nahar hazırlanması"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Market"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondiçerri"),
        "placeSaltFarm":
            MessageLookupByLibrary.simpleMessage("Duz Təsərrüfatı"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Skuterlər"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("İpək hazırlayan"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjor"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Tanjavur Məbədi"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Avtomobil Qənaəti"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Yoxlanış"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Ev Qənaəti"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Tətil"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Hesab Sahibi"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("İllik faiz gəliri"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Keçən il ödənilən faiz"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Faiz Norması"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Faiz: İlin əvvəlindən bəri"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Növbəti bəyanat"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Cəmi"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Hesablar"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Xəbərdarlıqlar"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Hesablar"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Son tarix"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Geyim"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kafelər"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Ərzaq dükanları"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restoranlar"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Qalıq"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Büdcələr"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Şəxsi maliyyə tətbiqi"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("QALIQ"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("GİRİŞ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Giriş"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally\'ya daxil olun"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Hesabınız yoxdur?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Parol"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Məni yadda saxlayın"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("QEYDİYYATDAN KEÇİN"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("İstifadəçi adı"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("HAMISINA BAXIN"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Bütün hesablara baxın"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Bütün fakturalara baxın"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Bütün büdcələrə baxın"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Bankomatlar tapın"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Kömək"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Hesabları idarə edin"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Bildirişlər"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Kağızsız Ayarlar"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Parol və Sensor ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Şəxsi Məlumatlar"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Çıxın"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Vergi Sənədləri"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("HESABLAR"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("HESABLAR"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BÜDCƏLƏR"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("İCMAL"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("AYARLAR"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Qalereya haqqında"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Londonda TOASTER tərəfindən hazırlanmışdır"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Ayarları qapadın"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Tünd"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Rəy göndərin"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("İşıqlı"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Lokal göstərici"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platforma mexanikası"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Aşağı sürətli"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Sistem"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Mətn istiqaməti"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Soldan sağa"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Yerli xüsusiyyətlərə əsaslanır"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Sağdan sola"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Mətn miqyası"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Böyük"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Böyük"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Kiçik"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("LƏĞV EDİN"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("SƏBƏTİ TƏMİZLƏYİN"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("SƏBƏT"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Göndərmə:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Aralıq cəm:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Vergi:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("CƏMİ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESUARLAR"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("HAMISI"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("GEYİM"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("EV"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Dəbli pərakəndə satış tətbiqi"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parol"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("İstifadəçi adı"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ÇIXIŞ EDİN"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENYU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("NÖVBƏTİ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Mavi daş parç"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("T formalı qırmızı kofta"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Kətan dəsmallar"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Mavi kətan köynək"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klassik ağ yaxalıq"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Gil rəngli sviter"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Mis rəngli tor asılqan"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("T formalı, cızıqlı koftalar"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Yastı papaq"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Centri gödəkcəsi"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Üçlü masa dəsti"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Zəncəfil rəngində şərf"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Qolsuz boz kofta"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Əla çay dəsti"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Quattro mətbəxi"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Tünd mavi şalvar"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Açıq rəngli kofta"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Dörbucaq masa"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Yağış suyu çuxuru"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona krossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Dəniz koftası"),
        "shrineProductSeabreezeSweater": MessageLookupByLibrary.simpleMessage(
            "Dəniz mavisi rəngində sviter"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Çiyni dəyirmi formada açıq olan kofta"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Çiyin çantası"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe keramika dəsti"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella gün eynəkləri"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Əl işi sırğalar"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukkulent bitkilər"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Günəş libası"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Sörf koftası"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vegabond çantası"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Kollec corabları"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Gündəlik kişi koftası (ağ)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Toxunma açarlıq"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Cızıqlı ağ köynək"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Vitni kəməri"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Səbətə əlavə edin"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Səbəti bağlayın"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Menyunu bağlayın"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Menyunu açın"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Elementi silin"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Axtarış"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "signIn": MessageLookupByLibrary.simpleMessage("GİRİŞ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Responsiv starter tətbiq düzəni"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Əsas"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("DÜYMƏ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Başlıq"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Alt başlıq"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Başlıq"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Starter tətbiq"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Əlavə edin"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Sevimli"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Axtarış"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Paylaşın")
      };
}
