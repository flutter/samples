// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a cs locale. All the
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
  String get localeName => 'cs';

  static m0(value) =>
      "Chcete-li zobrazit zdrojový kód této aplikace, přejděte na ${value}.";

  static m1(title) => "Zástupný symbol karty ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Žádné restaurace', one: '1 restaurace', few: '${totalRestaurants} restaurace', many: '${totalRestaurants} restaurace', other: '${totalRestaurants} restaurací')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Bez mezipřistání', one: '1 mezipřistání', few: '${numberOfStops} mezipřistání', many: '${numberOfStops} mezipřistání', other: '${numberOfStops} mezipřistání')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Žádné dostupné služby', one: '1 dostupná služba', few: '${totalProperties} dostupné služby', many: '${totalProperties} dostupné služby', other: '${totalProperties} dostupných služeb')}";

  static m5(value) => "Položka ${value}";

  static m6(error) => "Kopírování do schránky se nezdařilo: ${error}";

  static m7(value) => "Spojité: ${value}";

  static m8(value) => "Diskrétní: ${value}";

  static m9(name, phoneNumber) => "${name} má telefonní číslo ${phoneNumber}";

  static m10(value) => "Vybrali jste: „${value}“";

  static m11(accountName, accountNumber, amount) =>
      "Účet ${accountName} č. ${accountNumber} s částkou ${amount}.";

  static m12(amount) =>
      "Tento měsíc jste utratili ${amount} za poplatky za bankomat";

  static m13(percent) =>
      "Dobrá práce! Na běžném účtu máte o ${percent} vyšší zůstatek než minulý měsíc.";

  static m14(percent) =>
      "Pozor, už jste využili ${percent} rozpočtu na nákupy na tento měsíc.";

  static m15(amount) => "Tento týden jste utratili ${amount} za restaurace";

  static m16(count) =>
      "${Intl.plural(count, one: 'Zvyšte potenciální odečet z daní! Přiřaďte k 1 nezařazené transakci kategorie.', few: 'Zvyšte potenciální odečet z daní! Přiřaďte ke ${count} nezařazeným transakcím kategorie.', many: 'Zvyšte potenciální odečet z daní! Přiřaďte k ${count} nezařazené transakce kategorie.', other: 'Zvyšte potenciální odečet z daní! Přiřaďte k ${count} nezařazeným transakcím kategorie.')}";

  static m17(billName, date, amount) =>
      "Faktura ${billName} ve výši ${amount} je splatná do ${date}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Rozpočet ${budgetName}: využito ${amountUsed} z ${amountTotal}, zbývá ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'ŽÁDNÉ POLOŽKY', one: '1 POLOŽKA', few: '${quantity} POLOŽKY', many: '${quantity} POLOŽKY', other: '${quantity} POLOŽEK')}";

  static m20(price) => "× ${price}";

  static m21(quantity) => "Počet: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Nákupní košík, prázdný', one: 'Nákupní košík, 1 položka', few: 'Nákupní košík, ${quantity} položky', many: 'Nákupní košík, ${quantity} položky', other: 'Nákupní košík, ${quantity} položek')}";

  static m23(product) => "Odstranit produkt ${product}";

  static m24(value) => "Položka ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Ukázky pro Flutter v repozitáři GitHub"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Zpět do galerie"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Účet"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Upozornění"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendář"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Fotoaparát"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komentáře"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("TLAČÍTKO"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Vytvořit"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Cyklistika"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Výtah"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Krb"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Velký"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Střední"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Malý"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Zapnout osvětlení"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Pračka"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("JANTAROVÁ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("MODRÁ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ŠEDOMODRÁ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("HNĚDÁ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("AZUROVÁ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TMAVĚ ORANŽOVÁ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("TMAVĚ NACHOVÁ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ZELENÁ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ŠEDÁ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGOVÁ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("SVĚTLE MODRÁ"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("SVĚTLE ZELENÁ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIMETKOVÁ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANŽOVÁ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("RŮŽOVÁ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("NACHOVÁ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ČERVENÁ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ŠEDOZELENÁ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ŽLUTÁ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Personalizovaná cestovní aplikace"),
        "craneEat": MessageLookupByLibrary.simpleMessage("JÍDLO"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapol, Itálie"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza v peci na dřevo"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, USA"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalsko"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Žena držící velký sendvič pastrami"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Prázdný bar s vysokými stoličkami"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portland, USA"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Korejské taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paříž, Francie"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Čokoládový dezert"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Soul, Jižní Korea"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Posezení ve stylové restauraci"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Seattle, USA"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pokrm z krevet"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Nashville, USA"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Vchod do pekárny"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, USA"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Talíř s humrem"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Španělsko"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kavárenský pult s cukrovím"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Objevte restaurace podle destinace"),
        "craneFly": MessageLookupByLibrary.simpleMessage("LÉTÁNÍ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chata v zasněžené krajině se stálezelenými stromy"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Káhira, Egypt"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minarety mešity al-Azhar při západu slunce"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalsko"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cihlový maják u moře"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazén s palmami"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonésie"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazén u moře s palmami"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Stan na poli"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Údolí Khumbu, Nepál"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Modlitební praporky se zasněženou horou v pozadí"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pevnost Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maledivy"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalovy nad vodou"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Švýcarsko"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hotel u jezera na úpatí hor"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Ciudad de México, Mexiko"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Letecký snímek Paláce výtvarných umění"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore, USA"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Muž opírající se o staré modré auto"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Objevte lety podle destinace"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Vyberte datum"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Zvolte data"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Zvolte cíl"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("Bary s občerstvením"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Vyberte místo"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Vyberte počátek cesty"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Vyberte čas"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Cestovatelé"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("SPÁNEK"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maledivy"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalovy nad vodou"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Káhira, Egypt"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minarety mešity al-Azhar při západu slunce"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("Tchaj-pej, Tchaj-wan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mrakodrap Tchaj-pej 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chata v zasněžené krajině se stálezelenými stromy"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pevnost Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Muž opírající se o staré modré auto"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitznau, Švýcarsko"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hotel u jezera na úpatí hor"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Stan na poli"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazén s palmami"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugalsko"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pestrobarevné domy na náměstí Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexiko"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mayské ruiny na útesu nad pláží"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalsko"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cihlový maják u moře"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Objevte ubytování podle destinace"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Povolit"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Jablečný koláč"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Zrušit"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Čokoládové brownie"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Ze seznamu níže vyberte svůj oblíbený zákusek. Na základě výběru vám přizpůsobíme navrhovaný seznam stravovacích zařízení ve vašem okolí."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Zahodit"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Nepovolovat"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Vyberte oblíbený zákusek"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Vaše aktuální poloha se bude zobrazovat na mapě a bude sloužit k zobrazení tras, výsledků vyhledávání v okolí a odhadovaných časů cesty."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Povolit Mapám přístup k poloze, když budete aplikaci používat?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Tlačítko"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("S pozadím"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Zobrazit upozornění"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Domovská karta"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky akce jsou sada možností, které spustí akci související s primárním obsahem. Měly by se objevovat dynamicky a kontextově v uživatelském rozhraní."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvek akce"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Dialogové okno s upozorněním uživatele informuje o situacích, které vyžadují pozornost. Dialogové okno s upozorněním má volitelný název a volitelný seznam akcí."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Upozornění"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Upozornění s názvem"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Spodní navigační panely zobrazují ve spodní části obrazovky tři až pět cílů. Každý cíl zastupuje ikona a volitelný textový štítek. Po klepnutí na spodní navigační ikonu je uživatel přenesen na nejvyšší úroveň cíle navigace, který je k dané ikoně přidružen."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Trvale zobrazené štítky"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Vybraný štítek"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Spodní navigace s prolínajícím zobrazením"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Spodní navigace"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Přidat"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ZOBRAZIT SPODNÍ TABULKU"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Záhlaví"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modální spodní tabulka je alternativou k nabídce nebo dialogovému oknu a zabraňuje uživateli v interakci se zbytkem aplikace."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modální spodní tabulka"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Stálá spodní tabulka zobrazuje informace, které doplňují primární obsah aplikace. Stálá spodní tabulka zůstává viditelná i při interakci uživatele s ostatními částmi aplikace."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Trvalá spodní tabulka"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Trvalé a modální spodní tabulky"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Spodní tabulka"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ploché, zvýšené, obrysové a další"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Tlačítka"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompaktní prvky představující vstup, atribut nebo akci"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Prvky"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky volby představují jednu volbu ze sady. Obsahují související popisný text nebo kategorie."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvek volby"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Ukázka kódu"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Zkopírováno do schránky."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPÍROVAT VŠE"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Konstanty barvy a vzorníku barev, které představují barevnou škálu vzhledu Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Všechny předdefinované barvy"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Barvy"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "List akcí je zvláštní typ upozornění, které uživateli předkládá sadu dvou či více možností souvisejících se stávající situací. List akcí může obsahovat název, další zprávu a seznam akcí."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("List akcí"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Pouze tlačítka s upozorněním"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Upozornění s tlačítky"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Dialogové okno s upozorněním uživatele informuje o situacích, které vyžadují pozornost. Dialogové okno s upozorněním má volitelný název, volitelný obsah a volitelný seznam akcí. Název je zobrazen nad obsahem a akce jsou zobrazeny pod obsahem."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Upozornění"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Upozornění s názvem"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dialogová okna s upozorněním ve stylu iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Upozornění"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Tlačítko ve stylu systému iOS. Jedná se o text nebo ikonu, která při dotyku postupně zmizí nebo se objeví. Volitelně může mít i pozadí."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Tlačítka ve stylu iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Tlačítka"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Slouží k výběru mezi možnostmi, které se vzájemně vylučují. Výběrem jedné možnosti segmentové kontroly zrušíte výběr ostatních možností."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Segmentová kontrola ve stylu iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmentová kontrola"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Pomocí posuvníku lze vybírat ze spojité nebo diskrétní množiny hodnot."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Posuvník ve stylu iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Posuvník"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Přepínač slouží k zapnutí nebo vypnutí jednoho nastavení."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Přepínač ve stylu iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Dolní navigační lišta karet ve stylu iOS. Zobrazuje několik karet, přičemž jedna (ve výchozím nastavení první) karta je aktivní."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dolní lišta karet ve stylu iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Lišta karet"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jednoduché, s upozorněním a na celou obrazovku"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Dialogová okna"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Dokumentace API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky filtru filtrují obsah pomocí značek nebo popisných slov."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvek filtru"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ploché tlačítko při stisknutí zobrazí inkoustovou kaňku, ale nezvedne se. Plochá tlačítka používejte na lištách, v dialogových oknech a v textu s odsazením"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ploché tlačítko"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Plovoucí tlačítko akce je kruhové tlačítko akce, které se vznáší nad obsahem za účelem upozornění na hlavní akci v aplikaci."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Plovoucí tlačítko akce"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Hodnota fullscreenDialog určuje, zda následující stránka bude mít podobu modálního dialogového okna na celou obrazovku"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Celá obrazovka"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Celá obrazovka"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informace"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky vstupu představují komplexní informaci v kompaktní podobě, např. entitu (osobu, místo či věc) nebo text konverzace."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvek vstupu"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Adresu URL nelze zobrazit:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Jeden řádek s pevnou výškou, který obvykle obsahuje text a ikonu na začátku nebo na konci."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekundární text"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rozložení posouvacích seznamů"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Seznamy"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Jeden řádek"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Klepnutím sem zobrazíte dostupné možnosti pro tuto ukázku."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Zobrazit možnosti"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Možnosti"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Obrysová tlačítka se při stisknutí zdvihnou a zneprůhlední. Obvykle se vyskytují v páru se zvýšenými tlačítky za účelem označení alternativní, sekundární akce."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Obrysové tlačítko"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Zvýšená tlačítka vnášejí rozměr do převážně plochých rozvržení. Upozorňují na funkce v místech, která jsou hodně navštěvovaná nebo rozsáhlá."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Zvýšené tlačítko"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Zaškrtávací políčka umožňují uživatelům vybrat několik možností z celé sady. Běžná hodnota zaškrtávacího políčka je True nebo False, ale zaškrtávací políčko se třemi stavy může mít také hodnotu Null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Zaškrtávací políčko"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Tlačítkové přepínače umožňují uživatelům vybrat jednu možnost z celé sady. Tlačítkové přepínače použijte pro výběr, pokud se domníváte, že uživatel potřebuje vidět všechny dostupné možnosti vedle sebe."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Tlačítkový přepínač"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Zaškrtávací tlačítka, tlačítkové přepínače a přepínače"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Přepínače mění stav jedné možnosti nastavení. Možnost, kterou přepínač ovládá, i stav, ve kterém se nachází, musejí být zřejmé z příslušného textového štítku."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Přepínač"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Ovládací prvky výběru"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Jednoduché dialogové okno nabízí uživateli na výběr mezi několika možnostmi. Jednoduché dialogové okno má volitelný název, který je zobrazen nad možnostmi."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Jednoduché"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Stiskli jste akci dočasného oznámení"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("AKCE"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ZOBRAZIT DOČASNÉ OZNÁMENÍ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Dočasná oznámení informují uživatele o procesu, který aplikace provedla nebo provede. Zobrazují se dočasně v dolní části obrazovky. Neměla by rušit uživatelský dojem a k jejich zavření není potřeba interakce uživatele."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dočasná oznámení zobrazují zprávy v dolní části obrazovky"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Toto je dočasné oznámení."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Dočasná oznámení"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Karty třídí obsah z různých obrazovek, datových sad a dalších interakcí."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Karty se zobrazením, která lze nezávisle na sobě posouvat"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Karty"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Textová pole uživatelům umožňují zadat do uživatelského rozhraní text. Obvykle se vyskytují ve formulářích a dialogových oknech."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-mail"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Zadejte heslo."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – Zadejte telefonní číslo do USA."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Před odesláním formuláře opravte červeně zvýrazněné chyby."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Skrýt heslo"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Buďte struční, je to jen ukázka."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Životní příběh"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Jméno*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Jméno je povinné."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Maximálně osm znaků."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Zadejte jen písmena abecedy."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Heslo*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Hesla se neshodují"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefonní číslo*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "Hvězdička (*) označuje povinné pole"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Zadejte heslo znovu*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Plat"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Zobrazit heslo"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ODESLAT"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jeden řádek s upravitelným textem a čísly"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Řekněte nám něco o sobě (např. napište, co děláte nebo jaké máte koníčky)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Textová pole"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Jak vám lidé říkají?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Kde vás můžeme zastihnout?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Vaše e-mailová adresa"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Přepínače lze použít k seskupení souvisejících možností. Chcete-li zvýraznit skupiny souvisejících přepínačů, umístěte skupinu do stejného kontejneru"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Přepínače"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dva řádky"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definice různých typografických stylů, které se vyskytují ve vzhledu Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Všechny předdefinované styly textu"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Typografie"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Přidat účet"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("SOUHLASÍM"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ZRUŠIT"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NESOUHLASÍM"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ZAHODIT"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Zahodit koncept?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Ukázka dialogového okna na celou obrazovku"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ULOŽIT"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Dialogové okno na celou obrazovku"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Povolte, aby Google mohl aplikacím pomáhat s určováním polohy. To znamená, že budete do Googlu odesílat anonymní údaje o poloze, i když nebudou spuštěny žádné aplikace."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Chcete používat službu určování polohy Google?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Nastavit záložní účet"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ZOBRAZIT DIALOGOVÉ OKNO"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("REFERENČNÍ STYLY A MÉDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorie"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerie"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Úspory na auto"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Běžný"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Úspory na domácnost"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Dovolená"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Vlastník účtu"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Roční procentuální výtěžek"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Úrok zaplacený minulý rok"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Úroková sazba"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Úrok od začátku roku do dnes"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Další výpis"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Celkem"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Účty"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Upozornění"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Faktury"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Splatnost"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Oblečení"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kavárny"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Potraviny"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurace"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Zbývá"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Rozpočty"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Aplikace pro osobní finance"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ZBÝVÁ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("PŘIHLÁSIT SE"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Přihlásit se"),
        "rallyLoginLoginToRally": MessageLookupByLibrary.simpleMessage(
            "Přihlášení do aplikace Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Nemáte účet?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Heslo"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Zapamatovat si mě"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ZAREGISTROVAT SE"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Uživatelské jméno"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ZOBRAZIT VŠE"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Zobrazit všechny účty"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Zobrazit všechny faktury"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Zobrazit všechny rozpočty"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Najít bankomaty"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Nápověda"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Spravovat účty"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Oznámení"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Nastavení bezpapírového přístupu"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Heslo a Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Osobní údaje"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Odhlásit se"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Daňové doklady"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ÚČTY"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FAKTURY"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ROZPOČTY"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("PŘEHLED"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("NASTAVENÍ"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Informace o aplikaci Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Design: TOASTER, Londýn"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Zavřít nastavení"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Nastavení"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Tmavý"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Odeslat zpětnou vazbu"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Světlý"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Národní prostředí"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mechanika platformy"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("Zpomalení"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Systém"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Směr textu"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Zleva doprava"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Podle jazyka"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Zprava doleva"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Zvětšení/zmenšení textu"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Velmi velké"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Velké"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normální"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Malé"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Motiv"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Nastavení"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ZRUŠIT"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("VYSYPAT KOŠÍK"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KOŠÍK"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Doprava:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Mezisoučet:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Daň:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("CELKEM"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("DOPLŇKY"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("VŠE"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("OBLEČENÍ"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("DOMÁCNOST"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Elegantní maloobchodní aplikace"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Heslo"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Uživatelské jméno"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ODHLÁSIT SE"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("NABÍDKA"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("DALŠÍ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Břidlicový hrnek"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Třešňové triko se zaobleným lemem"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Kapesníky Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Košile Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klasický bílý límeček"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Svetr barvy jílu"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Regál z měděného drátu"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Tričko s jemným proužkem"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Pás zahrady"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Bekovka"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Sako Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Trojice pozlacených stolků"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Zázvorová šála"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Volné šedé tílko"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Čajová sada Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kuchyňská čtyřka"),
        "shrineProductNavyTrousers": MessageLookupByLibrary.simpleMessage(
            "Kalhoty barvy námořnické modři"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tělová tunika"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Stůl pro čtyři"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Kanálek na dešťovou vodu"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Crossover Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Tunika barvy moře"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Svetr jako mořský vánek"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Tričko s odhalenými rameny"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Taška na rameno"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Uklidňující keramická sada"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Slunečná brýle Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Parádní náušnice"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Květináče se sukulenty"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Košilové šaty proti slunci"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Funkční triko na surfování"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Batoh Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Ponožky s pruhem"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Triko s knoflíkovou légou Walter (bílé)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Pletená klíčenka"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage(
                "Košile s úzkým bílým proužkem"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Pásek Whitney"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Přidat do košíku"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Zavřít košík"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Zavřít nabídku"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Otevřít nabídku"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Odstranit položku"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Hledat"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Nastavení"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Responzivní rozvržení úvodní aplikace"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Text"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("TLAČÍTKO"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Nadpis"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Podtitul"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Název"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Úvodní aplikace"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Přidat"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Oblíbené"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Hledat"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Sdílet")
      };
}
