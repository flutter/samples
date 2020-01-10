// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a af locale. All the
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
  String get localeName => 'af';

  static m0(value) =>
      "Besoek asseblief die ${value} om die bronkode vir hierdie program te sien.";

  static m1(title) => "Plekhouer vir ${title}-oortjie";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Geen restaurante nie', one: '1 restaurant', other: '${totalRestaurants} restaurante')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Stopvry', one: '1 stop', other: '${numberOfStops} stoppe')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Geen beskikbare eiendomme nie', one: '1 beskikbare eiendom', other: '${totalProperties} beskikbare eiendomme')}";

  static m5(value) => "Item ${value}";

  static m6(error) => "Kon nie na knipbord kopieer nie: ${error}";

  static m7(value) => "Aaneenlopend: ${value}";

  static m8(value) => "Diskreet: ${value}";

  static m9(name, phoneNumber) => "${name} se foonnommer is ${phoneNumber}";

  static m10(value) => "Jy het gekies: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "${accountName}-rekening ${accountNumber} met ${amount}.";

  static m12(amount) => "Jy het hierdie maand OTM-fooie van ${amount} betaal";

  static m13(percent) =>
      "Mooi so! Jou tjekrekening is ${percent} hoër as verlede maand.";

  static m14(percent) =>
      "Pasop. Jy het al ${percent} van jou inkopie-begroting vir hierdie maand gebruik.";

  static m15(amount) => "Jy het hierdie week ${amount} by restaurante bestee.";

  static m16(count) =>
      "${Intl.plural(count, one: 'Verhoog jou potensiële belastingaftrekking! Wys kategorieë toe aan 1 ontoegewysde transaksie.', other: 'Verhoog jou potensiële belastingaftrekking! Wys kategorieë toe aan ${count} ontoegewysde transaksies.')}";

  static m17(billName, date, amount) =>
      "${billName}-rekening van ${amount} is betaalbaar op ${date}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName}-begroting met ${amountUsed} gebruik van ${amountTotal}; ${amountLeft} oor";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'GEEN ITEMS NIE', one: '1 ITEM', other: '${quantity} ITEMS')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "Hoeveelheid: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Inkopiemandjie, geen items nie', one: 'Inkopiemandjie, 1 item', other: 'Inkopiemandjie, ${quantity} items')}";

  static m23(product) => "Verwyder ${product}";

  static m24(value) => "Item ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter toets GitHub-bewaarplek"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Terug na galery"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Rekening"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Wekker"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalender"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Opmerkings"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("KNOPPIE"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Skep"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Fietsry"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Hysbak"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kaggel"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Groot"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Middelgroot"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Klein"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Skakel ligte aan"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Wasmasjien"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("GEELBRUIN"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLOU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("BLOUGRYS"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRUIN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("GROENBLOU"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("DIEPORANJE"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("DIEPPERS"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("GROEN"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRYS"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("LIGBLOU"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("LIGGROEN"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LEMMETJIEGROEN"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANJE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PIENK"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("PERS"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROOI"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("BLOUGROEN"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GEEL"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Gepersonaliseerde reisprogram"),
        "craneEat": MessageLookupByLibrary.simpleMessage("EET"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napels, Italië"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza in \'n houtoond"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Verenigde State"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vrou wat \'n yslike pastramitoebroodjie vashou"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Leë kroeg met padkafeetipe stoele"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("Córdoba, Argentinië"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Verenigde State"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Koreaanse taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Parys, Frankryk"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sjokoladepoeding"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seoel 06236 Suid-Korea"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Artistieke restaurant se sitgebied"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Verenigde State"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Garnaalgereg"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Verenigde State"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bakkeryingang"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Verenigde State"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bord met varswaterkreef"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spanje"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kafeetoonbank met fyngebak"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Verken restaurante volgens bestemming"),
        "craneFly": MessageLookupByLibrary.simpleMessage("VLIEG"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Verenigde State"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in \'n sneeulandskap met immergroen bome"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Verenigde State"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kaïro, Egipte"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar-moskeetorings tydens sonsondergang"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Baksteenvuurtoring by die see"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Verenigde State"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Swembad met palmbome"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesië"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Strandswembad met palmbome"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tent in \'n veld"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu-vallei, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Gebedsvlae voor \'n sneeubedekte berg"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu-sitadel"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maledive"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hutte bo die water"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("Vitznau, Switserland"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel aan die oewer van \'n meer voor berge"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Meksikostad, Meksiko"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Lugaansig van Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Mount Rushmore, Verenigde State"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rushmoreberg"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapoer"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Man wat teen \'n antieke blou motor leun"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Verken vlugte volgens bestemming"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Kies datum"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Kies datums"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Kies bestemming"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Eetplekke"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Kies ligging"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Kies oorsprong"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Kies tyd"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Reisigers"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("SLAAP"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maledive"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hutte bo die water"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Verenigde State"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kaïro, Egipte"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar-moskeetorings tydens sonsondergang"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taipei 101-wolkekrabber"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in \'n sneeulandskap met immergroen bome"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu-sitadel"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Man wat teen \'n antieke blou motor leun"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitznau, Switserland"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel aan die oewer van \'n meer voor berge"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Verenigde State"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tent in \'n veld"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Verenigde State"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Swembad met palmbome"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kleurryke woonstelle by Riberia Square"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksiko"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maja-ruïnes op \'n krans bo \'n strand"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portugal"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Baksteenvuurtoring by die see"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Verken eiendomme volgens bestemming"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Laat toe"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Appeltert"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Kanselleer"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Kaaskoek"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Sjokoladebruintjie"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Kies asseblief jou gunstelingsoort nagereg op die lys hieronder. Jou keuse sal gebruik word om die voorgestelde lys eetplekke in jou omgewing te pasmaak."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Gooi weg"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Moenie toelaat nie"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Kies gunstelingnagereg"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Jou huidige ligging sal op die kaart gewys word en gebruik word vir aanwysings, soekresultate in die omtrek, en geskatte reistye."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Laat \"Maps\" toe om toegang tot jou ligging te kry terwyl jy die program gebruik?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Knoppie"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Met agtergrond"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Wys opletberig"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Klets"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Tuis"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profiel"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Handelingskyfies is \'n stel opsies wat \'n handeling wat met primêre inhoud verband hou, veroorsaak. Handelingskyfies behoort dinamies en kontekstueel in \'n UI te verskyn."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Handelingskyfie"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Opletberigdialoog lig die gebruiker in oor situasies wat erkenning nodig het. \'n Opletberigdialoog het \'n opsionele titel en \'n opsionele lys handelinge."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Opletberig"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Opletberig met titel"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Navigasiebalke aan die onderkant van die skerm wys drie tot vyf bestemmings. Elke bestemming word deur \'n ikoon en \'n opsionele teksetiket verteenwoordig. Wanneer \'n gebruiker op \'n onderste navigasie-ikoon tik, word hulle geneem na die topvlak-navigasiebestemming wat met daardie ikoon geassosieer word."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Blywende etikette"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Gekose etiket"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigasie aan die onderkant met kruisverdowwingaansigte"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigasie onder"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Voeg by"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("WYS BLAD ONDER"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Loopkop"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Modale blad aan die onderkant van die skerm is \'n alternatief vir \'n kieslys of dialoog. Dit verhoed dat die gebruiker met die res van die program interaksie kan hê."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Modale blad aan die onderkant"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "\'n Blywende blad aan die onderkant van die skerm wys inligting wat die primêre inhoud van die program aanvul. Dit bly sigbaar, selfs wanneer die gebruiker met ander dele van die program interaksie het."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Blywende blad onder"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Blywende en modale blaaie onder"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Blad onder"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plat, verhewe, buitelyn, en meer"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Knoppies"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompakte elemente wat \'n invoer, kenmerk of handeling verteenwoordig"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Skyfies"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Keuseskyfies verteenwoordig \'n enkele keuse van \'n stel af. Keuseskyfies bevat beskrywende teks of kategorieë."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Keuseskyfie"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Kodevoorbeeld"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Gekopieer na knipbord."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPIEER ALLES"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Kleur en kleurmonsterkonstantes wat Materiaalontwerp se kleurpalet verteenwoordig."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Al die vooraf gedefinieerde kleure"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Kleure"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Handelingelys is \'n spesifieke styl opletberig wat \'n stel van twee of meer keuses wat met die huidige konteks verband hou, aan die gebruiker bied. \'n Handelingelys kan \'n titel, \'n bykomende boodskap en \'n lys handelinge hê."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Handelingelys"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Net opletberigknoppies"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Opletberig met knoppies"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Opletberigdialoog lig die gebruiker in oor situasies wat erkenning nodig het. \'n Opletberigdialoog het \'n opsionele titel, opsionele inhoud en \'n opsionele lys handelinge. Die titel word bo die inhoud vertoon en die handelinge word onder die inhoud vertoon."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Opletberig"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Opletberig met titel"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Opletberigdialoë in iOS-styl"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Opletberigte"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Knoppie in iOS-styl. Dit bring teks en/of \'n ikoon in wat verdof of duideliker word met aanraking. Het die opsie om \'n agtergrond te hê."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Knoppies in iOS-styl"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Knoppies"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Word gebruik om tussen \'n aantal wedersyds eksklusiewe opsies te kies. As een opsie in die gesegmenteerde kontrole gekies is, sal die ander opsies in die gesegmenteerde kontrole nie meer gekies wees nie."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Gesegmenteerde kontrole in iOS-styl"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Gesegmenteerde kontrole"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Glyer kan gebruik word om uit óf \'n aaneenlopende óf \'n diskrete stel waardes te kies."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Glyer in iOS-styl"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Glyer"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Skakelaar word gebruik om \'n enkele instelling aan of af te skakel."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Skakelaar in iOS-styl"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Onderste navigasie-oortjiebalk in iOS-styl. Wys veelvuldige oortjies met een aktiewe oortjie; dit is by verstek die eerste oortjie."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Onderste oortjiebalk in iOS-styl"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Oortjiebalk"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Eenvoudig, opletberig, en volskerm"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialoë"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API-dokumentasie"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filterskyfies gebruik merkers of beskrywende woorde om inhoud te filtreer."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filterskyfie"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Plat knoppie wys \'n inkspatsel wanneer dit gedruk word maar word nie gelig nie. Gebruik plat knoppies op nutsbalke, in dialoë en inlyn met opvulling"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Plat knoppie"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Swewende handelingknoppie is \'n ronde ikoonknoppie wat oor inhoud hang om \'n primêre handeling in die program te bevorder."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Swewende handelingknoppie"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Die volskermdialoog-eienskap spesifiseer of die inkomende bladsy \'n volskerm- modale dialoog is"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Volskerm"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Volskerm"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Inligting"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Invoerskyfies verteenwoordig \'n komplekse stuk inligting, soos \'n entiteit (persoon, plek of ding) of gespreksteks, in \'n kompakte vorm."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Invoerskyfie"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Kon nie URL wys nie:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Enkele ry met vaste hoogte wat gewoonlik \'n bietjie teks bevat, asook \'n ikoon vooraan of agteraan."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekondêre teks"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Rollysuitlegte"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Lyste"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Een reël"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tik hier om beskikbare opsies vir hierdie demonstrasie te bekyk."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Sien opsies"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opsies"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Buitelynknoppies word ondeursigtig en verhewe wanneer dit gedruk word. Hulle word dikwels met verhewe knoppies saamgebind om \'n alternatiewe, sekondêre handeling aan te dui."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Buitelynknoppie"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Verhewe knoppies voeg dimensie by vir uitlegte wat meestal plat is. Hulle beklemtoon funksies in besige of breë ruimtes."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Verhewe knoppie"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Merkblokkies maak dit vir die gebruiker moontlik om veelvuldige opsies uit \'n stel te kies. \'n Normale merkblokkie se waarde is waar of vals, en \'n driestaatmerkblokkie se waarde kan ook nul wees."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Merkblokkie"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Klinkknoppies maak dit vir die gebruiker moontlik om een opsie uit \'n stel te kies. Gebruik klinkknoppies vir \'n uitsluitende keuse as jy dink dat die gebruiker alle beskikbare opsies langs mekaar moet sien."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Merkblokkies, klinkknoppies en skakelaars"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Aan/af-skakelaar wissel die staat van \'n enkele instellingsopsie. Die opsie wat die skakelaar beheer, asook die staat waarin dit is, moet uit die ooreenstemmende inlynetiket duidelik wees."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Wissel"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Seleksiekontroles"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Eenvoudige dialoog bied die gebruiker \'n keuse tussen verskeie opsies. \'n Eenvoudige dialoog het \'n opsionele titel wat bo die keuses gewys word."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Eenvoudig"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Jy het die teksbalkhandeling gedruk."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("HANDELING"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("WYS \'N TEKSBALK"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Teksbalke lig gebruikers in oor \'n proses wat \'n program uitgevoer het of sal uitvoer. Hulle verskyn tydelik naby die onderkant van die skerm. Hulle behoort nie die gebruikerervaring te onderbreek nie en hulle vereis nie gebruikerhandeling om te verdwyn nie."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Teksbalke wys boodskappe aan die onderkant van die skerm"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Dit is \'n teksbalk."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Teksbalke"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Oortjies organiseer inhoud oor verskillende skerms, datastelle, en ander interaksies heen."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Oortjies met aansigte waardeur jy onafhanklik kan rollees"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Oortjies"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Teksvelde laat gebruikers toe om teks by UI te voeg. Dit verskyn gewoonlik in vorms en dialoë."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-pos"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "Voer asseblief \'n wagwoord in."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – Voer \'n Amerikaanse foonnommer in."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Maak asseblief die foute in rooi reg voordat jy indien."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Versteek wagwoord"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Hou dit kort; dis net \'n demonstrasie."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Lewensverhaal"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Naam*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Naam word vereis."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "Nie meer as 8 karakters nie."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Voer asseblief net alfabetkarakters in."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Wagwoord*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Die wagwoorde stem nie ooreen nie"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Foonnommer*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* dui vereiste veld aan"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Tik jou wagwoord weer in*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salaris"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Wys wagwoord"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("DIEN IN"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Een reël met redigeerbare teks en syfers"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Vertel ons meer oor jouself (bv., skryf neer wat jy doen of wat jou stokperdjies is)"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("Teksvelde"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Wat noem mense jou?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Waar kan ons jou bereik?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Jou e-posadres"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Wisselknoppies kan gebruik word om verwante opsies te groepeer. Om \'n groep verwante wisselknoppies te beklemtoon, moet \'n groep \'n gemeenskaplike houer deel"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Wisselknoppies"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Twee reëls"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definisies vir die verskillende tipografiese style wat in Materiaalontwerp gevind word."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Al die voorafgedefinieerde teksstyle"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografie"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Voeg rekening by"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("STEM IN"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("KANSELLEER"),
        "dialogDisagree":
            MessageLookupByLibrary.simpleMessage("STEM NIE SAAM NIE"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("GOOI WEG"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Gooi konsep weg?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Volskermdialoogdemonstrasie"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("STOOR"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Volskermdialoog"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Laat Google programme help om ligging te bepaal. Dit beteken dat anonieme liggingdata na Google toe gestuur word, selfs wanneer geen programme laat loop word nie."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Gebruik Google se liggingdiens?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Stel rugsteunrekening"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("WYS DIALOOG"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("VERWYSINGSTYLE EN -MEDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorieë"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galery"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Spaarrekening vir motor"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Tjek"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Spaarrekening vir huis"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vakansie"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Rekeningeienaar"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Jaarpersentasie-opbrengs"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Rente wat verlede jaar betaal is"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Rentekoers"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Rente in jaar tot nou"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Volgende staat"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Totaal"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Rekeninge"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Waarskuwings"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Rekeninge"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Betaalbaar"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Klere"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Koffiewinkels"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Kruideniersware"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurante"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Oor"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Begrotings"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Program vir jou persoonlike geldsake"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("OOR"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("MELD AAN"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Meld aan"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Meld by Rally aan"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage(
            "Het jy nie \'n rekening nie?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Wagwoord"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Onthou my"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("SLUIT AAN"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Gebruikernaam"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("SIEN ALLES"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Sien alle rekeninge"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Sien alle rekeninge"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Sien alle begrotings"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Soek OTM\'e"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Hulp"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Bestuur rekeninge"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Kennisgewings"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Paperless-instellings"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Wagkode en raak-ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Persoonlike inligting"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Meld af"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Belastingdokumente"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("REKENINGE"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("REKENINGE"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BEGROTINGS"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("OORSIG"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("INSTELLINGS"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Meer oor Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Ontwerp deur TOASTER in Londen"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Maak instellings toe"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Instellings"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Donker"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Stuur terugvoer"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Lig"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Locale"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platformmeganika"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Stadige aksie"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Stelsel"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Teksrigting"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("L.N.R."),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Gegrond op locale"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("R.N.L."),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Teksskalering"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Baie groot"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Groot"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normaal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Klein"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Instellings"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("KANSELLEER"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("MAAK MANDJIE LEEG"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("MANDJIE"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Versending:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotaal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Belasting:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("TOTAAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("BYKOMSTIGHEDE"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ALLES"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("KLERE"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("TUIS"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Modieuse kleinhandelprogram"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Wagwoord"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Gebruikernaam"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("MELD AF"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("KIESLYS"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("VOLGENDE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Blou erdebeker"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Kersierooi skulprand-t-hemp"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray-servette"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambray-hemp"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klassieke wit kraag"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Clay-oortrektrui"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Koperdraadrak"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("T-hemp met dun strepies"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Tuindraad"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby-hoed"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Herebaadjie"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Drietal vergulde tafels"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Gemmerkleurige serp"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Grys slenterhemp"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs-teestel"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kombuiskwartet"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Vlootblou broek"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Gipstuniek"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Kwartettafel"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Reënwaterlaai"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona-oorkruissak"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Seetuniek"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Sea Breeze-trui"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Skouerrol-t-hemp"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Shrug-sak"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe-keramiekstel"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella-sonbrille"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut-oorbelle"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Vetplantplanter"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Sunshirt-rok"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("\"Surf and perf\"-t-hemp"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond-sak"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Universiteitskouse"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (wit)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Geweefde sleutelhouer"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Wit strepieshemp"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney-belt"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Voeg by mandjie"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Maak mandjie toe"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Maak kieslys toe"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Maak kieslys oop"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Verwyder item"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Soek"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Instellings"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "\'n Beginneruitleg wat goed reageer"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Liggaam"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("KNOPPIE"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Hoofopskrif"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtitel"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Titel"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Beginnerprogram"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Voeg by"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Merk as gunsteling"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("Soek"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Deel")
      };
}
