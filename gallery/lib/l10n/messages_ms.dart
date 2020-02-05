// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ms locale. All the
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
  String get localeName => 'ms';

  static m0(value) => "Untuk melihat kod sumber apl ini, sila lawati ${value}.";

  static m1(title) => "Pemegang tempat untuk tab ${title}";

  static m2(destinationName) => "Teroka ${destinationName}";

  static m3(destinationName) => "Kongsi ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Tiada Restoran', one: '1 Restoran', other: '${totalRestaurants} Restoran')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Penerbangan terus', one: '1 persinggahan', other: '${numberOfStops} persinggahan')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Tiada Hartanah Tersedia', one: '1 Hartanah Tersedia', other: '${totalProperties} Hartanah Tersedia')}";

  static m10(value) => "${value} bermadu";

  static m11(value) => "${value} bergula";

  static m12(value) => "Item ${value}";

  static m13(error) => "Gagal menyalin ke papan keratan: ${error}";

  static m14(value) => "Berterusan: ${value}";

  static m15(value) => "Diskret: ${value}";

  static m16(value) => "Ditandai: ${value}";

  static m17(value) => "Dipilih: ${value}";

  static m18(name, phoneNumber) =>
      "Nombor telefon ${name} ialah ${phoneNumber}";

  static m19(value) => "Anda memilih: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Akaun ${accountName} bagi ${accountNumber} sebanyak ${amount}.";

  static m21(amount) =>
      "Anda sudah membelanjakan ${amount} untuk yuran ATM pada bulan ini";

  static m22(percent) =>
      "Syabas! Akaun semasa anda adalah ${percent} lebih tinggi daripada bulan lalu.";

  static m23(percent) =>
      "Makluman, anda telah menggunakan ${percent} daripada belanjawan Beli-belah anda untuk bulan ini.";

  static m24(amount) =>
      "Anda sudah membelanjakan ${amount} pada Restoran minggu ini.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Tingkatkan potongan cukai berpotensi anda! Tetapkan kategori kepada 1 transaksi yang tidak ditentukan.', other: 'Tingkatkan potongan cukai berpotensi anda! Tetapkan kategori kepada ${count} transaksi yang tidak ditentukan.')}";

  static m26(billName, date, amount) =>
      "Bil ${billName} perlu dijelaskan pada ${date} sebanyak ${amount}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Belanjawan ${budgetName} dengan ${amountUsed} digunakan daripada ${amountTotal}, baki ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'TIADA ITEM', one: '1 ITEM', other: '${quantity} ITEM')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Kuantiti: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Troli Beli-belah, tiada item', one: 'Troli Beli-belah, 1 item', other: 'Troli Beli-belah, ${quantity} item')}";

  static m32(product) => "Alih keluar ${product}";

  static m33(value) => "Item ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Repositori GitHub sampel Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Kembali ke Gallery"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Ikon Mendahulu"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Pelbagai tindakan"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Tetapkan semula sepanduk"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Kata laluan anda telah dikemas kini pada peranti anda yang lain. Sila log masuk sekali lagi."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Takuk"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Kedudukan Butang Tindakan Terapung"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Dok - Tengah"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Dok - Hujung"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Terapung - Tengah"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Terapung - Hujung"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Akaun"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Penggera"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendar"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Ulasan"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BUTANG"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Buat"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Teroka"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("Boleh pilih (tekan lama)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Boleh ketik"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Nombor 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Pemintal Sutera"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Kuil"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "10 Bandar Paling Popular untuk Dilawati di Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Tenaga Mahir dari India Selatan"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Kuil Brihadisvara"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Berbasikal"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lif"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Pendiang"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Besar"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Sederhana"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Kecil"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Hidupkan lampu"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Mesin basuh"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("KUNING JINGGA"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BIRU"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("KELABU KEBIRUAN"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("COKLAT"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("BIRU KEHIJAUAN"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("JINGGA TUA"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("UNGU TUA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("HIJAU"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("KELABU"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("BIRU NILA"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("BIRU MUDA"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("HIJAU CERAH"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("HIJAU LIMAU NIPIS"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("JINGGA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("MERAH JAMBU"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("UNGU"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("MERAH"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("HIJAU KEBIRUAN"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("KUNING"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Apl perjalanan yang diperibadikan"),
        "craneEat": MessageLookupByLibrary.simpleMessage("MAKAN"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Naples, Itali"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pizza dalam ketuhar menggunakan kayu"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Amerika Syarikat"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Wanita memegang sandwic pastrami yang sangat besar"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar kosong dengan bangku gaya makan malam"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Amerika Syarikat"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco Korea"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Perancis"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pencuci mulut coklat"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seoul, Korea Selatan"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kawasan tempat duduk restoran Artsy"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Amerika Syarikat"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Masakan udang"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Amerika Syarikat"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pintu masuk bakeri"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Amerika Syarikat"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sepinggan udang krai"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Sepanyol"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kaunter kafe dengan pastri"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Terokai Restoran mengikut Destinasi"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("TERBANG"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Amerika Syarikat"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet dalam lanskap bersalji dengan pokok malar hijau"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Amerika Syarikat"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kaherah, Mesir"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Menara Masjid Al-Azhar semasa matahari terbenam"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rumah api bata di laut"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Amerika Syarikat"),
        "craneFly12SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kolam renang dengan pokok palma"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kolam renang tepi laut dengan pokok palma"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Khemah di padang"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu Valley, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bendera doa di hadapan gunung bersalji"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kubu kota Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Banglo terapung"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("Vitznau, Switzerland"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel tepi tasik berhadapan gunung"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexico City, Mexico"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pemandangan udara Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Mount Rushmore, Amerika Syarikat"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Gunung Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapura"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Lelaki bersandar pada kereta biru antik"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Terokai Penerbangan mengikut Destinasi"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Pilih Tarikh"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Pilih Tarikh"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Pilih Destinasi"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Kedai makan"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Pilih Lokasi"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Pilih Tempat Berlepas"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Pilih Masa"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Pengembara"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("TIDUR"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Banglo terapung"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Amerika Syarikat"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kaherah, Mesir"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Menara Masjid Al-Azhar semasa matahari terbenam"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pencakar langit Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet dalam lanskap bersalji dengan pokok malar hijau"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kubu kota Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Lelaki bersandar pada kereta biru antik"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitznau, Switzerland"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel tepi tasik berhadapan gunung"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Amerika Syarikat"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Khemah di padang"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Amerika Syarikat"),
        "craneSleep6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kolam renang dengan pokok palma"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pangsapuri berwarna-warni di Ribeira Square"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexico"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Runtuhan maya pada cenuram di atas pantai"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rumah api bata di laut"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Terokai Hartanah mengikut Destinasi"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Benarkan"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Pai Epal"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Batal"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Kek keju"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie Coklat"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Sila pilih jenis pencuci mulut kegemaran anda daripada senarai di bawah. Pemilihan anda akan digunakan untuk menyesuaikan senarai kedai makan yang dicadangkan di kawasan anda."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Buang"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Jangan Benarkan"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Pilih Pencuci Mulut Kegemaran"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Lokasi semasa anda akan dipaparkan pada peta dan digunakan untuk menunjuk arah, hasil carian tempat berdekatan dan anggaran waktu perjalanan."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Benarkan \"Peta\" mengakses lokasi anda semasa anda menggunakan apl?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Butang"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Dengan Latar Belakang"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Tunjukkan Makluman"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Laman Utama"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Kalsium (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Kalori"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Karbohidrat (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Pencuci mulut (1 sajian)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Lemak (g)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("Besi (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Protein (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodium (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Pemakanan"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Pai epal"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Donut"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Eclair"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Yogurt beku"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Gingerbread"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Honeycomb"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Ice cream sandwich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Jelly bean"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Lollipop"),
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
            "Cip tindakan ialah satu set pilihan yang mencetuskan tindakan yang berkaitan dengan kandungan utama. Cip tindakan seharusnya dipaparkan secara dinamik dan kontekstual dalam UI."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Cip Tindakan"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Dialog makluman memberitahu pengguna tentang situasi yang memerlukan perakuan. Dialog makluman mempunyai tajuk pilihan dan senarai tindakan pilihan."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Makluman"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Makluman Bertajuk"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Sepanduk memaparkan mesej yang penting, ringkas dan menyediakan tindakan untuk ditangani pengguna (atau mengetepikan sepanduk). Tindakan pengguna diperlukan untuk mengetepikan sepanduk."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Memaparkan sepanduk dalam senarai"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Sepanduk"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Bar apl sebelah bawah menyediakan akses kepada laci navigasi bawah dan sehingga empat tindakan, termasuk butang tindakan terapung."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Memaparkan navigasi dan tindakan di bahagian bawah"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Bar apl sebelah bawah"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Bar navigasi bawah menunjukkan tiga hingga lima destinasi di bahagian bawah skrin. Setiap destinasi diwakili oleh ikon dan label teks pilihan. Apabila ikon navigasi bawah diketik, pengguna dibawa ke destinasi navigasi tahap tinggi yang dikaitkan dengan ikon tersebut."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Label berterusan"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Label yang dipilih"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigasi bawah dengan paparan memudar silang"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigasi bawah"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Tambah"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("TUNJUKKAN HELAIAN BAWAH"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Pengepala"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Helaian bawah mod adalah sebagai alternatif kepada menu atau dialog dan menghalang pengguna daripada berinteraksi dengan apl yang lain."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Helaian bawah mod"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Helaian bawah berterusan menunjukkan maklumat yang menambah kandungan utama apl. Helaian bawah berterusan tetap kelihatan walaupun semasa pengguna berinteraksi dengan bahagian lain apl."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Helaian bawah berterusan"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Helaian bawah mod dan berterusan"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Helaian bawah"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Medan teks"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rata, timbul, garis bentuk dan pelbagai lagi"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Butang"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Kad merupakan helaian Bahan yang digunakan untuk mewakili beberapa maklumat berkaitan, contohnya album, lokasi geografi, hidangan, butiran hubungan dan lain-lain."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kad garis dasar dengan penjuru bulat"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Kad"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu senarai semak"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Unsur sarat yang mewakili input, atribut atau tindakan"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Cip"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cip pilihan mewakili satu pilihan daripada satu set. Cip pilihan mengandungi teks atau kategori deskriptif yang berkaitan."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Cip Pilihan"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Penunjuk kemajuan bulat bagi Reka Bentuk Bahan, yang berputar untuk menunjukkan bahawa aplikasi sedang sibuk."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Penunjuk Kemajuan Bulat"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Kod Tunjuk Cara"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Disalin ke papan keratan."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("SALIN SEMUA"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Warna dan malar reja warna yang mewakili palet warna Reka Bentuk Bahan."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Semua warna yang dipratakrif"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Warna"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu konteks"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Helaian tindakan ialah gaya makluman tertentu yang mengemukakan kepada pengguna set dua atau lebih pilihan yang berkaitan dengan konteks semasa. Helaian tindakan boleh mempunyai tajuk, mesej tambahan dan senarai tindakan."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Helaian Tindakan"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Penunjuk aktiviti gaya iOS yang berputar mengikut arah jam."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("Penunjuk aktiviti gaya iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Butang Makluman Sahaja"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Makluman Dengan Butang"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Dialog makluman memberitahu pengguna tentang situasi yang memerlukan perakuan. Dialog makluman mempunyai tajuk pilihan, kandungan pilihan dan senarai tindakan pilihan. Tajuk dipaparkan di bahagian atas kandungan manakala tindakan dipaparkan di bahagian bawah kandungan."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Makluman"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Makluman Bertajuk"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("Dialog makluman gaya iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Makluman"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Butang gaya iOS. Butang menggunakan teks dan/atau ikon yang melenyap keluar dan muncul apabila disentuh. Boleh mempunyai latar belakang secara pilihan."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Butang gaya iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Butang"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Bar navigasi bergaya iOS Bar navigasi ialah bar alat yang secara minimumnya mengandungi tajuk halaman di tengah-tengah bar alat."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("Bar navigasi gaya iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Tarikh"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Tarikh dan Masa"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Widget pemilih gaya iOS yang boleh digunakan untuk memilih tarikh, masa atau kedua-duanya."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pemilih tarikh dan masa gaya iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Masa"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Pemasa"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Pemilih"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Widget yang melaksanakan kawalan kandungan tarik untuk muat semula gaya iOS."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Kawalan tarik untuk muat semula gaya iOS"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Digunakan untuk memilih antara beberapa pilihan eksklusif bersama. Apabila satu pilihan dalam kawalan yang disegmenkan dipilih, pilihan lain dalam kawalan disegmenkan itu dihentikan sebagai pilihan."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Kawalan disegmenkan gaya iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Peluncur boleh digunakan untuk memilih daripada set nilai berterusan atau diskret."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Peluncur gaya iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Peluncur"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Suis digunakan untuk menogol keadaan hidup/mati tetapan tunggal."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Suis gaya iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Bar tab navigasi bawah gaya iOS. Memaparkan berbilang tab dengan satu tab sedang aktif, tab pertama secara lalai."),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("Bar tab bawah gaya iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Medan teks membolehkan pengguna memasukkan teks menggunakan papan kekunci perkakasan atau papan kekunci pada skrin."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("Medan teks gaya iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Peluncur menggambarkan satu julat nilai di sepanjang bar dan pengguna boleh memilih satu atau beberapa nilai itu. Peluncur boleh bertema atau disesuaikan."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Peluncur Tersuai"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Jadual data memaparkan maklumat dalam format seperti grid yang mengandungi baris dan lajur. Jadual ini menyusun maklumat dengan cara yang mudah untuk diimbas, supaya pengguna dapat mencari corak dan cerapan."),
        "demoDataTableSubtitle":
            MessageLookupByLibrary.simpleMessage("Baris dan lajur maklumat"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Jadual Data"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Menunjukkan dialog yang mengandungi pemilih tarikh Reka Bentuk Bahan."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Pemilih Tarikh"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ringkas, makluman dan skrin penuh"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialog"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Dokumentasi API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cip penapis menggunakan teg atau perkataan deskriptif sebagai cara untuk menapis kandungan."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Cip Penapis"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butang rata memaparkan percikan dakwat apabila ditekan namun tidak timbul. Gunakan butang rata pada bar alat, dalam dialog dan sebaris dengan pelapik"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butang Rata"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butang tindakan terapung ialah butang ikon bulat yang menuding pada kandungan untuk mempromosikan tindakan utama dalam aplikasi."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butang Tindakan Terapung"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Sifat Dialogskrinpenuh menentukan sama ada halaman masuk ialah dialog mod skrin penuh"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Skrin penuh"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Skrin Penuh"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Senarai Grid adalah paling sesuai untuk pembentangan data homogen, biasanya imej. Setiap item dalam senarai grid dipanggil jubin."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Dengan pengaki"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Dengan pengepala"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Imej sahaja"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Reka letak baris dan lajur"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Senarai Grid"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Maklumat"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cip input mewakili bahagian maklumat yang kompleks, seperti entiti (orang, tempat atau benda) atau teks perbualan dalam bentuk padat."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("Cip Input"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Tidak dapat memaparkan URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Penunjuk kemajuan linear Reka Bentuk Bahan, juga dikenali sebagai bar kemajuan."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Penunjuk Kemajuan Linear"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Baris tunggal ketinggian tetap yang biasanya mengandungi beberapa teks serta ikon mendulu atau mengekor."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Teks peringkat kedua"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Reka letak senarai penatalan"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Senarai"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Item menu dilumpuhkan"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Item dengan menu senarai semak"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("Item dengan menu konteks"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Item dengan menu berbahagian"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Item dengan menu ringkas"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("Item menu konteks pertama"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("Item menu konteks ketiga"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Menu memaparkan senarai pilihan pada permukaan sementara. Menu ini muncul apabila pengguna berinteraksi dengan butang, tindakan atau kawalan lain."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Empat"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Dapatkan pautan"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Item menu pertama"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Item menu ketiga"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Item menu kedua"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Satu"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Pratonton"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Alih keluar"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Kongsi"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Butang menu dan menu ringkas"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Tiga"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Dua"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Satu Baris"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Ketik di sini untuk melihat pilihan yang tersedia untuk tunjuk cara ini."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Lihat pilihan"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Pilihan"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butang garis bentuk menjadi legap dan terangkat apabila ditekan. Butang ini sering digandingkan dengan butang timbul untuk menunjukkan tindakan sekunder alternatif."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butang Garis Bentuk"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("TUNJUKKAN PEMILIH"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Pilihan tarikh dan masa"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Pemilih"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("Linear, bulat, tidak tentu"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Penunjuk kemajuan"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butang timbul menambahkan dimensi pada reka letak yang kebanyakannya rata. Butang ini menekankan fungsi pada ruang sibuk atau luas."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butang Timbul"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Peluncur menggambarkan satu julat nilai di sepanjang bar. Peluncur boleh mempunyai ikon di kedua-dua hujung bar yang menggambarkan satu julat nilai. Peluncur ini sesuai untuk melaraskan tetapan seperti kelantangan, kecerahan atau penggunaan penapis imej."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Peluncur Julat"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu berbahagian"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Kotak pilihan membenarkan pengguna memilih beberapa pilihan daripada satu set. Nilai kotak pilihan biasa adalah benar atau salah dan nilai kotak pilihan tiga keadaan juga boleh menjadi sifar."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Kotak pilihan"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Butang radio membenarkan pengguna memilih satu pilihan daripada satu set. Gunakan butang radio untuk pemilihan eksklusif jika anda berpendapat bahawa pengguna perlu melihat semua pilihan yang tersedia secara bersebelahan."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kotak pilihan, butang radio dan suis"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Suis hidup/mati menogol keadaan pilihan tetapan tunggal. Pilihan kawalan suis serta keadaannya, hendaklah dibuat jelas daripada label sebaris yang sepadan."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Tukar"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Kawalan pilihan"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Dialog ringkas menawarkan pengguna satu pilihan antara beberapa pilihan. Dialog ringkas mempunyai tajuk pilihan yang dipaparkan di bahagian atas pilihan itu."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ringkas"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu ringkas"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Berterusan"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Peluncur Julat Berterusan dengan Tema Tersuai"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Berterusan dengan Nilai Berangka Boleh Edit"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Peluncur menggambarkan satu julat nilai di sepanjang bar dan pengguna boleh memilih satu daripada nilai itu. Peluncur ini sesuai untuk melaraskan tetapan seperti kelantangan, kecerahan atau penggunaan penapis imej."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Diskret"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Peluncur Diskret dengan Tema Tersuai"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Nilai berangka boleh edit"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widget untuk memilih nilai dengan meleret"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Peluncur"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Anda menekan tindakan bar snek."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("TINDAKAN"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("TUNJUKKAN BAR SNEK"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Bar snek memberitahu pengguna tentang proses yang telah dilakukan atau yang akan dilakukan oleh apl. Bar snek ini dipaparkan di bahagian bawah skrin secara sementara. Bar snek tidak sepatutnya mengganggu pengalaman pengguna dan tidak memerlukan input pengguna untuk hilang."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bar snek menunjukkan mesej di bahagian bawah skrin"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Ini ialah Bar Snek."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Bar snek"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Tab menyusun kandungan untuk semua skrin, set data dan interaksi lain yang berbeza-beza."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tab dengan paparan boleh ditatal secara bebas"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Tab"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Medan teks membolehkan pengguna memasukkan teks ke dalam UI. Medan teks ini biasanya dipaparkan dalam borang dan dialog."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-mel"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Sila masukkan kata laluan."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Masukkan nombor telefon AS."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Sila betulkan ralat yang berwarna merah sebelum serahan."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Sembunyikan kata laluan"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Ringkaskan, teks ini hanya demo."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Kisah hidup"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nama*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Nama diperlukan."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Tidak melebihi 8 aksara."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Sila masukkan aksara mengikut abjad sahaja."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Kata laluan*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Kata laluan tidak sepadan"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Nombor telefon*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* menandakan medan yang diperlukan"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Taip semula kata laluan*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Gaji"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Tunjukkan kata laluan"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("SERAH"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Teks dan nombor boleh edit bagi garisan tunggal"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Beritahu kami tentang diri anda. (misalnya, tulis perkara yang anda lakukan atau hobi anda)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Medan teks"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Apakah nama panggilan anda?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Bagaimanakah cara menghubungi anda?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Alamat e-mel anda"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Menunjukkan dialog yang mengandungi pemilih masa Reka Bentuk Bahan."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Pemilih Masa"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butang togol boleh digunakan untuk mengumpulkan pilihan yang berkaitan. Untuk menekankan kumpulan butang togol yang berkaitan, kumpulan harus berkongsi bekas yang sama"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butang Togol"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Tip alat menyediakan label teks yang membantu menjelaskan fungsi butang atau tindakan antara muka pengguna yang lain. Tip alat memaparkan teks bermaklumat apabila pengguna menuding, menumpukan atau tekan lama pada satu unsur."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Tekan lama atau tuding untuk memaparkan tip alat."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mesej ringkas dipaparkan apabila tekan lama atau tuding"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Tip alat"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dua Baris"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definisi bagi pelbagai gaya tipografi yang ditemui dalam Reka Bentuk Bahan."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Semua gaya teks yang dipratentukan"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografi"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Tambah akaun"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("SETUJU"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("BATAL"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("TIDAK SETUJU"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("BUANG"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Buang draf?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("Demo dialog skrin penuh"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SIMPAN"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Dialog Skrin Penuh"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Benarkan Google membantu apl menentukan lokasi. Ini bermakna menghantar data lokasi awanama kepada Google, walaupun semasa tiada apl yang berjalan."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Gunakan perkhidmatan lokasi Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Tetapkan akaun sandaran"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("TUNJUKKAN DIALOG"),
        "dismiss": MessageLookupByLibrary.simpleMessage("KETEPIKAN"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategori"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeri"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Pantai"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Bronze Works"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Nelayan"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Flower Market"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Penyediaan Makan Tengahari"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Market"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Salt Farm"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Skuter"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Pembuat Sutera"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Thanjavur Temple"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Simpanan Kereta"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Semasa"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Simpanan Perumahan"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Percutian"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Pemilik Akaun"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Peratus Hasil Tahunan"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Faedah Dibayar Pada Tahun Lalu"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Kadar Faedah"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Faedah YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Penyata seterusnya"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Jumlah"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Akaun"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Makluman"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Bil"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Tarikh Akhir"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Pakaian"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kedai Kopi"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Barangan runcit"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restoran"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Kiri"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Belanjawan"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Apl kewangan peribadi"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("KIRI"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("LOG MASUK"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Log masuk"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Log masuk ke Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Tiada akaun?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Kata laluan"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Ingat saya"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("DAFTAR"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nama Pengguna"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("LIHAT SEMUA"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Lihat semua akaun"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Lihat semua bil"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Lihat semua belanjawan"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Cari ATM"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Bantuan"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Urus Akaun"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Pemberitahuan"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Tetapan Tanpa Kertas"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Kod laluan dan Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Maklumat Peribadi"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Log keluar"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Dokumen Cukai"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("AKAUN"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("BIL"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BELANJAWAN"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("IKHTISAR"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("TETAPAN"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Perihal Galeri Flutter"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Direka bentuk oleh TOASTER di London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Tutup tetapan"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Tetapan"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Gelap"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Hantar maklum balas"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Cerah"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Tempat peristiwa"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mekanik platform"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Gerak perlahan"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Sistem"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Arah teks"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Berdasarkan tempat peristiwa"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Penskalaan teks"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Sangat Besar"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Besar"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Biasa"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Kecil"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Tetapan"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("BATAL"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("KOSONGKAN TROLI"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("TROLI"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Penghantaran:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subjumlah:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Cukai:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("JUMLAH"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESORI"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("SEMUA"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("PAKAIAN"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("RUMAH"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Apl runcit yang mengikut perkembangan"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Kata laluan"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nama Pengguna"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("LOG KELUAR"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SETERUSNYA"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Blue stone mug"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Cerise scallop tee"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray napkins"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambray shirt"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Classic white collar"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Clay sweater"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Copper wire rack"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Fine lines tee"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby hat"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry jacket"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Gilt desk trio"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Ginger scarf"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Grey slouch tank"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs tea set"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Navy trousers"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Plaster tunic"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Quartet table"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Rainwater tray"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Sea tunic"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Seabreeze sweater"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Shoulder rolls tee"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Shrug bag"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe ceramic set"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella sunglasses"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut earrings"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Succulent planters"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Sunshirt dress"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surf and perf shirt"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond sack"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Varsity socks"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (white)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Weave keyring"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("White pinstripe shirt"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney belt"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Tambahkan ke troli"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Tutup troli"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Tutup menu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Buka menu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Alih keluar item"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Cari"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Tetapan"),
        "signIn": MessageLookupByLibrary.simpleMessage("LOG MASUK"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Reka letak permulaan yang responsif"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Kandungan"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BUTANG"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Tajuk"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Tajuk kecil"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Tajuk"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Apl permulaan"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Tambah"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Kegemaran"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Carian"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Kongsi")
      };
}
