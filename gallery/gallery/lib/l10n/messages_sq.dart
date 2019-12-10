// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sq locale. All the
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
  String get localeName => 'sq';

  static m0(value) =>
      "Për të parë kodin burimor për këtë aplikacion, vizito ${value}.";

  static m1(title) => "Vendmbajtësi për skedën ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Asnjë restorant', one: '1 restorant', other: '${totalRestaurants} restorante')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Pa ndalesa', one: '1 ndalesë', other: '${numberOfStops} ndalesa')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nuk ka prona të disponueshme', one: '1 pronë e disponueshme', other: '${totalProperties} prona të disponueshme')}";

  static m5(value) => "Artikulli ${value}";

  static m6(error) => "Kopjimi në kujtesën e fragmenteve dështoi: ${error}";

  static m7(name, phoneNumber) =>
      "Numri i telefonit të ${name} është ${phoneNumber}";

  static m8(value) => "Zgjodhe: \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "Llogaria ${accountName} ${accountNumber} me ${amount}.";

  static m10(amount) => "Ke shpenzuar ${amount} në tarifa bankomati këtë muaj";

  static m11(percent) =>
      "Të lumtë! Llogaria jote rrjedhëse është ${percent} më e lartë se muajin e kaluar.";

  static m12(percent) =>
      "Kujdes, ke përdorur ${percent} të buxhetit të \"Blerjeve\" për këtë muaj.";

  static m13(amount) => "Ke shpenzuar ${amount} për restorante këtë javë.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Rrit nivelin e mundshëm të zbritjes nga taksat! Cakto kategoritë për 1 transaksion të pacaktuar.', other: 'Rrit nivelin e mundshëm të zbritjes nga taksat! Cakto kategoritë për ${count} transaksione të pacaktuara.')}";

  static m15(billName, date, amount) =>
      "Fatura ${billName} me afat ${date} për ${amount}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Buxheti ${budgetName} me ${amountUsed} të përdorura nga ${amountTotal}, ${amountLeft} të mbetura";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'ASNJË ARTIKULL', one: '1 ARTIKULL', other: '${quantity} ARTIKUJ')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Sasia: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Karroca e blerjeve, asnjë artikull', one: 'Karroca e blerjeve, 1 artikull', other: 'Karroca e blerjeve, ${quantity} artikuj')}";

  static m21(product) => "Hiq ${product}";

  static m22(value) => "Artikulli ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Depozita Github e kampioneve të Flutter"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Llogaria"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarmi"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendari"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komente"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BUTONI"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Krijo"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Me biçikletë"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ashensor"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Oxhak"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("I madh"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Mesatar"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("I vogël"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("Ndiz dritat"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Lavatriçe"),
        "colorsAmber":
            MessageLookupByLibrary.simpleMessage("E VERDHË PORTOKALLI"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRI NË BLU"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("KAFE"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("I KALTËR"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("PORTOKALLI E THELLË"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("E PURPURT E THELLË"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("E GJELBËR"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRI"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("BLU E ÇELUR"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("E GJELBËR E ÇELUR"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIMONI"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("PORTOKALLI"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROZË"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("VJOLLCË"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("I KUQ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("GURKALI"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("E VERDHË"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Një aplikacion i personalizuar për udhëtimin"),
        "craneEat": MessageLookupByLibrary.simpleMessage("NGRËNIE"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napoli, Itali"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pica në furrë druri"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Shtetet e Bashkuara"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisbonë, Portugali"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Grua që mban një sandviç të madh me pastërma"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar i zbrazur me stola në stil restoranti"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("Kordoba, Argjentinë"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Portland, Shtetet e Bashkuara"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tako koreane"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Francë"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ëmbëlsirë me çokollatë"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seul, Koreja e Jugut"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Zonë uljeje në restorant me art"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "Siatëll, Shtetet e Bashkuara"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pjatë me karkaleca deti"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Nashvill, Shtetet e Bashkuara"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hyrje pastiçerie"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "Atlanta, Shtetet e Bashkuara"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pjatë me karavidhe"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spanjë"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Banak kafeneje me ëmbëlsira"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Eksploro restorantet sipas destinacionit"),
        "craneFly": MessageLookupByLibrary.simpleMessage("FLUTURIM"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, United States"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Shtëpi alpine në një peizazh me borë me pemë të gjelbëruara"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Shtetet e Bashkuara"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kajro, Egjipt"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minaret e Xhamisë së Al-Azharit në perëndim të diellit"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisbonë, Portugali"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Far prej tulle buzë detit"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Shtetet e Bashkuara"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pishinë me palma"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonezi"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pishinë buzë detit me palma"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tendë në fushë"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Lugina Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Flamuj lutjesh përpara një mali me borë"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Maçu Piçu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Qyteti i Maçu Piçut"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Shtëpi mbi ujë"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Zvicër"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel buzë liqenit përballë maleve"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Meksiko, Meksikë"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pamje nga ajri e Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Mali Rushmore, Shtetet e Bashkuara"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mali Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapor"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havanë, Kubë"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Burrë i mbështetur te një makinë antike blu"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Eksploro fluturimet sipas destinacionit"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Zgjidh datën"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Zgjidh datat"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Zgjidh destinacionin"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Restorante"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Zgjidh vendndodhjen"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Zgjidh origjinën"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Zgjidh orën"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Udhëtarët"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("GJUMI"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Shtëpi mbi ujë"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, United States"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kajro, Egjipt"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minaret e Xhamisë së Al-Azharit në perëndim të diellit"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Tajvan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Qiellgërvishtësi Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Shtëpi alpine në një peizazh me borë me pemë të gjelbëruara"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Maçu Piçu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Qyteti i Maçu Piçut"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havanë, Kubë"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Burrë i mbështetur te një makinë antike blu"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Zvicër"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel buzë liqenit përballë maleve"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Shtetet e Bashkuara"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tendë në fushë"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Shtetet e Bashkuara"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pishinë me palma"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugali"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Apartamente shumëngjyrëshe në Sheshin Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksikë"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Rrënojat e fiseve maja në një shkëmb mbi një plazh"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisbonë, Portugali"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Far prej tulle buzë detit"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Eksploro pronat sipas destinacionit"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Lejo"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Ëmbëlsirë me mollë"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Anulo"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Kek bulmeti"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Ëmbëlsirë me çokollatë"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Zgjidh llojin tënd të preferuar të ëmbëlsirës nga lista më poshtë. Zgjedhja jote do të përdoret për të personalizuar listën e sugjeruar të restoranteve në zonën tënde."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Hidh poshtë"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Mos lejo"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Zgjidh ëmbëlsirën e preferuar"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Vendndodhja jote aktuale do të shfaqet në hartë dhe do të përdoret për udhëzime, rezultate të kërkimeve në afërsi dhe kohën e përafërt të udhëtimit."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Dëshiron të lejosh që \"Maps\" të ketë qasje te vendndodhja jote ndërkohë që je duke përdorur aplikacionin?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Butoni"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Me sfond"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Shfaq sinjalizimin"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Çipet e veprimit janë një grupim opsionesh që aktivizojnë një veprim që lidhet me përmbajtjen kryesore. Çipet e veprimit duhet të shfaqen në mënyrë dinamike dhe kontekstuale në një ndërfaqe përdoruesi."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Çipi i veprimit"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Një dialog sinjalizues informon përdoruesin rreth situatave që kërkojnë konfirmim. Një dialog sinjalizues ka një titull opsional dhe një listë opsionale veprimesh."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizim"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizo me titullin"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Shiritat e poshtëm të navigimit shfaqin tre deri në pesë destinacione në fund të një ekrani. Secili destinacion paraqitet nga një ikonë dhe një etiketë opsionale me tekst. Kur trokitet mbi një ikonë navigimi poshtë, përdoruesi dërgohet te destinacioni i navigimit të nivelit të lartë i shoqëruar me atë ikonë."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etiketat e vazhdueshme"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etiketa e zgjedhur"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigimi i poshtëm me pamje që shuhen gradualisht"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigimi poshtë"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("Shto"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("SHFAQ FLETËN E POSHTME"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Koka e faqes"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Një fletë e poshtme modale është një alternativë ndaj menysë apo dialogut dhe parandalon që përdoruesi të bashkëveprojë me pjesën tjetër të aplikacionit."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Fleta e poshtme modale"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Një fletë e poshtme e përhershme shfaq informacione që plotësojnë përmbajtjen parësore të aplikacionit. Një fletë e poshtme e përhershme mbetet e dukshme edhe kur përdoruesi bashkëvepron me pjesët e tjera të aplikacionit."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Fletë e poshtme e përhershme"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Fletët e përkohshme dhe modale të poshtme"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Fleta e poshtme"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Fushat me tekst"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "I rrafshët, i ngritur, me kontur etj."),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Butonat"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elemente kompakte që paraqesin një hyrje, atribut ose veprim"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Çipet"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Çipet e zgjedhjes paraqesin një zgjedhje të vetme nga një grupim. Çipet e zgjedhjes përmbajnë tekst ose kategori të lidhura përshkruese."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Çipi i zgjedhjes"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Shembull kodi"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "U kopjua në kujtesën e fragmenteve"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPJO TË GJITHA"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Konstantet e ngjyrave dhe demonstrimeve të ngjyrave që paraqesin paletën e ngjyrave të dizajnit të materialit."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Të gjitha ngjyrat e paracaktuara"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Ngjyrat"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Një fletë veprimesh është një stil specifik sinjalizimi që e përball përdoruesin me një set prej dy ose më shumë zgjedhjesh që lidhen me kontekstin aktual. Një fletë veprimesh mund të ketë një titull, një mesazh shtesë dhe një listë veprimesh."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Fleta e veprimit"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Vetëm butonat e sinjalizimit"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizimi me butonat"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Një dialog sinjalizues informon përdoruesin rreth situatave që kërkojnë konfirmim. Një dialog sinjalizimi ka një titull opsional, përmbajtje opsionale dhe një listë opsionale veprimesh. Titulli shfaqet mbi përmbajtje dhe veprimet shfaqen poshtë përmbajtjes."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizim"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizo me titullin"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dialogë sinjalizimi në stilin e iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizime"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Një buton në stilin e iOS. Përfshin tekstin dhe/ose një ikonë që zhduket dhe shfaqet gradualisht kur e prek. Si opsion mund të ketë sfond."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Butonat në stilin e iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Butonat"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Përdoret për të zgjedhur nga një numër opsionesh ekskluzive në mënyrë reciproke. Kur zgjidhet një opsion në kontrollin e segmentuar, zgjedhja e opsioneve të tjera në kontrollin e segmentuar ndalon."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Kontrolli i segmentuar në stilin e iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Kontrolli i segmentuar"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "I thjeshtë, sinjalizim dhe ekran i plotë"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialogët"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Dokumentacioni i API-t"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Çipet e filtrit përdorin etiketime ose fjalë përshkruese si mënyrë për të filtruar përmbajtjen."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Çipi i filtrit"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Një buton i rrafshët shfaq një spërkatje me bojë pas shtypjes, por nuk ngrihet. Përdor butonat e rrafshët në shiritat e veglave, dialogët dhe brenda faqes me skemë padding"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butoni i rrafshët"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Një buton pluskues veprimi është një buton me ikonë rrethore që lëviz mbi përmbajtjen për të promovuar një veprim parësor në aplikacion."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butoni pluskues i veprimit"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Karakteristika e fullscreenDialog specifikon nëse faqja hyrëse është dialog modal në ekran të plotë"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ekrani i plotë"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Ekran i plotë"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informacione"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Çipet e hyrjes përfaqësojnë një pjesë komplekse informacioni, si p.sh. një entitet (person, vend ose send) ose tekst bisedor, në formë kompakte."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Çipi i hyrjes"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL-ja nuk mund të shfaqej:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Një rresht i njëfishtë me lartësi fikse që përmban normalisht tekst si edhe një ikonë pararendëse ose vijuese."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Teksti dytësor"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lëvizja e strukturave të listës"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listat"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Një rresht"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Trokit këtu për të parë opsionet që ofrohen për këtë demonstrim."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Shiko opsionet"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opsionet"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butonat me kontur bëhen gjysmë të tejdukshëm dhe ngrihen kur shtypen. Shpesh ata çiftohen me butonat e ngritur për të treguar një veprim alternativ dytësor."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Buton me kontur"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butonat e ngritur u shtojnë dimension kryesisht strukturave të rrafshëta. Ata theksojnë funksionet në hapësirat e gjera ose me trafik."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butoni i ngritur"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Kutitë e kontrollit e lejojnë përdoruesin të zgjedhë shumë opsione nga një grup. Vlera e një kutie normale kontrolli është \"E vërtetë\" ose \"E gabuar\" dhe vlera e një kutie zgjedhjeje me tre gjendje mund të jetë edhe \"Zero\"."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Kutia e zgjedhjes"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Butonat e radios e lejojnë përdoruesin të zgjedhë një opsion nga një grup. Përdor butonat e radios për përzgjedhje ekskluzive nëse mendon se përdoruesi ka nevojë të shikojë të gjitha opsionet e disponueshme përkrah njëri-tjetrit."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kutitë e zgjedhjes, butonat e radios dhe çelësat"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Çelësat e ndezjes/fikjes ndërrojnë gjendjen e një opsioni të vetëm cilësimesh. Opsioni që kontrollon çelësi, si edhe gjendja në të cilën është, duhet të bëhet e qartë nga etiketa korresponduese brenda faqes."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Çelës"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Kontrollet e përzgjedhjes"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Një dialog i thjeshtë i ofron përdoruesit një zgjedhje mes disa opsionesh. Një dialog i thjeshtë ka një titull opsional që afishohet mbi zgjedhjet."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("I thjeshtë"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Skedat i organizojnë përmbajtjet në ekrane të ndryshme, grupime të dhënash dhe ndërveprime të tjera."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Skedat me pamje që mund të lëvizen në mënyrë të pavarur"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Skedat"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Fushat me tekst i lejojnë përdoruesit të fusin tekst në një ndërfaqe përdoruesi. Ato normalisht shfaqen në formularë dhe dialogë."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Email-i"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Fut një fjalëkalim."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Fut një numër telefoni amerikan."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Rregullo gabimet me të kuqe përpara se ta dërgosh."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Fshih fjalëkalimin"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Mbaje të shkurtër, është thjesht demonstrim."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Historia e jetës"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Emri*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Emri është i nevojshëm."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Jo më shumë se 8 karaktere."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Fut vetëm karaktere alfabetikë."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Fjalëkalimi*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Fjalëkalimet nuk përputhen"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Numri i telefonit*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* tregon fushën e kërkuar"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Shkruaj përsëri fjalëkalimin*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Paga"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Shfaq fjalëkalimin"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("DËRGO"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Një rresht me tekst dhe numra të redaktueshëm"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Na trego rreth vetes (p.sh. shkruaj se çfarë bën ose çfarë hobish ke)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Fushat me tekst"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Si të quajnë?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Ku mund të të kontaktojmë?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Adresa jote e email-it"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butonat e ndërrimit mund të përdoren për të grupuar opsionet e përafërta. Për të theksuar grupet e butonave të përafërt të ndërrimit, një grup duhet të ndajë një mbajtës të përbashkët"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butonat e ndërrimit"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dy rreshta"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Përkufizimet e stileve të ndryshme tipografike të gjendura në dizajnin e materialit"),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Të gjitha stilet e paracaktuara të tekstit"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografia"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Shto llogari"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("PRANOJ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ANULO"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NUK PRANOJ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("HIDH POSHTË"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Të hidhet poshtë drafti?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Një demonstrim dialogu me ekran të plotë"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("RUAJ"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Dialogu në ekran të plotë"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Lejo Google të ndihmojë aplikacionet që të përcaktojnë vendndodhjen. Kjo do të thotë të dërgosh të dhëna te Google edhe kur nuk ka aplikacione në punë."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Të përdoret shërbimi \"Vendndodhjet Google\"?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Cakto llogarinë e rezervimit"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("SHFAQ DIALOGUN"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STILE REFERENCE DHE MEDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategoritë"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Kursimet për makinë"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Rrjedhëse"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Kursimet për shtëpinë"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Pushime"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Zotëruesi i llogarisë"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Rendimenti vjetor në përqindje"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Interesi i paguar vitin e kaluar"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Norma e interesit"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Interesi vjetor deri më sot"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Pasqyra e ardhshme"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Totali"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Llogaritë"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Sinjalizime"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Faturat"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Afati"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Veshje"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Bar-kafe"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Ushqimore"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restorantet"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Të mbetura"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Buxhetet"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Një aplikacion për financat personale"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("TË MBETURA"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("IDENTIFIKOHU"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Identifikohu"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Identifikohu në Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Nuk ke llogari?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Fjalëkalimi"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Kujto të dhënat e mia"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("REGJISTROHU"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Emri i përdoruesit"),
        "rallySeeAll":
            MessageLookupByLibrary.simpleMessage("SHIKOJI TË GJITHË"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Shiko të gjitha llogaritë"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Shiko të gjitha faturat"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Shiko të gjitha buxhetet"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Gjej bankomate"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Ndihma"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Menaxho llogaritë"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Njoftimet"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Cilësimet e faturës elektronike"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Kodi i kalimit dhe Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Të dhënat personale"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Dil"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Dokumentet e taksave"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("LLOGARITË"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FATURAT"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUXHETET"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("PËRMBLEDHJE"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("CILËSIMET"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Rreth galerisë së Flutter"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Projektuar nga TOASTER në Londër"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Mbyll \"Cilësimet\""),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Cilësimet"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("E errët"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Dërgo koment"),
        "settingsLightTheme":
            MessageLookupByLibrary.simpleMessage("E ndriçuar"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Gjuha e përdorimit"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mekanika e platformës"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Lëvizje e ngadaltë"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistemi"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Drejtimi i tekstit"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Bazuar në cilësimet lokale"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Shkallëzimi i tekstit"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Shumë i madh"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("E madhe"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normale"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("I vogël"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Cilësimet"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ANULO"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("PASTRO KARROCËN"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("KARROCA"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Transporti:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Nëntotali:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Taksa:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("TOTALI"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESORË"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("TË GJITHA"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("VESHJE"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("SHTËPIA"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Një aplikacion blerjesh në modë"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Fjalëkalimi"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Emri i përdoruesit"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("DIL"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENYJA"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("PËRPARA"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Filxhan blu prej guri"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Bluzë e kuqe e errët me fund të harkuar"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Shami Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Këmishë Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Jakë e bardhë klasike"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Triko ngjyrë balte"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Rafti prej bakri"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Bluzë me vija të holla"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Gardh kopshti"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Kapelë Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Xhaketë serioze"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Set me tri tavolina"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Shall ngjyrë xhenxhefili"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Kanotiere gri e varur"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Set çaji Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kuzhinë quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantallona blu"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tunikë allçie"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Set me katër tavolina"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Tabaka për ujin e shiut"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Crossover-i i Ramona-s"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Tunikë plazhi"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Triko e hollë"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Bluzë me mëngë të përveshura"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Çantë pazari"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Set qeramike për zbutje"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Syze Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Vathë Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Bimë mishtore"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Fustan veror"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Këmishë sërfi"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Çantë model \"vagabond\""),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Çorape sportive"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (e bardhë)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Mbajtëse çelësash e thurur"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Këmishë me vija të bardha"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Rrip Whitney"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Shto në karrocë"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Mbyll karrocën"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Mbyll menynë"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Hap menynë"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Hiq artikullin"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Kërko"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Cilësimet"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Strukturë reaguese për aplikacionin nisës"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Trupi"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BUTONI"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Titulli"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Nënemërtim"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Titulli"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplikacion nisës"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Shto"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Të preferuara"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Kërko"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Ndaj")
      };
}
