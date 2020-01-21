// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a lt locale. All the
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
  String get localeName => 'lt';

  static m0(value) =>
      "Norėdami peržiūrėti šios programos šaltinio kodą apsilankykite ${value}.";

  static m1(title) => "Skirtuko ${title} rezervuota vieta";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Restoranų nėra', one: '1 restoranas', few: '${totalRestaurants} restoranai', many: '${totalRestaurants} restorano', other: '${totalRestaurants} restoranų')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Tiesioginis', one: '1 sustojimas', few: '${numberOfStops} sustojimai', many: '${numberOfStops} sustojimo', other: '${numberOfStops} sustojimų')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nėra pasiekiamų nuosavybių', one: '1 pasiekiama nuosavybė', few: '${totalProperties} pasiekiamos nuosavybės', many: '${totalProperties} pasiekiamos nuosavybės', other: '${totalProperties} pasiekiamų nuosavybių')}";

  static m5(value) => "Prekė ${value}";

  static m6(error) => "Nepavyko nukopijuoti į iškarpinę: ${error}";

  static m7(value) => "Tęstinės: ${value}";

  static m8(value) => "Konkrečios: ${value}";

  static m9(value) => "Pažymėta: ${value}";

  static m10(value) => "Pasirinkta: ${value}";

  static m11(name, phoneNumber) => "${name} telefono numeris: ${phoneNumber}";

  static m12(value) => "Pasirinkote: \"${value}\"";

  static m13(accountName, accountNumber, amount) =>
      "${accountName} sąskaita (${accountNumber}), kurioje yra ${amount}.";

  static m14(amount) => "Šį mėnesį išleidote ${amount} bankomato mokesčiams";

  static m15(percent) =>
      "Puiku! Einamoji sąskaita ${percent} didesnė nei pastarąjį mėnesį.";

  static m16(percent) =>
      "Dėmesio, šį mėnesį išnaudojote ${percent} apsipirkimo biudžeto.";

  static m17(amount) => "Šią savaitę išleidote ${amount} restoranuose.";

  static m18(count) =>
      "${Intl.plural(count, one: 'Gaukite didesnę mokesčių lengvatą! Priskirkite kategorijas 1 nepriskirtai operacijai.', few: 'Gaukite didesnę mokesčių lengvatą! Priskirkite kategorijas ${count} nepriskirtoms operacijoms.', many: 'Gaukite didesnę mokesčių lengvatą! Priskirkite kategorijas ${count} nepriskirtos operacijos.', other: 'Gaukite didesnę mokesčių lengvatą! Priskirkite kategorijas ${count} nepriskirtų operacijų.')}";

  static m19(billName, date, amount) =>
      "Sąskaitą „${billName}“, kurios suma ${amount}, reikia apmokėti iki ${date}.";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Biudžetas „${budgetName}“, kurio išnaudota suma: ${amountUsed} iš ${amountTotal}; likusi suma: ${amountLeft}";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'NĖRA JOKIŲ ELEMENTŲ', one: '1 ELEMENTAS', few: '${quantity} ELEMENTAI', many: '${quantity} ELEMENTO', other: '${quantity} ELEMENTŲ')}";

  static m22(price) => "po ${price}";

  static m23(quantity) => "Kiekis: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'Pirkinių krepšelis, nėra jokių prekių', one: 'Pirkinių krepšelis, 1 prekė', few: 'Pirkinių krepšelis, ${quantity} prekės', many: 'Pirkinių krepšelis, ${quantity} prekės', other: 'Pirkinių krepšelis, ${quantity} prekių')}";

  static m25(product) => "Pašalinti produktą: ${product}";

  static m26(value) => "Prekė ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "„Flutter“ pavyzdžiai, „GitHub“ talpykla"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Atgal į galeriją"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Įranta"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Slankiojo veiksmo mygtuko pozicija"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage(
                "Prijungta prie doko – per vidurį"),
        "bottomAppBarPositionDockedEnd": MessageLookupByLibrary.simpleMessage(
            "Prijungta prie doko – pabaigoje"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Slankusis – per vidurį"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Slankusis – pabaigoje"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Paskyra"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Įspėjimas"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendorius"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Fotoaparatas"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komentarai"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("MYGTUKAS"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Kurti"),
        "chipBiking":
            MessageLookupByLibrary.simpleMessage("Važinėjimas dviračiu"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Liftas"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Židinys"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Didelis"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Vidutinis"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Mažas"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Įjungti šviesą"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Skalbyklė"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("GINTARO"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("MĖLYNA"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("MELSVAI PILKA"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("RUDA"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ŽYDRA"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("SODRI ORANŽINĖ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("SODRI PURPURINĖ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ŽALIA"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("PILKA"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue":
            MessageLookupByLibrary.simpleMessage("ŠVIESIAI MĖLYNA"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("ŠVIESIAI ŽALIA"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ŽALIŲJŲ CITRINŲ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANŽINĖ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROŽINĖ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("PURPURINĖ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("RAUDONA"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TAMSIAI ŽYDRA"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GELTONA"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Suasmeninta kelionių programa"),
        "craneEat": MessageLookupByLibrary.simpleMessage("MAISTAS"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapolis, Italija"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pica malkinėje krosnyje"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "Dalasas, Jungtinės Amerikos Valstijos"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugalija"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Moteris, laikanti didelį su jautiena"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tuščias baras su aukštomis baro kėdėmis"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Kordoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mėsainis"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Portlandas, Jungtinės Amerikos Valstijos"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Korėjietiškas tako"),
        "craneEat4":
            MessageLookupByLibrary.simpleMessage("Paryžius, Prancūzija"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Šokoladinis desertas"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seulas 06236, Pietų Korėja"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vieta prie stalo meniškame restorane"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "Siatlas, Jungtinės Amerikos Valstijos"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Indas krevečių"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Našvilis, Jungtinės Amerikos Valstijos"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Įėjimas į kepyklą"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "Atlanta, Jungtinės Amerikos Valstijos"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Vėžių lėkštė"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madridas, Ispanija"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kavinės vitrina su kepiniais"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Ieškokite restoranų pagal kelionės tikslą"),
        "craneFly": MessageLookupByLibrary.simpleMessage("SKRYDIS"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "Aspenas, Jungtinės Amerikos Valstijos"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Trobelė sniegynuose su visžaliais medžiais"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Jungtinės Amerikos Valstijos"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kairas, Egiptas"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al Azharo mečetės bokštai per saulėlydį"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugalija"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mūrinis švyturys jūroje"),
        "craneFly12": MessageLookupByLibrary.simpleMessage(
            "Napa, Jungtinės Amerikos Valstijos"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Baseinas su palmėmis"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Balis, Indonezija"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Paplūdimio baseinas su palmėmis"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Palapinė lauke"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Kumbu slėnis, Nepalas"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maldos vėliavėlės apsnigto kalno fone"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Maču Pikču, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maču Pikču tvirtovė"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malė, Maldyvai"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Vilos ant vandens"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vicnau, Šveicarija"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Viešbutis ežero pakrantėje su kalnais"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Meksikas, Meksika"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Meksiko vaizduojamojo meno rūmų vaizdas iš viršaus"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Rašmoro Kalnas, Jungtinės Amerikos Valstijos"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rašmoro kalnas"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapūras"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supermedžių giraitė"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Žmogus, palinkęs prie senovinio mėlyno automobilio"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Ieškokite skrydžių pagal kelionės tikslą"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Pasirinkite datą"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Pasirinkite datas"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Pasirinkite kelionės tikslą"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Užkandinės"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Pasirinkite vietą"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Pasirinkite išvykimo vietą"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Pasirinkite laiką"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Keliautojai"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("NAKVYNĖ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malė, Maldyvai"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Vilos ant vandens"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "Aspenas, Jungtinės Amerikos Valstijos"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kairas, Egiptas"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al Azharo mečetės bokštai per saulėlydį"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("Taipėjus, Taivanas"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taipėjaus dangoraižis 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Trobelė sniegynuose su visžaliais medžiais"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Maču Pikču, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maču Pikču tvirtovė"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Žmogus, palinkęs prie senovinio mėlyno automobilio"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vicnau, Šveicarija"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Viešbutis ežero pakrantėje su kalnais"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Jungtinės Amerikos Valstijos"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Palapinė lauke"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage(
            "Napa, Jungtinės Amerikos Valstijos"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Baseinas su palmėmis"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Portas, Portugalija"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Spalvingi apartamentai Ribeiro aikštėje"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulumas, Meksika"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Majų griuvėsiai paplūdimyje ant uolos"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugalija"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mūrinis švyturys jūroje"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Ieškokite nuomojamų patalpų pagal kelionės tikslą"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Leisti"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Obuolių pyragas"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Atšaukti"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Sūrio pyragas"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Šokoladinis pyragas"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Pasirinkite savo mėgstamiausią desertą iš toliau pateikto sąrašo. Pagal pasirinkimą bus tinkinamas siūlomas valgyklų jūsų regione sąrašas."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Atmesti"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Neleisti"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Mėgstamiausio deserto pasirinkimas"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Jūsų dabartinė vietovė bus pateikta žemėlapyje ir naudojama nuorodoms, paieškos rezultatams netoliese ir apskaičiuotam kelionės laikui rodyti."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Leisti Žemėlapiams pasiekti vietovę jums naudojant programą?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Mygtukas"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Su fonu"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Rodyti įspėjimą"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Pokalbis"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Pagrindinis"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profilis"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Veiksmo fragmentai – tai parinkčių rinkiniai, suaktyvinantys su pradiniu turiniu susijusį veiksmą. Veiksmo fragmentai NS turėtų būti rodomi dinamiškai ir pagal kontekstą."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Veiksmo fragmentas"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Įspėjimo dialogo lange naudotojas informuojamas apie situacijas, kurias reikia patvirtinti. Nurodomi įspėjimo dialogo lango pasirenkamas pavadinimas ir pasirenkamas veiksmų sąrašas."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Įspėjimas"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Įspėjimas su pavadinimu"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Apatinėse programų juostose galima pasiekti apatinį naršymo skydelį ir iki keturių veiksmų, įskaitant slankųjį veiksmo mygtuką."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pateikiami naršymo elementai ir veiksmai apačioje"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Apatinė programų juosta"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Apatinėse naršymo juostose ekrano apačioje pateikiama nuo trijų iki penkių paskirties vietų. Kiekvieną paskirties vietą nurodo piktograma ir pasirenkama teksto etiketė. Palietęs apatinės naršymo juostos piktogramą, naudotojas patenka į pagrindinę su piktograma susietą naršymo paskirties vietą."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Nuolatinės etiketės"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Pasirinkta etiketė"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Apatinė naršymo juosta su blunkančiais rodiniais"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Apatinė naršymo juosta"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Pridėti"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "RODYTI APATINIO LAPO MYGTUKĄ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Antraštė"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modalinis apatinio lapo mygtukas naudojamas vietoj meniu ar dialogo lango, kad naudotojui nereikėtų naudoti kitų programos langų."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Modalinis apatinio lapo mygtukas"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Nuolatiniu apatinio lapo mygtuku pateikiama informacija, papildanti pagrindinį programos turinį. Nuolatinis apatinio lapo mygtukas išlieka matomas net asmeniui naudojant kitas programos dalis."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Nuolatinis apatinio lapo mygtukas"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Nuolatinis ir modalinis apatinio lapo mygtukai"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Apatinio lapo mygtukas"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Teksto laukai"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plokštieji, iškilieji, kontūriniai ir kt."),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Mygtukai"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Kontrolinio sąrašo meniu"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompaktiški elementai, kuriuose yra įvestis, atributas ar veiksmas"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Fragmentai"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Pasirinkimo fragmentai nurodo vieną pasirinkimą iš rinkinio. Pasirinkimo fragmentuose įtraukiamas susijęs aprašomasis tekstas ar kategorijos."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Pasirinkimo fragmentas"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Trimačių objektų dizaino apskritas eigos indikatorius, kuris sukasi nurodydamas, kad programa užimta."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Apskritas eigos indikatorius"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Kodo pavyzdys"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Nukopijuota į iškarpinę."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPIJUOTI VISKĄ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Spalvų ir spalvų pavyzdžio konstantos, nurodančios trimačių objektų dizaino spalvų gamą."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Visos iš anksto nustatytos spalvos"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Spalvos"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Kontekstinis meniu"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Veiksmų lapas – tai konkretaus stiliaus įspėjimas, kai naudotojui rodomas dviejų ar daugiau pasirinkimo variantų, susijusių su dabartiniu kontekstu, rinkinys. Galima nurodyti veiksmų lapo pavadinimą, papildomą pranešimą ir veiksmų sąrašą."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Veiksmų lapas"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Pagal laikrodžio rodyklę besisukantis „iOS“ stiliaus veiklos indikatorius."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "„iOS“ stiliaus veiklos indikatoriai"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Veiklos indikatorius"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Tik įspėjimo mygtukai"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Įspėjimas su mygtukais"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Įspėjimo dialogo lange naudotojas informuojamas apie situacijas, kurias reikia patvirtinti. Nurodomi įspėjimo dialogo lango pasirenkamas pavadinimas, pasirenkamas turinys ir pasirenkamas veiksmų sąrašas. Pavadinimas pateikiamas virš turinio, o veiksmai – po juo."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Įspėjimas"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Įspėjimas su pavadinimu"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "„iOS“ stiliaus įspėjimo dialogų langai"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Įspėjimai"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "„iOS“ stiliaus mygtukas. Jis rodomas tekste ir (arba) kaip piktograma, kuri išnyksta ir atsiranda palietus. Galima pasirinkti foną."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("„iOS“ stiliaus mygtukai"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Mygtukai"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "„iOS“ stiliaus naršymo juosta. Naršymo juosta – tai įrankių juosta, kurią sudaro bent puslapio pavadinimas, pateiktas įrankių juostos centre."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "„iOS“ stiliaus naršymo juosta"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Naršymo juosta"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Valdiklis, apimantis „iOS“ stiliaus turinio atnaujinimo patraukus valdymą."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "„iOS“ stiliaus atnaujinimo patraukus valdiklis"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Atnaujinimas patraukus"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Naudojama renkantis iš įvairių bendrai išskiriamų parinkčių. Pasirinkus vieną segmentuoto valdiklio parinktį, kitos jo parinktys nebepasirenkamos."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "„iOS“ stiliaus segmentuotas valdiklis"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmentuotas valdiklis"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Šliaužikliu galima pasirinkti tęstinių arba konkrečių verčių rinkinius."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("„iOS“ stiliaus šliaužiklis"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Šliaužiklis"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Jungikliu galima įjungti ir išjungti konkretaus nustatymo būseną."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("„iOS“ stiliaus jungiklis"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "„iOS“ stiliaus apatinė naršymo skirtukų juosta. Teikiami keli skirtukai, iš kurių vienas (pagal numatytuosius nustatymus – pirmas) aktyvus."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "„iOS“ stiliaus apatinė skirtukų juosta"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Skirtukų juosta"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Šliaužikliai atspindi juostos verčių diapazoną, iš kurio naudotojai gali pasirinkti vieną vertę arba verčių diapazoną. Galima nustatyti šliaužiklių temas arba juos tinkinti."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Tinkinti šliaužikliai"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Paprasti, įspėjimo ir viso ekrano"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Dialogų langai"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API dokumentacija"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Turiniui filtruoti filtro fragmentai naudoja žymas ar aprašomuosius žodžius."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filtro fragmentas"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Paspaudus plokščiąjį mygtuką pateikiama rašalo dėmė, bet ji neišnyksta. Naudokite plokščiuosius mygtukus įrankių juostose, dialogų languose ir įterptus su užpildymu"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Plokščiasis mygtukas"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Slankusis veiksmo mygtukas – tai apskritas piktogramos mygtukas, pateikiamas virš turinio, raginant atlikti pagrindinį veiksmą programoje."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Slankusis veiksmo mygtukas"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Viso ekrano dialogo lango nuosavybė nurodo, ar gaunamas puslapis yra viso ekrano modalinis dialogo langas"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Visas ekranas"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Visas ekranas"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Tinklelio sąrašai tinkamiausi norint rodyti vienos rūšies duomenis, įprastai vaizdus. Kiekvienas tinklelio sąrašo elementas vadinamas išklotinės elementu."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Su porašte"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Su antrašte"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Tik vaizdas"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Eilučių ir stulpelių išdėstymas"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Tinklelio sąrašai"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informacija"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Įvesties fragmentai glaustai pateikia sudėtinę informaciją, pvz., subjekto (asmens, vietos ar daikto) informaciją ar pokalbių tekstą."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Įvesties fragmentas"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Nepavyko pateikti URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Trimačių objektų dizaino linijinis eigos indikatorius, taip pat vadinamas eigos juosta."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Linijinis eigos indikatorius"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Viena fiksuoto aukščio eilutė, kurioje paprastai yra teksto bei piktograma pradžioje ar pabaigoje."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Antrinis tekstas"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Slenkamojo sąrašo išdėstymai"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Sąrašai"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Išjungtas meniu elementas"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Kontrolinio sąrašo meniu elementas"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Kontekstinio meniu elementas"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Į skiltis suskirstyto meniu elementas"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Paprasto meniu elementas"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Pirmas kontekstinio meniu elementas"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Trečias kontekstinio meniu elementas"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Meniu pateikiamas laikinai rodomų pasirinkimų sąrašas. Jie rodomi naudotojams naudojant mygtuką, atliekant veiksmą ar naudojant kitą valdiklį."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Keturi"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Gauti nuorodą"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Pirmas meniu elementas"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Trečias meniu elementas"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Antras meniu elementas"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Vienas"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Peržiūrėti"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Pašalinti"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Bendrinti"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Meniu mygtukai ir paprasti meniu"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Trys"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Meniu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Du"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Viena eilutė"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Palieskite čia, kad peržiūrėtumėte pasiekiamas šios demonstracinės versijos parinktis."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Žr. parinktis"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Parinktys"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Paspaudus kontūrinius mygtukus jie tampa nepermatomi ir pakyla. Jie dažnai teikiami su iškiliaisiais mygtukais norint nurodyti alternatyvų, antrinį veiksmą."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Kontūrinis mygtukas"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Linijinis, apskritas, neapibrėžtas"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Eigos indikatoriai"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Iškilieji mygtukai padidina daugumą plokščiųjų išdėstymų. Jie paryškina funkcijas užimtose ar plačiose erdvėse."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Iškilusis mygtukas"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Šliaužikliai atspindi juostos verčių diapazoną. Jie gali būti su piktogramomis abiejose verčių diapazoną atspindinčios juostos pusėse. Jais galima lengvai koreguoti nustatymus, pvz., garsumą, šviesumą, arba taikyti vaizdų filtrus."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Diapazono šliaužikliai"),
        "demoSectionedMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Į skiltis suskirstytas meniu"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Naudotojas žymimaisiais laukeliais gali pasirinkti kelias parinktis iš rinkinio. Įprasto žymimojo laukelio vertė yra „true“ (tiesa) arba „false“ (netiesa), o trijų parinkčių žymimojo laukelio vertė bė minėtųjų gali būti ir nulis."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Žymimasis laukelis"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Naudotojas akutėmis gali pasirinkti vieną parinktį iš rinkinio. Naudokite akutes išskirtiniams pasirinkimams, jei manote, kad naudotojui reikia peržiūrėti visas galimas parinktis kartu."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Akutė"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Žymimieji laukeliai, akutės ir jungikliai"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Įjungimo ir išjungimo jungikliais galima keisti kiekvienos nustatymo parinkties būseną. Jungiklio valdoma parinktis ir nustatyta būsena turi būti aiškios be įterptos etiketės."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Perjungti"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Pasirinkimo valdikliai"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Rodant paprastą dialogo langą naudotojui galima rinktis iš kelių parinkčių. Nurodomas pasirenkamas paprasto dialogo lango pavadinimas, kuris pateikiamas virš pasirinkimo variantų."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Paprastas"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Paprastas meniu"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Tolydusis"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Tinkintos temos tolydusis diapazono šliaužiklis"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Tolydusis su redaguojama skaitine verte"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Šliaužikliai atspindi juostos verčių diapazoną, iš kurio naudotojai gali pasirinkti vieną vertę. Jais galima lengvai koreguoti nustatymus, pvz., garsumą, šviesumą, arba taikyti vaizdų filtrus."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Diskretusis"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Tinkintos temos diskretusis šliaužiklis"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Redaguojama skaitinė vertė"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Vertės pasirinkimo perbraukiant valdikliai"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Šliaužikliai"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Paspaudėte laikinos juostos veiksmo mygtuką."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("VEIKSMAS"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("RODYTI LAIKINĄ JUOSTĄ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Laikinos juostos informuoja naudotojus apie programos eigą: kas jau yra ir dar bus atlikta. Jos rodomos laikinai ekrano apačioje. Juostos negali trukdyti naudotojo funkcijoms ir kad dingtų naudotojui nereikia atlikti jokių veiksmų."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Laikinose juostose ekrano apačioje rodomi pranešimai"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Tai yra laikina juosta."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Laikinos juostos"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Naudojant skirtukus tvarkomas turinys skirtinguose ekranuose, duomenų rinkiniuose ir naudojant kitas sąveikas."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Skirtukai su atskirai slenkamais rodiniais"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Skirtukai"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Naudotojas gali įvesti tekstą į NS per teksto laukus. Jie paprastai naudojami formose ir dialogo languose."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("El. paštas"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Įveskite slaptažodį."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – įveskite JAV telefono numerį."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Prieš pateikdami ištaisykite raudonai pažymėtas klaidas."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Slėpti slaptažodį"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Rašykite trumpai, tai tik demonstracinė versija."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Gyvenimo istorija"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Vardas*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired": MessageLookupByLibrary.simpleMessage(
            "Būtina nurodyti vardą ir pavardę."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Ne daugiau nei 8 simboliai."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Įveskite tik raides."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Slaptažodis*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Slaptažodžiai nesutampa"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefono numeris*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* nurodo būtiną lauką"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Iš naujo įveskite slaptažodį*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("Atlyginimas"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Rodyti slaptažodį"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("PATEIKTI"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Viena redaguojamo teksto ar skaičių eilutė"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Papasakokite apie save (pvz., parašykite, ką veikiate ar kokie jūsų pomėgiai)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Teksto laukai"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "Kaip žmonės kreipiasi į jus?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Kaip galime su jumis susisiekti?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Jūsų el. pašto adresas"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Perjungimo mygtukais galima grupuoti susijusias parinktis. Norint pažymėti susijusių perjungimo mygtukų grupes, turėtų būti bendrinamas bendras grupės sudėtinis rodinys"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Perjungimo mygtukai"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Patarimuose teikiamos teksto etiketės, padedančios paaiškinti mygtuko ar kito naudotojo sąsajos veiksmo funkciją. Patarimuose pateikiama informatyvaus teksto, naudotojams užvedus pelės žymeklį virš elemento, paryškinus jį ar ilgai paspaudus."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Ilgai paspauskite arba užveskite pelės žymeklį, kad būtų pateiktas patarimas."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Trumpas pranešimas, pateikiamas ilgai paspaudus arba užvedus pelės žymeklį"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Patarimai"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dvi eilutės"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Įvairių tipografinių stilių apibrėžtys prie trimačių objektų dizaino."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Visi iš anksto nustatyti teksto stiliai"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Spausdinimas"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Pridėti paskyrą"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("SUTINKU"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ATŠAUKTI"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NESUTINKU"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ATMESTI"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Atmesti juodraštį?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Viso ekrano dialogo lango demonstracinė versija"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("IŠSAUGOTI"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Viso ekrano dialogo langas"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Leisti „Google“ padėti programoms nustatyti vietovę. Tai reiškia anoniminių vietovės duomenų siuntimą „Google“, net kai nevykdomos jokios programos."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Naudoti „Google“ vietovės paslaugą?"),
        "dialogSelectedOption": m12,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Atsarginės kopijos paskyros nustatymas"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("RODYTI DIALOGO LANGĄ"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "INFORMACINIAI STILIAI IR MEDIJA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorijos"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerija"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Paplūdimys"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Bronzos liejykla"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Čenajus"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Četinadas"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Žvejys"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Gėlių turgus"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Priešpiečių ruošimas"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Prekyvietė"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pudučeris"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Druskos ūkis"),
        "placeScooters":
            MessageLookupByLibrary.simpleMessage("Važiuojantys paspirtukais"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Šilko gamintojas"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tandžavūras"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Tandžavūro šventykla"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Santaupos automobiliui"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Tikrinama"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Namų ūkio santaupos"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Atostogos"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Paskyros savininkas"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Metinis pelningumas procentais"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Praėjusiais metais išmokėtos palūkanos"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Palūkanų norma"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Palūkanos nuo metų pradžios iki dabar"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Kita ataskaita"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Iš viso"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Paskyros"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Įspėjimai"),
        "rallyAlertsMessageATMFees": m14,
        "rallyAlertsMessageCheckingAccount": m15,
        "rallyAlertsMessageHeadsUpShopping": m16,
        "rallyAlertsMessageSpentOnRestaurants": m17,
        "rallyAlertsMessageUnassignedTransactions": m18,
        "rallyBillAmount": m19,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Sąskaitos"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Terminas"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Apranga"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kavinės"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Pirkiniai"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restoranai"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Likutis"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Biudžetai"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Asmeninių finansų programa"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("LIKUTIS"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("PRISIJUNGTI"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Prisijungti"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Prisijungimas prie „Rally“"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Neturite paskyros?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Slaptažodis"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Atsiminti mane"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("PRISIREGISTRUOTI"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Naudotojo vardas"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ŽIŪRĖTI VISKĄ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Peržiūrėti visas paskyras"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Peržiūrėti visas sąskaitas"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Peržiūrėti visus biudžetus"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Rasti bankomatus"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Pagalba"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Tvarkyti paskyras"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Pranešimai"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Elektroninių ataskaitų nustatymas"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Slaptažodis ir „Touch ID“"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Asmens informacija"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Atsijungti"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Mokesčių dokumentai"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("PASKYROS"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("SĄSKAITOS"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BIUDŽETAI"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("APŽVALGA"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("NUSTATYMAI"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Apie „Flutter“ galeriją"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Sukūrė TOASTER, Londonas"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Uždaryti nustatymus"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Nustatymai"),
        "settingsDarkTheme":
            MessageLookupByLibrary.simpleMessage("Tamsioji tema"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Siųsti atsiliepimą"),
        "settingsLightTheme":
            MessageLookupByLibrary.simpleMessage("Šviesioji tema"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Lokalė"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platformos mechanika"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Sulėtintas"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Teksto kryptis"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Iš kairės į dešinę"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Pagal lokalę"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Iš dešinės į kairę"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Teksto mastelio keitimas"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Didžiulis"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Didelis"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Įprastas"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Mažas"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Nustatymai"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ATŠAUKTI"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("IŠVALYTI KREPŠELĮ"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("KREPŠELIS"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Pristatymas:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Tarpinė suma:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Mokestis:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("IŠ VISO"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("PRIEDAI"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("VISKAS"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("APRANGA"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("Namai"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Madingų mažmeninių prekių programa"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Slaptažodis"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Naudotojo vardas"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ATSIJUNGTI"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENIU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("KITAS"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Mėlynas keraminis puodelis"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Ciklameno spalvos marškinėliai ovalia apačia"),
        "shrineProductChambrayNapkins": MessageLookupByLibrary.simpleMessage(
            "Džinso imitacijos servetėlės"),
        "shrineProductChambrayShirt": MessageLookupByLibrary.simpleMessage(
            "Džinso imitacijos marškiniai"),
        "shrineProductClassicWhiteCollar": MessageLookupByLibrary.simpleMessage(
            "Klasikinis kvalifikuotas darbas"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("„Willow & Clay“ megztinis"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Vario laidų lentyna"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Marškinėliai su juostelėmis"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("„Garden“ vėrinys"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Getsbio skrybėlė"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("„Gentry“ švarkelis"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Trijų paauksuotų stalų rinkinys"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Rusvai gelsvas šalikėlis"),
        "shrineProductGreySlouchTank": MessageLookupByLibrary.simpleMessage(
            "Pilki marškinėliai be rankovių"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("„Hurrahs“ arbatos servizas"),
        "shrineProductKitchenQuattro": MessageLookupByLibrary.simpleMessage(
            "Keturių dalių virtuvės komplektas"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Tamsiai mėlynos kelnės"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Lengvo audinio tunika"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Keturių dalių stalas"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Lietvamzdis"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("„Ramona“ rankinė per petį"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Paplūdimio tunika"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Megztinis „Seabreeze“"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Pečius apnuoginantys marškinėliai"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage(
            "Ant peties nešiojama rankinė"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("„Soothe“ keramikos rinkinys"),
        "shrineProductStellaSunglasses": MessageLookupByLibrary.simpleMessage(
            "Stellos McCartney akiniai nuo saulės"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("„Strut“ auskarai"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukulento sodinukai"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Vasariniai drabužiai"),
        "shrineProductSurfAndPerfShirt": MessageLookupByLibrary.simpleMessage(
            "Sportiniai ir kiti marškinėliai"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("„Vagabond“ krepšys"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("„Varsity“ kojinės"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "„Walter“ prasegami marškinėliai (balti)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Raktų pakabukas"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Balti dryžuoti marškiniai"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("„Whitney“ diržas"),
        "shrineScreenReaderCart": m24,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Pridėti į krepšelį"),
        "shrineScreenReaderRemoveProductButton": m25,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Uždaryti krepšelį"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Uždaryti meniu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Atidaryti meniu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Pašalinti elementą"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Ieškoti"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Nustatymai"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Interaktyvus pradedančiųjų programos išdėstymas"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Pagrindinė dalis"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("MYGTUKAS"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Antraštė"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Paantraštė"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Pavadinimas"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Pradedančiųjų programa"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Pridėti"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Mėgstamiausi"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Ieškoti"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Bendrinti")
      };
}
