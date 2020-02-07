// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a tr locale. All the
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
  String get localeName => 'tr';

  static m0(value) =>
      "Bu uygulamanın kaynak kodunu görmek için ${value} sayfasını ziyaret edin.";

  static m1(title) => "${title} sekmesi için yer tutucu";

  static m2(destinationName) => "Keşfedin: ${destinationName}";

  static m3(destinationName) => "Paylaşın: ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Restoran Yok', one: '1 Restoran', other: '${totalRestaurants} Restoran')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Aktarmasız', one: '1 aktarma', other: '${numberOfStops} aktarma')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Müsait Mülk Yok', one: 'Kullanılabilir 1 Özellik', other: 'Kullanılabilir ${totalProperties} Özellik')}";

  static m10(value) => "Ballı ${value}";

  static m11(value) => "Şekerli ${value}";

  static m12(value) => "Ürün ${value}";

  static m13(error) => "Panoya kopyalanamadı: ${error}";

  static m14(value) => "Sürekli: ${value}";

  static m15(value) => "Aralıklı: ${value}";

  static m16(value) => "İşaretlendi: ${value}";

  static m17(value) => "Seçildi: ${value}";

  static m18(name, phoneNumber) =>
      "${name} adlı kişinin telefon numarası: ${phoneNumber}";

  static m19(value) => "Şunu seçtiniz: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Bakiyesi ${amount} olan ${accountNumber} numaralı ${accountName} hesabı.";

  static m21(amount) => "Bu ay ${amount} tutarında ATM komisyonu ödediniz.";

  static m22(percent) =>
      "Harika! Çek hesabınız geçen aya göre ${percent} daha fazla.";

  static m23(percent) =>
      "Dikkat! Bu ayın Alışveriş bütçenizi ${percent} oranında harcadınız.";

  static m24(amount) => "Bu hafta Restoranlarda ${amount} harcadınız.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Olası vergi iadenizi artırın. 1 atanmamış işleme kategoriler atayın.', other: 'Olası vergi iadenizi artırın. ${count} atanmamış işleme kategoriler atayın.')}";

  static m26(billName, date, amount) =>
      "Son ödeme tarihi ${date} olan ${amount} tutarındaki ${billName} faturası.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Toplamı ${amountTotal} olan ve ${amountUsed} kullanıldıktan sonra ${amountLeft} kalan ${budgetName} bütçesi";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ÖĞE YOK', one: '1 ÖĞE', other: '${quantity} ÖĞE')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Miktar: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Alışveriş sepeti, ürün yok', one: 'Alışveriş sepeti, 1 ürün', other: 'Alışveriş sepeti, ${quantity} ürün')}";

  static m32(product) => "${product} ürününü kaldır";

  static m33(value) => "Ürün ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter örnekleri GitHub havuzu"),
        "backToGallery": MessageLookupByLibrary.simpleMessage("Galeriye dön"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Ön Simge"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Birden çok işlem"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Banner\'ı sıfırla"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Şifreniz diğer cihazınızda güncellendi. Lütfen tekrar oturum açın."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Çentik"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Kayan İşlem Düğmesinin Konumu"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Yerleştirilmiş - Ortada"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Yerleştirilmiş - Uçta"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Kayan - Ortada"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Kayan - Uçta"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Hesap"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarm"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Takvim"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Yorumlar"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("DÜĞME"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Oluştur"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Keşfet"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("Seçilebilir (uzun basma)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Dokunulabilen"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("10 Numara"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("İpek Üreticileri"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Tapınaklar"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Tamil Nadu\'da Gezilecek İlk 10 Şehir"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Güney Hindistan\'ın Zanaatkarları"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Brihadisvara Tapınağı"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Bisiklet"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Asansör"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Şömine"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Büyük"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Orta"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Küçük"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("Işıkları aç"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Çamaşır makinesi"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("KEHRİBAR RENNGİ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("MAVİ"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("MAVİYE ÇALAN GRİ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("KAHVERENGİ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CAMGÖBEĞİ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("KOYU TURUNCU"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("KOYU MOR"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("YEŞİL"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRİ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ÇİVİT MAVİSİ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("AÇIK MAVİ"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("AÇIK YEŞİL"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("KÜF YEŞİLİ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("TURUNCU"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PEMBE"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("MOR"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("KIRMIZI"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TURKUAZ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("SARI"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Kişiselleştirilmiş seyahat uygulaması"),
        "craneEat": MessageLookupByLibrary.simpleMessage("YEME"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napoli, İtalya"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Odun fırınında pişmiş pizza"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, ABD"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lizbon, Portekiz"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Büyük pastırmalı sandviç tutan kadın"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Restoran tarzı taburelerle boş bar"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Arjantin"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portland, ABD"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kore takosu"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Fransa"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Çikolatalı tatlı"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Seul, Güney Kore"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gösterişli restoran oturma alanı"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Seattle, ABD"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Karides yemeği"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Nashville, ABD"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Fırın girişi"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, ABD"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kerevit tabağı"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, İspanya"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pastalarla kafe tezgahı"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Varış Noktasına Göre Restoran Araştırma"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("UÇUŞ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, ABD"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Yaprak dökmeyen ağaçların bulunduğu karla kaplı bir arazideki şale"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Big Sur, ABD"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kahire, Mısır"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gün batımında El-Ezher Camisi\'nin minareleri"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lizbon, Portekiz"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Denizde tuğla deniz feneri"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, ABD"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Palmiye ağaçlarıyla havuz"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Endonezya"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Palmiye ağaçlı deniz kenarı havuzu"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bir arazideki çadır"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu Vadisi, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Karlı dağ önünde dua bayrakları"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu kalesi"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldivler"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Su üzerinde bungalovlar"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, İsviçre"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dağların yamacında, göl kenarında otel"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexico City, Meksika"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Güzel Sanatlar Sarayı\'nın havadan görünüşü"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Rushmore Dağı, ABD"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rushmore Dağı"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Korusu"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Küba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mavi antika bir arabaya dayanan adam"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Varış Noktasına Göre Uçuş Araştırma"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Tarih Seçin"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Tarihleri Seçin"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Varış Noktası Seçin"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("Lokanta sayısı"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Konum Seçin"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Kalkış Noktası Seçin"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Saat Seçin"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Yolcu sayısı"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("UYKU"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldivler"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Su üzerinde bungalovlar"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, ABD"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kahire, Mısır"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gün batımında El-Ezher Camisi\'nin minareleri"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Tayvan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taipei 101 gökdeleni"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Yaprak dökmeyen ağaçların bulunduğu karla kaplı bir arazideki şale"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu kalesi"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Küba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mavi antika bir arabaya dayanan adam"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, İsviçre"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dağların yamacında, göl kenarında otel"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Big Sur, ABD"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bir arazideki çadır"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, ABD"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Palmiye ağaçlarıyla havuz"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portekiz"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ribeira Meydanı\'nda renkli apartmanlar"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksika"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sahilin üst tarafında falezdeki Maya kalıntıları"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lizbon, Portekiz"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Denizde tuğla deniz feneri"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Varış Noktasına Göre Mülk Araştırma"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("İzin ver"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Elmalı Turta"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("İptal"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Çikolatalı Browni"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Lütfen aşağıdaki listeden en sevdiğiniz tatlı türünü seçin. Seçiminiz, bölgenizdeki önerilen restoranlar listesini özelleştirmek için kullanılacak."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Sil"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("İzin Verme"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Select Favorite Dessert"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Geçerli konumunuz haritada gösterilecek, yol tarifleri, yakındaki arama sonuçları ve tahmini seyahat süreleri için kullanılacak."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Uygulamayı kullanırken \"Haritalar\"ın konumunuza erişmesine izin verilsin mi?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Düğme"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Arka Planı Olan"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Uyarıyı Göster"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Sohbet"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Ana sayfa"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Kalsiyum (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Kalori"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Karbonhidrat ( g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Tatlı (1 porsiyon)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Yağ ( g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Demir (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Protein ( g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodyum (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Beslenme"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Elmalı turta"),
        "dataTableRowCupcake":
            MessageLookupByLibrary.simpleMessage("Küçük kek"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Simit"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Ekler"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Dondurulmuş yoğurt"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Kurabiye"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Bal peteği"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Dondurmalı sandviç"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Jelibon"),
        "dataTableRowLollipop": MessageLookupByLibrary.simpleMessage("Lolipop"),
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
            "İşlem çipleri, asıl içerikle ilgili bir işlemi tetikleyen bir dizi seçenektir. İşlem çipleri, kullanıcı arayüzünde dinamik ve içeriğe dayalı olarak görünmelidir."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("İşlem Çipi"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Uyarı iletişim kutusu, kullanıcıyı onay gerektiren durumlar hakkında bilgilendirir. Uyarı iletişim kutusunun isteğe bağlı başlığı ve isteğe bağlı işlemler listesi vardır."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Uyarı"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Başlıklı Uyarı"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Bannerlar önemli kısa mesajlar görüntüler ve kullanıcıların yerine getirmeleri (veya banner\'ı kapatmaları) için işlemler sunar. Banner\'ın kapanması için kullanıcının işlem yapması gerekir."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Liste içinde banner görüntüleme"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Alt uygulama çubuğu, hem alt gezinme çekmecesine hem de kayan işlem düğmesi dahil olmak üzere dörde kadar işleme erişim sağlar."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Gezinmeyi ve işlemleri altta gösterir"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Alt uygulama çubuğu"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Alt gezinme çubukları, ekranın altında 3 ila beş arasında varış noktası görüntüler. Her bir varış noktası bir simge ve tercihe bağlı olarak metin etiketiyle temsil edilir. Kullanıcı, bir alt gezinme simgesine dokunduğunda, bu simge ile ilişkilendirilmiş üst düzey gezinme varış noktasına gider."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Sürekli etiketler"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Seçilen etiket"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Çapraz şeffaflaşan görünümlü alt gezinme"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Alt gezinme"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("Ekle"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ALT SAYFAYI GÖSTER"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Üst bilgi"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Kalıcı alt sayfa, alternatif bir menü veya iletişim kutusudur ve kullanıcının uygulamanın geri kalanı ile etkileşimde bulunmasını önler."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Kalıcı alt sayfa"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Sürekli görüntülenen alt sayfa, uygulamanın asıl içeriğine ek bilgileri gösterir ve kullanıcı uygulamanın diğer bölümleriyle etkileşimde bulunurken görünmeye devam eder."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Sürekli görüntülenen alt sayfa"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sürekli ve kalıcı alt sayfalar"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Alt sayfa"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Metin-alanları"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Düz, yükseltilmiş, dış çizgili ve fazlası"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Düğmeler"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Kartlar; albüm, coğrafi konum, yemek, iletişim bilgileri gibi alakalı bilgileri temsil etmek için kullanılan Materyal sayfalarıdır."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Yuvarlatılmış köşeli temel kartlar"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Kartlar"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Liste menü"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Giriş, özellik ve işlem temsil eden kompakt öğeler"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Çipler"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Seçenek çipleri, bir dizi seçenekten tek bir seçeneği temsil eder. Seçenek çipleri ilgili açıklayıcı metin veya kategoriler içerir."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Seçenek Çipi"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Dönerek uygulamanın meşgul olduğunu gösteren Materyal Tasarıma sahip dairesel ilerleme durumu göstergesi"),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Dairesel İlerleme Durumu Göstergesi"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Demo Kodu"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Panoya kopyalandı."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("TÜMÜNÜ KOPYALA"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Materyal Tasarımın renk paletini temsil eden renk ve renk örneği sabitleri."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Önceden tanımlanmış renklerin tümü"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Renkler"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("İçerik menüsü"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "İşlem sayfası, kullanıcıya geçerli bağlamla ilgili iki veya daha fazla seçenek sunan belirli bir uyarı tarzıdır. Bir işlem sayfasının başlığı, ek mesajı ve işlemler listesi olabilir."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("İşlem Sayfası"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Saat yönünde dönen iOS-tarzında işlem göstergesi"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS stili işlem göstergeleri"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Yalnızca Uyarı Düğmeleri"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Düğmeli Uyarı"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Uyarı iletişim kutusu, kullanıcıyı onay gerektiren durumlar hakkında bilgilendirir. Uyarı iletişim kutusunun isteğe bağlı başlığı, isteğe bağlı içeriği ve isteğe bağlı işlemler listesi vardır. Başlık içeriğin üzerinde görüntülenir ve işlemler içeriğin altında görüntülenir."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Uyarı"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Başlıklı Uyarı"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS tarzı uyarı iletişim kutuları"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Uyarılar"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS tarzı düğme. Dokunulduğunda rengi açılan ve kararan metin ve/veya simge içerir. İsteğe bağlı olarak arka planı bulunabilir."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS tarzı düğmeler"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Düğmeler"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS stili bir gezinme çubuğu. Gezinme çubuğu, ortasında sayfa başlığını minimum düzeyde içeren bir araç çubuğudur."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS stili gezinme çubuğu"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Tarih"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Tarih ve Saat"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Tarih, saat veya hem tarih hem de saat seçmek için kullanılabilen iOS stili seçici widget\'ı."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS stili tarih ve saat seçici"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Saat"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Zamanlayıcı"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Seçiciler"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS stili yenilemek için aşağı çekme denetimini uygulayan widget."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS stili yenilemek için aşağı çekme denetimi"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Birbirini dışlayan bir dizi seçenek arasında seçim yapmak için kullanıldı. Segmentlere ayrılmış kontrolde bir seçenek belirlendiğinde, segmentlere ayrılmış denetimdeki diğer seçenek belirlenemez."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-tarzı bölümlere ayrılmış kontrol"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Kaydırma çubukları sürekli veya aralıklı değerler içinden seçim yapmak için kullanılır."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS tarzında kaydırma çubuğu"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Kaydırma çubuğu"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Anahtarlar tek bir ayarın açık/kapalı durumunu değiştirmek için kullanılır."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS tarzında anahtar"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS tarzında alt gezinme sekmesi çubuğu. Birden fazla sekme gösterilir. Varsayılan olarak ilk sekme olmak üzere içlerinden biri etkin durumda olur."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS tarzında alt sekme çubuğu"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Metin alanı, kullanıcının donanım klavyesi veya ekran klavyesi ile metin girmesini sağlar."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS stili metin alanı"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Kullanıcılar, kaydırma çubuklarını kullanarak belirtilen değer aralığı içinde bir değer veya değer aralığını seçebilir. Kaydırma çubukları temalı veya özelleştirilmiş olabilir."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Özel Kaydırma Çubukları"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Veri tabloları bilgileri ızgara biçimindeki satırlar ve sütunlarda görüntüler. Kullanıcıların model ve sonuç arayabilmesi için bilgiyi kolayca taranabilecek şekilde düzenler."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bilgi satırları ve sütunları"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Veri Tabloları"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Materyal Tasarıma sahip tarih seçici içeren bir iletişim kutusu gösterir."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Tarih Seçici"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("Basit, uyarı ve tam ekran"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("İletişim kutuları"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API Dokümanları"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filtre çipleri, içeriği filtreleme yöntemi olarak etiketler ve açıklayıcı kelimeler kullanır."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filtre çipi"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Basıldığında mürekkep sıçraması görüntüleyen ancak basıldıktan sonra yukarı kalkmayan düz düğme. Düz düğmeleri araç çubuklarında, iletişim kutularında ve dolgulu satır içinde kullanın"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Düz Düğme"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Kayan işlem düğmesi, uygulamadaki birincil işlemi öne çıkarmak için içeriğin üzerine gelen dairesel bir simge düğmesidir."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Kayan İşlem Düğmesi"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Tam ekran iletişim kutusu özelliği, gelen sayfanın tam ekran kalıcı bir iletişim kutusu olup olmadığını belirtir."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Tam Ekran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Tam Ekran"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Tablo Listeler, genellikle resimler gibi benzer türdeki verileri sunmanın en uygun yöntemidir. Tablodaki her öğeye kutu denir."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Alt bilgisi olan"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Üst bilgisi olan"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Yalnızca resim"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Satır ve sütun düzeni"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Tablo Listeler"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Bilgi"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Giriş çipleri, bir varlık (kişi, yer veya şey) gibi karmaşık bir bilgi parçasını ya da kompakt bir formda konuşma dili metnini temsil eder."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Giriş Çipi"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL görüntülenemedi:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "İlerleme çubuğu olarak da bilinen, Materyal Tasarıma sahip doğrusal ilerleme durumu göstergesi"),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Doğrusal İlerleme Durumu Göstergesi"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Tipik olarak biraz metnin yanı sıra başında veya sonunda simge olan sabit yükseklikli tek satır."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("İkincil metin"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Kayan liste düzenleri"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listeler"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Devre dışı menü öğesi"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("Liste menüsü olan öğe"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("İçerik menüsü olan öğe"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Bölümlere ayrılmış menüsü olan öğe"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Basit menüsü olan öğe"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("İçerik menüsü öğesi bir"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("İçerik menüsü öğesi üç"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Menü, geçici bir yüzeyde seçenekler listesini görüntüler. Menüler, kullanıcılar bir düğme, işlem veya başka bir kontrolle etkileşimde bulunduğunda görünür."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Dört"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Bağlantıyı al"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Menü öğesi bir"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Menü öğesi üç"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Menü öğesi iki"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Bir"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Önizle"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Kaldır"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Paylaş"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Menü düğmeleri ve basit menüler"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Üç"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menü"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("İki"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Tek Satır"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Bu demodaki kullanılabilir seçenekleri görmek için buraya dokunun."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Seçenekleri göster"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Seçenekler"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Dış çizgili düğmeler basıldığında opak olur ve yükselir. Alternatif, ikincil işlemi belirtmek için genellikle yükseltilmiş düğmelerle eşlenirler."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Dış Çizgili Düğme"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("SEÇİCİYİ GÖSTER"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Tarih ve saat seçme"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Seçiciler"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Doğrusal, dairesel, belirsiz"),
        "demoProgressIndicatorTitle": MessageLookupByLibrary.simpleMessage(
            "İlerleme durumu göstergeleri"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Yükseltilmiş düğmeler çoğunlukla düz düzenlere boyut ekler. Yoğun veya geniş alanlarda işlevleri vurgular."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Yükseltilmiş Düğme"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Kaydırma çubukları, bir çubuk boyunca çeşitli değerler yansıtır. Kaydırma çubuklarının her iki ucunda değer aralığının alt ve üst değerlerini gösteren simgeler bulunabilir. Kaydırma çubukları, ses düzeyi ve parlaklık gibi ayarları düzenlemek veya görüntü filtreleri uygulamak için idealdir."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Aralık Kaydırma Çubukları"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Bölümlere ayrılmış menü"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Onay kutuları, kullanıcıya bir dizi seçenek arasından birden fazlasını belirlemesine olanak sağlar. Normal bir onay kutusunun değeri true (doğru) veya false (yanlış) olur. Üç durumlu onay kutusunun değeri boş da olabilir."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Onay Kutusu"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Radyo düğmeleri, kullanıcının bir dizi seçenek arasından birini belirlemesine olanak sağlar. Kullanıcının tüm mevcut seçenekleri yan yana görmesi gerektiğini düşünüyorsanız özel seçim için radyo düğmelerini kullanın."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radyo düğmesi"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Onay kutuları, radyo düğmeleri ve anahtarlar"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Açık/kapalı anahtarları, tek bir ayarlar seçeneğinin durumunu açar veya kapatır. Anahtarın kontrol ettiği seçeneğin yanı sıra seçeneğin bulunduğu durum, karşılık gelen satır içi etikette açıkça belirtilmelidir."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Anahtar"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Seçim kontrolleri"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Basit iletişim kutusu, kullanıcıya birkaç seçenek arasından seçim yapma olanağı sunar. Basit iletişim kutusunun seçeneklerin üzerinde görüntülenen isteğe bağlı bir başlığı vardır."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Basit"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Basit menü"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Sürekli"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Özelleştirilmiş Temaya Sahip Sürekli Aralık Değerli Çubuğu"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Düzenlenebilir Sayısal Değere Sahip Kesintisiz"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Kullanıcılar, kaydırma çubuklarını kullanarak belirtilen değer aralığı içinde bir değeri seçebilir. Kaydırma çubukları, ses düzeyi ve parlaklık gibi ayarları düzenlemek veya görüntü filtreleri uygulamak için idealdir."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Ayrık"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Özelleştirilmiş Temaya Sahip Ayrık Değerli Kaydırma Çubuğu"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Düzenlenebilir sayısal değer"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kaydırarak bir değer seçmeyi sağlayan widget"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Kaydırma Çubukları"),
        "demoSnackbarsAction":
            MessageLookupByLibrary.simpleMessage("Snackbar işlemine bastınız."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("İŞLEM"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("SNACKBAR GÖSTER"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Snackbar\'lar bir uygulamanın gerçekleştirdiği veya gerçekleştireceği bir işlemi kullanıcılara bildirir. Ekranın altına yakın bir yerde geçici olarak görünür. Kullanıcı deneyimini engellememeli ve ekrandan kaybolması için kullanıcının bir işlem yapmasını gerektirmemelidir."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Snackbar\'lar ekranın alt bölümünde mesaj gösterir"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Bu bir snackbar."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Snackbar\'lar"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Sekmeler farklı ekranlarda, veri kümelerinde ve diğer etkileşimlerde bulunan içeriği düzenler."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bağımsız olarak kaydırılabilen görünümlü sekmeler"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Sekmeler"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Metin alanları, kullanıcıların bir kullanıcı arayüzüne metin girmesini sağlar. Genellikle formlarda ve iletişim kutularında görünürler."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-posta"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Lütfen bir şifre girin."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - ABD\'ye ait bir telefon numarası girin."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Göndermeden önce lütfen kırmızı renkle belirtilen hataları düzeltin"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Şifreyi gizle"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Kısa tutun, bu sadece bir demo."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Hayat hikayesi"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Ad*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Ad gerekli."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("En fazla 8 karakter."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Lütfen sadece alfabetik karakterler girin."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Şifre*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Şifreler eşleşmiyor"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefon numarası*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* zorunlu alanı belirtir"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Şifreyi yeniden yazın*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salary"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Şifreyi göster"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("GÖNDER"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tek satır düzenlenebilir metin ve sayılar"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Bize kendinizden bahsedin (örneğin, ne iş yaptığınızı veya hobilerinizi yazın)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Metin-alanları"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "Size hangi adla hitap ediliyor?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Size nereden ulaşabiliriz?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("E-posta adresiniz"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Materyal Tasarıma sahip saat seçici içeren bir iletişim kutusu gösterir."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Saat Seçici"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Açma/kapatma düğmeleri benzer seçenekleri gruplamak için kullanılabilir. Benzer açma/kapatma düğmesi gruplarını vurgulamak için grubun ortak bir kapsayıcıyı paylaşması gerekir."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Açma/Kapatma Düğmeleri"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "İpuçları, bir düğmenin işlevini veya diğer kullanıcı arayüzü işlemini açıklamaya yardımcı olan metin etiketleri sağlar. İpuçları, kullanıcı fareyle bir öğenin üzerine geldiğinde veya öğeye odaklandığında ya da uzun bastığında bilgilendirici metin görüntüler."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "İpucunu görüntülemek için uzun basın veya fareyle üzerine gelin."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Uzun basmada veya fareyle üzerine gelmede görüntülenen kısa mesaj"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("İpuçları"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("İki Satır"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Materyal Tasarımında bulunan çeşitli tipografik stillerin tanımları."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Önceden tanımlanmış tüm metin stilleri"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Yazı biçimi"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Hesap ekle"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("KABUL EDİYORUM"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("İPTAL"),
        "dialogDisagree":
            MessageLookupByLibrary.simpleMessage("KABUL ETMİYORUM"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("SİL"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Taslak silinsin mi?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Tam ekran iletişim kutusu demosu"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("KAYDET"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Tam Ekran İletişim Kutusu"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google\'ın, uygulamaların konum tespiti yapmasına yardımcı olmasına izin verin. Bu, hiçbir uygulama çalışmıyorken bile anonim konum verilerinin Google\'a gönderilmesi anlamına gelir."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google\'ın konum hizmeti kullanılsın mı?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Yedekleme hesabı ayarla"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("İLETİŞİM KUTUSUNU GÖSTER"),
        "dismiss": MessageLookupByLibrary.simpleMessage("KAPAT"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategoriler"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeri"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Kumsal"),
        "placeBronzeWorks": MessageLookupByLibrary.simpleMessage("Bronz İşler"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Balıkçı"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Çiçek Pazarı"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Öğle Yemeği Hazırlığı"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Pazar"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Tuz Çiftliği"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scooter\'lar"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("İpek Üreticisi"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Thanjavur Tapınağı"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Araba İçin Biriktirilen"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Mevduat"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Ev İçin Biriktirilen"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Tatil"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Hesap Sahibi"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Yıllık Faiz Getirisi"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Geçen Yıl Ödenen Faiz"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Faiz Oranı"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Yılın Başından Bugüne Faiz"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Sonraki Ekstre"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Toplam"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Hesaplar"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Uyarılar"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Faturalar"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Ödenecek tutar:"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Giyim"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kafeler"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Market Alışverişi"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restoranlar"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Sol"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Bütçeler"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Kişisel finans uygulaması"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("KALDI"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("GİRİŞ YAP"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Giriş yapın"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally\'ye giriş yapın"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Hesabınız yok mu?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Şifre"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Beni Hatırla"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("KAYDOL"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Kullanıcı adı"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("TÜMÜNÜ GÖSTER"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Tüm hesapları göster"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Tüm faturaları göster"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Tüm bütçeleri göster"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATMi bul"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Yardım"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Hesapları Yönet"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Bildirimler"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Kağıt kullanmayan Ayarlar"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Şifre kodu ve Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Kişisel Bilgiler"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Oturumu kapat"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Vergi Dokümanları"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("HESAPLAR"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FATURALAR"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BÜTÇELER"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("GENEL BAKIŞ"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("AYARLAR"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery hakkında"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Londra\'da TOASTER tarafından tasarlandı"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Ayarları kapat"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Koyu"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Geri bildirim gönder"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Açık"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Yerel ayar"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platform mekaniği"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Ağır çekim"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Sistem"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Metin yönü"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Yerel ayara göre"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Metin ölçekleme"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Çok büyük"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Büyük"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Küçük"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("İPTAL"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ALIŞVERİŞ SEPETİNİ BOŞALT"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("ALIŞVERİŞ SEPETİ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Gönderim:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Alt toplam:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Vergi:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("TOPLAM"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESUARLAR"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TÜMÜ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("GİYİM"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("EV"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Şık bir perakende uygulaması"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Şifre"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Kullanıcı adı"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ÇIKIŞ YAP"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENÜ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SONRAKİ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Mavi taş kupa"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Kiraz kırmızısı fistolu tişört"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Şambre peçete"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Patiska gömlek"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klasik beyaz yaka"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Kil kazak"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Bakır tel raf"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("İnce çizgili tişört"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Bahçe teli"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby şapka"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry ceket"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Yaldızlı üçlü sehpa"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Kırmızı eşarp"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Gri bol kolsuz tişört"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs çay takımı"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Quattro mutfak"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Lacivert pantolon"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("İnce tunik"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Dört kişilik masa"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Yağmur gideri"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Deniz tuniği"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Deniz esintisi kazağı"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Açık omuzlu tişört"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Askılı çanta"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Rahatlatıcı seramik takım"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella güneş gözlüğü"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut küpeler"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukulent bitki saksıları"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Yazlık elbise"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("\"Surf and perf\" gömlek"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond çanta"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Varis çorabı"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (beyaz)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Örgülü anahtarlık"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("İnce çizgili beyaz gömlek"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney kemer"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Sepete ekle"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Alışveriş sepetini kapat"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Menüyü kapat"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Menüyü aç"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Öğeyi kaldır"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Ara"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Ayarlar"),
        "signIn": MessageLookupByLibrary.simpleMessage("OTURUM AÇ"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Duyarlı başlangıç düzeni"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Gövde"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("DÜĞME"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Başlık"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Alt başlık"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Başlık"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Başlangıç uygulaması"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Ekle"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favoriler listesine ekle"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("Ara"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Paylaş")
      };
}
