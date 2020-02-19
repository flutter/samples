// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a it locale. All the
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
  String get localeName => 'it';

  static m0(value) =>
      "Per visualizzare il codice sorgente di questa app, visita ${value}.";

  static m1(title) => "Segnaposto per la scheda ${title}";

  static m2(destinationName) => "Esplora ${destinationName}";

  static m3(destinationName) => "Condividi ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Nessun ristorante', one: '1 ristorante', other: '${totalRestaurants} ristoranti')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Diretto', one: '1 scalo', other: '${numberOfStops} scali')}";

  static m7(hours) => "${Intl.plural(hours, one: '1 h', other: '${hours} h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 m', other: '${minutes} m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nessuna proprietà disponibile', one: '1 proprietà disponibile', other: '${totalProperties} proprietà disponibili')}";

  static m10(value) => "${value} con miele";

  static m11(value) => "${value} con zucchero";

  static m12(value) => "Articolo ${value}";

  static m13(error) => "Impossibile copiare negli appunti: ${error}";

  static m14(value) => "Continuo: ${value}";

  static m15(value) => "Discreto: ${value}";

  static m16(value) => "Valore selezionato: ${value}";

  static m17(value) => "Valore selezionato: ${value}";

  static m18(name, phoneNumber) =>
      "Il numero di telefono di ${name} è ${phoneNumber}";

  static m19(value) => "Hai selezionato: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Conto ${accountName} ${accountNumber} con ${amount}.";

  static m21(amount) =>
      "Questo mese hai speso ${amount} di commissioni per prelievi in contanti";

  static m22(percent) =>
      "Ottimo lavoro. Il saldo del tuo conto corrente è più alto di ${percent} rispetto al mese scorso.";

  static m23(percent) =>
      "Avviso: hai usato ${percent} del tuo budget per gli acquisti di questo mese.";

  static m24(amount) => "Questo mese hai speso ${amount} per ristoranti.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Aumenta la tua potenziale detrazione fiscale. Assegna categorie a 1 transazione non assegnata.', other: 'Aumenta la tua potenziale detrazione fiscale. Assegna categorie a ${count} transazioni non assegnate.')}";

  static m26(billName, date, amount) =>
      "Fattura ${billName} di ${amount} in scadenza il giorno ${date}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budget ${budgetName} di cui è stato usato un importo pari a ${amountUsed} su ${amountTotal}; ${amountLeft} ancora disponibile";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'NESSUN ARTICOLO', one: '1 ARTICOLO', other: '${quantity} ARTICOLI')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Quantità: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Carrello, nessun articolo', one: 'Carrello, 1 articolo', other: 'Carrello, ${quantity} articoli')}";

  static m32(product) => "Rimuovi ${product}";

  static m33(value) => "Articolo ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Repository GitHub di campioni Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Torna alla galleria"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Icona iniziale"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Più azioni"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Reimposta il banner"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "La tua password è stata aggiornata sull\'altro dispositivo. Accedi nuovamente."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Notch"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Posizione del pulsante di azione mobile"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Ancorato: al centro"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Ancorato: alla fine"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Mobile: al centro"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Mobile: alla fine"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Account"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Sveglia"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Calendario"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Fotocamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Commenti"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("PULSANTE"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Crea"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Esplora"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Selezionabile (pressione prolungata)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Abilitato per il tocco"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Numero 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Setaioli"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Templi"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Le 10 città principali da visitare nel Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Artigiani dell\'India meridionale"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Tempio di Brihadishvara"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Ciclismo"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ascensore"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Caminetto"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grandi"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Medie"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Piccole"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Accendi le luci"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Lavatrice"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("AMBRA"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRIGIO BLU"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARRONE"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CIANO"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ARANCIONE SCURO"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("VIOLA SCURO"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERDE"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRIGIO"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDACO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("AZZURRO"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("VERDE CHIARO"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERDE LIME"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ARANCIONE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSA"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("VIOLA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROSSO"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("VERDE ACQUA"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GIALLO"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Un\'app personalizzata per i viaggi"),
        "craneEat": MessageLookupByLibrary.simpleMessage("DOVE MANGIARE"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napoli, Italia"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza in un forno a legna"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Stati Uniti"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisbona, Portogallo"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Donna con un enorme pastrami sandwich in mano"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Locale vuoto con sgabelli in stile diner"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Stati Uniti"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coreano"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Parigi, Francia"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Dolce al cioccolato"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seul, Corea del Sud"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Zona ristorante artistica"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Stati Uniti"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piatto di gamberi"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Stati Uniti"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ingresso di una panetteria"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Stati Uniti"),
        "craneEat8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piatto di gamberi d\'acqua dolce"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spagna"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bancone di un bar con dolci"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Trova ristoranti in base alla destinazione"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("VOLI"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, Stati Uniti"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in un paesaggio innevato con alberi sempreverdi"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Stati Uniti"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Il Cairo, Egitto"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torri della moschea di Al-Azhar al tramonto"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisbona, Portogallo"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Faro di mattoni sul mare"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, Stati Uniti"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palme"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesia"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina sul mare con palme"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda in un campo"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Valle di Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bandiere di preghiera di fronte a una montagna innevata"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Perù"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cittadella di Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldive"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalow sull\'acqua"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Svizzera"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel sul lago di fronte alle montagne"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Città del Messico, Messico"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Veduta aerea del Palacio de Bellas Artes"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Monte Rushmore, Stati Uniti"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Monte Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapore"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("L\'Avana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Uomo appoggiato a un\'auto blu antica"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Trova voli in base alla destinazione"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Seleziona data"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Seleziona date"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Scegli destinazione"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Clienti"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Seleziona località"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Scegli origine"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Seleziona ora"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Viaggiatori"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("DOVE DORMIRE"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldive"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalow sull\'acqua"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Stati Uniti"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("Il Cairo, Egitto"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torri della moschea di Al-Azhar al tramonto"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Grattacielo Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in un paesaggio innevato con alberi sempreverdi"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Perù"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cittadella di Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("L\'Avana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Uomo appoggiato a un\'auto blu antica"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitznau, Svizzera"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel sul lago di fronte alle montagne"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Stati Uniti"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda in un campo"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Stati Uniti"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palme"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portogallo"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Appartamenti colorati a piazza Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Messico"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Rovine maya su una scogliera sopra una spiaggia"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisbona, Portogallo"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Faro di mattoni sul mare"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Trova proprietà in base alla destinazione"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Consenti"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Torta di mele"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Annulla"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie al cioccolato"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Seleziona il tuo dolce preferito nell\'elenco indicato di seguito. La tua selezione verrà usata per personalizzare l\'elenco di locali gastronomici suggeriti nella tua zona."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Annulla"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Non consentire"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Seleziona il dolce che preferisci"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "La tua posizione corrente verrà mostrata sulla mappa e usata per le indicazioni stradali, i risultati di ricerca nelle vicinanze e i tempi di percorrenza stimati."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Consentire a \"Maps\" di accedere alla tua posizione mentre usi l\'app?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisù"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Pulsante"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Con sfondo"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Mostra avviso"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Home"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profilo"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Calcio (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Calorie"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Carboidrati (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Dessert (1 porzione)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Grassi (g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Ferro (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Proteine (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodio (mg)"),
        "dataTableHeader":
            MessageLookupByLibrary.simpleMessage("Alimentazione"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Torta di mele"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Ciambella"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Eclair"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Frozen yogurt"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Pan di zenzero"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Croccante a nido d\'ape"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Gelato biscotto"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Jelly bean"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Lecca lecca"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Tocca per modificare i riquadri e usa i gesti per spostarti nella scena. Trascina per la panoramica, pizzica per lo zoom e ruota con due dita. Premi il pulsante di ripristino per tornare all\'orientamento iniziale."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Modifica riquadro"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Reimposta trasformazioni"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Panoramica, zoom ruota,"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("Trasformazioni 2D"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "I chip di azione sono un insieme di opzioni che attivano un\'azione relativa ai contenuti principali. I chip di azione dovrebbero essere visualizzati in modo dinamico e in base al contesto in un\'interfaccia utente."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip di azione"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Una finestra di dialogo di avviso segnala all\'utente situazioni che richiedono l\'accettazione. Una finestra di dialogo include un titolo facoltativo e un elenco di azioni tra cui scegliere."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Avviso"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Avviso con titolo"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Un banner mostra un messaggio importante e conciso e offre agli utenti azioni da compiere (o per ignorare il banner). È necessaria un\'azione dell\'utente per ignorare il banner."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Viene visualizzato un banner in un elenco"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Le barre dell\'app in basso consentono di accedere a un riquadro di navigazione a scomparsa inferiore e a massimo quattro azioni, incluso il pulsante di azione mobile."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Consente di visualizzare la navigazione e le azioni in basso"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra dell\'app in basso"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Le barre di navigazione in basso mostrano da tre a cinque destinazioni nella parte inferiore dello schermo. Ogni destinazione è rappresentata da un\'icona e da un\'etichetta di testo facoltativa. Quando viene toccata un\'icona di navigazione in basso, l\'utente viene indirizzato alla destinazione di navigazione principale associata all\'icona."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etichette permanenti"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etichetta selezionata"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigazione inferiore con visualizzazioni a dissolvenza incrociata"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigazione in basso"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Aggiungi"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("MOSTRA FOGLIO INFERIORE"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Intestazione"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Un foglio inferiore modale è un\'alternativa a un menu o a una finestra di dialogo e impedisce all\'utente di interagire con il resto dell\'app."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Foglio inferiore modale"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un foglio inferiore permanente mostra informazioni che integrano i contenuti principali dell\'app. Un foglio inferiore permanente rimane visibile anche quando l\'utente interagisce con altre parti dell\'app."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Foglio inferiore permanente"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Fogli inferiori permanenti e modali"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Foglio inferiore"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Campi di testo"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Piatto, in rilievo, con contorni e altro ancora"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Pulsanti"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Una scheda è un foglio di Material usato per rappresentare alcune informazioni correlate, ad esempio un album, una posizione geografica, un pasto, dettagli di contatto e così via."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Schede di riferimento con angoli arrotondati"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Schede"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Menu con elenco di controllo"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elementi compatti che rappresentano un valore, un attributo o un\'azione"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chip"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "I chip di scelta rappresentano una singola scelta di un insieme di scelte. I chip di scelta contengono categorie o testi descrittivi correlati."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip di scelta"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicatore di avanzamento circolare Material Design che ruota per indicare che l\'applicazione è occupata."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicatore di avanzamento circolare"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Codice demo"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Copiato negli appunti."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIA TUTTO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Costanti di colore e di campioni di colore che rappresentano la tavolozza dei colori di material design."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Tutti i colori predefiniti"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Colori"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu contestuale"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Un foglio azioni è un avviso con uno stile specifico che presenta all\'utente un insieme di due o più scelte relative al contesto corrente. Un foglio azioni può avere un titolo, un messaggio aggiuntivo e un elenco di azioni."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Foglio azioni"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicatore di attività in stile iOS che ruota in senso orario."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicatori di attività in stile iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicatore di attività"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Solo pulsanti di avviso"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Avvisi con pulsanti"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Una finestra di dialogo di avviso segnala all\'utente situazioni che richiedono l\'accettazione. Una finestra di dialogo di avviso include un titolo facoltativo e un elenco di azioni tra cui scegliere. Il titolo viene mostrato sopra i contenuti e le azioni sono mostrate sotto i contenuti."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Avviso"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Avviso con titolo"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Finestre di avviso in stile iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Avvisi"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Un pulsante in stile iOS. È costituito da testo e/o da un\'icona con effetto di dissolvenza quando viene mostrata e quando scompare se viene toccata. A discrezione, può avere uno sfondo."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Pulsanti dello stile iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Pulsanti"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Una barra di navigazione in stile iOS. La barra di navigazione è una barra degli strumenti che consiste almeno nel titolo di una pagina, al centro della barra degli strumenti."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Barra di navigazione in stile iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra di navigazione"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Data"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Data e ora"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Un widget selettore in stile iOS che può essere usato per selezionare date, orari o entrambi."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Selettori di data e ora in stile iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Ora"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Timer"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Selettori"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un widget che implementa il controllo dei contenuti Trascina per aggiornare in stile iOS."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Controllo Trascina per aggiornare in stile iOS"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Trascina per aggiornare"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Consente di effettuare una selezione tra una serie di opzioni che si escludono a vicenda. Se viene selezionata un\'opzione nel controllo segmentato, le altre opzioni nello stesso controllo non sono più selezionate."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Controllo segmentato in stile iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Controllo segmentato"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Un dispositivo di scorrimento può essere utilizzato per selezionare valori da un insieme continuo o discreto."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dispositivo di scorrimento in stile iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Dispositivo di scorrimento"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Un interruttore viene utilizzato per attivare o disattivare lo stato di una singola impostazione."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Interruttore in stile iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Una barra delle schede di navigazione in stile iOS. Mostra più schede, di cui una sola (per impostazione predefinita, la prima) è attiva."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barra delle schede in stile iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra delle schede"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Un campo di testo consente all\'utente di inserire testo, con una tastiera hardware o una tastiera sullo schermo."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("Campi di testo in stile iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campi di testo"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "I dispositivi di scorrimento rappresentano un intervallo di valori lungo una barra, da cui gli utenti possono selezionare un singolo valore o un intervallo di valori. È possibile personalizzare e applicare un tema ai dispositivi di scorrimento."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Dispositivi di scorrimento personalizzati"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Le tabelle di dati mostrano le informazioni in un formato a griglia di righe e colonne. Le informazioni sono organizzate in modo da facilitare l\'analisi e consentire agli utenti di cercare schemi e dati."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Righe e colonne di informazioni"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Tabelle di dati"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Viene mostrata una finestra di dialogo contenente un selettore della data di Material Design."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selettore data"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Semplice, di avviso e a schermo intero"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Finestre di dialogo"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentazione API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "I chip di filtro consentono di filtrare i contenuti in base a tag o parole descrittive."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip di filtro"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un pulsante piatto mostra una macchia di inchiostro quando viene premuto, ma non si solleva. Usa pulsanti piatti nelle barre degli strumenti, nelle finestre di dialogo e in linea con la spaziatura interna"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Pulsante piatto"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un pulsante di azione sovrapposto è un\'icona circolare che viene mostrata sui contenuti per promuovere un\'azione principale dell\'applicazione."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Pulsante di azione sovrapposto (FAB, Floating Action Button)"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "La proprietà fullscreenDialog specifica se la pagina che sta per essere visualizzata è una finestra di dialogo modale a schermo intero"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Schermo intero"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Schermo intero"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Gli elenchi in formato griglia sono più adatti per presentare dati omogenei, generalmente le immagini. Ogni elemento in un elenco in formato griglia è chiamato riquadro."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Con piè di pagina"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Con intestazione"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Solo immagine"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Layout righe e colonne"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Elenchi in formato griglia"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informazioni"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "I chip di input rappresentano un\'informazione complessa, ad esempio un\'entità (persona, luogo o cosa) o un testo discorsivo, in un formato compatto."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip di input"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Impossibile mostrare l\'URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicatore di avanzamento lineare Material Design, anche noto come barra di avanzamento."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicatore di avanzamento lineare"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Una singola riga con altezza fissa che generalmente contiene del testo e un\'icona iniziale o finale."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Testo secondario"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Layout elenchi scorrevoli"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Elenchi"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Voce di menu disattivata"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un elemento con un menu con elenco di controllo"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Un elemento con un menu contestuale"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un elemento con un menu a sezioni"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Un elemento con un menu semplice"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Voce uno del menu contestuale"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Voce tre del menu contestuale"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Un menu visualizza un elenco di opzioni su una superficie temporanea, che vengono mostrate quando gli utenti interagiscono con un pulsante, un\'azione o un altro controllo."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Quattro"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Crea link"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Voce di menu uno"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Voce di menu tre"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Voce di menu due"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Uno"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Anteprima"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Rimuovi"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Condividi"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pulsanti di menu e menu semplici"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Tre"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Due"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Una riga"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tocca qui per visualizzare le opzioni disponibili per questa demo."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Visualizza opzioni"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opzioni"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "I pulsanti con contorni diventano opachi e sollevati quando vengono premuti. Sono spesso associati a pulsanti in rilievo per indicare alternative, azioni secondarie."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Pulsante con contorni"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("MOSTRA SELETTORE"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Selezione di data e ora"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Selettori"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lineari, circolari e indeterminati"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicatori di avanzamento"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "I pulsanti in rilievo aggiungono dimensione a layout prevalentemente piatti. Mettono in risalto le funzioni in spazi ampi o densi di contenuti."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Pulsante in rilievo"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "I dispositivi di scorrimento rappresentano un intervallo di valori lungo una barra, che può avere icone su entrambe le estremità per indicare un intervallo di valori. Sono la soluzione ideale per regolare impostazioni quali volume e luminosità oppure per applicare filtri delle immagini."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Dispositivi di scorrimento intervalli"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu a sezioni"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Le caselle di controllo consentono all\'utente di selezionare diverse opzioni da un gruppo di opzioni. Il valore di una casella di controllo standard è true o false, mentre il valore di una casella di controllo a tre stati può essere anche null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Casella di controllo"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "I pulsanti di opzione consentono all\'utente di selezionare un\'opzione da un gruppo di opzioni. Usa i pulsanti di opzione per la selezione esclusiva se ritieni che l\'utente debba vedere tutte le opzioni disponibili affiancate."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Pulsante di opzione"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Caselle di controllo, pulsanti di opzione e opzioni"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Le opzioni on/off consentono di attivare/disattivare lo stato di una singola opzione di impostazioni. La funzione e lo stato corrente dell\'opzione devono essere chiariti dall\'etichetta incorporata corrispondente."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Opzione"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Comandi di selezione"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Una finestra di dialogo semplice offre all\'utente una scelta tra molte opzioni. Una finestra di dialogo semplice include un titolo facoltativo che viene mostrato sopra le scelte."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Semplice"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu semplice"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Continuo"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Dispositivo di scorrimento intervallo continuo con tema personalizzato"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Continuo con valore numerico modificabile"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "I dispositivi di scorrimento rappresentano un intervallo di valori lungo una barra, da cui gli utenti possono selezionare un singolo valore. Sono la soluzione ideale per regolare impostazioni quali volume e luminosità oppure per applicare filtri delle immagini."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Discreto"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Dispositivo di scorrimento discreto con tema personalizzato"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Valore numerico modificabile"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widget per la selezione di un valore tramite scorrimento"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Dispositivi di scorrimento"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Hai premuto l\'azione dello snackbar."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("AZIONE"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("MOSTRA UNO SNACKBAR"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Gli snackbar informano gli utenti di un processo che un\'app ha eseguito o sta per eseguire. Vengono visualizzati temporaneamente in fondo allo schermo. Non dovrebbero interrompere l\'esperienza utente e non ne richiedono l\'interazione per essere rimossi dallo schermo."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Gli snackbar mostrano i messaggi in fondo allo schermo"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Questo è uno snackbar."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Snackbar"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Le schede consentono di organizzare i contenuti in diversi set di dati, schermate e altre interazioni."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non scorre"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scorre"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Schede con visualizzazioni scorrevoli in modo indipendente"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Schede"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "I campi di testo consentono agli utenti di inserire testo in un\'interfaccia utente e sono generalmente presenti in moduli e finestre di dialogo."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Indirizzo email"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Inserisci una password."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-####. Inserisci un numero di telefono degli Stati Uniti."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Correggi gli errori in rosso prima di inviare il modulo."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Nascondi password"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Usa un testo breve perché è soltanto dimostrativo."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biografia"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nome*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Il nome è obbligatorio."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Massimo 8 caratteri."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Inserisci soltanto caratteri alfabetici."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Password*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Le password non corrispondono"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Numero di telefono*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "L\'asterisco (*) indica un campo obbligatorio"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Ridigita la password*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("Stipendio"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mostra password"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("INVIA"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Singola riga di testo modificabile e numeri"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Parlaci di te (ad esempio, scrivi cosa fai o quali sono i tuoi hobby)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campi di testo"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Qual è il tuo nome?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Dove possiamo contattarti?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Il tuo indirizzo email"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Viene mostrata una finestra di dialogo contenente un selettore dell\'ora di Material Design."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selettore ora"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "I pulsanti di attivazione/disattivazione possono essere usati per raggruppare le opzioni correlate. Per mettere in risalto un gruppo di pulsanti di attivazione/disattivazione correlati, il gruppo deve condividere un container comune."),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Pulsanti di attivazione/disattivazione"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Le descrizioni comandi forniscono etichette di testo che aiutano a spiegare la funzione di un pulsante o di un\'altra azione dell\'interfaccia utente. Le descrizioni comandi mostrano testo informativo quando gli utenti posizionano il puntatore sopra un elemento, impostano lo stato attivo su un elemento o premono a lungo un elemento."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Premi a lungo un elemento o posiziona sopra il puntatore per visualizzare la descrizione comando."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Breve messaggio visualizzato in caso di pressione prolungata o di posizionamento del puntatore del mouse sopra un elemento"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Descrizioni comandi"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Due righe"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definizioni dei vari stili tipografici trovati in material design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Tutti gli stili di testo predefiniti"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografia"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Aggiungi account"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACCETTO"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ANNULLA"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NON ACCETTO"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ANNULLA"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Eliminare la bozza?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Finestra di dialogo demo a schermo intero"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SALVA"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Finestra di dialogo a schermo intero"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Consenti a Google di aiutare le app a individuare la posizione. Questa operazione comporta l\'invio a Google di dati anonimi sulla posizione, anche quando non ci sono app in esecuzione."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Utilizzare il servizio di geolocalizzazione di Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Imposta account di backup"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MOSTRA FINESTRA DI DIALOGO"),
        "dismiss": MessageLookupByLibrary.simpleMessage("IGNORA"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Un\'app di notizie incentrata sui contenuti"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Riformare Green Army dall\'interno"),
        "fortnightlyHeadlineBees":
            MessageLookupByLibrary.simpleMessage("Le api scarseggiano"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "I designer usano la tecnologia per realizzare tessuti futuristici"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Punto di vista delle femministe sulla partigianeria"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("Il futuro della benzina"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "La pacata ma potente rivoluzione sanitaria"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Con il ristagno delle azioni, tanti guardano alla valuta"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Vite di americani divise durante la guerra"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Ultimi aggiornamenti"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Economia"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Cultura"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Prima pagina"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Politica"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Scienza"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Sport"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Tecnologia"),
        "fortnightlyMenuTravel": MessageLookupByLibrary.simpleMessage("Viaggi"),
        "fortnightlyMenuUS":
            MessageLookupByLibrary.simpleMessage("Stati Uniti"),
        "fortnightlyMenuWorld":
            MessageLookupByLibrary.simpleMessage("Dal mondo"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("GreenArmy"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("RivoluzioneSanitaria"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Riforma"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Azioni"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("ProgettazioneTecnologica"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STILI E ALTRE"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorie"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galleria"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Spiaggia"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Fonderie bronzo"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Pescatore"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Mercato dei fiori"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Preparazione del pranzo"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Mercato"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Salina"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scooter"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Produttore di seta"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Tempio di Thanjavur"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Risparmi per l\'auto"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Conto"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Risparmio familiare"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacanza"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Proprietario dell\'account"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Rendimento annuale percentuale"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Interesse pagato l\'anno scorso"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Tasso di interesse"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Interesse dall\'inizio dell\'anno"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Prossimo estratto conto"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Totale"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Account"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Avvisi"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Importo dovuto"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Importo pagato"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Importo totale"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Fatture"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Scadenza:"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Abbigliamento"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Caffetterie"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Spesa"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ristoranti"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Importo rimanente"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Importo usato"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Limite totale"),
        "rallyBudgetLeft":
            MessageLookupByLibrary.simpleMessage("Ancora a disposizione"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budget"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Un\'app per le finanze personali"),
        "rallyFinanceLeft":
            MessageLookupByLibrary.simpleMessage("ANCORA A DISPOSIZIONE"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("ACCEDI"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Accedi"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Accedi all\'app Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Non hai un account?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Ricordami"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("REGISTRATI"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nome utente"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("VEDI TUTTI"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Visualizza tutti i conti"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Visualizza tutte le fatture"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Visualizza tutti i budget"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Trova bancomat"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Guida"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gestisci account"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notifiche"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Impostazioni computerizzate"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Passcode e Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Informazioni personali"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Esci"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documenti fiscali"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ACCOUNT"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FATTURE"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDGET"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("PANORAMICA"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("IMPOSTAZIONI"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Informazioni su Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Design di TOASTER di Londra"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Chiudi impostazioni"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Scuro"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Invia feedback"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Chiaro"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Impostazioni internazionali"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Struttura piattaforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Slow motion"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Direzione testo"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Da sinistra a destra"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("In base alla lingua"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Da destra a sinistra"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Ridimensionamento testo"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Molto grande"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Grande"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normale"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Piccolo"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ANNULLA"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("SVUOTA CARRELLO"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("CARRELLO"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Spedizione:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotale:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Imposte:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("TOTALE"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESSORI"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TUTTI"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ABBIGLIAMENTO"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("CASA"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Un\'app di vendita al dettaglio alla moda"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Password"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nome utente"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ESCI"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("AVANTI"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Tazza in basalto blu"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Maglietta scallop tee color ciliegia"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Tovaglioli Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Maglia Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Colletto classico"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Felpa Clay"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Rastrelliera di rame"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Maglietta a righe sottili"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Elemento da giardino"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Cappello Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Giacca Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Tris di scrivanie Gilt"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Sciarpa rossa"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Canottiera comoda grigia"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Set da tè Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantaloni navy"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Abito plaster"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Tavolo Quartet"),
        "shrineProductRainwaterTray": MessageLookupByLibrary.simpleMessage(
            "Contenitore per l\'acqua piovana"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Crossover Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Vestito da mare"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Felpa Seabreeze"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Maglietta shoulder roll"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Borsa a tracolla"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Set di ceramiche Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Occhiali da sole Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Orecchini Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Vasi per piante grasse"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Abito prendisole"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Maglietta Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Borsa Vagabond"),
        "shrineProductVarsitySocks": MessageLookupByLibrary.simpleMessage(
            "Calze di squadre universitarie"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (bianco)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Portachiavi intrecciato"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Maglia gessata bianca"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Cintura Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Aggiungi al carrello"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Chiudi carrello"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Chiudi menu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Apri menu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Rimuovi articolo"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Cerca"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Impostazioni"),
        "signIn": MessageLookupByLibrary.simpleMessage("ACCEDI"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Un layout di base adattivo"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Corpo"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("PULSANTE"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Titolo"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Sottotitolo"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Titolo"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("App di base"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Aggiungi"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Aggiungi ai preferiti"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Cerca"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Condividi")
      };
}
