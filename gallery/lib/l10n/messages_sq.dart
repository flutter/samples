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

  static m2(destinationName) => "Eksploro ${destinationName}";

  static m3(destinationName) => "Ndaj ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Asnjë restorant', one: '1 restorant', other: '${totalRestaurants} restorante')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Pa ndalesa', one: '1 ndalesë', other: '${numberOfStops} ndalesa')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nuk ka prona të disponueshme', one: '1 pronë e disponueshme', other: '${totalProperties} prona të disponueshme')}";

  static m10(value) => "${value} me mjaltë";

  static m11(value) => "${value} me sheqer";

  static m12(value) => "Artikulli ${value}";

  static m13(error) => "Kopjimi në kujtesën e fragmenteve dështoi: ${error}";

  static m14(value) => "I vazhdueshëm: ${value}";

  static m15(value) => "Jo i vazhdueshëm: ${value}";

  static m16(value) => "Shënuar: ${value}";

  static m17(value) => "Zgjedhur: ${value}";

  static m18(name, phoneNumber) =>
      "Numri i telefonit të ${name} është ${phoneNumber}";

  static m19(value) => "Zgjodhe: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Llogaria ${accountName} ${accountNumber} me ${amount}.";

  static m21(amount) => "Ke shpenzuar ${amount} në tarifa bankomati këtë muaj";

  static m22(percent) =>
      "Të lumtë! Llogaria jote rrjedhëse është ${percent} më e lartë se muajin e kaluar.";

  static m23(percent) =>
      "Kujdes, ke përdorur ${percent} të buxhetit të \"Blerjeve\" për këtë muaj.";

  static m24(amount) => "Ke shpenzuar ${amount} për restorante këtë javë.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Rrit nivelin e mundshëm të zbritjes nga taksat! Cakto kategoritë për 1 transaksion të pacaktuar.', other: 'Rrit nivelin e mundshëm të zbritjes nga taksat! Cakto kategoritë për ${count} transaksione të pacaktuara.')}";

  static m26(billName, date, amount) =>
      "Fatura ${billName} me afat ${date} për ${amount}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Buxheti ${budgetName} me ${amountUsed} të përdorura nga ${amountTotal}, ${amountLeft} të mbetura";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ASNJË ARTIKULL', one: '1 ARTIKULL', other: '${quantity} ARTIKUJ')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Sasia: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Karroca e blerjeve, asnjë artikull', one: 'Karroca e blerjeve, 1 artikull', other: 'Karroca e blerjeve, ${quantity} artikuj')}";

  static m32(product) => "Hiq ${product}";

  static m33(value) => "Artikulli ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Depozita GitHub e kampioneve të Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Kthehu te \"Galeria\""),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Ikona kryesore"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Shumë veprime"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Rivendos banderolën"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Fjalëkalimi yt është përditësuar në pajisjen tënde tjetër. Identifikohu përsëri."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("E prera"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Pozicioni i butonit pluskues të veprimit"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage(
                "Lidhur me stacionin - në qendër"),
        "bottomAppBarPositionDockedEnd": MessageLookupByLibrary.simpleMessage(
            "Lidhur me stacionin - në fund"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Pluskues - në qendër"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Pluskues - në fund"),
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
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Eksploro"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Mund të zgjidhet (shtypje e gjatë)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Mund të trokitet"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Çetinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Numri 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Prodhues mëndafshi"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Tempuj"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "10 qytetet kryesore për të vizituar në Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Artizanë në Indinë Jugore"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Tempulli Brihadisvara"),
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
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Eksploro restorantet sipas destinacionit"),
        "craneFlightDuration": m5,
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
        "craneFlyStops": m6,
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
        "craneHours": m7,
        "craneMinutes": m8,
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
        "craneSleepProperties": m9,
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
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Biseda"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Skeda bazë"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profili"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Kalcium (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Kaloritë"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Karbohidratet (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Ëmbëlsirë (1 racion)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Yndyrnat (g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Hekur (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Proteina (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Natrium (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Të ushqyerit"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Ëmbëlsirë me mollë"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Kek"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Petull"),
        "dataTableRowEclair":
            MessageLookupByLibrary.simpleMessage("Pastashutë"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Kos i ngrirë"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Biskota me xhenxhefil"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Hoje blete"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Sanduiç me akullore"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Karamele me xhelatinë"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Lëpirëse"),
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
            "Çipet e veprimit janë një grupim opsionesh që aktivizojnë një veprim që lidhet me përmbajtjen kryesore. Çipet e veprimit duhet të shfaqen në mënyrë dinamike dhe kontekstuale në një ndërfaqe përdoruesi."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Çipi i veprimit"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Një dialog sinjalizues informon përdoruesin rreth situatave që kërkojnë konfirmim. Një dialog sinjalizues ka një titull opsional dhe një listë opsionale veprimesh."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizim"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sinjalizo me titullin"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Një banderolë shfaq një mesazh të përmbledhur të rëndësishëm dhe ofron veprime për përdoruesit për menaxhimin (ose heqjen) e banderolës. Kërkohet një veprim nga përdoruesi për heqjen e saj."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Shfaqja e një banderole brenda një liste"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banderola"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Shiritat e aplikacioneve në fund ofrojnë qasje te një sirtar navigimi në fund dhe deri në katër veprime, duke përfshirë butonin pluskues të veprimit."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Shfaq navigimin dhe veprimet në fund"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Shiriti i aplikacioneve në fund"),
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
        "demoBottomSheetItem": m12,
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
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Një kartë është një fletë e materialit të përdorur për të paraqitur disa informacione përkatëse, p.sh. një album, një vendndodhje gjeografike, një vakt, detajet e kontaktit etj."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kartat bazë me kënde të rrumbullakasura"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Kartat"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menyja me listë me zgjedhje"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elemente kompakte që paraqesin një hyrje, atribut ose veprim"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Çipet"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Çipet e zgjedhjes paraqesin një zgjedhje të vetme nga një grupim. Çipet e zgjedhjes përmbajnë tekst ose kategori të lidhura përshkruese."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Çipi i zgjedhjes"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Një tregues rrethor i progresit i dizajnit të materialit, i cili rrotullohet për të treguar që aplikacioni është i zënë."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Treguesi rrethor i progresit"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Kodi i demonstrimit"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "U kopjua në kujtesën e fragmenteve"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPJO TË GJITHA"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Konstantet e ngjyrave dhe demonstrimeve të ngjyrave që paraqesin paletën e ngjyrave të dizajnit të materialit."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Të gjitha ngjyrat e paracaktuara"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Ngjyrat"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menyja kontekstuale"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Një fletë veprimesh është një stil specifik sinjalizimi që e përball përdoruesin me një set prej dy ose më shumë zgjedhjesh që lidhen me kontekstin aktual. Një fletë veprimesh mund të ketë një titull, një mesazh shtesë dhe një listë veprimesh."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Fleta e veprimit"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Një tregues aktiviteti në stilin e iOS që rrotullohet në drejtimin orar."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Treguesit e aktivitetit në stilin e iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
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
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Një shirit navigimi në stilin e iOS. Shiriti i navigimit është një shirit veglash që përfshin minimumi një titull të faqes, në mes të shiritit të veglave."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Shiriti i navigimit në stilin e iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Data"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Data dhe ora"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Një miniaplikacion zgjedhësi në stilin e iOS që mund të përdoret për të zgjedhur datat, orët ose datën bashkë me orën."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Zgjedhësit e datës dhe orës në stilin e iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Ora"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Kohëmatësi"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Zgjedhësit"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Një miniaplikacion që zbaton një kontroll të përmbajtjes me tërheqjen për të rifreskuar në stilin e iOS."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Kontrolli me tërheqjen për të rifreskuar në stilin e iOS"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Përdoret për të zgjedhur nga një numër opsionesh ekskluzive në mënyrë reciproke. Kur zgjidhet një opsion në kontrollin e segmentuar, zgjedhja e opsioneve të tjera në kontrollin e segmentuar ndalon."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Kontrolli i segmentuar në stilin e iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Një rrëshqitës mund të përdoret për të zgjedhur nga një grup i vazhdueshëm ose jo i vazhdueshëm vlerash."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Rrëshqitësi i stilit të iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Rrëshqitësi"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Çelësi përdoret për të ndërruar gjendjen e një cilësimi të vetëm në aktive/joaktive."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Çelësi i stilit të iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Një shiriti i skedës së poshtme të navigimit me stilin e iOS. Shfaq shumë skeda ku një skedë është aktive, skeda e parë si parazgjedhje."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Shiriti i skedës në fund i stilit të iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Një fushë teksti lejon që përdoruesi të futë tekstin me një tastierë fizike ose me një tastierë në ekran."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Fushat e tekstit në stilin e iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Rrëshqitësit pasqyrojnë një gamë vlerash përgjatë një shiriti, nga të cilat përdoruesit mund të zgjedhin një vlerë të vetme ose një gamë vlerash. Rrëshqitësit mund të personalizohen dhe t\'u ndryshohet tema."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Rrëshqitësit e personalizuar"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Tabelat e të dhënave shfaqin informacione në një format me rreshta dhe kolona si në rrjetë. Ato i organizojnë informacionet në një mënyrë që është e lehtë për t\'i skanuar, në mënyrë që përdoruesit të mund të shikojnë për motive dhe njohuri."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rreshtat dhe kolonat e informacioneve"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Tabelat e të dhënave"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Shfaq një dialog që përfshin një zgjedhës date me dizajnin e materialit."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Zgjedhësi i datës"),
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
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Listat në formë rrjete janë më të përshtatshme për paraqitjen e të dhënave homogjene, zakonisht të imazheve. Çdo artikull në një listë në formë rrjete quhet një pllakëz."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Me fundin e faqes"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Me kokën e faqes"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Vetëm imazhe"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Struktura e rreshtit dhe kolonës"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Listat në formë rrjete"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informacione"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Çipet e hyrjes përfaqësojnë një pjesë komplekse informacioni, si p.sh. një entitet (person, vend ose send) ose tekst bisedor, në formë kompakte."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Çipi i hyrjes"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL-ja nuk mund të shfaqej:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Një tregues linear i progresit i dizajnit të materialit, i njohur edhe si një shirit progresi."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Treguesi linear i progresit"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Një rresht i njëfishtë me lartësi fikse që përmban normalisht tekst si edhe një ikonë pararendëse ose vijuese."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Teksti dytësor"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lëvizja e strukturave të listës"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listat"),
        "demoMenuADisabledMenuItem": MessageLookupByLibrary.simpleMessage(
            "Artikulli i çaktivizuar i menysë"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Një artikulli me një meny me listë me zgjedhje"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Një artikulli me një meny kontekstuale"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Një artikull me një meny me seksione"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Një artikull me një meny të thjeshtë"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Artikulli i parë i menysë kontekstuale"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Artikulli i tretë i menysë kontekstuale"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Një meny shfaq një listë zgjedhjesh në një sipërfaqe të përkohshme. Ato shfaqen kur përdoruesit ndërveprojnë me një buton, veprim ose një kontroll tjetër."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Katër"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Merr lidhjen"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Artikulli i parë i menysë"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Artikulli i tretë i menysë"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Artikulli i dytë i menysë"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Një"),
        "demoMenuPreview":
            MessageLookupByLibrary.simpleMessage("Shiko paraprakisht"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Hiq"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Ndaj"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Butonat e menysë dhe menytë e thjeshta"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Tre"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menyja"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Dy"),
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
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("SHFAQ ZGJEDHËSIN"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Zgjedhja e datës dhe orës"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Zgjedhësit"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Linear, rrethor, i papërcaktuar"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Treguesit e progresit"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butonat e ngritur u shtojnë dimension kryesisht strukturave të rrafshëta. Ata theksojnë funksionet në hapësirat e gjera ose me trafik."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butoni i ngritur"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Rrëshqitësit pasqyrojnë një gamë vlerash përgjatë një shiriti. Ata mund të kenë ikona në të dyja skajet e shiritit, të cilat pasqyrojnë një gamë vlerash. Ata janë idealë për rregullimin e cilësimeve si p.sh. volumi, ndriçimi ose zbatimi i filtrave të imazheve."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Rrëshqitësit me gamë vlerash"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menyja me seksione"),
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
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menyja e thjeshtë"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("I vazhdueshëm"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Rrëshqitësi i vazhdueshëm me gamë vlerash me temë të personalizuar"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "I vazhdueshëm me vlerë numerike të modifikueshme"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Rrëshqitësit pasqyrojnë një gamë vlerash përgjatë një shiriti, nga të cilat përdoruesit mund të zgjedhin një vlerë të vetme. Ata janë idealë për rregullimin e cilësimeve si p.sh. volumi, ndriçimi ose zbatimi i filtrave të imazheve."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Jo i vazhdueshëm"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Rrëshqitësi jo i vazhdueshëm me temë të personalizuar"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Vlera numerike e modifikueshme"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Miniaplikacione për zgjedhjen e një vlere me rrëshqitje"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Rrëshqitësit"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Shtype veprimin e shiritit të njoftimeve."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("VEPRIMI"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("SHFAQ NJË SHIRIT NJOFTIMESH"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Shiritat e njoftimeve i informojnë përdoruesit për një proces që ka kryer ose do të kryejë një aplikacion. Ata shfaqen përkohësisht, në drejtim të fundit të ekranit. Ata nuk duhet ta ndërpresin eksperiencën e përdoruesit dhe nuk kërkojnë ndërveprimin nga përdoruesi për t\'u zhdukur."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Shiritat e njoftimeve shfaqin mesazhe në fund të ekranit"),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage(
            "Ky është një shiriti njoftimesh."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Shiritat e njoftimeve"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Skedat i organizojnë përmbajtjet në ekrane të ndryshme, grupime të dhënash dhe ndërveprime të tjera."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
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
        "demoTextFieldNameHasPhoneNumber": m18,
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
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Shfaq një dialog që përfshin një zgjedhës ore me dizajnin e materialit."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Zgjedhësi i orës"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butonat e ndërrimit mund të përdoren për të grupuar opsionet e përafërta. Për të theksuar grupet e butonave të përafërt të ndërrimit, një grup duhet të ndajë një mbajtës të përbashkët"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butonat e ndërrimit"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Këshillat për veglat ofrojnë etiketa teksti që ndihmojnë për të shpjeguar funksionin e një butoni ose të një veprimi tjetër të ndërfaqes së përdoruesit. Këshillat për veglat shfaqin një tekst informues kur përdoruesit qëndrojnë pezull mbi to, kur i fokusojnë ose kur kryejnë një shtypje të gjatë mbi një element."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Kryej një shtypje të gjatë ose qëndrim pezull për të shfaqur këshillën për veglën."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mesazh i shkurtër që shfaqet pas një shtypjeje të gjatë ose një qëndrimi pezull"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Këshillat për veglat"),
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
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Cakto llogarinë e rezervimit"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("SHFAQ DIALOGUN"),
        "dismiss": MessageLookupByLibrary.simpleMessage("HIQ"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategoritë"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Plazh"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Vepra prej bronzi"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Çenai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Çetinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Peshkatar"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Treg lulesh"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Përgatitja e drekës"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Tregu"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondiçeri"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Kripore"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Motoçikleta"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Prodhues mëndafshi"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Tempull në Thanjavur"),
        "rallyAccountAmount": m20,
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
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Faturat"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Afati"),
        "rallyBudgetAmount": m27,
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
        "shrineCartItemCount": m28,
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
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
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
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Shto në karrocë"),
        "shrineScreenReaderRemoveProductButton": m32,
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
        "signIn": MessageLookupByLibrary.simpleMessage("IDENTIFIKOHU"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Strukturë reaguese për aplikacionin nisës"),
        "starterAppDrawerItem": m33,
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
