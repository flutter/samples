// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ro locale. All the
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
  String get localeName => 'ro';

  static m0(value) =>
      "Ca să vedeți codul sursă al acestei aplicații, accesați ${value}.";

  static m1(title) => "Substituent pentru fila ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Niciun restaurant', one: 'Un restaurant', few: '${totalRestaurants} restaurante', other: '${totalRestaurants} de restaurante')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Fără escală', one: 'O escală', few: '${numberOfStops} escale', other: '${numberOfStops} de escale')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nicio proprietate disponibilă', one: 'O proprietate disponibilă', few: '${totalProperties} proprietăți disponibile', other: '${totalProperties} de proprietăți disponibile')}";

  static m5(value) => "Articol ${value}";

  static m6(error) => "Nu s-a copiat în clipboard: ${error}";

  static m7(name, phoneNumber) =>
      "Numărul de telefon al persoanei de contact ${name} este ${phoneNumber}";

  static m8(value) => "Ați selectat: „${value}”";

  static m9(accountName, accountNumber, amount) =>
      "Contul ${accountName} ${accountNumber} cu ${amount}.";

  static m10(amount) =>
      "Luna aceasta ați cheltuit ${amount} pentru comisioanele de la bancomat";

  static m11(percent) =>
      "Felicitări! Contul dvs. curent este cu ${percent} mai bogat decât luna trecută.";

  static m12(percent) =>
      "Atenție, ați folosit ${percent} din bugetul de cumpărături pentru luna aceasta.";

  static m13(amount) =>
      "Săptămâna aceasta ați cheltuit ${amount} în restaurante.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Creșteți-vă potențiala deducere fiscală! Atribuiți categorii unei tranzacții neatribuite.', few: 'Creșteți-vă potențiala deducere fiscală! Atribuiți categorii pentru ${count} tranzacții neatribuite.', other: 'Creșteți-vă potențiala deducere fiscală! Atribuiți categorii pentru ${count} de tranzacții neatribuite.')}";

  static m15(billName, date, amount) =>
      "Factura ${billName} în valoare de ${amount} este scadentă pe ${date}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Bugetul pentru ${budgetName} cu ${amountUsed} cheltuiți din ${amountTotal}, ${amountLeft} rămași";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'NICIUN ARTICOL', one: 'UN ARTICOL', few: '${quantity} ARTICOLE', other: '${quantity} ARTICOLE')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Cantitate: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Coș de cumpărături, niciun articol', one: 'Coș de cumpărături, un articol', few: 'Coș de cumpărături, ${quantity} articole', other: 'Coș de cumpărături, ${quantity} de articole')}";

  static m21(product) => "Eliminați ${product}";

  static m22(value) => "Articol ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Directorul Github cu exemple din Flutter"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Cont"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarmă"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Calendar"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Cameră foto"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Comentarii"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BUTON"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Creați"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Ciclism"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lift"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Șemineu"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Mare"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Mediu"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Mic"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Porniți luminile"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Mașină de spălat"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("CHIHLIMBAR"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ALBASTRU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRI-ALBĂSTRUI"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARO"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("PORTOCALIU INTENS"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("MOV INTENS"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERDE"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRI"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue":
            MessageLookupByLibrary.simpleMessage("ALBASTRU DESCHIS"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("VERDE DESCHIS"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERDE DESCHIS"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("PORTOCALIU"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROZ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("MOV"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROȘU"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TURCOAZ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GALBEN"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "O aplicație pentru călătorii personalizate"),
        "craneEat": MessageLookupByLibrary.simpleMessage("MÂNCARE"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napoli, Italia"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pizza într-un cuptor pe lemne"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Statele Unite"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugalia"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Femeie care ține un sandviș imens cu pastramă"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar gol cu scaune de tip bufet"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Statele Unite"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coreean"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Franța"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Desert cu ciocolată"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seoul, Coreea de Sud"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Locuri dintr-un restaurant artistic"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Statele Unite"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Preparat cu creveți"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Statele Unite"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Intrare în brutărie"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Statele Unite"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Platou cu languste"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spania"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tejghea de cafenea cu dulciuri"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorați restaurantele după destinație"),
        "craneFly": MessageLookupByLibrary.simpleMessage("AVIOANE"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Statele Unite"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Castel într-un peisaj de iarnă, cu conifere"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Statele Unite"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Cairo, Egipt"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Turnurile moscheii Al-Azhar la apus"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugalia"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Far din cărămidă pe malul mării"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Statele Unite"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscină cu palmieri"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonezia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscină pe malul mării, cu palmieri"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cort pe un câmp"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Valea Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Steaguri de rugăciune în fața unui munte înzăpezit"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cetatea Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldive"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalouri pe malul apei"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Elveția"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel pe malul unui lac, în fața munților"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Ciudad de Mexico, Mexic"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Imagine aeriană cu Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Muntele Rushmore, Statele Unite"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Muntele Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapore"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bărbat care se sprijină de o mașină albastră veche"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Explorați zborurile după destinație"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Selectați data"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Selectați datele"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Alegeți destinația"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Clienți"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Selectați o locație"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Alegeți originea"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Selectați ora"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Călători"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("SOMN"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldive"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalouri pe malul apei"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Statele Unite"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Cairo, Egipt"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Turnurile moscheii Al-Azhar la apus"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Clădirea zgârie-nori Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Castel într-un peisaj de iarnă, cu conifere"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cetatea Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bărbat care se sprijină de o mașină albastră veche"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Elveția"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel pe malul unui lac, în fața munților"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Statele Unite"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cort pe un câmp"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Statele Unite"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscină cu palmieri"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugalia"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Apartamente colorate în Riberia Square"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexic"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruine mayașe pe o stâncă, deasupra unei plaje"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugalia"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Far din cărămidă pe malul mării"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorați proprietățile după destinație"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Permiteți"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Plăcintă cu mere"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Anulați"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Negresă cu ciocolată"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Alegeți desertul preferat din lista de mai jos. Opțiunea va fi folosită pentru a personaliza lista de restaurante sugerate din zona dvs."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Renunțați"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Nu permiteți"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Alegeți desertul preferat"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Locația dvs. actuală va fi afișată pe hartă și folosită pentru indicații de orientare, rezultate ale căutării din apropiere și duratele de călătorie estimate."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Permiteți ca Maps să vă acceseze locația când folosiți aplicația?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Buton"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Cu fundal"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Afișează alerta"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cipurile de acțiune sunt un set de opțiuni care declanșează o acțiune legată de conținutul principal. Ele trebuie să apară dinamic și contextual într-o IU."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Cip de acțiune"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Caseta de dialog pentru alerte informează utilizatorul despre situații care necesită confirmare. Caseta de dialog pentru alerte are un titlu opțional și o listă de acțiuni opțională."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alertă"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alertă cu titlu"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Barele de navigare din partea de jos afișează între trei și cinci destinații în partea de jos a ecranului. Fiecare destinație este reprezentată de o pictogramă și o etichetă cu text opțională. Când atinge o pictogramă de navigare din partea de jos, utilizatorul este direcționat la destinația de navigare principală asociată pictogramei respective."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etichete persistente"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etichetă selectată"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigarea în partea de jos cu vizualizări cu suprapunere atenuată"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigarea în partea de jos"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Adăugați"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "AFIȘAȚI FOAIA DIN PARTEA DE JOS"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("Antet"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Foaia modală din partea de jos este o alternativă la un meniu sau la o casetă de dialog și împiedică interacțiunea utilizatorului cu restul aplicației."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Foaia modală din partea de jos"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Foaia persistentă din partea de jos afișează informații care completează conținutul principal al aplicației. Foaia persistentă din partea de jos rămâne vizibilă chiar dacă utilizatorul interacționează cu alte părți alte aplicației."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Foaia persistentă din partea de jos"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Foile persistente și modale din partea de jos"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Foaia din partea de jos"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Câmpuri de text"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plate, ridicate, cu contur și altele"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Butoane"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elemente compacte care reprezintă o intrare, un atribut sau o acțiune"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Cipuri"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cipurile de opțiune reprezintă o singură opțiune dintr-un set. Ele conțin categorii sau texte descriptive asociate."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Cip de opțiune"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Exemplu de cod"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("S-a copiat în clipboard."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIAȚI TOT"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Constante pentru culori și mostre de culori care reprezintă paleta de culori pentru Design material."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Toate culorile predefinite"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Culori"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Foaia de acțiune este un tip de alertă care îi oferă utilizatorului două sau mai multe opțiuni asociate contextului actual. Foaia de acțiune poate să conțină un titlu, un mesaj suplimentar și o listă de acțiuni."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Foaie de acțiune"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Doar butoane pentru alerte"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alertă cu butoane"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Caseta de dialog pentru alerte informează utilizatorul despre situații care necesită confirmare. Caseta de dialog pentru alerte are un titlu opțional, conținut opțional și o listă de acțiuni opțională. Titlul este afișat deasupra conținutului, iar acțiunile sub conținut."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alertă"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alertă cu titlu"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Casete de dialog pentru alerte în stil iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alerte"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Buton în stil iOS. Preia text și/sau o pictogramă care se estompează sau se accentuează la atingere. Poate să aibă un fundal opțional."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Butoane în stil iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Butoane"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Folosit pentru a alege opțiuni care se exclud reciproc. Când selectați o opțiune din controlul segmentat, celelalte opțiuni sunt deselectate."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Control segmentat în stil iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Control segmentat"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, pentru alerte și pe ecran complet"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Casete de dialog"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentație API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cipurile de filtrare folosesc etichete sau termeni descriptivi pentru a filtra conținutul."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Cip de filtrare"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butonul plat reacționează vizibil la apăsare, dar nu se ridică. Folosiți butoanele plate în bare de instrumente, casete de dialog și în linie cu chenarul interior."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Buton plat"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butonul de acțiune flotant este un buton cu pictogramă circulară plasat deasupra conținutului, care promovează o acțiune principală în aplicație."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Buton de acțiune flotant"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Proprietatea casetei de dialog pe ecran complet arată dacă pagina următoare este o casetă de dialog modală pe ecran complet"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ecran complet"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Ecran complet"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informații"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Cipurile de intrare reprezintă informații complexe, cum ar fi o entitate (o persoană, o locație sau un obiect) sau un text conversațional, în formă compactă."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Cip de intrare"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Nu s-a putut afișa adresa URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Un singur rând cu înălțime fixă, care conține de obicei text și o pictogramă la început sau la sfârșit."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Text secundar"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Aspecte de liste derulante"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Liste"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Un rând"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Atingeți aici pentru a vedea opțiunile disponibile pentru această demonstrație."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Afișați opțiunile"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opțiuni"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butoanele cu contur devin opace și se ridică la apăsare. Sunt de multe ori asociate cu butoane ridicate, pentru a indica o acțiune secundară alternativă."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Buton cu contur"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butoanele ridicate conferă dimensiune aspectelor în mare parte plate. Acestea evidențiază funcții în spații pline sau ample."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Buton ridicat"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Cu ajutorul casetelor de selectare, utilizatorii pot să aleagă mai multe opțiuni dintr-un set. Valoarea normală a unei casete este true sau false. O casetă cu trei stări poate avea și valoarea null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Casetă de selectare"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Cu ajutorul butoanelor radio, utilizatorul poate să selecteze o singură opțiune dintr-un set. Folosiți-le pentru selectări exclusive dacă credeți că utilizatorul trebuie să vadă toate opțiunile disponibile alăturate."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Casete de selectare, butoane radio și comutatoare"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Comutatoarele activat/dezactivat schimbă starea unei opțiuni pentru setări. Opțiunea controlată de comutator și starea acesteia trebuie să fie indicate clar de eticheta inline corespunzătoare."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Comutatoare"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Comenzi de selectare"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Caseta de dialog simplă îi oferă utilizatorului posibilitatea de a alege dintre mai multe opțiuni. Caseta de dialog simplă are un titlu opțional, afișat deasupra opțiunilor."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Simplă"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Filele organizează conținutul pe ecrane, în seturi de date diferite și în alte interacțiuni."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "File cu vizualizări care se derulează independent"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("File"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Câmpurile de text le dau utilizatorilor posibilitatea de a introduce text pe o interfață de utilizare. Acestea apar de obicei în forme și casete de dialog."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-mail"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Introduceți o parolă."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###–#### – introduceți un număr de telefon din S.U.A."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Remediați erorile evidențiate cu roșu înainte de trimitere."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ascundeți parola"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Folosiți un text scurt, aceasta este o demonstrație."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Povestea vieții"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nume*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Numele este obligatoriu."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Nu mai mult de 8 caractere."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Introduceți numai caractere alfabetice."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Parolă*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Parolele nu corespund"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Număr de telefon*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* indică un câmp obligatoriu"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Introduceți din nou parola*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salariu"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Afișați parola"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("TRIMITEȚI"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Un singur rând de text și cifre editabile"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Povestiți-ne despre dvs. (de exemplu, scrieți cu ce vă ocupați sau ce pasiuni aveți)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Câmpuri de text"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Cum vă spun utilizatorii?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "La ce număr de telefon vă putem contacta?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Adresa dvs. de e-mail"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Butoanele de comutare pot fi folosite pentru a grupa opțiunile similare. Pentru a evidenția grupuri de butoane de comutare similare, este necesar ca un grup să aibă un container comun."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Butoane de comutare"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Două rânduri"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definiții pentru stilurile tipografice diferite, care se găsesc în ghidul Design material."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Toate stilurile de text predefinite"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografie"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Adăugați un cont"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("SUNT DE ACORD"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ANULAȚI"),
        "dialogDisagree":
            MessageLookupByLibrary.simpleMessage("NU SUNT DE ACORD"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("RENUNȚAȚI"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "Ștergeți mesajul nefinalizat?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Exemplu de casetă de dialog pe ecran complet"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SALVAȚI"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Casetă de dialog pe ecran complet"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Acceptați ajutor de la Google pentru ca aplicațiile să vă detecteze locația. Aceasta înseamnă că veți trimite la Google date anonime privind locațiile, chiar și când nu rulează nicio aplicație."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Folosiți serviciul de localizare Google?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Setați contul pentru backup"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("AFIȘEAZĂ CASETA DE DIALOG"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "STILURI DE REFERINȚĂ ȘI MEDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorii"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerie"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Economii pentru mașină"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Curent"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Economii pentru casă"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacanță"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Proprietarul contului"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Randamentul anual procentual"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Dobânda plătită anul trecut"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Rata dobânzii"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Dobânda de la începutul anului până în prezent"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Următorul extras"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Conturi"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alerte"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Facturi"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Data scadentă"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Îmbrăcăminte"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafenele"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Produse alimentare"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurante"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Stânga"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Bugete"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "O aplicație pentru finanțe personale"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("STÂNGA"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("CONECTAȚI-VĂ"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Conectați-vă"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Conectați-vă la Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Nu aveți un cont?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Parolă"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Ține-mă minte"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ÎNSCRIEȚI-VĂ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nume de utilizator"),
        "rallySeeAll":
            MessageLookupByLibrary.simpleMessage("VEDEȚI-LE PE TOATE"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Vedeți toate conturile"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Vedeți toate facturile"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Vedeți toate bugetele"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Găsiți bancomate"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Ajutor"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gestionați conturi"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notificări"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Setări fără hârtie"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Parolă și Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage(
                "Informații cu caracter personal"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Deconectați-vă"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documente fiscale"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("CONTURI"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FACTURI"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUGETE"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("PREZENTARE GENERALĂ"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("SETĂRI"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Despre galeria Flutter"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Conceput de TOASTER în Londra"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Închideți setările"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Setări"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Întunecată"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Trimiteți feedback"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Luminoasă"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Cod local"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mecanica platformei"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Slow motion"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Sistem"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Direcția textului"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("De la stânga la dreapta"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("În funcție de codul local"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("De la dreapta la stânga"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Scalarea textului"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Foarte mare"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Mare"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("Mic"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Temă"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Setări"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ANULAȚI"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("GOLIȚI COȘUL"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("COȘ DE CUMPĂRĂTURI"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Expediere:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Taxe:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESORII"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TOATE"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ÎMBRĂCĂMINTE"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("CASĂ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "O aplicație de vânzare cu amănuntul la modă"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parolă"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nume de utilizator"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("DECONECTAȚI-VĂ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENIU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ÎNAINTE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Cană Blue Stone"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Tricou cu guler rotund Cerise"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Șervete din Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Cămașă din Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Guler alb clasic"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Pulover Clay"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Rastel din sârmă de cupru"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Tricou cu dungi subțiri"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Toron pentru grădină"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Pălărie Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Jachetă Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Birou trio aurit"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Fular Ginger"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Maiou lejer gri"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Set de ceai Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Bucătărie Quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantaloni bleumarin"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tunică Plaster"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Masă Quartet"),
        "shrineProductRainwaterTray": MessageLookupByLibrary.simpleMessage(
            "Colector pentru apă de ploaie"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Geantă crossover Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Tunică Sea"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Pulover Seabreeze"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Tricou cu mâneci îndoite"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Geantă Shrug"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Set de ceramică Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Ochelari de soare Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Cercei Strut"),
        "shrineProductSucculentPlanters": MessageLookupByLibrary.simpleMessage(
            "Ghivece pentru plante suculente"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Rochie Sunshirt"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Bluză Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Geantă Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Șosete Varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (alb)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Breloc împletit"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Cămașă cu dungi fine albe"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Curea Whitney"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage(
                "Adăugați în coșul de cumpărături"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart": MessageLookupByLibrary.simpleMessage(
            "Închideți coșul de cumpărături"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Închideți meniul"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Deschideți meniul"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Eliminați articolul"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Căutați"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("Setări"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Un aspect adaptabil pentru Starter"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Corp"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BUTON"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Titlu"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtitlu"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Titlu"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplicația Starter"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Adăugați"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Preferat"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Căutați"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Trimiteți")
      };
}
