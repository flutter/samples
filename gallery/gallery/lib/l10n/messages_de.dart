// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a de locale. All the
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
  String get localeName => 'de';

  static m0(value) => "Den Quellcode dieser App findest du hier: ${value}.";

  static m1(title) => "Platzhalter für den Tab \"${title}\"";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Keine Restaurants', one: '1 Restaurant', other: '${totalRestaurants} Restaurants')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Nonstop', one: '1 Zwischenstopp', other: '${numberOfStops} Zwischenstopps')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Keine Unterkünfte verfügbar', one: '1 verfügbare Unterkunft', other: '${totalProperties} verfügbare Unterkünfte')}";

  static m5(value) => "Artikel: ${value}";

  static m6(error) => "Fehler beim Kopieren in die Zwischenablage: ${error}";

  static m7(value) => "Stufenlos: ${value}";

  static m8(value) => "Gruppe: ${value}";

  static m9(name, phoneNumber) =>
      "Telefonnummer von ${name} ist ${phoneNumber}";

  static m10(value) => "Deine Auswahl: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "Konto \"${accountName}\" ${accountNumber} mit einem Kontostand von ${amount}.";

  static m12(amount) =>
      "Du hast diesen Monat ${amount} Geldautomatengebühren bezahlt";

  static m13(percent) =>
      "Sehr gut! Auf deinem Girokonto ist ${percent} mehr Geld als im letzten Monat.";

  static m14(percent) =>
      "Hinweis: Du hast ${percent} deines Einkaufsbudgets für diesen Monat verbraucht.";

  static m15(amount) =>
      "Du hast diesen Monat ${amount} in Restaurants ausgegeben";

  static m16(count) =>
      "${Intl.plural(count, one: 'Erhöhe deine potenziellen Steuervergünstigungen! Du kannst 1 nicht zugewiesenen Transaktion Kategorien zuordnen.', other: 'Erhöhe deine potenziellen Steuervergünstigungen! Du kannst ${count} nicht zugewiesenen Transaktionen Kategorien zuordnen.')}";

  static m17(billName, date, amount) =>
      "Rechnung \"${billName}\" in Höhe von ${amount} am ${date} fällig.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budget \"${budgetName}\" mit einem Gesamtbetrag von ${amountTotal} (${amountUsed} verwendet, ${amountLeft} verbleibend)";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'KEINE ELEMENTE', one: '1 ELEMENT', other: '${quantity} ELEMENTE')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "Anzahl: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Einkaufswagen, keine Artikel', one: 'Einkaufswagen, 1 Artikel', other: 'Einkaufswagen, ${quantity} Artikel')}";

  static m23(product) => "${product} entfernen";

  static m24(value) => "Artikel: ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "GitHub-Repository mit Flutter-Beispielen"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Zurück zur Galerie"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Konto"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Weckruf"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalender"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Kommentare"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("SCHALTFLÄCHE"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Erstellen"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Radfahren"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Fahrstuhl"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kamin"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Groß"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Mittel"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Klein"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Beleuchtung einschalten"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Waschmaschine"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("BERNSTEINGELB"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLAU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("BLAUGRAU"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRAUN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("DUNKLES ORANGE"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("DUNKLES LILA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("GRÜN"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRAU"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("HELLBLAU"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("HELLGRÜN"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("GELBGRÜN"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANGE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PINK"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("LILA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROT"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("BLAUGRÜN"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GELB"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("Personalisierte Reise-App"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ESSEN"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapel, Italien"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza in einem Holzofen"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, USA"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Frau mit riesigem Pastrami-Sandwich"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Leere Bar mit Barhockern"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("Córdoba, Argentinien"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portland, USA"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Koreanischer Taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Frankreich"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Schokoladendessert"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Seoul, Südkorea"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sitzbereich eines künstlerisch eingerichteten Restaurants"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Seattle, USA"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Garnelengericht"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Nashville, USA"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Eingang einer Bäckerei"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, USA"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Teller mit Flusskrebsen"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spanien"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Café-Theke mit Gebäck"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Restaurants am Zielort finden"),
        "craneFly": MessageLookupByLibrary.simpleMessage("FLIEGEN"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in einer Schneelandschaft mit immergrünen Bäumen"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kairo, Ägypten"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minarette der al-Azhar-Moschee bei Sonnenuntergang"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Aus Ziegelsteinen gemauerter Leuchtturm am Meer"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pool mit Palmen"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesien"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pool am Meer mit Palmen"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Zelt auf einem Feld"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu Valley, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gebetsfahnen vor einem schneebedeckten Berg"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Zitadelle von Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Malediven"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Overwater-Bungalows"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Schweiz"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel an einem See mit Bergen im Hintergrund"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexiko-Stadt, Mexiko"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Luftbild des Palacio de Bellas Artes"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore, USA"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havanna, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mann, der sich gegen einen blauen Oldtimer lehnt"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Flüge nach Reiseziel suchen"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Datum auswählen"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Daten auswählen"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Reiseziel auswählen"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Personenzahl"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Ort auswählen"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Abflugort auswählen"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Uhrzeit auswählen"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Reisende"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("SCHLAFEN"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Malediven"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Overwater-Bungalows"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kairo, Ägypten"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minarette der al-Azhar-Moschee bei Sonnenuntergang"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipeh, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in einer Schneelandschaft mit immergrünen Bäumen"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Zitadelle von Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havanna, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mann, der sich gegen einen blauen Oldtimer lehnt"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Schweiz"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel an einem See mit Bergen im Hintergrund"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Zelt auf einem Feld"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pool mit Palmen"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bunte Häuser am Praça da Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexiko"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maya-Ruinen auf einer Klippe oberhalb eines Strandes"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Aus Ziegelsteinen gemauerter Leuchtturm am Meer"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Unterkünfte am Zielort finden"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Zulassen"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apfelkuchen"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Abbrechen"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Käsekuchen"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Schokoladenbrownie"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Bitte wähle in der Liste unten dein Lieblingsdessert aus. Mithilfe deiner Auswahl wird die Liste der Restaurantvorschläge in deiner Nähe personalisiert."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Verwerfen"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Nicht zulassen"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Lieblingsdessert auswählen"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Dein aktueller Standort wird auf der Karte angezeigt und für Wegbeschreibungen, Suchergebnisse für Dinge in der Nähe und zur Einschätzung von Fahrtzeiten verwendet."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Maps erlauben, während der Nutzung der App auf deinen Standort zuzugreifen?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Schaltfläche"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Mit Hintergrund"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Benachrichtigung anzeigen"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Start"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Aktions-Chips sind eine Gruppe von Optionen, die eine Aktion im Zusammenhang mit wichtigen Inhalten auslösen. Aktions-Chips sollten in der Benutzeroberfläche dynamisch und kontextorientiert erscheinen."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Aktions-Chip"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ein Benachrichtigungsdialog informiert Nutzer über Situationen, die ihre Aufmerksamkeit erfordern. Er kann einen Titel und eine Liste mit Aktionen enthalten. Beides ist optional."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Benachrichtigung"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Benachrichtigung mit Titel"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Auf Navigationsleisten am unteren Bildschirmrand werden zwischen drei und fünf Zielseiten angezeigt. Jede Zielseite wird durch ein Symbol und eine optionale Beschriftung dargestellt. Wenn ein Navigationssymbol am unteren Rand angetippt wird, wird der Nutzer zur Zielseite auf der obersten Ebene der Navigation weitergeleitet, die diesem Symbol zugeordnet ist."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Persistente Labels"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Ausgewähltes Label"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigation am unteren Rand mit sich überblendenden Ansichten"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigation am unteren Rand"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Hinzufügen"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "BLATT AM UNTEREN RAND ANZEIGEN"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Kopfzeile"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Ein modales Blatt am unteren Rand ist eine Alternative zu einem Menü oder einem Dialogfeld und verhindert, dass Nutzer mit dem Rest der App interagieren."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Modales Blatt am unteren Rand"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Auf einem persistenten Blatt am unteren Rand werden Informationen angezeigt, die den Hauptinhalt der App ergänzen. Ein solches Blatt bleibt immer sichtbar, auch dann, wenn der Nutzer mit anderen Teilen der App interagiert."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Persistentes Blatt am unteren Rand"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Persistente und modale Blätter am unteren Rand"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Blatt am unteren Rand"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Textfelder"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Flach, erhöht, mit Umriss und mehr"),
        "demoButtonTitle":
            MessageLookupByLibrary.simpleMessage("Schaltflächen"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompakte Elemente, die für eine Eingabe, ein Attribut oder eine Aktion stehen"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Auswahl-Chips stehen für eine einzelne Auswahl aus einer Gruppe von Optionen. Auswahl-Chips enthalten zugehörigen beschreibenden Text oder zugehörige Kategorien."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Auswahl-Chip"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Codebeispiel"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "In die Zwischenablage kopiert."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ALLES KOPIEREN"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Farben und Farbmuster, die die Farbpalette von Material Design widerspiegeln."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Alle vordefinierten Farben"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Farben"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Eine Aktionstabelle ist eine Art von Benachrichtigung, bei der Nutzern zwei oder mehr Auswahlmöglichkeiten zum aktuellen Kontext angezeigt werden. Sie kann einen Titel, eine zusätzliche Nachricht und eine Liste von Aktionen enthalten."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Aktionstabelle"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Nur Schaltflächen für Benachrichtigungen"),
        "demoCupertinoAlertButtonsTitle": MessageLookupByLibrary.simpleMessage(
            "Benachrichtigung mit Schaltflächen"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Ein Benachrichtigungsdialog informiert den Nutzer über Situationen, die seine Aufmerksamkeit erfordern. Optional kann er einen Titel, Inhalt und eine Liste mit Aktionen enthalten. Der Titel wird über dem Inhalt angezeigt, die Aktionen darunter."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Benachrichtigung"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Benachrichtigung mit Titel"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dialogfelder für Benachrichtigungen im Stil von iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungen"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Eine Schaltfläche im Stil von iOS. Sie kann Text und/oder ein Symbol enthalten, die bei Berührung aus- und eingeblendet werden. Optional ist auch ein Hintergrund möglich."),
        "demoCupertinoButtonsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Schaltflächen im Stil von iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Schaltflächen"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Wird verwendet, um aus einer Reihe von Optionen zu wählen, die sich gegenseitig ausschließen. Wenn eine Option in der segmentierten Steuerung ausgewählt ist, wird dadurch die Auswahl für die anderen Optionen aufgehoben."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Segmentierte Steuerung im Stil von iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmentierte Steuerung"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Ein Schieberegler kann dazu verwendet werden, Werte stufenlos oder aus einer festgelegten Gruppe auszuwählen."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "Schieberegler im Stil von iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Schieberegler"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Mit einem Schalter wird für eine einzelne Einstellung der Wert \"An\" oder \"Aus\" festgelegt."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Schalter im Stil von iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Eine untere Tab-Leiste zur Navigation im Stil von iOS. Darauf werden mehrere Tabs angezeigt, wobei jeweils ein Tab aktiv ist – standardmäßig der erste."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Untere Tab-Leiste im Stil von iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab-Leiste"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Einfach, Benachrichtigung und Vollbild"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialogfelder"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API-Dokumentation"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filter-Chips dienen zum Filtern von Inhalten anhand von Tags oder beschreibenden Wörtern."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filter Chip"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Eine flache Schaltfläche, die beim Drücken eine Farbreaktion zeigt, aber nicht erhöht dargestellt wird. Du kannst flache Schaltflächen in Symbolleisten, Dialogfeldern und inline mit Abständen verwenden."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Flache Schaltfläche"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Eine unverankerte Aktionsschaltfläche ist eine runde Symbolschaltfläche, die über dem Inhalt schwebt und Zugriff auf eine primäre Aktion der App bietet."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Unverankerte Aktionsschaltfläche"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Das Attribut \"fullscreenDialog\" gibt an, ob eine eingehende Seite ein modales Vollbild-Dialogfeld ist"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Vollbild"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Vollbild"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Info"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Eingabe-Chips stehen für eine komplexe Information, wie eine Entität (Person, Ort oder Gegenstand) oder für Gesprächstext in kompakter Form."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Eingabe-Chip"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL konnte nicht angezeigt werden:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Eine Zeile in der Liste hat eine feste Höhe und enthält normalerweise Text und ein anführendes bzw. abschließendes Symbol."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekundärer Text"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Layouts der scrollbaren Liste"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listen"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Eine Zeile"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tippe hier, um die verfügbaren Optionen für diese Demo anzuzeigen."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Optionen für die Ansicht"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Optionen"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Schaltflächen mit Umriss werden undurchsichtig und erhöht dargestellt, wenn sie gedrückt werden. Sie werden häufig mit erhöhten Schaltflächen kombiniert, um eine alternative oder sekundäre Aktion zu kennzeichnen."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Schaltfläche mit Umriss"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Erhöhte Schaltflächen verleihen flachen Layouts mehr Dimension. Sie können verwendet werden, um Funktionen auf überladenen oder leeren Flächen hervorzuheben."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Erhöhte Schaltfläche"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Über Kästchen können Nutzer mehrere Optionen gleichzeitig auswählen. Üblicherweise ist der Wert eines Kästchens entweder \"true\" (ausgewählt) oder \"false\" (nicht ausgewählt) – Kästchen mit drei Auswahlmöglichkeiten können jedoch auch den Wert \"null\" haben."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Kästchen"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Über Optionsfelder können Nutzer eine Option auswählen. Optionsfelder sind ideal, wenn nur eine einzige Option ausgewählt werden kann, aber alle verfügbaren Auswahlmöglichkeiten auf einen Blick erkennbar sein sollen."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Optionsfeld"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kästchen, Optionsfelder und Schieberegler"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Mit Schiebereglern können Nutzer den Status einzelner Einstellungen ändern. Anhand des verwendeten Inline-Labels sollte man erkennen können, um welche Einstellung es sich handelt und wie der aktuelle Status ist."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Schieberegler"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Auswahlsteuerung"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ein einfaches Dialogfeld bietet Nutzern mehrere Auswahlmöglichkeiten. Optional kann über den Auswahlmöglichkeiten ein Titel angezeigt werden."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Einfach"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Du hast die Snackbar-Aktion ausgelöst."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("AKTION"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("EINE SNACKBAR ANZEIGEN"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Snackbars informieren Nutzer über einen Vorgang, den eine App durchgeführt hat oder durchführen wird. Sie erscheinen vorübergehend auf dem unteren Teil des Bildschirms. Der Nutzer wird nicht unterbrochen. Außerdem müssen Snackbars auch nicht geschlossen werden, da sie automatisch wieder ausgeblendet werden."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Snackbars zeigen Meldungen unten auf dem Bildschirm an"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Das ist eine Snackbar."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Snackbars"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Mit Tabs lassen sich Inhalte über Bildschirme, Datensätze und andere Interaktionen hinweg organisieren."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tabs mit unabhängig scrollbaren Ansichten"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Tabs"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Über Textfelder können Nutzer Text auf einer Benutzeroberfläche eingeben. Sie sind in der Regel in Formularen und Dialogfeldern zu finden."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("E-Mail-Adresse"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Gib ein Passwort ein."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – Gib eine US-amerikanische Telefonnummer ein."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Bitte behebe vor dem Senden die rot markierten Probleme."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Passwort ausblenden"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Schreib nicht zu viel, das hier ist nur eine Demonstration."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Lebensgeschichte"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Name*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Name ist erforderlich."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Nicht mehr als 8 Zeichen."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Bitte gib nur Zeichen aus dem Alphabet ein."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Passwort*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Die Passwörter stimmen nicht überein"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefonnummer*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* Pflichtfeld"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Passwort wiederholen*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Gehalt"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Passwort anzeigen"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("SENDEN"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Einzelne Linie mit Text und Zahlen, die bearbeitet werden können"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Erzähl uns etwas über dich (z. B., welcher Tätigkeit du nachgehst oder welche Hobbys du hast)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Textfelder"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Wie lautet dein Name?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Unter welcher Nummer können wir dich erreichen?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Deine E-Mail-Adresse"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ein-/Aus-Schaltflächen können verwendet werden, um ähnliche Optionen zu gruppieren. Die Gruppe sollte einen gemeinsamen Container haben, um hervorzuheben, dass die Ein-/Aus-Schaltflächen eine ähnliche Funktion erfüllen."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ein-/Aus-Schaltflächen"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Zwei Zeilen"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definitionen für die verschiedenen Typografiestile im Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Alle vordefinierten Textstile"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Typografie"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Konto hinzufügen"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ZUSTIMMEN"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ABBRECHEN"),
        "dialogDisagree":
            MessageLookupByLibrary.simpleMessage("NICHT ZUSTIMMEN"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("VERWERFEN"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Entwurf verwerfen?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Demo eines Vollbild-Dialogfelds"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("SPEICHERN"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Vollbild-Dialogfeld"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Die Standortdienste von Google erleichtern die Standortbestimmung durch Apps. Dabei werden anonyme Standortdaten an Google gesendet, auch wenn gerade keine Apps ausgeführt werden."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Standortdienst von Google nutzen?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Sicherungskonto einrichten"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("DIALOGFELD ANZEIGEN"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "STIL DER REFERENZEN & MEDIEN"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorien"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerie"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Ersparnisse für Auto"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Girokonto"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Ersparnisse für Zuhause"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Urlaub"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Kontoinhaber"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Jährlicher Ertrag in Prozent"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Letztes Jahr gezahlte Zinsen"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Zinssatz"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Zinsen seit Jahresbeginn"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Nächster Auszug"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Summe"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Konten"),
        "rallyAlerts":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungen"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Rechnungen"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Fällig:"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Kleidung"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafés"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Lebensmittel"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurants"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("verbleibend"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budgets"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Persönliche Finanz-App"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("VERBLEIBEND"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ANMELDEN"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Anmelden"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("In Rally anmelden"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Du hast noch kein Konto?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Passwort"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Angemeldet bleiben"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("REGISTRIEREN"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nutzername"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ALLES ANZEIGEN"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Alle Konten anzeigen"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Alle Rechnungen anzeigen"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Alle Budgets anzeigen"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Geldautomaten finden"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Hilfe"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Konten verwalten"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Benachrichtigungen"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Papierloseinstellungen"),
        "rallySettingsPasscodeAndTouchId": MessageLookupByLibrary.simpleMessage(
            "Sicherheitscode und Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Personenbezogene Daten"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Abmelden"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Steuerdokumente"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("KONTEN"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("RECHNUNGEN"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDGETS"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ÜBERSICHT"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("EINSTELLUNGEN"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Über Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Design von TOASTER, London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Einstellungen schließen"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Dunkel"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Feedback geben"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Hell"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Sprache"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics": MessageLookupByLibrary.simpleMessage(
            "Funktionsweise der Plattform"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("Zeitlupe"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("System"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Textrichtung"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Rechtsläufig"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Abhängig von der Sprache"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Linksläufig"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Textskalierung"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Sehr groß"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Groß"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Klein"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Design"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ABBRECHEN"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("EINKAUFSWAGEN LEEREN"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("EINKAUFSWAGEN"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Versand:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Zwischensumme:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Steuern:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("SUMME"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESSOIRES"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ALLE"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("KLEIDUNG"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("ZUHAUSE"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("Einzelhandels-App für Mode"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Passwort"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nutzername"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ABMELDEN"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENÜ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("WEITER"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Blauer Steinkrug"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Cerise-Scallop-T-Shirt"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray-Servietten"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambray-Hemd"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klassisch mit weißem Kragen"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Clay-Pullover"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Kupferdrahtkorb"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Fine Lines-T-Shirt"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden-Schmuck"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby-Hut"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry-Jacke"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Goldenes Schreibtischtrio"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Ginger-Schal"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Graues Slouchy-Tanktop"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs-Teeservice"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Vierteiliges Küchen-Set"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Navy-Hose"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Plaster-Tunika"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Vierbeiniger Tisch"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Regenwasserbehälter"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona-Crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Sea-Tunika"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Seabreeze-Pullover"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Shoulder-rolls-T-Shirt"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Shrug-Tasche"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe-Keramikset"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella-Sonnenbrille"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut-Ohrringe"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Blumentöpfe für Sukkulenten"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Sunshirt-Kleid"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surf-and-perf-Hemd"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond-Tasche"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Varsity-Socken"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (weiß)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Weave-Schlüsselring"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Weißes Nadelstreifenhemd"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney-Gürtel"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("In den Einkaufswagen"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart": MessageLookupByLibrary.simpleMessage(
            "Seite \"Warenkorb\" schließen"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Menü schließen"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Menü öffnen"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Element entfernen"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Suchen"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Einstellungen"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Ein responsives Anfangslayout"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Text"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("SCHALTFLÄCHE"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Überschrift"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Untertitel"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Titel"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("Start-App"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Hinzufügen"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Zu Favoriten hinzufügen"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Suchen"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Teilen")
      };
}
