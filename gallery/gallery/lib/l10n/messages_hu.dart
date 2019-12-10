// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hu locale. All the
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
  String get localeName => 'hu';

  static m0(value) =>
      "Az alkalmazás forráskódjának megtekintéséhez keresse fel a következőt: ${value}.";

  static m1(title) => "Helyőrző a(z) ${title} lapnak";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Nincs étterem', one: '1 étterem', other: '${totalRestaurants} étterem')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Közvetlen járat', one: '1 megálló', other: '${numberOfStops} megálló')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nincs rendelkezésre álló ingatlan', one: '1 rendelkezésre álló ingatlan van', other: '${totalProperties} rendelkezésre álló ingatlan van')}";

  static m5(value) => "${value} elem";

  static m6(error) => "Nem sikerült a vágólapra másolni: ${error}";

  static m7(name, phoneNumber) => "${name} telefonszáma: ${phoneNumber}";

  static m8(value) => "Az Ön által választott érték: „${value}”";

  static m9(accountName, accountNumber, amount) =>
      "${accountName} bankszámla (${accountNumber}) ${amount} összeggel.";

  static m10(amount) =>
      "${amount} összeget költött ATM-díjakra ebben a hónapban";

  static m11(percent) =>
      "Nagyszerű! Folyószámlája ${percent}-kal magasabb, mint múlt hónapban.";

  static m12(percent) =>
      "Előrejelzés: Az e havi Shopping-költségkeret ${percent}-át használta fel.";

  static m13(amount) => "${amount} összeget költött éttermekre ezen a héten.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Növelje a lehetséges adókedvezményt! Rendeljen kategóriát 1 hozzárendelés nélküli tranzakcióhoz.', other: 'Növelje a lehetséges adókedvezményt! Rendeljen kategóriákat ${count} hozzárendelés nélküli tranzakcióhoz.')}";

  static m15(billName, date, amount) =>
      "${amount} összegű ${billName} számla esedékességi dátuma: ${date}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${amountTotal} összegű ${budgetName} költségkeret, amelyből felhasználásra került ${amountUsed}, és maradt ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'NINCSENEK TÉTELEK', one: '1 TÉTEL', other: '${quantity} TÉTEL')}";

  static m18(price) => "× ${price}";

  static m19(quantity) => "Mennyiség: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Kosár, üres', one: 'Kosár, 1 tétel', other: 'Kosár, ${quantity} tétel')}";

  static m21(product) => "${product} eltávolítása";

  static m22(value) => "${value} elem";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter-minták Github-adattára"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Fiók"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Ébresztés"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Naptár"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Megjegyzések"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("GOMB"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Létrehozás"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Kerékpározás"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lift"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kandalló"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Nagy"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Közepes"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Kicsi"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Világítás bekapcsolása"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Mosógép"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("BOROSTYÁNSÁRGA"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("KÉK"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("KÉKESSZÜRKE"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BARNA"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ZÖLDESKÉK"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("MÉLYNARANCSSÁRGA"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("MÉLYLILA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ZÖLD"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("SZÜRKE"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGÓKÉK"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("VILÁGOSKÉK"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VILÁGOSZÖLD"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("CITROMZÖLD"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("NARANCSSÁRGA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("RÓZSASZÍN"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("LILA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("PIROS"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("PÁVAKÉK"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("SÁRGA"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Személyre szabott utazási alkalmazás"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ÉTKEZÉS"),
        "craneEat0":
            MessageLookupByLibrary.simpleMessage("Nápoly, Olaszország"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pizza egy fatüzelésű sütőben"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "Dallas, Amerikai Egyesült Államok"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisszabon, Portugália"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Óriási pastramis szendvicset tartó nő"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Üres bár vendéglőkben használatos bárszékekkel"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentína"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Portland, Amerikai Egyesült Államok"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Koreai taco"),
        "craneEat4":
            MessageLookupByLibrary.simpleMessage("Párizs, Franciaország"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Csokoládés desszert"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Szöul, Dél-Korea"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Művészi tematikájú étterem belső tere"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "Seattle, Amerikai Egyesült Államok"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rákból készült étel"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Nashville, Amerikai Egyesült Államok"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pékség bejárata"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "Atlanta, Amerikai Egyesült Államok"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Languszták egy tányéron"),
        "craneEat9":
            MessageLookupByLibrary.simpleMessage("Madrid, Spanyolország"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kávézó pultja péksüteményekkel"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Fedezzen fel éttermeket úti cél szerint"),
        "craneFly": MessageLookupByLibrary.simpleMessage("REPÜLÉS"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "Aspen, Amerikai Egyesült Államok"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Faház havas tájon, örökzöld fák között"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Amerikai Egyesült Államok"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kairó, Egyiptom"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Az Al-Azhar mecset tornyai a lemenő nap fényében"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisszabon, Portugália"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Téglaépítésű világítótorony a tengeren"),
        "craneFly12": MessageLookupByLibrary.simpleMessage(
            "Napa, Amerikai Egyesült Államok"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Medence pálmafákkal"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonézia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tengerparti medence pálmafákkal"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sátor egy mezőn"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu-völgy, Nepál"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Imazászlók egy havas hegy előtt"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("A Machu Picchu fellegvára"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("Malé, Maldív-szigetek"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Vízen álló nyaralóházak"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Svájc"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hegyek előtt, tó partján álló szálloda"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexikóváros, Mexikó"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Légi felvétel a Szépművészeti Palotáról"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Rushmore-hegy, Amerikai Egyesült Államok"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rushmore-hegy"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Szingapúr"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havanna, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Régi kék autóra támaszkodó férfi"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Fedezzen fel repülőjáratokat úti cél szerint"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Dátum kiválasztása"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage(
            "Válassza ki a dátumtartományt"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Válasszon úti célt"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Falatozók"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Hely kiválasztása"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "Kiindulási pont kiválasztása"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Időpont kiválasztása"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Utasok száma"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ALVÁS"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Malé, Maldív-szigetek"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Vízen álló nyaralóházak"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "Aspen, Amerikai Egyesült Államok"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kairó, Egyiptom"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Az Al-Azhar mecset tornyai a lemenő nap fényében"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Tajpej, Tajvan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("A Taipei 101 felhőkarcoló"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Faház havas tájon, örökzöld fák között"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("A Machu Picchu fellegvára"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havanna, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Régi kék autóra támaszkodó férfi"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Svájc"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hegyek előtt, tó partján álló szálloda"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Amerikai Egyesült Államok"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sátor egy mezőn"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage(
            "Napa, Amerikai Egyesült Államok"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Medence pálmafákkal"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugália"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Színes lakóházak a Ribeira-téren"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexikó"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maja romok egy tengerparti sziklán"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisszabon, Portugália"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Téglaépítésű világítótorony a tengeren"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Fedezzen fel ingatlanokat úti cél szerint"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Engedélyezés"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Almás pite"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Mégse"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Sajttorta"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Csokoládés brownie"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Válaszd ki kedvenc desszertfajtádat az alábbi listából. A kiválasztott ételek alapján a rendszer személyre szabja a közeli étkezési lehetőségek javasolt listáját."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Elvetés"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Tiltás"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Kedvenc desszert kiválasztása"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Aktuális tartózkodási helye megjelenik a térképen, és a rendszer felhasználja az útvonaltervekhez, a közelben lévő keresési eredményekhez és a becsült utazási időkhöz."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Engedélyezi a „Térkép” számára a hozzáférést tartózkodási helyéhez, amíg az alkalmazást használja?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Gomb"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Háttérrel"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Értesítés megjelenítése"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "A műveletszelvények olyan beállításcsoportokat jelentenek, amelyek aktiválnak valamilyen műveletet az elsődleges tartalommal kapcsolatban. A műveletszelvényeknek dinamikusan, a kontextusnak megfelelően kell megjelenniük a kezelőfelületen."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Műveletszelvény"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Egy párbeszédpanel tájékoztatja a felhasználót a figyelmét igénylő helyzetekről. Az értesítési párbeszédpanel nem kötelező címmel és nem kötelező műveletlistával rendelkezik."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Értesítés"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Értesítés címmel"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Az alsó navigációs sávon három-öt célhely jelenik meg a képernyő alján. Minden egyes célhelyet egy ikon és egy nem kötelező szöveges címke jelöl. Amikor rákoppint egy alsó navigációs ikonra, a felhasználó az adott ikonhoz kapcsolódó legfelső szintű navigációs célhelyre kerül."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Állandó címkék"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Kiválasztott címke"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Alsó navigáció halványuló nézetekkel"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Alsó navigáció"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Hozzáadás"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ALSÓ LAP MEGJELENÍTÉSE"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("Fejléc"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "A modális alsó lap a menü és a párbeszédpanel alternatívája, és segítségével megakadályozható, hogy a felhasználó az alkalmazás többi részét használja."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modális alsó lap"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Az állandó alsó lap olyan információkat jelenít meg, amelyek kiegészítik az alkalmazás elsődleges tartalmát. Az állandó alsó lap még akkor is látható marad, amikor a felhasználó az alkalmazás más részeit használja."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Állandó alsó lap"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Állandó és modális alsó lapok"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Alsó lap"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Szövegmezők"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lapos, kiemelkedő, körülrajzolt és továbbiak"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Gombok"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompakt elemek, amelyek bevitelt, tulajdonságot vagy műveletet jelölnek"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Szelvények"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "A választószelvények egy konkrét választást jelölnek egy csoportból. A választószelvények kapcsolódó leíró szöveget vagy kategóriákat is tartalmaznak."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Választószelvény"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Kódminta"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("A vágólapra másolva."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ÖSSZES MÁSOLÁSA"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Színek és állandó színkorongok, amelyek az anyagszerű megjelenés színpalettáját képviselik."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Az összes előre definiált szín"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Színek"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "A műveleti lapok olyan speciális stílusú értesítések, amelyek két vagy több választást biztosítanak a felhasználónak az adott kontextusban. A műveleti lapnak lehet címe, további üzenete és műveleti listája."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Műveleti munkalap"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Csak értesítőgombok"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Értesítés gombokkal"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Egy párbeszédpanel tájékoztatja a felhasználót a figyelmét igénylő helyzetekről. Az értesítési párbeszédpanel nem kötelező címmel, nem kötelező tartalommal és nem kötelező műveletlistával rendelkezik. A cím a tartalom felett, a műveletek pedig a tartalom alatt jelennek meg."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Figyelmeztetés"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Értesítés címmel"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-stílusú értesítési párbeszédpanelek"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Értesítések"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-stílusú gomb. Érintésre megjelenő és eltűnő szöveget és/vagy ikont foglal magában. Tetszés szerint rendelkezhet háttérrel is."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-stílusú gombok"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Gombok"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Több, egymást kölcsönösen kizáró lehetőség közüli választásra szolgál. Amikor a felhasználó kiválasztja valamelyik lehetőséget a szegmentált vezérlésben, a többi lehetőség nem lesz választható."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-stílusú szegmentált vezérlés"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Szegmentált vezérlés"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Egyszerű, értesítő és teljes képernyős"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Párbeszédpanelek"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API-dokumentáció"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "A szűrőszelvények címkék vagy leíró jellegű szavak segítségével szűrik a tartalmat."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Szűrőszelvény"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Egy lapos gomb megnyomásakor megjelenik rajta egy tintafolt, de nem emelkedik fel. Lapos gombokat használhat eszköztárakban, párbeszédpaneleken és kitöltéssel szövegen belül is"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Lapos gomb"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A lebegő műveletgomb egy olyan kerek ikongomb, amely a tartalom fölött előugorva bemutat egy elsődleges műveletet az alkalmazásban."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Lebegő műveletgomb"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "A fullscreenDialog tulajdonság határozza meg, hogy az érkezési oldal teljes képernyős moduláris párbeszédpanel-e"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Teljes képernyő"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Teljes képernyő"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Információ"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "A beviteli szelvények összetett információt jelentenek kompakt formában például egy adott entitásról (személyről, helyről vagy dologról) vagy egy adott beszélgetés szövegéről."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Beviteli szelvény"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Nem sikerült a következő URL megjelenítése:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Egyetlen, fix magasságú sor, amely általában szöveget tartalmaz, és az elején vagy végén ikon található."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Másodlagos szöveg"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Görgethető lista elrendezései"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listák"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Egysoros"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Koppintson ide a bemutatóhoz tartozó, rendelkezésre álló lehetőségek megtekintéséhez."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Lehetőségek megtekintése"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Lehetőségek"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A körülrajzolt gombok átlátszatlanok és kiemelkedők lesznek, ha megnyomják őket. Gyakran kapcsolódnak kiemelkedő gombokhoz, hogy alternatív, másodlagos műveletet jelezzenek."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Körülrajzolt gomb"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A kiemelkedő gombok térbeli kiterjedést adnak az általában lapos külsejű gomboknak. Alkalmasak a funkciók kiemelésére zsúfolt vagy nagy területeken."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Kiemelkedő gomb"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "A jelölőnégyzetek lehetővé teszik a felhasználó számára, hogy egy adott csoportból több lehetőséget is kiválasszon. A normál jelölőnégyzetek értéke igaz vagy hamis lehet, míg a háromállapotú jelölőnégyzetek a null értéket is felvehetik."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Jelölőnégyzet"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "A választógombok lehetővé teszik, hogy a felhasználó kiválassza a csoportban lévő valamelyik lehetőséget. A választógombok használata kizárólagos kiválasztást eredményez, amelyet akkor érdemes használnia, ha úgy gondolja, hogy a felhasználónak egyszerre kell látnia az összes választható lehetőséget."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Választógomb"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jelölőnégyzetek, választógombok és kapcsolók"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "A be- és kikapcsolásra szolgáló gomb egyetlen beállítás állapotát módosítja. Annak a beállításnak, amelyet a kapcsoló vezérel, valamint annak, hogy éppen be- vagy kikapcsolt állapotban van-e a kapcsoló, egyértelműnek kell lennie a megfelelő szövegközi címkéből."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Kapcsoló"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Kiválasztásvezérlők"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Egy egyszerű párbeszédpanel választást kínál a felhasználónak több lehetőség közül. Az egyszerű párbeszédpanel nem kötelező címmel rendelkezik, amely a választási lehetőségek felett jelenik meg."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Egyszerű"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "A lapok rendszerezik a tartalmakat különböző képernyőkön, adathalmazokban és egyéb interakciók során."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lapok egymástól függetlenül görgethető nézettel"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Lapok"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "A szöveges mezők segítségével a felhasználók szöveget adhatnak meg egy kezelőfelületen. Jellemzően az űrlapokon és párbeszédpanelekben jelennek meg."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("E-mail-cím"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Írjon be egy jelszót."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – Adjon meg egy USA-beli telefonszámot."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Kérjük, javítsa ki a piros színű hibákat a beküldés előtt."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Jelszó elrejtése"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Legyen rövid, ez csak egy demó."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Élettörténet"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Név*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("A név megadása kötelező."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "Nem lehet több 8 karakternél."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Kérjük, csak az ábécé karaktereit használja."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Jelszó*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "A jelszavak nem egyeznek meg"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefonszám*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* kötelező mezőt jelöl"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Írja be újra a jelszót*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Fizetés"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Jelszó megjelenítése"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("KÜLDÉS"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Egy sornyi szerkeszthető szöveg és számok"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Beszéljen magáról (pl. írja le, hogy mivel foglalkozik vagy mik a hobbijai)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Szövegmezők"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Hogyan hívhatják Önt?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Hol tudjuk elérni Önt?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Az Ön e-mail-címe"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A váltógombok kapcsolódó lehetőségek csoportosításához használhatók. A kapcsolódó váltógombok csoportjának kiemeléséhez a csoportnak közös tárolón kell osztoznia"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Váltógombok"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Kétsoros"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Az anyagszerű megjelenésben található különböző tipográfiai stílusok meghatározásai."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Az előre meghatározott szövegstílusok mindegyike"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipográfia"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Fiók hozzáadása"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ELFOGADOM"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("MÉGSE"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ELUTASÍTOM"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ELVETÉS"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Elveti a piszkozatot?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Teljes képernyős párbeszédpanel demója"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("MENTÉS"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Teljes képernyős párbeszédpanel"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Hagyja, hogy a Google segítsen az alkalmazásoknak a helymeghatározásban. Ez névtelen helyadatok küldését jelenti a Google-nak, még akkor is, ha egyetlen alkalmazás sem fut."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Használni kívánja a Google Helyszolgáltatásokat?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Helyreállítási fiók beállítása"),
        "dialogShow": MessageLookupByLibrary.simpleMessage(
            "PÁRBESZÉDPANEL MEGJELENÍTÉSE"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("REFERENCIASTÍLUSOK ÉS MÉDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategóriák"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galéria"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings": MessageLookupByLibrary.simpleMessage(
            "Autóval kapcsolatos megtakarítások"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Folyószámla"),
        "rallyAccountDataHomeSavings": MessageLookupByLibrary.simpleMessage(
            "Otthonnal kapcsolatos megtakarítások"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Szabadság"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Fióktulajdonos"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Éves százalékos hozam"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Tavaly kifizetett kamatok"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Kamatláb"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Kamat eddig az évben"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Következő kimutatás"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Összesen"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Fiókok"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Értesítések"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Számlák"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Esedékes"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Ruházat"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kávézók"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Bevásárlás"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Éttermek"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("maradt"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Költségkeretek"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Személyes pénzügyi alkalmazás"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("MARADT"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("BEJELENTKEZÉS"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Bejelentkezés"),
        "rallyLoginLoginToRally": MessageLookupByLibrary.simpleMessage(
            "Bejelentkezés a Rally szolgáltatásba"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Nincs fiókja?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Jelszó"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Jelszó megjegyzése"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("REGISZTRÁCIÓ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Felhasználónév"),
        "rallySeeAll":
            MessageLookupByLibrary.simpleMessage("ÖSSZES MEGTEKINTÉSE"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage(
            "Összes bankszámla megtekintése"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Összes számla megtekintése"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage(
            "Összes költségkeret megtekintése"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATM-ek keresése"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Súgó"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Fiókok kezelése"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Értesítések"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Papír nélküli beállítások"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Biztonsági kód és Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Személyes adatok"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Kijelentkezés"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Adódokumentumok"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("FIÓKOK"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("SZÁMLÁK"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("KÖLTSÉGKERETEK"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("ÁTTEKINTÉS"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("BEÁLLÍTÁSOK"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("A Flutter galériáról"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Tervezte: TOASTER, London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Beállítások bezárása"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Beállítások"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Sötét"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Visszajelzés küldése"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Világos"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Nyelv- és országkód"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platformmechanika"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Lassított felvétel"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Rendszer"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Szövegirány"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Balról jobbra"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "A nyelv- és országbeállítás alapján"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Jobbról balra"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Szöveg nagyítása"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Óriási"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Nagy"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normál"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Kicsi"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Téma"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Beállítások"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("MÉGSE"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("KOSÁR TÖRLÉSE"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KOSÁR"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Szállítás:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Részösszeg:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Adó:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("ÖSSZES"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("KIEGÉSZÍTŐK"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ÖSSZES"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("RUHÁZAT"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("OTTHON"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Divatos kiskereskedelmi alkalmazás"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Jelszó"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Felhasználónév"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("KIJELENTKEZÉS"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENÜ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("TOVÁBB"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("„Blue Stone” bögre"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "„Cerise” lekerekített alsó szegélyű póló"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray anyagú szalvéta"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambray anyagú ing"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klasszikus fehér gallér"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("„Clay” pulóver"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Rézből készült tároló"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Finom csíkozású póló"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Kerti sodrott kötél"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby sapka"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("„Gentry” dzseki"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Gilt íróasztal trió"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Vörös sál"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Szürke ujjatlan póló"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("„Hurrahs” teáskészlet"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("„Kitchen quattro”"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Matrózkék nadrág"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("„Plaster” tunika"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Négyzet alakú asztal"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Esővíztálca"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("„Sea” tunika"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("„Seabreeze” pulóver"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Váll néküli felső"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("Táska"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Kerámiakészlet"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("„Stella” napszemüveg"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("„Strut” fülbevalók"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Cserép pozsgásokhoz"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("„Sunshirt” ruha"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("„Surf and perf” póló"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("„Vagabond” zsák"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("„Varsity” zokni"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "„Walter” henley stílusú póló (fehér)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Kulcstartó"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Fehér csíkos ing"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("„Whitney” öv"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Hozzáadás a kosárhoz"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Kosár bezárása"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Menü bezárása"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Menü megnyitása"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Tétel eltávolítása"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Keresés"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Beállítások"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Interaktív kezdő elrendezés"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Szövegtörzs"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("GOMB"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Címsor"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Alcím"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Cím"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Kezdőalkalmazás"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Hozzáadás"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Hozzáadás a Kedvencekhez"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Keresés"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Megosztás")
      };
}
