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

  static m2(destinationName) => "Izpētīt: ${destinationName}";

  static m3(destinationName) => "Kopīgot: ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Nav restorānu', one: '1 restorāns', other: '${totalRestaurants} restorāni')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Tiešais lidojums', one: '1 pārsēšanās', other: '${numberOfStops} pārsēšanās')}";

  static m7(hours) =>
      "${Intl.plural(hours, zero: '${hours} h', one: '1 h', other: '${hours} h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, zero: '${minutes} min', one: '1 min', other: '${minutes} min')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nav pieejamu īpašumu', one: '1 pieejams īpašums', other: '${totalProperties} pieejami īpašumi')}";

  static m10(value) => "${value} ar medu";

  static m11(value) => "${value} ar cukuru";

  static m12(value) => "Vienums ${value}";

  static m13(error) => "Neizdevās kopēt starpliktuvē: ${error}";

  static m14(value) => "Nepārtraukts: ${value}";

  static m15(value) => "Atsevišķas vērtības: ${value}";

  static m16(value) => "Pārbaudītā vērtība: ${value}";

  static m17(value) => "Atlasītā vērtība: ${value}";

  static m18(name, phoneNumber) => "${name} tālruņa numurs ir ${phoneNumber}";

  static m19(value) => "Jūs atlasījāt: “${value}”";

  static m20(accountName, accountNumber, amount) =>
      "Kontā (${accountName}; numurs: ${accountNumber}) ir šāda summa: ${amount}.";

  static m21(amount) => "Šomēnes esat iztērējis ${amount} par maksu bankomātos";

  static m22(percent) =>
      "Labs darbs! Jūsu norēķinu konts ir par ${percent} augstāks nekā iepriekšējā mēnesī.";

  static m23(percent) =>
      "Uzmanību! Jūs esat izmantojis ${percent} no sava iepirkšanās budžeta šim mēnesim.";

  static m24(amount) => "Šonedēļ esat iztērējis ${amount} restorānos.";

  static m25(count) =>
      "${Intl.plural(count, zero: 'Palieliniet nodokļu atmaksas iespējas! Pievienojiet kategorijas ${count} darījumiem, kuriem vēl nav pievienotas kategorijas.', one: 'Palieliniet nodokļu atmaksas iespējas! Pievienojiet kategorijas 1 darījumam, kuram vēl nav pievienota kategorija.', other: 'Palieliniet nodokļu atmaksas iespējas! Pievienojiet kategorijas ${count} darījumiem, kuriem vēl nav pievienotas kategorijas.')}";

  static m26(billName, date, amount) =>
      "Rēķins (${billName}) par summu ${amount} ir jāapmaksā līdz šādam datumam: ${date}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budžets ${budgetName} ar iztērētu summu ${amountUsed} no ${amountTotal}, atlikusī summa: ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'NAV VIENUMU', one: '1 VIENUMS', other: '${quantity} VIENUMI')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Daudzums: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Iepirkumu grozs, nav preču', one: 'Iepirkumu grozs, 1 prece', other: 'Iepirkumu grozs, ${quantity} preces')}";

  static m32(product) => "Noņemt produktu: ${product}";

  static m33(value) => "Vienums ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Skaņu paraugi GitHub krātuvē"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Atpakaļ uz galeriju"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Sākuma ikona"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Vairākas darbības"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Atiestatīt joslu"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Jūsu parole tika atjaunināta citā jūsu ierīcē. Lūdzu, pierakstieties vēlreiz."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Izgriezums"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Peldošās darbības pogas pozīcija"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Dokota — centrā"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Dokota — beigās"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Peldoša — centrā"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Peldoša — beigās"),
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
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Izpētīt"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Var atlasīt (nospiest un turēt)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Var pieskarties"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thandžāvūra"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Četinada"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Nr. 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Zīda tinēji"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Tempļi"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thandžāvūra, Tamilnāda"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamilnāda"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "10 populārākās pilsētas, ko apmeklēt Tamilnādā"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Dienvidindijas amatnieki"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Brihadisvaras templis"),
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
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Izpētiet restorānus pēc galamērķa"),
        "craneFlightDuration": m5,
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
        "craneFlyStops": m6,
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
        "craneHours": m7,
        "craneMinutes": m8,
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
        "craneSleepProperties": m9,
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
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Tērzēšana"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Sākums"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profils"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Kalcijs (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Kalorijas"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Ogļhidrāti (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Deserts (1 porcija)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Tauki (g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Dzelzs (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Olbaltumvielas (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Nātrijs (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Uzturs"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Ābolu pīrāgs"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Kēksiņš"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Virtulis"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Eklērs"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Saldēts jogurts"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Piparkūka"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Medus kāre"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Saldējuma sendvičs"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Želejas pupiņa"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Konfekte uz kociņa"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Pieskarieties, lai rediģētu elementus, un izmantojiet žestus, lai pārvietotos. Velciet, lai izmantotu pārvietošanu; savelciet pirkstus, lai izmantotu tālummaiņu; veiciet pagriešanu ar diviem pirkstiem. Nospiediet atiestatīšanas pogu, lai atgrieztos pie sākotnējā virziena."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Rediģēt elementu"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Atiestatīt pārveidošanu"),
        "demo2dTransformationsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pārvietošana, tālummaiņa, pagriešana"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D pārveidošana"),
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
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Joslā tiek rādīta īsa un svarīga informācija, kā arī sniegti norādījumi lietotājam (vai iespēja paslēpt joslu). Lai joslu varētu paslēpt, ir nepieciešama lietotāja darbība."),
        "demoBannerSubtitle":
            MessageLookupByLibrary.simpleMessage("Joslas rādīšana sarakstā"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Josla"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Apakšējās lietotņu joslas ļauj piekļūt apakšdaļā esošajai navigācijas atvilktnei un ne vairāk kā četrām darbībām, tostarp peldošajai darbības pogai."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Apakšdaļā tiek rādītas navigācijas iespējas un pieejamās darbības"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Apakšējā lietotņu josla"),
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
        "demoBottomSheetItem": m12,
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
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Kartīte ir lapas materiāls, kas tiek izmantots saistītas informācijas attēlošanai, piemēram, albumam, ģeogrāfiskajai atrašanās vietai, maltītei, kontaktinformācijai un citam saturam."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pamata kartītes ar noapaļotiem stūriem"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Kartītes"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Kontrolsaraksta izvēlne"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompakti elementi, kas apzīmē ievadi, atribūtu vai darbību"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Žetoni"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Izvēles žetons apzīmē vienu izvēli no kopas. Izvēles žetoni satur saistītu aprakstošo tekstu vai kategorijas."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Izvēles žetons"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Cirkulārs materiāla dizaina norises indikators, kas griežas, lai norādītu, ka lietojumprogramma ir aizņemta."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Cirkulārs norises indikators"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage(
            "Demonstrācijas versijas kods"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Kopēts starpliktuvē."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPĒT VISU"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Krāsas un krāsas izvēles konstantes, kas atspoguļo materiālu dizaina krāsu paleti."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Visas iepriekš definētās krāsas"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Krāsas"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Kontekstizvēlne"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Darbību izklājlapa ir konkrēta stila brīdinājums, kas parāda lietotājam ar konkrēto kontekstu saistītu divu vai vairāku izvēļu kopumu. Darbību izklājlapai var būt virsraksts, papildu ziņa, kā arī darbību saraksts."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Darbību izklājlapa"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS stila aktivitātes indikators, kas griežas pulksteņrādītāja kustības virzienā."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS stila aktivitātes indikators"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Aktivitātes indikators"),
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
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS stila navigācijas josla. Navigācijas josla ir rīkjosla, kas ietver vismaz lapas nosaukumu (rīkjoslas vidū)."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS stila navigācijas josla"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigācijas josla"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Datums"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Datums un laiks"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "iOS stila atlasītāja logrīks, ko var izmantot datuma un/vai laika atlasīšanai."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS stila datuma un laika atlasītāji"),
        "demoCupertinoPickerTime":
            MessageLookupByLibrary.simpleMessage("Laiks"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Taimeris"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Atlasītāji"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Logrīks iOS stila satura vadīklas “Vilkt, lai atsvaidzinātu” ievietošanai."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS stila vadīkla “Vilkt, lai atsvaidzinātu”"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Vilkšana, lai atsvaidzinātu"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Izmanto, lai atlasītu kādu no savstarpēji izslēdzošām iespējām. Kad ir atlasīta iespēja segmentētajā pārvaldībā, citas iespējas tajā vairs netiek atlasītas."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS stila segmentēta pārvaldība"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmentēta pārvaldība"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Izmantojot slīdni, var atlasīt vērtību no nepārtraukta diapazona vai atsevišķu vērtību kopas."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS stila slīdnis"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Slīdnis"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Izmantojot slēdzi, var pārslēgt vienu iestatījumu no ieslēgta stāvokļa uz izslēgtu vai otrādi."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS stila slēdzis"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS stila apakšējā navigācijas ciļņu josla Šeit tiek rādītas vairākas cilnes, un viena no tām ir aktīva. Pēc noklusējuma aktīva ir pirmā cilne."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS stila apakšējā ciļņu josla"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Ciļņu josla"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Teksta lauks, kurā lietotājs var ievadīt tekstu, izmantojot aparatūras tastatūru vai ekrāna tastatūru."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS stila teksta lauki"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Teksta lauki"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slīdņi atspoguļo vērtību diapazonu joslā, kurā lietotāji var atlasīt atsevišķu vērtību vai vērtību diapazonu. Slīdņiem var atlasīt tēmu, un tos var pielāgot."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Pielāgoti slīdņi"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Datu tabulās režģa formātā ir attēlota rindu un kolonnu informācija. Informācija šajās tabulās ir attēlota ērti pārmeklējamā veidā, lai lietotāji varētu meklēt tendences un gūt ieskatu."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Informācijas rindas un kolonnas"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Datu tabulas"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Tiek rādīts dialoglodziņš ar materiāla dizaina datuma atlasītāju."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Datuma atlasītājs"),
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
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Režģa saraksti ir piemērotāki homogēnu datu (parasti — attēlu) parādīšanai. Režģa saraksta vienumus dēvē par elementiem."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Ar kājeni"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Ar galveni"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Tikai attēli"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rindu un kolonnu izkārtojums"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Režģa saraksti"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informācija"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Ievades žetons ir kompaktā veidā atveidota komplicēta informācijas daļa, piemēram, vienība (persona, vieta vai lieta) vai sarunas teksts."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Ievades žetons"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Nevarēja attēlot URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Lineārs materiāla dizaina norises indikators, zināms arī kā norises josla."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Lineārs norises indikators"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Viena fiksēta augstuma rindiņa, kas parasti ietver tekstu, kā arī ikonu pirms vai pēc teksta."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekundārais teksts"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ritināmo sarakstu izkārtojumi"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Saraksti"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Atspējots izvēlnes vienums"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Vienums ar kontrolsaraksta izvēlni"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("Vienums ar kontekstizvēlni"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Vienums ar izvēlni, kurai ir sadaļas"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Vienums ar vienkāršu izvēlni"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Kontekstizvēlnes pirmais vienums"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Kontekstizvēlnes trešais vienums"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Izvēlne īslaicīgajā saskarnē attēlo pieejamo opciju sarakstu. Tās tiek parādītas, kad lietotājs mijiedarbojas ar pogu vai vadīklu vai veic darbību."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Četri"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Iegūt saiti"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Pirmais izvēlnes vienums"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Trešais izvēlnes vienums"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Otrais izvēlnes vienums"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Viens"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Priekšskatīt"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Noņemt"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Kopīgot"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Izvēlnes pogas un vienkāršas izvēlnes"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Trīs"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Izvēlne"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Divi"),
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
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("RĀDĪT ATLASĪTĀJU"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Datuma un laika atlasīšana"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Atlasītāji"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lineārs, cirkulārs, nenoteikts"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Norises indikatori"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Paceltas pogas piešķir plakaniem izkārtojumiem apjomu. Tās uzsver funkcijas aizņemtās vai plašās vietās."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Pacelta poga"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slīdņi atspoguļo vērtību diapazonu joslā. Abos slīdņu joslas galos var būt ikonas, kas atspoguļo vērtību diapazonu. Slīdņi ir lieliski piemēroti dažādu iestatījumu, piemēram, skaļuma vai spilgtuma, pielāgošanai vai attēlu filtru lietošanai."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Diapazona slīdņi"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Izvēlne ar sadaļām"),
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
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Vienkārša izvēlne"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Nepārtraukts"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Slīdnis ar nepārtrauktu vērtību diapazonu un pielāgotu motīvu"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Nepārtraukts slīdnis ar rediģējamu skaitlisko vērtību"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Slīdņi atspoguļo vērtību diapazonu joslā, kurā lietotāji var atlasīt atsevišķu vērtību. Slīdņi ir lieliski piemēroti dažādu iestatījumu, piemēram, skaļuma vai spilgtuma, pielāgošanai vai attēlu filtru lietošanai."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage(
            "Slīdnis ar atsevišķām vērtībām"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Slīdnis ar atsevišķām vērtībām un pielāgotu motīvu"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Rediģējama skaitliskā vērtība"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Logrīki vērtības atlasīšanai velkot"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Slīdņi"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Jūs nospiedāt paziņojumu joslas darbības pogu."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("DARBĪBA"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("RĀDĪT PAZIŅOJUMU JOSLU"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Paziņojumu joslās tiek rādīta informācija par procesiem, ko lietotnes ir veikušas vai drīz veiks. Paziņojumu joslas tiek īslaicīgi rādītas ekrāna apakšā. Tās nedrīkst traucēt lietošanu, un nav nepieciešama lietotāja ievade, lai tās pazustu."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Paziņojumu joslās ekrāna apakšā tiek rādīti ziņojumi"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Šī ir paziņojumu josla."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Paziņojumu joslas"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Cilnēs saturs ir sakārtots vairākos ekrānos, datu kopās un citos mijiedarbības veidos."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Bez ritināšanas"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Ritināšana"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Cilnes ar neatkarīgi ritināmiem skatiem"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Cilnes"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Izmantojot teksta laukus, lietotāji var ievadīt lietotāja saskarnē tekstu. Parasti tie tiek rādīti veidlapās vai dialoglodziņos."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("E-pasta adrese"),
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
        "demoTextFieldNameHasPhoneNumber": m18,
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
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Tiek rādīts dialoglodziņš, kurā ir materiāla dizaina laika atlasītājs."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Laika atlasītājs"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Pārslēgšanas pogas var izmantot saistītu opciju grupēšanai. Lai uzsvērtu saistītu pārslēgšanas pogu grupas, grupai ir jābūt kopīgam konteineram."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Pārslēgšanas pogas"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Rīka padomi ietver teksta iezīmes, kas paskaidro pogas vai citas lietotāja saskarnes darbības funkciju. Rīka padomi attēlo informatīvu tekstu, kad lietotāji virs kāda elementa virza kursoru, izceļ elementu vai to nospiež un tur."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Lai parādītu rīka padomu, nospiediet elementu un turiet to vai virziet virs tā kursoru."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Īss ziņojums, kas tiek parādīts, kad lietotājs nospiež elementu un to tur vai virza kursoru virs elementa."),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Rīka padomi"),
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
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Dublējuma konta iestatīšana"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("PARĀDĪT DIALOGLODZIŅU"),
        "dismiss": MessageLookupByLibrary.simpleMessage("NERĀDĪT"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Uz saturu orientēta ziņu lietotne"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Zaļās armijas reforma no iekšpuses"),
        "fortnightlyHeadlineBees":
            MessageLookupByLibrary.simpleMessage("Saimniecībās trūkst bišu"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Dizaineri izmanto tehnoloģijas, lai radītu futūristiskus audumus"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Feministes kļūst par partizānēm"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("Benzīna nākotne"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "Kluss, bet iespaidīgs apvērsums veselības aprūpes jomā"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Akciju vērtības stagnācijas dēļ daudzi vēlas izmantot valūtu"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Kara dēļ sadalītās amerikāņu dzīves"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Pēdējie jaunumi"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Uzņēmējdarbība"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Kultūra"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Sākumlapa"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Politika"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Zinātne"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Sports"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Tehnoloģijas"),
        "fortnightlyMenuTravel":
            MessageLookupByLibrary.simpleMessage("Ceļošana"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("ASV ziņas"),
        "fortnightlyMenuWorld":
            MessageLookupByLibrary.simpleMessage("Pasaules ziņas"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("GreenArmy"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("HealthcareRevolution"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Reforma"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Akcijas"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("TechDesign"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "STILU UN CITAS DEMONSTRĀCIJAS"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorijas"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerija"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Pludmale"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Bronzas lietuve"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Čennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Četinada"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Zvejnieks"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Ziedu tirgus"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Pusdienu gatavošana"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Tirgus"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pudučerri"),
        "placeSaltFarm":
            MessageLookupByLibrary.simpleMessage("Sāls ieguves saimniecība"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Motorolleri"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("Zīda ražotne"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Thandžāvūra"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Thandžāvūras templis"),
        "rallyAccountAmount": m20,
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
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Maksājamā summa"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Samaksātā summa"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Kopsumma"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Rēķini"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Termiņš"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Apģērbs"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kafejnīcas"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Pārtikas veikali"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restorāni"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Atlikusī summa"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Izmantotā summa"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Kopējais budžets"),
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
        "shrineCartItemCount": m28,
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
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
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
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Pievienot grozam"),
        "shrineScreenReaderRemoveProductButton": m32,
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
        "signIn": MessageLookupByLibrary.simpleMessage("PIERAKSTĪTIES"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Adaptīvs sākuma izkārtojums"),
        "starterAppDrawerItem": m33,
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
