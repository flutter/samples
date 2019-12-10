// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a lv locale. All the
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
  String get localeName => 'lv';

  static m0(value) =>
      "Lai skatītu šīs lietotnes pirmkodu, lūdzu, apmeklējiet ${value}.";

  static m1(title) => "Vietturis ${title} cilnei";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Nav restorānu', one: '1 restorāns', other: '${totalRestaurants} restorāni')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Tiešais lidojums', one: '1 pārsēšanās', other: '${numberOfStops} pārsēšanās')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nav pieejamu īpašumu', one: '1 pieejams īpašums', other: '${totalProperties} pieejami īpašumi')}";

  static m5(value) => "Vienums ${value}";

  static m6(error) => "Neizdevās kopēt starpliktuvē: ${error}";

  static m7(name, phoneNumber) => "${name} tālruņa numurs ir ${phoneNumber}";

  static m8(value) => "Jūs atlasījāt: “${value}”";

  static m9(accountName, accountNumber, amount) =>
      "Kontā (${accountName}; numurs: ${accountNumber}) ir šāda summa: ${amount}.";

  static m10(amount) => "Šomēnes esat iztērējis ${amount} par maksu bankomātos";

  static m11(percent) =>
      "Labs darbs! Jūsu norēķinu konts ir par ${percent} augstāks nekā iepriekšējā mēnesī.";

  static m12(percent) =>
      "Uzmanību! Jūs esat izmantojis ${percent} no sava iepirkšanās budžeta šim mēnesim.";

  static m13(amount) => "Šonedēļ esat iztērējis ${amount} restorānos.";

  static m14(count) =>
      "${Intl.plural(count, zero: 'Palieliniet nodokļu atmaksas iespējas! Pievienojiet kategorijas ${count} darījumiem, kuriem vēl nav pievienotas kategorijas.', one: 'Palieliniet nodokļu atmaksas iespējas! Pievienojiet kategorijas 1 darījumam, kuram vēl nav pievienota kategorija.', other: 'Palieliniet nodokļu atmaksas iespējas! Pievienojiet kategorijas ${count} darījumiem, kuriem vēl nav pievienotas kategorijas.')}";

  static m15(billName, date, amount) =>
      "Rēķins (${billName}) par summu ${amount} ir jāapmaksā līdz šādam datumam: ${date}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budžets ${budgetName} ar iztērētu summu ${amountUsed} no ${amountTotal}, atlikusī summa: ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'NAV VIENUMU', one: '1 VIENUMS', other: '${quantity} VIENUMI')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Daudzums: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Iepirkumu grozs, nav preču', one: 'Iepirkumu grozs, 1 prece', other: 'Iepirkumu grozs, ${quantity} preces')}";

  static m21(product) => "Noņemt produktu: ${product}";

  static m22(value) => "Vienums ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Skaņu paraugi Github krātuvē"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Konts"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Signāls"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendārs"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komentāri"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("POGA"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Izveidot"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Riteņbraukšana"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lifts"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kamīns"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("L izmērs"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("M izmērs"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("S izmērs"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Ieslēgt apgaismojumu"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Veļas mazgājamā mašīna"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("DZINTARKRĀSA"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ZILA"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ZILPELĒKA"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRŪNA"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CIĀNZILA"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TUMŠI ORANŽA"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("TUMŠI VIOLETA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ZAĻA"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("PELĒKA"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("GAIŠI ZILA"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("GAIŠI ZAĻA"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LAIMA ZAĻA"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANŽA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROZĀ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("VIOLETA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("SARKANA"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ZILGANZAĻA"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("DZELTENA"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Personalizēta ceļojumu lietotne"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ĒDIENS"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapole, Itālija"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pica malkas krāsnī"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dalasa, ASV"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugāle"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sieviete tur lielu pastrami sendviču"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tukšs bārs ar augstiem krēsliem"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Kordova, Argentīna"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burgers"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portlenda, ASV"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Korejas tako"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Parīze, Francija"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Šokolādes deserts"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seula, Dienvidkoreja"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sēdvietas mākslinieciskā restorānā"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Sietla, ASV"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Garneļu ēdiens"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Našvila, ASV"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ieeja maizes ceptuvē"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, ASV"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Šķīvis ar vēžiem"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madride, Spānija"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kafejnīcas lete ar konditorejas izstrādājumiem"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Izpētiet restorānus pēc galamērķa"),
        "craneFly": MessageLookupByLibrary.simpleMessage("LIDOJUMI"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Espena, ASV"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kotedža sniegotā ainavā ar mūžzaļiem kokiem"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Bigsura, ASV"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kaira, Ēģipte"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhara mošejas minareti saulrietā"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugāle"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ķieģeļu bāka jūrā"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, ASV"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Peldbaseins ar palmām"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonēzija"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Peldbaseins ar palmām pie jūras"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Telts laukā"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu ieleja, Nepāla"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Lūgšanu karodziņi uz sniegota kalna fona"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Maču Pikču, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maču Pikču citadele"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("Male, Maldīvu salas"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalo virs ūdens"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vicnava, Šveice"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Viesnīca pie kalnu ezera"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Mehiko, Meksika"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Skats no putna lidojuma uz Dekoratīvās mākslas pili"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Rašmora kalns, ASV"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rašmora kalns"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapūra"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vīrietis atspiedies pret senu, zilu automašīnu"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Izpētiet lidojumus pēc galamērķa"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Atlasiet datumu"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Atlasiet datumus"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Izvēlieties galamērķi"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Ēstuves"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Atlasiet atrašanās vietu"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Izvēlieties sākumpunktu"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Atlasiet laiku"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Ceļotāji"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("NAKTSMĪTNES"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Male, Maldīvu salas"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalo virs ūdens"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Espena, ASV"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kaira, Ēģipte"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhara mošejas minareti saulrietā"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("Taipeja, Taivāna"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Debesskrāpis Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kotedža sniegotā ainavā ar mūžzaļiem kokiem"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Maču Pikču, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maču Pikču citadele"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vīrietis atspiedies pret senu, zilu automašīnu"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vicnava, Šveice"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Viesnīca pie kalnu ezera"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Bigsura, ASV"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Telts laukā"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, ASV"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Peldbaseins ar palmām"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugāle"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Krāsainas mājas Ribeiras laukumā"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tuluma, Meksika"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maiju celtņu drupas uz klints virs pludmales"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisabona, Portugāle"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ķieģeļu bāka jūrā"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Izpētiet īpašumus pēc galamērķa"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Atļaut"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Ābolkūka"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Atcelt"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Siera kūka"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Šokolādes braunijs"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Lūdzu, tālāk redzamajā sarakstā atlasiet savu iecienītāko desertu. Jūsu atlase tiks izmantota, lai pielāgotu jūsu apgabalā ieteikto restorānu sarakstu."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Atmest"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Neatļaut"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Atlasiet iecienītāko desertu"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Kartē tiks attēlota jūsu pašreizējā atrašanās vieta, un tā tiks izmantota, lai sniegtu norādes, parādītu tuvumā esošus meklēšanas rezultātus un noteiktu aptuvenu ceļā pavadāmo laiku."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Vai ļaut lietotnei “Maps” piekļūt jūsu atrašanās vietai, kad izmantojat šo lietotni?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Poga"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Ar fonu"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Parādīt brīdinājumu"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Darbību žetoni ir tādu opciju kopa, kas aktivizē ar primāro saturu saistītu darbību. Darbību žetoniem lietotāja saskarnē jābūt redzamiem dinamiski un atbilstoši kontekstam."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Darbības žetons"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Brīdinājumu dialoglodziņš informē lietotāju par situācijām, kam nepieciešams pievērst uzmanību. Brīdinājumu dialoglodziņam ir neobligāts nosaukums un neobligātu darbību saraksts."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Brīdinājums"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Brīdinājums ar nosaukumu"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Apakšējās navigācijas joslās ekrāna apakšdaļā tiek rādīti 3–5 galamērķi. Katrs galamērķis ir attēlots ar ikonu un papildu teksta iezīmi. Pieskaroties apakšējai navigācijas ikonai, lietotājs tiek novirzīts uz augšējā līmeņa navigācijas galamērķi, kas ir saistīts ar attiecīgo ikonu."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Pastāvīgas iezīmes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Atlasīta iezīme"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navigācija apakšā ar vairākiem skatiem, kas kļūst neskaidri"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navigācija apakšā"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Pievienot"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "RĀDĪT EKRĀNA APAKŠDAĻAS IZKLĀJLAPU"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Galvene"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modālā ekrāna apakšdaļa ir izvēlnes vai dialoglodziņa alternatīva, kuru izmantojot, lietotājam nav nepieciešams mijiedarboties ar pārējo lietotni."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modālā ekrāna apakšdaļa"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Pastāvīgajā ekrāna apakšdaļā tiek rādīta informācija, kas papildina primāro lietotnes saturu. Pastāvīgā ekrāna apakšdaļa paliek redzama arī tad, kad lietotājs mijiedarbojas ar citām lietotnes daļām."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Pastāvīgā ekrāna apakšdaļas izklājlapa"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pastāvīgā un modālā ekrāna apakšdaļa"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage(
            "Ekrāna apakšdaļas izklājlapa"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Teksta lauki"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plakanas, paceltas, konturētas un citu veidu"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Pogas"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompakti elementi, kas apzīmē ievadi, atribūtu vai darbību"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Žetoni"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Izvēles žetons apzīmē vienu izvēli no kopas. Izvēles žetoni satur saistītu aprakstošo tekstu vai kategorijas."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Izvēles žetons"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Koda paraugs"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Kopēts starpliktuvē."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPĒT VISU"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Krāsas un krāsas izvēles konstantes, kas atspoguļo materiālu dizaina krāsu paleti."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Visas iepriekš definētās krāsas"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Krāsas"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Darbību izklājlapa ir konkrēta stila brīdinājums, kas parāda lietotājam ar konkrēto kontekstu saistītu divu vai vairāku izvēļu kopumu. Darbību izklājlapai var būt virsraksts, papildu ziņa, kā arī darbību saraksts."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Darbību izklājlapa"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Tikai brīdinājumu pogas"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Brīdinājums ar pogām"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Brīdinājumu dialoglodziņš informē lietotāju par situācijām, kam nepieciešams pievērst uzmanību. Brīdinājumu dialoglodziņam ir neobligāts virsraksts, neobligāts saturs un neobligātu darbību saraksts. Virsraksts tiek parādīts virs satura, un darbības tiek parādītas zem satura."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Brīdinājums"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Brīdinājums ar nosaukumu"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS stila brīdinājuma dialoglodziņi"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Brīdinājumi"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS stila poga. Pogā var ievietot tekstu un/vai ikonu, kas pieskaroties pakāpeniski parādās un izzūd. Pogai pēc izvēles var būt fons."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS stila pogas"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Pogas"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Izmanto, lai atlasītu kādu no savstarpēji izslēdzošām iespējām. Kad ir atlasīta iespēja segmentētajā pārvaldībā, citas iespējas tajā vairs netiek atlasītas."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS stila segmentēta pārvaldība"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmentēta pārvaldība"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Vienkārši, brīdinājuma un pilnekrāna režīma"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Dialoglodziņi"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API dokumentācija"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filtra žetoni satura filtrēšanai izmanto atzīmes vai aprakstošos vārdus."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filtra žetons"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Plakana poga piespiežot attēlo tintes traipu, taču nepaceļas. Plakanas pogas izmantojamas rīkjoslās, dialoglodziņos un iekļautas ar iekšējo atkāpi."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Plakana poga"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Peldoša darbības poga ir apaļa ikonas poga, kas norāda uz saturu, lai veicinātu primāru darbību lietojumprogrammā."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Peldoša darbības poga"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Rekvizīts fullscreenDialog nosaka, vai ienākošā lapa ir pilnekrāna režīma modālais dialoglodziņš."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Pilnekrāna režīms"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Pilnekrāna režīms"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informācija"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Ievades žetons ir kompaktā veidā atveidota komplicēta informācijas daļa, piemēram, vienība (persona, vieta vai lieta) vai sarunas teksts."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Ievades žetons"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Nevarēja attēlot URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Viena fiksēta augstuma rindiņa, kas parasti ietver tekstu, kā arī ikonu pirms vai pēc teksta."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekundārais teksts"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ritināmo sarakstu izkārtojumi"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Saraksti"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Viena rindiņa"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Pieskarieties šeit, lai skatītu šai demonstrācijai pieejamās opcijas."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Skatīšanas opcijas"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opcijas"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Konturētas pogas nospiežot paliek necaurspīdīgas un paceļas. Tās bieži izmanto kopā ar paceltām pogām, lai norādītu alternatīvu, sekundāru darbību."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Konturēta poga"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Paceltas pogas piešķir plakaniem izkārtojumiem apjomu. Tās uzsver funkcijas aizņemtās vai plašās vietās."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Pacelta poga"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Izmantojot izvēles rūtiņas, lietotājs var atlasīt vairākas opcijas grupā. Parastas izvēles rūtiņas vērtība ir “true” vai “false”. Triju statusu izvēles rūtiņas vērtība var būt arī “null”."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Izvēles rūtiņa"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Izmantojot pogas, lietotājs var atlasīt vienu opciju grupā. Izmantojiet pogas vienas opcijas atlasei, ja uzskatāt, ka lietotājam ir jāredz visas pieejamās opcijas līdzās."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Poga"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Izvēles rūtiņas, pogas un slēdži"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Izmantojot ieslēgšanas/izslēgšanas slēdzi, var mainīt vienas iestatījumu opcijas statusu. Atbilstošajā iekļautajā iezīmē ir jābūt skaidri norādītam, kuru opciju var pārslēgt, izmantojot slēdzi, un kādā statusā tā ir pašlaik."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Slēdzis"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Atlasīšanas vadīklas"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Vienkāršā dialoglodziņā lietotājam tiek piedāvāts izvēlēties starp vairākām opcijām. Vienkāršam dialoglodziņam ir neobligāts virsraksts, kas tiek attēlots virs izvēlēm."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Vienkāršs"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Cilnēs saturs ir sakārtots vairākos ekrānos, datu kopās un citos mijiedarbības veidos."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Cilnes ar neatkarīgi ritināmiem skatiem"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Cilnes"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Izmantojot teksta laukus, lietotāji var ievadīt lietotāja saskarnē tekstu. Parasti tie tiek rādīti veidlapās vai dialoglodziņos."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-pasts"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Lūdzu, ievadiet paroli."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### — ievadiet pareizu tālruņa numuru."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Pirms iesniegšanas, lūdzu, labojiet kļūdas sarkanā krāsā."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Slēpt paroli"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Veidojiet to īsu, šī ir tikai demonstrācijas versija."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biogrāfija"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Vārds*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Ir jāievada vārds."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Ne vairāk kā 8 rakstzīmes."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Lūdzu, ievadiet tikai alfabēta rakstzīmes."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Parole*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Paroles nesakrīt"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Tālruņa numurs*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* norāda obligātu lauku"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Atkārtota paroles ierakstīšana*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Alga"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Rādīt paroli"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("IESNIEGT"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Viena rinda teksta un ciparu rediģēšanai"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Pastāstiet par sevi (piem., uzrakstiet, ar ko jūs nodarbojaties vai kādi ir jūsu vaļasprieki)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Teksta lauki"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Kā cilvēki jūs dēvē?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Kā varam ar jums sazināties?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Jūsu e-pasta adrese"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Pārslēgšanas pogas var izmantot saistītu opciju grupēšanai. Lai uzsvērtu saistītu pārslēgšanas pogu grupas, grupai ir jābūt kopīgam konteineram."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Pārslēgšanas pogas"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Divas rindiņas"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definīcijas dažādiem tipogrāfijas stiliem, kas atrasti materiāla dizaina ceļvedī."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Visi iepriekš definētie teksta stili"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipogrāfija"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Pievienot kontu"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("PIEKRĪTU"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ATCELT"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NEPIEKRĪTU"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ATMEST"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Vai atmest melnrakstu?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Pilnekrāna režīma dialoglodziņa demonstrācija"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("SAGLABĀT"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Pilnekrāna režīma dialoglodziņš"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google varēs palīdzēt lietotnēm noteikt atrašanās vietu. Tas nozīmē, ka uzņēmumam Google tiks nosūtīti anonīmi atrašanās vietas dati, pat ja neviena lietotne nedarbosies."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Vai izmantot Google atrašanās vietas pakalpojumu?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Dublējuma konta iestatīšana"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("PARĀDĪT DIALOGLODZIŅU"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ATSAUČU STILI UN MEDIJI"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorijas"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerija"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Ietaupījumi automašīnai"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Norēķinu konts"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Mājas ietaupījumi"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Atvaļinājums"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Konta īpašnieks"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Gada peļņa procentos"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Procenti, kas samaksāti pagājušajā gadā"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Procentu likme"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Procenti YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Nākamais izraksts"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Kopā"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Konti"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Brīdinājumi"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Rēķini"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Termiņš"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Apģērbs"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kafejnīcas"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Pārtikas veikali"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restorāni"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Atlikums"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budžeti"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Personisko finanšu lietotne"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ATLIKUMS"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("PIETEIKTIES"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Pieteikties"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Pieteikties lietotnē Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Vai jums vēl nav konta?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Parole"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Atcerēties mani"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("REĢISTRĒTIES"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Lietotājvārds"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("SKATĪT VISUS"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Skatīt visus kontus"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Skatīt visus rēķinus"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Skatīt visus budžetus"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Atrast bankomātus"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Palīdzība"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Pārvaldīt kontus"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Paziņojumi"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Datorizēti iestatījumi"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Piekļuves kods un Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Personas informācija"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Izrakstīties"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Nodokļu dokumenti"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("KONTI"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("RĒĶINI"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDŽETI"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("PĀRSKATS"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("IESTATĪJUMI"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Par galeriju “Flutter”"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Radīja uzņēmums TOASTER Londonā"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Aizvērt iestatījumus"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Iestatījumi"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Tumšs"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Sūtīt atsauksmes"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Gaišs"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Lokalizācija"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platformas mehānika"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Palēnināta kustība"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistēma"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Teksta virziens"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Pamatojoties uz lokalizāciju"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage(
            "No labās puses uz kreiso pusi"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Teksta mērogošana"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Milzīgs"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Liels"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Parasts"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Mazs"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Motīvs"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Iestatījumi"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ATCELT"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("NOTĪRĪT GROZU"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("GROZS"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Piegāde:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Starpsumma:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Nodoklis:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("KOPĀ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AKSESUĀRI"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("VISAS"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("APĢĒRBS"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("MĀJAI"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Moderna mazumtirdzniecības lietotne"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Parole"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Lietotājvārds"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ATTEIKTIES"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("IZVĒLNE"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("TĀLĀK"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Zila akmens krūze"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Ķiršu krāsas T-krekls"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray salvetes"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Auduma krekls"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klasiska balta apkaklīte"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Māla krāsas džemperis"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Vara stiepļu statīvs"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("T-krekls ar smalkām līnijām"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Dārza mala"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby stila cepure"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry stila jaka"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Darba galda komplekts"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Ruda šalle"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Pelēkas krāsas tops"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs tējas komplekts"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Virtuves komplekts"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Tumši zilas bikses"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Ģipša krāsas tunika"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Četrvietīgs galds"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Lietus ūdens trauks"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona krosovers"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Zila tunika"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Jūras krāsas džemperis"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "T-krekls ar apaļu plecu daļu"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Plecu soma"),
        "shrineProductSootheCeramicSet": MessageLookupByLibrary.simpleMessage(
            "Keramikas izstrādājumu komplekts"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella saulesbrilles"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Auskari"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukulenti"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Krekla kleita"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Sērfošanas krekls"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Klaidoņa pauna"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Karsējmeiteņu zeķes"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter stila tops (balts)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Austs atslēgu turētājs"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Balts svītrains krekls"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney josta"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Pievienot grozam"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Aizvērt grozu"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Aizvērt izvēlni"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Atvērt izvēlni"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Noņemt vienumu"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Meklēt"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Iestatījumi"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Adaptīvs sākuma izkārtojums"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Pamatteksts"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("POGA"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Virsraksts"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Apakšvirsraksts"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Nosaukums"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Sākuma lietotne"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Pievienot"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Izlase"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Meklēt"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Kopīgot")
      };
}
