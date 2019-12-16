// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a id locale. All the
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
  String get localeName => 'id';

  static m0(value) =>
      "Untuk melihat kode sumber aplikasi ini, kunjungi ${value}.";

  static m1(title) => "Placeholder untuk tab ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Tidak Ada Restoran', one: '1 Restoran', other: '${totalRestaurants} Restoran')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Nonstop', one: '1 transit', other: '${numberOfStops} transit')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Tidak Ada Properti yang Tersedia', one: '1 Properti Tersedia', other: '${totalProperties} Properti Tersedia')}";

  static m5(value) => "Item ${value}";

  static m6(error) => "Gagal menyalin ke papan klip: ${error}";

  static m7(name, phoneNumber) => "Nomor telepon ${name} adalah ${phoneNumber}";

  static m8(value) => "Anda memilih: \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "Rekening atas nama ${accountName} dengan nomor ${accountNumber} sejumlah ${amount}.";

  static m10(amount) =>
      "Anda telah menghabiskan ${amount} biaya penggunaan ATM bulan ini";

  static m11(percent) =>
      "Kerja bagus. Rekening giro Anda ${percent} lebih tinggi daripada bulan sebelumnya.";

  static m12(percent) =>
      "Perhatian, Anda telah menggunakan ${percent} dari anggaran Belanja untuk bulan ini.";

  static m13(amount) => "Anda menghabiskan ${amount} di Restoran minggu ini.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Tingkatkan potensi potongan pajak Anda. Tetapkan kategori untuk 1 transaksi yang belum ditetapkan.', other: 'Tingkatkan potensi potongan pajak Anda. Tetapkan kategori untuk ${count} transaksi yang belum ditetapkan.')}";

  static m15(billName, date, amount) =>
      "Tagihan ${billName} jatuh tempo pada ${date} sejumlah ${amount}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Anggaran ${budgetName} dengan ${amountUsed} yang digunakan dari jumlah total ${amountTotal}, tersisa ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'TIDAK ADA ITEM', one: '1 ITEM', other: '${quantity} ITEM')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Kuantitas: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Keranjang belanja, tidak ada item', one: 'Keranjang belanja, 1 item', other: 'Keranjang belanja, ${quantity} item')}";

  static m21(product) => "Hapus ${product}";

  static m22(value) => "Item ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Repositori Github sampel flutter"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Akun"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarm"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalender"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komentar"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("TOMBOL"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Buat"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Bersepeda"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Elevator"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Perapian"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Besar"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Sedang"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Kecil"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Nyalakan lampu"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Mesin cuci"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("AMBER"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BIRU"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("BIRU KEABU-ABUAN"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("COKELAT"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("BIRU KEHIJAUAN"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("ORANYE TUA"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("UNGU TUA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("HIJAU"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ABU-ABU"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("NILA"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("BIRU MUDA"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("HIJAU MUDA"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("HIJAU LIMAU"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANYE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("MERAH MUDA"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("UNGU"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("MERAH"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("HIJAU KEBIRUAN"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("KUNING"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Aplikasi perjalanan yang dipersonalisasi"),
        "craneEat": MessageLookupByLibrary.simpleMessage("MAKAN"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Naples, Italia"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pizza dalam oven berbahan bakar kayu"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Amerika Serikat"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Wanita yang memegang sandwich pastrami besar"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar kosong dengan bangku bergaya rumah makan"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Amerika Serikat"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco korea"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Prancis"),
        "craneEat4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Makanan penutup berbahan cokelat"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seoul, Korea Selatan"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Area tempat duduk restoran yang berseni"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Amerika Serikat"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hidangan berbahan udang"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Amerika Serikat"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pintu masuk toko roti"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Amerika Serikat"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sepiring udang laut"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spanyol"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Meja kafe dengan kue-kue"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Jelajahi Restoran berdasarkan Tujuan"),
        "craneFly": MessageLookupByLibrary.simpleMessage("TERBANG"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Amerika Serikat"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet di lanskap bersalju dengan pepohonan hijau"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Amerika Serikat"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kairo, Mesir"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Menara Masjid Al-Azhar saat matahari terbenam"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mercusuar bata di laut"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Amerika Serikat"),
        "craneFly12SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kolam renang yang terdapat pohon palem"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kolam renang tepi laut yang terdapat pohon palem"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda di lapangan"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu Valley, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bendera doa menghadap gunung bersalju"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Benteng Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maladewa"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalo apung"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Swiss"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel tepi danau yang menghadap pegunungan"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Meksiko, Meksiko"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pemandangan udara Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Gunung Rushmore, Amerika Serikat"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Gunung Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapura"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pria yang bersandar pada mobil antik warna biru"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Jelajahi Penerbangan berdasarkan Tujuan"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Pilih Tanggal"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Pilih Tanggal"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Pilih Tujuan"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Makan Malam"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Pilih Lokasi"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("Pilih Asal"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Pilih Waktu"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Pelancong"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("TIDUR"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maladewa"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalo apung"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Amerika Serikat"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kairo, Mesir"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Menara Masjid Al-Azhar saat matahari terbenam"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gedung pencakar langit Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet di lanskap bersalju dengan pepohonan hijau"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Benteng Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pria yang bersandar pada mobil antik warna biru"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Swiss"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel tepi danau yang menghadap pegunungan"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Amerika Serikat"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda di lapangan"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Amerika Serikat"),
        "craneSleep6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kolam renang yang terdapat pohon palem"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Apartemen warna-warni di Ribeira Square"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksiko"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Reruntuhan kota suku Maya di tebing di atas pantai"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mercusuar bata di laut"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Jelajahi Properti berdasarkan Tujuan"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Izinkan"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Pai Apel"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Batal"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Kue Keju"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownies Cokelat"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Silakan pilih jenis makanan penutup favorit Anda dari daftar di bawah ini. Pilihan Anda akan digunakan untuk menyesuaikan daftar saran tempat makan di area Anda."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Hapus"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Jangan Izinkan"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Pilih Makanan Penutup Favorit"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Lokasi Anda saat ini akan ditampilkan di peta dan digunakan untuk rute, hasil penelusuran di sekitar, dan estimasi waktu tempuh."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Izinkan \"Maps\" mengakses lokasi Anda selagi Anda menggunakan aplikasi?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Tombol"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Dengan Latar Belakang"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Tampilkan Notifikasi"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Action chip adalah sekumpulan opsi yang memicu tindakan terkait konten utama. Action chip akan muncul secara dinamis dan kontekstual dalam UI."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Action Chip"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Dialog notifikasi akan memberitahukan situasi yang memerlukan konfirmasi kepada pengguna. Dialog notifikasi memiliki judul opsional dan daftar tindakan opsional."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Notifikasi"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Notifikasi dengan Judul"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Menu navigasi bawah menampilkan tiga hingga lima tujuan di bagian bawah layar. Tiap tujuan direpresentasikan dengan ikon dan label teks opsional. Jika ikon navigasi bawah diketuk, pengguna akan dialihkan ke tujuan navigasi tingkat teratas yang terkait dengan ikon tersebut."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Label persisten"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Label terpilih"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigasi bawah dengan tampilan cross-fading"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigasi bawah"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Tambahkan"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("TAMPILKAN SHEET BAWAH"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("Header"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Sheet bawah modal adalah alternatif untuk menu atau dialog dan akan mencegah pengguna berinteraksi dengan bagian lain aplikasi."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Sheet bawah modal"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Sheet bawah persisten akan menampilkan informasi yang melengkapi konten utama aplikasi. Sheet bawah persisten akan tetap terlihat bahkan saat pengguna berinteraksi dengan bagian lain aplikasi."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Sheet bawah persisten"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sheet bawah persisten dan modal"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Sheet bawah"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Kolom teks"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Datar, timbul, outline, dan lain-lain"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Tombol"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elemen ringkas yang merepresentasikan masukan, atribut, atau tindakan"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chip"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Choice chip merepresentasikan satu pilihan dari sekumpulan pilihan. Choice chip berisi teks deskriptif atau kategori yang terkait."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Choice Chip"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Contoh Kode"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Disalin ke papan klip."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("SALIN SEMUA"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Warna dan konstanta model warna yang merepresentasikan palet warna Desain Material."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Semua warna yang telah ditentukan"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Warna"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Sheet tindakan adalah gaya khusus notifikasi yang menghadirkan serangkaian dua atau beberapa pilihan terkait dengan konteks saat ini kepada pengguna. Sheet tindakan dapat memiliki judul, pesan tambahan, dan daftar tindakan."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Sheet Tindakan"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Hanya Tombol Notifikasi"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Notifikasi dengan Tombol"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Dialog notifikasi akan memberitahukan situasi yang memerlukan konfirmasi kepada pengguna. Dialog notifikasi memiliki judul, konten, dan daftar tindakan yang opsional. Judul ditampilkan di atas konten dan tindakan ditampilkan di bawah konten."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Notifikasi"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Notifikasi dengan Judul"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("Dialog notifikasi gaya iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Notifikasi"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Tombol gaya iOS. Tombol ini berisi teks dan/atau ikon yang akan memudar saat disentuh. Dapat memiliki latar belakang."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Tombol gaya iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Tombol"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Digunakan untuk memilih sejumlah opsi yang sama eksklusifnya. Ketika satu opsi di kontrol tersegmen dipilih, opsi lain di kontrol tersegmen tidak lagi tersedia untuk dipilih."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("Kontrol tersegmen gaya iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Kontrol Tersegmen"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sederhana, notifikasi, dan layar penuh"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialog"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Dokumentasi API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filter chip menggunakan tag atau kata deskriptif sebagai cara memfilter konten."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filter Chip"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tombol datar akan menampilkan percikan tinta saat ditekan tetapi tidak terangkat. Gunakan tombol datar pada toolbar, dalam dialog, dan bagian dari padding"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Tombol Datar"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tombol tindakan mengambang adalah tombol dengan ikon lingkaran yang mengarahkan kursor ke atas konten untuk melakukan tindakan utama dalam aplikasi."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Tombol Tindakan Mengambang"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Properti fullscreenDialog akan menentukan apakah halaman selanjutnya adalah dialog modal layar penuh atau bukan"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Layar Penuh"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Layar Penuh"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Info"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Input chip merepresentasikan informasi yang kompleks, seperti entitas (orang, tempat, atau barang) atau teks percakapan, dalam bentuk yang ringkas."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Input Chip"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Tidak dapat menampilkan URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Baris tunggal dengan ketinggian tetap yang biasanya berisi teks serta ikon di awal atau akhir."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Teks sekunder"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Tata letak daftar scroll"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Daftar"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Satu Baris"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Ketuk di sini guna melihat opsi yang tersedia untuk demo ini."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Opsi tampilan"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opsi"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tombol outline akan menjadi buram dan terangkat saat ditekan. Tombol tersebut sering dipasangkan dengan tombol timbul untuk menandakan tindakan kedua dan alternatif."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Tombol Outline"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tombol timbul menambahkan dimensi ke sebagian besar tata letak datar. Tombol tersebut mempertegas fungsi pada ruang yang sibuk atau lapang."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Tombol Timbul"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Kotak centang memungkinkan pengguna memilih beberapa opsi dari suatu kumpulan. Nilai kotak centang normal adalah true atau false dan nilai kotak centang tristate juga dapat null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Kotak centang"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Tombol pilihan memungkinkan pengguna memilih salah satu opsi dari kumpulan. Gunakan tombol pilihan untuk pilihan eksklusif jika Anda merasa bahwa pengguna perlu melihat semua opsi yang tersedia secara berdampingan."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kotak centang, tombol pilihan, dan tombol akses"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Tombol akses on/off mengalihkan status opsi setelan tunggal. Opsi yang dikontrol tombol akses, serta statusnya, harus dijelaskan dari label inline yang sesuai."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Tombol Akses"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Kontrol pilihan"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Dialog sederhana akan menawarkan pilihan di antara beberapa opsi kepada pengguna. Dialog sederhana memiliki judul opsional yang ditampilkan di atas pilihan tersebut."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sederhana"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Tab yang mengatur konten di beragam jenis layar, set data, dan interaksi lainnya."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tab dengan tampilan yang dapat di-scroll secara terpisah"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Tab"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Kolom teks memungkinkan pengguna memasukkan teks menjadi UI. UI tersebut biasanya muncul dalam bentuk formulir dan dialog."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Masukkan sandi."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Masukkan nomor telepon AS."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Perbaiki error dalam warna merah sebelum mengirim."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Sembunyikan sandi"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Jangan terlalu panjang, ini hanya demo."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Kisah hidup"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nama*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Nama wajib diisi."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Maksimal 8 karakter."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Masukkan karakter alfabet saja."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Sandi*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Sandi tidak cocok"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Nomor telepon*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* menunjukkan kolom wajib diisi"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Ketik ulang sandi*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Gaji"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Tampilkan sandi"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("KIRIM"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Baris tunggal teks dan angka yang dapat diedit"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Ceritakan diri Anda (misalnya, tuliskan kegiatan atau hobi Anda)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Kolom teks"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Apa nama panggilan Anda?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Ke mana kami dapat menghubungi Anda?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Alamat email Anda"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tombol yang dapat digunakan untuk opsi terkait grup. Untuk mempertegas grup tombol yang terkait, sebuah grup harus berbagi container yang sama"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage("Tombol"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dua Baris"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definisi berbagai gaya tipografi yang ditemukan dalam Desain Material."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Semua gaya teks yang sudah ditentukan"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografi"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Tambahkan akun"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("SETUJU"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("BATAL"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("TIDAK SETUJU"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("HAPUS"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Hapus draf?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("Demo dialog layar penuh"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SIMPAN"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Dialog Layar Penuh"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Izinkan Google membantu aplikasi menentukan lokasi. Ini berarti data lokasi anonim akan dikirimkan ke Google, meskipun tidak ada aplikasi yang berjalan."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Gunakan layanan lokasi Google?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Setel akun cadangan"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("TAMPILKAN DIALOG"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("FORMAT PENGUTIPAN & MEDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategori"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeri"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Tabungan untuk Mobil"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Giro"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Tabungan untuk Rumah"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Liburan"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Pemilik Akun"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Persentase Hasil Tahunan"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Bunga yang Dibayarkan Tahun Lalu"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Suku Bunga"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Bunga YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Rekening Koran Selanjutnya"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Rekening"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Notifikasi"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Tagihan"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Batas Waktu"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Pakaian"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kedai Kopi"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Barang sehari-hari"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restoran"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Tersisa"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Anggaran"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Aplikasi keuangan pribadi"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("TERSISA"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("LOGIN"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Login"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Login ke Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Belum punya akun?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Sandi"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Ingat Saya"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("DAFTAR"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nama pengguna"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("LIHAT SEMUA"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Lihat semua rekening"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Lihat semua tagihan"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Lihat semua anggaran"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Temukan ATM"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Bantuan"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Kelola Akun"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notifikasi"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Setelan Tanpa Kertas"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Kode sandi dan Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Informasi Pribadi"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Logout"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Dokumen Pajak"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("REKENING"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("TAGIHAN"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ANGGARAN"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("RINGKASAN"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("SETELAN"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Tentang Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Didesain oleh TOASTER di London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Tutup setelan"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Setelan"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Gelap"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Kirimkan masukan"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Terang"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Lokal"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mekanik platform"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Gerak lambat"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Sistem"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Arah teks"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Berdasarkan lokal"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Penskalaan teks"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Sangat besar"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Besar"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Kecil"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Setelan"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("BATAL"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("KOSONGKAN KERANJANG"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("KERANJANG"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Pengiriman:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Pajak:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESORI"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("SEMUA"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("PAKAIAN"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("RUMAH"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("Aplikasi retail yang modern"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Sandi"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nama pengguna"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("LOGOUT"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("BERIKUTNYA"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Mug blue stone"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Kaus scallop merah ceri"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Kain serbet chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Kemeja chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Kemeja kerah putih klasik"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Sweter warna tanah liat"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Rak kawat tembaga"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Kaus fine lines"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Topi gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Jaket gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Gilt desk trio"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Syal warna jahe"),
        "shrineProductGreySlouchTank": MessageLookupByLibrary.simpleMessage(
            "Tank top jatuh warna abu-abu"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Set alat minum teh Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Celana panjang navy"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tunik plaster"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Meja kuartet"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Penampung air hujan"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Crossover Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Tunik warna laut"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Sweter warna laut"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Kaus shoulder rolls"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Tas bahu"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Set keramik soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Kacamata hitam Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Anting-anting Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Tanaman sukulen"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Baju terusan sunshirt"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Kaus surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Ransel vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Kaus kaki varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (putih)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Gantungan kunci tenun"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Kaus pinstripe putih"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Sabuk Whitney"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Tambahkan ke keranjang"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Tutup keranjang"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Tutup menu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Buka menu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Hapus item"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Penelusuran"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Setelan"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Tata letak awal yang responsif"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Isi"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("TOMBOL"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Judul"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtitel"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Judul"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplikasi awal"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Tambahkan"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favorit"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Telusuri"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Bagikan")
      };
}
