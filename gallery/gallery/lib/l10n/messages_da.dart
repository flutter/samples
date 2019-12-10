// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a da locale. All the
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
  String get localeName => 'da';

  static m0(value) => "Gå til ${value} for at se kildekoden for denne app.";

  static m1(title) => "Pladsholder for fanen ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Ingen restauranter', one: '1 restaurant', other: '${totalRestaurants} restauranter')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Direkte', one: '1 mellemlanding', other: '${numberOfStops} mellemlandinger')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Ingen ledige ejendomme', one: '1 ledig ejendom', other: '${totalProperties} ledige ejendomme')}";

  static m5(value) => "Vare ${value}";

  static m6(error) => "Kunne ikke kopieres til udklipsholderen: ${error}";

  static m7(name, phoneNumber) =>
      "Telefonnummeret til ${name} er ${phoneNumber}";

  static m8(value) => "Du valgte: \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "Kontoen \"${accountName}\" ${accountNumber} med saldoen ${amount}.";

  static m10(amount) =>
      "Du har brugt ${amount} på hæveautomatsgebyrer i denne måned";

  static m11(percent) =>
      "Flot! Din bankkonto er steget med ${percent} i forhold til sidste måned.";

  static m12(percent) =>
      "Vær opmærksom på, at du har brugt ${percent} af denne måneds shoppingbudget.";

  static m13(amount) =>
      "Du har brugt ${amount} på restaurantbesøg i denne uge.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Hæv dit potentielle skattefradrag. Tildel kategorier til 1 transaktion, som ingen har.', other: 'Hæv dit potentielle skattefradrag. Tildel kategorier til ${count} transaktioner, som ingen har.')}";

  static m15(billName, date, amount) =>
      "Regningen ${billName} på ${amount}, som skal betales ${date}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budgettet ${budgetName}, hvor ${amountUsed} ud af ${amountTotal} er brugt, og der er ${amountLeft} tilbage";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'INGEN VARER', one: '1 VARE', other: '${quantity} VARER')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Antal: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Indkøbskurv, ingen varer', one: 'Indkøbskurv, 1 vare', other: 'Indkøbskurv, ${quantity} varer')}";

  static m21(product) => "Fjern ${product}";

  static m22(value) => "Vare ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter samples Github repo"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Konto"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarm"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalender"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Kommentarer"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("KNAP"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Opret"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Cykling"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Elevator"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Pejs"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Stor"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Mellem"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Lille"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("Tænd lyset"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Vaskemaskine"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ORANGEGUL"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLÅ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("BLÅGRÅ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRUN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYAN"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("DYB ORANGE"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("DYB LILLA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("GRØN"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRÅ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("LYSEBLÅ"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("LYSEGRØN"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIMEGRØN"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANGE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PINK"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("LILLA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("RØD"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("GRØNBLÅ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GUL"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "En personligt tilpasset rejseapp"),
        "craneEat": MessageLookupByLibrary.simpleMessage("SPIS"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napoli, Italien"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("En pizza i en træfyret ovn"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, USA"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kvinde med en kæmpe pastramisandwich"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tom bar med dinerstole"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portland, USA"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Koreansk taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Frankrig"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Dessert med chokolade"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Seoul, Sydkorea"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Siddepladser på en fin restaurant"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Seattle, USA"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ret med rejer"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Nashville, USA"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Indgang til bager"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, USA"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tallerken med krebs"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spanien"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cafédisk med kager"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Find restauranter efter destination"),
        "craneFly": MessageLookupByLibrary.simpleMessage("FLYV"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hytte i et snelandskab med stedsegrønne træer"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Cairo, Egypten"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar-moskéens tårne ved solnedgang"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Murstensfyrtårn ved havet"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Swimmingpool med palmetræer"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesien"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Swimmingpool ved havet med palmer"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Telt på en mark"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu Valley, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bedeflag foran snebeklædt bjerg"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu-citadel"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldiverne"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalows over vandet"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Schweiz"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hotel ved søen foran bjerge"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexico City, Mexico"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Palacio de Bellas Artes set fra luften"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore, USA"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapore"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mand, der læner sig op ad en blå retro bil"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Find fly efter destination"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Vælg dato"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Vælg datoer"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Vælg destination"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Spisende"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Vælg placering"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Vælg afrejsested"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Vælg tidspunkt"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Rejsende"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("OVERNAT"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldiverne"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalows over vandet"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Cairo, Egypten"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar-moskéens tårne ved solnedgang"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taipei 101-skyskraber"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hytte i et snelandskab med stedsegrønne træer"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu-citadel"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mand, der læner sig op ad en blå retro bil"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Schweiz"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hotel ved søen foran bjerge"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Telt på en mark"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Swimmingpool med palmetræer"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Farverige lejligheder på Ribeira Square"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexico"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mayaruiner på en klippeskrænt ved en strand"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Murstensfyrtårn ved havet"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Find ejendomme efter placering"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Tillad"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Æbletærte"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Annuller"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Chokoladebrownie"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Vælg din yndlingsdessert på listen nedenfor. Dit valg bruges til at tilpasse den foreslåede liste over spisesteder i dit område."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Kassér"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Tillad ikke"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Vælg en favoritdessert"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Din aktuelle placering vises på kortet og bruges til rutevejledning, søgeresultater i nærheden og til at beregne rejsetider."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Vil du give \"Maps\" adgang til din placering, når du bruger appen?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Knap"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Med baggrund"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Vis underretning"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Handlingstips er en række muligheder, som udløser en handling relateret til det primære indhold. Handlingstips bør vises på en dynamisk og kontekstafhængig måde på en brugerflade."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Handlingstip"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "En underretningsdialogboks oplyser brugeren om situationer, der kræver handling. En underretningsdialogboks har en valgfri titel og en valgfri liste med handlinger."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Underretning"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Underretning med titel"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Navigationslinjer i bunden viser tre til fem destinationer nederst på en skærm. Hver destination er angivet med et ikon og en valgfri tekstetiket. Når der trykkes på et navigationsikon nederst på en skærm, føres brugeren til den overordnede navigationsdestination, der er knyttet til det pågældende ikon."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Faste etiketter"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Valgt etiket"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigation i bunden med tværudtoning"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigation i bunden"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Tilføj"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("VIS FELTET I BUNDEN"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Overskrift"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Et modalt felt i bunden er et alternativ til en menu eller dialogboks og forhindrer, at brugeren interagerer med resten af appen."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modalt felt i bunden"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Et fast felt i bunden viser oplysninger, der supplerer det primære indhold i appen. Et fast felt i bunden forbliver synligt, selvom brugeren interagerer med andre elementer i appen."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Fast felt i bunden"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Faste og modale felter i bunden"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Felt i bunden"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Tekstfelter"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Flade, hævede, kontur og meget mere"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Knapper"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompakte elementer, der repræsenterer et input, en attribut eller en handling"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Tips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Valgtips repræsenterer et enkelt valg fra et sæt. Valgtips indeholder relateret beskrivende tekst eller relaterede kategorier."),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("Valgtip"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Eksempel på et kodestykke"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Kopieret til udklipsholderen."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPIER ALT"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Faste farver og farveskemaer, som repræsenterer farvepaletten for Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Alle de foruddefinerede farver"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Farver"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Et handlingsark angiver, hvilken slags underretning der vises for brugeren med to eller flere valg, der er relevante i sammenhængen. Et handlingsark kan have en titel, en ekstra meddelelse og en liste med handlinger."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Handlingsark"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Kun underretningsknapper"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Underretning med knapper"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "En underretningsdialogboks oplyser brugeren om situationer, der kræver handling. En underretningsdialogboks har en valgfri titel, valgfrit indhold og en valgfri liste med handlinger. Titlen vises oven over indholdet, og handlinger vises under indholdet."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Underretning"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Underretning med titel"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dialogbokse til underretning i samme stil som iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Underretninger"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "En knap i samme stil som iOS. Tydeligheden af teksten og/eller ikonet skifter, når knappen berøres. Der kan tilvælges en baggrund til knappen."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Knapper i stil med iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Knapper"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Bruges til at vælge mellem et antal muligheder, som gensidigt udelukker hinanden. Når én af mulighederne i den segmenterede styring er valgt, er de øvrige muligheder i den segmenterede styring ikke valgt."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Segmenteret styring i iOS-stil"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmenteret styring"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Enkel, underretning og fuld skærm"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialogbokse"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API-dokumentation"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filtertips bruger tags eller beskrivende ord til at filtrere indhold."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filtertip"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "En flad knap viser en blækklat, når den trykkes ned, men den hæves ikke. Brug flade knapper på værktøjslinjer, i dialogbokse og indlejret i den indre margen."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Flad knap"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "En svævende handlingsknap er en rund ikonknap, der svæver over indholdet for at fremhæve en primær handling i appen."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Svævende handlingsknap"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Egenskaben fullscreenDialog angiver, om den delte side er en modal dialogboks i fuld skærm."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Fuld skærm"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Fuld skærm"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Oplysninger"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Inputtips repræsenterer en kompleks oplysning, f.eks. en enhed (person, sted eller ting) eller en samtaletekst, i kompakt form."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("Inputtip"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Kunne ikke vise webadressen:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "En enkelt række med fast højde, som typisk indeholder tekst samt et foranstillet eller efterstillet ikon."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekundær tekst"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Layout for rullelister"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Lister"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Én linje"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tryk her for at se de tilgængelige muligheder for denne demo."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Se valgmuligheder"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Valgmuligheder"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Konturknapper bliver uigennemsigtige og hæves, når der trykkes på dem. De kombineres ofte med hævede knapper for at angive en alternativ, sekundær handling."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Konturknap"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Hævede knapper giver en tredje dimension til layouts, der primært er flade. De fremhæver funktioner i tætpakkede eller åbne områder."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Hævet knap"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Afkrydsningsfelter giver brugerne mulighed for at vælge flere valgmuligheder fra et sæt. Et normalt afkrydsningsfelt kan angives til værdierne sand eller falsk, og et afkrydsningsfelt med tre værdier kan også angives til nul."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Afkrydsningsfelt"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Alternativknapper giver brugeren mulighed for at vælge en valgmulighed fra et sæt. Brug alternativknapper til eksklusivt valg, hvis du mener, at brugeren har brug for at se alle tilgængelige valgmuligheder side om side."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Alternativknap"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Afkrydsningsfelter, alternativknapper og kontakter"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Til/fra-kontakter skifter en indstillings status. Den indstilling, som kontakten styrer, og dens status, bør tydeliggøres i den tilsvarende indlejrede etiket."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Kontakt"),
        "demoSelectionControlsTitle": MessageLookupByLibrary.simpleMessage(
            "Kontrolelementer til markering"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "En enkel dialogboks giver brugeren et valg mellem flere muligheder. En enkel dialogboks har en valgfri titel, der vises oven over valgmulighederne."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Enkel"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Med faner kan indhold fra forskellige skærme, datasæt og andre interaktioner organiseres."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Faner med visninger, der kan rulle uafhængigt af hinanden"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Faner"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Tekstfelterne giver brugerne mulighed for at angive tekst i en brugerflade. De vises normalt i formularer og dialogbokse."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Mail"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Angiv en adgangskode."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – angiv et amerikansk telefonnummer."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Ret de fejl, der er angivet med rød farve, før du sender."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Skjul adgangskode"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Vær kortfattet; det her er kun en demo."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Livshistorie"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Navn*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Du skal angive et navn."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "Du må højst angive otte tegn."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Angiv kun alfabetiske tegn."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Adgangskode*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Adgangskoderne matcher ikke"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefonnummer*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* angiver et obligatorisk felt"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Angiv adgangskoden igen*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Løn"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Vis adgangskode"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("SEND"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "En enkelt linje med tekst og tal, der kan redigeres"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Fortæl os, hvem du er (du kan f.eks. skrive, hvad du laver, eller hvilke fritidsinteresser du har)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Tekstfelter"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Hvad kalder andre dig?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Hvordan kan vi kontakte dig?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Din mailadresse"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Til/fra-knapper kan bruges til at gruppere relaterede indstillinger. For at fremhæve grupper af relaterede til/fra-knapper bør grupperne dele en fælles container."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Til/fra-knapper"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("To linjer"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definitioner for de forskellige typografier, der blev fundet i Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Alle de foruddefinerede typografier"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Typografi"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Tilføj konto"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACCEPTÉR"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ANNULLER"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ACCEPTÉR IKKE"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("KASSÉR"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Vil du kassere kladden?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Demonstration af en dialogboks i fuld skærm"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("GEM"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Dialogboks i fuld skærm"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Lad Google gøre det nemmere for apps at fastlægge din placering. Det betyder, at der sendes anonyme placeringsdata til Google, også når der ikke er nogen apps, der kører."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Vil du bruge Googles placeringstjeneste?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Konfigurer konto til backup"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("VIS DIALOGBOKS"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("REFERENCESTILE OG MEDIER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorier"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galleri"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Opsparing til bil"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Bankkonto"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Opsparing til hjemmet"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Ferie"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Kontoejer"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Årligt afkast i procent"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Betalte renter sidste år"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Rentesats"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Renter ÅTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Næste kontoudtog"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("I alt"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Konti"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Underretninger"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Fakturaer"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Betalingsdato"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Tøj"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kaffebarer"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Dagligvarer"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restauranter"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Tilbage"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budgetter"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("En personlig økonomiapp"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("TILBAGE"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("LOG IND"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Log ind"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Log ind for at bruge Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Har du ikke en konto?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Adgangskode"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Husk mig"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("TILMELD DIG"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Brugernavn"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("SE ALLE"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Se alle konti"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Se alle regninger"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Se alle budgetter"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Find hæveautomater"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Hjælp"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Administrer konti"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notifikationer"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Indstillinger for Paperless"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Adgangskode og Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Personlige oplysninger"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Log ud"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Skattedokumenter"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("KONTI"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FAKTURAER"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDGETTER"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("OVERSIGT"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("INDSTILLINGER"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Om Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Designet af TOASTER i London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Luk indstillinger"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Indstillinger"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Mørkt"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Send feedback"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Lyst"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Landestandard"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platformmekanik"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Slowmotion"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("System"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Tekstretning"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("VTH"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Baseret på landestandard"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("HTV"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Skalering af tekst"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Meget stor"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Stor"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Lille"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Indstillinger"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ANNULLER"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("RYD KURV"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KURV"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Forsendelse:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Afgifter:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("I ALT"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("TILBEHØR"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ALLE"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("TØJ"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("STARTSIDE"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "En modebevidst forhandlerapp"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Adgangskode"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Brugernavn"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("LOG UD"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("NÆSTE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Blue Stone-krus"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Lyserød Cerise-t-shirt"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambrayservietter"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambrayskjorte"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klassisk hvid krave"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Clay-sweater"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Hylde med kobbergitter"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("T-shirt med tynde striber"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby-hat"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry-jakke"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Tre-i-et-skrivebord fra Gilt"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Rødt halstørklæde"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Grå løstsiddende tanktop"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs-testel"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Marineblå bukser"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Beige tunika"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Bord med fire stole"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Rende til regnvand"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona-samarbejde"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Havblå tunika"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Seabreeze-sweater"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "T-shirt med åbning til skuldrene"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Shrug-taske"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe-keramiksæt"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella-solbriller"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut-øreringe"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukkulente planter"),
        "shrineProductSunshirtDress": MessageLookupByLibrary.simpleMessage(
            "Kjole, der beskytter mod solen"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surfertrøje"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond-rygsæk"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Varsity-sokker"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter-henley (hvid)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Weave-nøglering"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Nålestribet skjorte i hvid"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney-bælte"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Læg i kurven"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Luk kurven"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Luk menuen"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Åbn menuen"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Fjern varen"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Søg"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Indstillinger"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Et responsivt opstartslayout"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Brødtekst"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("KNAP"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Overskrift"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Undertekst"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Titel"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("Begynderapp"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Tilføj"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Angiv som favorit"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("Søg"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Del")
      };
}
