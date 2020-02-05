// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a is locale. All the
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
  String get localeName => 'is';

  static m0(value) => "Farðu á ${value} til að sjá upprunakóða forritsins.";

  static m1(title) => "Staðgengill fyrir flipann ${title}";

  static m2(destinationName) => "Kanna ${destinationName}";

  static m3(destinationName) => "Deila ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Engir veitingastaðir', one: '1 veitingastaður', other: '${totalRestaurants} veitingastaðir')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Engar millilendingar', one: 'Ein millilending', other: '${numberOfStops} millilendingar')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Engar tiltækar eignir', one: '1 tiltæk eign', other: '${totalProperties} tiltækar eignir')}";

  static m10(value) => "${value} með hunangi";

  static m11(value) => "${value} með sykri";

  static m12(value) => "Vara ${value}";

  static m13(error) => "Ekki tókst að afrita á klippiborð: ${error}";

  static m14(value) => "Samfelld: ${value}";

  static m15(value) => "Samsettur: ${value}";

  static m16(value) => "Merkt: ${value}";

  static m17(value) => "Valið: ${value}";

  static m18(name, phoneNumber) => "Símanúmer ${name} er ${phoneNumber}";

  static m19(value) => "Þú valdir: „${value}“";

  static m20(accountName, accountNumber, amount) =>
      "${accountName}, reikningur ${accountNumber}, að upphæð ${amount}.";

  static m21(amount) => "Þú hefur eytt ${amount} í hraðbankagjöld í mánuðinum";

  static m22(percent) =>
      "Vel gert! Þú átt ${percent} meira inni á veltureikningnum þínum en í síðasta mánuði.";

  static m23(percent) =>
      "Athugaðu að þú ert búin(n) með ${percent} af kostnaðarhámarki mánaðarins.";

  static m24(amount) => "Þú hefur eytt ${amount} á veitingastöðum í vikunni.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Auktu hugsanlegan frádrátt frá skatti! Úthluta flokkum á 1 óúthlutaða færslu.', other: 'Auktu hugsanlegan frádrátt frá skatti! Úthluta flokkum á ${count} óúthlutaðar færslur.')}";

  static m26(billName, date, amount) =>
      "${billName}, gjalddagi ${date}, að upphæð ${amount}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} kostnaðarhámark þar sem ${amountUsed} er notað af ${amountTotal} og ${amountLeft} er eftir";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ENGIN ATRIÐI', one: '1 ATRIÐI', other: '${quantity} ATRIÐI')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Magn: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Karfa, engir hlutir', one: 'Karfa, 1 hlutur', other: 'Karfa, ${quantity} hlutir')}";

  static m32(product) => "Fjarlægja ${product}";

  static m33(value) => "Vara ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter-sýnishorn í GitHub-geymslu"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Til baka í gallerí"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Upphafstákn"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Margar aðgerðir"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Endurstilla borða"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Aðgangsorðið þitt var uppfært í hinu tækinu. Skráðu þig inn aftur."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Hak"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Staðsetning fljótandi aðgerðahnapps"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Festur - miðja"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Festur - lok"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Fljótandi - miðja"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Fljótandi - lok"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Reikningur"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Vekjari"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Dagatal"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Myndavél"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Ummæli"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("HNAPPUR"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Búa til"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Kanna"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("Hægt að velja (haldið inni)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Hægt að ýta"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Númer 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Köngulær"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Hof"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "10 vinsælustu borgirnar í Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Handverksfólk Suður-Indlands"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Brihadisvara-hof"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Hjólandi"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lyfta"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Arinn"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Stór"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Miðlungs"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Lítill"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Kveikja á ljósum"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Þvottavél"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("RAFGULUR"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLÁR"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("BLÁGRÁR"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRÚNN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("BLÁGRÆNN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("DJÚPAPPELSÍNUGULUR"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("DJÚPFJÓLUBLÁR"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("GRÆNN"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRÁR"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("DIMMFJÓLUBLÁR"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("LJÓSBLÁR"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("LJÓSGRÆNN"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LJÓSGRÆNN"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("APPELSÍNUGULUR"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("BLEIKUR"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("FJÓLUBLÁR"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("RAUÐUR"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("GRÆNBLÁR"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GULUR"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("Sérsniðið ferðaforrit"),
        "craneEat": MessageLookupByLibrary.simpleMessage("MATUR"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napólí, Ítalíu"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Viðarelduð pítsa í ofni"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Bandaríkjunum"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portúgal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kona sem heldur á stórri nautakjötssamloku"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tómur bar með auðum upphækkuðum stólum"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentínu"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamborgari"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Bandaríkjunum"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kóreskt taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("París, Frakklandi"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Súkkulaðieftirréttur"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Seúl, Suður-Kóreu"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sæti á listrænum veitingastað"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Bandaríkjunum"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rækjudiskur"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Bandaríkjunum"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Inngangur bakarís"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Bandaríkjunum"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Diskur með vatnakröbbum"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madríd, Spáni"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kökur á kaffihúsi"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Skoða veitingastaði eftir áfangastað"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("FLUG"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Bandaríkjunum"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kofi þakinn snjó í landslagi með sígrænum trjám"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Bandaríkjunum"),
        "craneFly10":
            MessageLookupByLibrary.simpleMessage("Kaíró, Egyptalandi"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Turnar Al-Azhar moskunnar við sólarlag"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portúgal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Múrsteinsviti við sjó"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Bandaríkjunum"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sundlaug og pálmatré"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Balí, Indónesíu"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sundlaug við sjóinn og pálmatré"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tjald á akri"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu-dalur, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Litflögg við snæviþakið fjall"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu rústirnar"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldíveyjum"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bústaðir yfir vatni"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Sviss"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hótel við vatn með fjallasýn"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Mexíkóborg, Mexíkó"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Loftmynd af Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Mount Rushmore, Bandaríkjunum"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rushmore-fjall"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapúr"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kúbu"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maður sem hallar sér upp að bláum antíkbíl"),
        "craneFlyStops": m6,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Skoða flug eftir áfangastað"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Veldu dagsetningu"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Veldu dagsetningar"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Veldu áfangastað"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Matsölur"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Velja staðsetningu"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Velja brottfararstað"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Veldu tíma"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Farþegar"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("SVEFN"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("Malé, Maldíveyjum"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bústaðir yfir vatni"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Bandaríkjunum"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("Kaíró, Egyptalandi"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Turnar Al-Azhar moskunnar við sólarlag"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taívan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taipei 101 skýjakljúfur"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kofi þakinn snjó í landslagi með sígrænum trjám"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu rústirnar"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kúbu"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maður sem hallar sér upp að bláum antíkbíl"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Sviss"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hótel við vatn með fjallasýn"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Bandaríkjunum"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tjald á akri"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Bandaríkjunum"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sundlaug og pálmatré"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Portó, Portúgal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Litrík hús við Ribeira-torgið"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexíkó"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Maya-rústir á klettavegg fyrir ofan strönd"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lissabon, Portúgal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Múrsteinsviti við sjó"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Skoða eignir eftir áfangastað"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Leyfa"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Eplabaka"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Hætta við"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Ostakaka"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Skúffukaka"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Veldu uppáhaldseftirréttinn þinn af listanum hér að neðan. Það sem þú velur verður notað til að sérsníða tillögulista fyrir matsölustaði á þínu svæði."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Fleygja"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Ekki leyfa"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Velja uppáhaldseftirrétt"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Núverandi staðsetning þín verður birt á kortinu og notuð fyrir leiðarlýsingu, leitarniðurstöður fyrir nágrennið og áætlaðan ferðatíma."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Viltu leyfa „Kort“ að fá aðgang að staðsetningu þinni á meðan þú notar forritið?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Hnappur"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Með bakgrunni"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Sýna viðvörun"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Spjall"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Heim"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Prófíll"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Kalk (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Hitaeiningar"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Kolvetni (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Eftirréttur (1 skammtur)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Fita (g)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("Járn (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Prótín (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Natríum (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Næring"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Eplabaka"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Formkaka"),
        "dataTableRowDonut":
            MessageLookupByLibrary.simpleMessage("Kleinuhringur"),
        "dataTableRowEclair":
            MessageLookupByLibrary.simpleMessage("Súkkulaðikaramella"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Frosin jógúrt"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Piparkökur"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Vaxkaka"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Íssamloka"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Hlaupbaunir"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Sleikipinni"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Tap to edit tiles, and use gestures to move around the scene. Drag to pan, pinch to zoom, rotate with two fingers. Press the reset button to return to the starting orientation."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Edit tile"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Reset transformations"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Pan, zoom, rotate"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D transformations"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Aðgerðarkubbar eru hópur valkosta sem ræsa aðgerð sem tengist upprunaefni. Birting aðgerðarkubba ætti að vera kvik og í samhengi í notandaviðmóti."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Aðgerðarkubbur"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Viðvörunargluggi upplýsir notanda um aðstæður sem krefjast staðfestingar. Viðvörunargluggi getur haft titil og lista yfir aðgerðir."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Viðvörun"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Viðvörun með titli"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Borðar sýna mikilvæg og hnitmiðuð skilaboð og sýna notendum aðgerðir sem þeir geta valið (eða að hunsa borðann). Notandi þarf að velja að hunsa hann."),
        "demoBannerSubtitle":
            MessageLookupByLibrary.simpleMessage("Birtir borða innan lista"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Borði"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Forritastika neðst veitir aðgang að yfirlitsskúffu neðst ásamt allt að fjórum aðgerðum, þ.m.t. fljótandi aðgerðahnappi."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Birtir yfirlit og aðgerðir neðst á skjánum"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Forritastika neðst"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Yfirlitsstikur neðst birta þrjá til fimm áfangastaði neðst á skjánum. Hver áfangastaður er auðkenndur með tákni og valfrjálsu textamerki. Þegar ýtt er á yfirlitstákn neðst fer notandinn á efstu staðsetninguna sem tengist tákninu."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Föst merki"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Valið merki"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Yfirlitssvæði neðst með víxldofnandi yfirliti"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Yfirlit neðst"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Bæta við"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("SÝNA BLAÐ NEÐST"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("Haus"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Gluggablað neðst kemur í stað valmyndar eða glugga og kemur í veg fyrir að notandinn noti aðra hluta forritsins."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Gluggablað neðst"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Fast blað neðst birtir upplýsingar til viðbótar við aðalefni forritsins. Fast blað neðst er sýnilegt þótt notandinn noti aðra hluta forritsins."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Fast blað neðst"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Föst blöð og gluggablöð neðst"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Blað neðst"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Textareitir"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sléttur, upphleyptur, með útlínum og fleira"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Hnappar"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Kort er efnissvæði þar sem tengdar upplýsingar birtast. Þær upplýsingar geta t.d. verið plata, staðsetning, máltíð, samskiptaupplýsingar o.s.frv."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Grunnlínukort með ávölum hornum"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Kort"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Gátlistavalmynd"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Þjappaðar einingar sem tákna inntak, eigind eða aðgerð"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Kubbar"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Valkubbar tákna eitt val úr mengi. Valkubbar innihalda tengdan lýsandi texta eða flokka."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Valkubbur"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Hringlaga stöðuvísir, sem snýst til að tákna að forritið sé upptekið."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Hringlaga stöðuvísir"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Kynningarkóði"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Afritað á klippiborð."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("AFRITA ALLT"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Fastar fyrir liti og litaprufur sem standa fyrir litaspjald nýju útlitshönnunarinnar."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Allir fyrirfram skilgreindu litirnir"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Litir"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Efnisvalmynd"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Aðgerðablað er sérstök gerð af viðvörun sem býður notandanum upp á tvo eða fleiri valkosti sem tengjast núverandi samhengi. Aðgerðablað getur haft titil, viðbótarskilaboð og lista yfir aðgerðir."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Aðgerðablað"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Virknivísir með iOS-stíl sem snýst réttsælis."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("Virknivísar með iOS-stíl"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Aðeins viðvörunarhnappar"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Viðvörun með hnöppum"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Viðvörunargluggi upplýsir notanda um aðstæður sem krefjast staðfestingar. Viðvörunargluggi getur haft titil, efni og lista yfir aðgerðir. Titillinn birtist fyrir ofan efnið og aðgerðirnar birtast fyrir neðan efnið."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Tilkynning"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Tilkynning með titli"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Viðvörunargluggar í iOS-stíl"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Viðvaranir"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Hnappur í iOS-stíl. Hann tekur með sér texta og/eða tákn sem dofnar og verður sterkara þegar hnappurinn er snertur. Getur verið með bakgrunn."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Hnappar með iOS-stíl"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Hnappar"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Yfirlitsstika í iOS-stíl. Yfirlitsstikan er tækjastika sem samanstendur að lágmarki af síðutitli í miðju tækjastikunnar."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("Yfirlitsstika með iOS-stíl"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Dagsetning"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Dagsetning og tími"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Valgræja með iOS-stíl sem hægt er að nota til að velja dagsetningu eða tíma eða bæði dagsetningu og tíma."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dags- og tímaval með iOS-stíl"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Tími"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Teljari"),
        "demoCupertinoPickerTitle": MessageLookupByLibrary.simpleMessage("Val"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Græja sem veitir stýringu með iOS-stíl fyrir valkostinn að draga til að endurnýja efni."),
        "demoCupertinoPullToRefreshSubtitle": MessageLookupByLibrary.simpleMessage(
            "Stýring með iOS-stíl fyrir valkostinn að draga til að endurnýja"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Notað til að velja á milli valkosta sem útiloka hvern annan. Þegar einn valkostur í hlutavali er valinn er ekki lengur hægt að velja hina valkostina."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("Hlutaval með iOS-stíl"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Hægt er að nota sleða til að velja úr samfelldum gildum eða samsettum gildum."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Sleði með iOS-stíl"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Sleði"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Rofi er notaður til að skipta á milli þess að slökkt sé á einni stillingu eða kveikt sé á henni."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Rofi með iOS-stíl"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Neðri flettiflipastika með OS-stíl. Sýnir marga flipa þar sem einn er virkur, sem er sjálfkrafa fyrsti flipinn."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Neðri flipastika með OS-stíl"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Textareitir gera notendum kleift að slá inn texta, annaðhvort með tengdu lyklaborði eða skjályklaborði."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("Textareitir með iOS-stíl"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Sleðar endurspegla gildissvið á stiku þar sem notendur geta valið eitt gildi eða gildissvið. Hægt er að breyta og sérstilla sleðana."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Sérsniðnir sleðar"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Gagnatöflur birta upplýsingar í línum og dálkum sem helst líkjast hnitaneti. Þær skipuleggja upplýsingar á þann hátt að auðvelt er að finna þær og notendur sjá auðveldlega mynstur upplýsinganna."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Línur og dálkar með upplýsingum"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Gagnatöflur"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Sýnir svarglugga sem inniheldur dagsval með nýrri útlitshönnun."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Dagsetningarval"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Einfaldur, tilkynning og allur skjárinn"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Gluggar"),
        "demoDocumentationTooltip": MessageLookupByLibrary.simpleMessage(
            "Upplýsingaskjöl um forritaskil"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Síukubbar nota merki eða lýsandi orð til að sía efni."),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage("Síuflaga"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Sléttur hnappur birtir blekslettu þegar ýtt er á hann en lyftist ekki. Notið slétta hnappa í tækjastikum, gluggum og í línum með fyllingu"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Sléttur hnappur"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Fljótandi aðgerðahnappur er hringlaga táknhnappur sem birtist yfir efni til að kynna aðalaðgerð forritsins."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Fljótandi aðgerðahnappur"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Eiginleikinn fullscreenDialog tilgreinir hvort móttekin síða er gluggi sem birtist á öllum skjánum"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Allur skjárinn"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Allur skjárinn"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Töfluyfirlit henta best fyrir einsleit gögn, yfirleitt myndir. Hvert atriði í töfluyfirlitinu kallast reitur."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Með síðufæti"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Með haus"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Aðeins myndir"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Útlit lína og dálka"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Töfluyfirlit"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Upplýsingar"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Innsláttarkubbar tákna flóknar upplýsingar á borð við einingar (einstakling, stað eða hlut) eða samtalstexta á þjöppuðu sniði."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Innsláttarkubbur"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Ekki var hægt að birta vefslóð:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Línulegur stöðuvísir, einnig þekktur sem framvindustika."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Línulegur stöðuvísir"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Ein lína í fastri hæð sem yfirleitt inniheldur texta og tákn á undan eða á eftir."),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("Aukatexti"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Útlit lista sem flettist"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listar"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Óvirkt valmyndaratriði"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("Atriði með gátlistavalmynd"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("Atriði með efnisvalmynd"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("Atriði með skiptri valmynd"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Atriði með einfaldri valmynd"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Fyrsta atriði efnisvalmyndar"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Þriðja atriði efnisvalmyndar"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Valmynd birtir vallista á yfirborði sem svo hverfur. Listar hverfa þegar notandi velur hnapp, aðgerð eða aðrar stýringar."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Fjögur"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Fá tengil"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Valmyndaratriði eitt"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Valmyndaratriði þrjú"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Valmyndaratriði tvö"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Eitt"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Forskoða"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Fjarlægja"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Deila"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Valmyndarhnappar og einfaldar valmyndir"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Þrjú"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Valmynd"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Tvö"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Ein lína"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Ýttu hér til að sjá valkosti í boði fyrir þessa kynningu."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Skoða valkosti"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Valkostir"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Hnappar með útlínum verða ógagnsæir og lyftast upp þegar ýtt er á þá. Þeir fylgja oft upphleyptum hnöppum til að gefa til kynna aukaaðgerð."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Hnappur með útlínum"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("SÝNA VAL"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Val dags- og tíma"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Val"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Línulegir, hringlaga, óákveðið"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Stöðuvísar"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Upphleyptir hnappar gefa flatri uppsetningu aukna vídd. Þeir undirstrika virkni á stórum svæðum eða þar sem mikið er um að vera."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Upphleyptur hnappur"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Sleðar endurspegla svið gilda á stiku. Þeir kunna að hafa tákn á sitt hvorum endanum sem gefa til kynna gildissvið. Þeir eru hentugir til að breyta stillingum á borð við hljóðstyrk eða birtu eða til að nota myndasíur."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Sviðssleðar"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Hlutavalmynd"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Gátreitir gera notanda kleift að velja marga valkosti úr mengi. Gildi venjulegs gátreits er rétt eða rangt og eitt af gildum gátreits með þrjú gildi getur einnig verið núll."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Gátreitur"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Valhnappar sem gera notandanum kleift að velja einn valkost af nokkrum. Nota ætti valhnappa fyrir einkvæmt val ef þörf er talin á að notandinn þurfi að sjá alla valkosti í einu."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Val"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Gátreitir, valreitir og rofar"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Rofar til að kveikja/slökkva skipta á milli tveggja stillinga. Gera ætti valkostinn sem rofinn stjórnar, sem og stöðu hans, skýran í samsvarandi innskotsmerki."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Rofi"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Valstýringar"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Einfaldur gluggi býður notanda að velja á milli nokkurra valkosta. Einfaldur gluggi getur haft titil sem birtist fyrir ofan valkostina."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Einfalt"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Einföld valmynd"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Samfelldur"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Samfelldur gildissleði með sérstilltu þema"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Samfelldur með breytanlegu númeragildi"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Sleðar endurspegla gildissvið á stiku þar sem notendur geta valið eitt gildi. Þeir eru hentugir til að breyta stillingum á borð við hljóðstyrk eða birtu eða til að nota myndasíur."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Stakrænn"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Stakrænn sleði með sérstilltu þema"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Breytilegt tölugildi"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Græjur til að velja gildi með stroku"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Sleðar"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Þú ýttir á aðgerð snarlbars."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("HASAR"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("SÝNA SNARLBAR"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Snarlbarir gefa notendum upplýsingar um aðgerðir sem eru í gangi í forriti eða sem munu fara í gang. Þeir birtast tímabundið neðarlega á skjánum. Þeir ættu ekki að hafa áhrif á upplifun notandans og hann þarf ekki að bregðast við þeim til að þeir hverfi."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Snarlbarir sýna skilaboð neðst á skjánum"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Þetta er snarlbar."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Snarlbarir"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Flipar raða efni á mismunandi skjái, mismunandi gagnasöfn og önnur samskipti."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Flipar með sjálfstæðu yfirliti sem hægt er að fletta um"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Flipar"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Textareitir gera notendum kleift að slá texta inn í notendaviðmót. Þeir eru yfirleitt á eyðublöðum og í gluggum."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Netfang"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Sláðu inn aðgangsorð."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – sláðu inn bandarískt símanúmer."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Lagaðu rauðar villur með áður en þú sendir."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Fela aðgangsorð"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Hafðu þetta stutt, þetta er einungis sýniútgáfa."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Æviskeið"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Heiti*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Nafn er áskilið."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Ekki fleiri en 8 stafir."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Sláðu aðeins inn bókstafi."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Aðgangsorð*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Aðgangsorðin passa ekki saman"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Símanúmer*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* gefur til kynna áskilinn reit"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Sláðu aðgangsorðið aftur inn*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Laun"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Sýna aðgangsorð"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("SENDA"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ein lína með texta og tölum sem hægt er að breyta"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Segðu okkur frá þér (skrifaðu til dæmis hvað þú vinnur við eða hver áhugmál þín eru)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Textareitir"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Hvað kallar fólk þig?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Hvar getum við náð í þig?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Netfangið þitt"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Sýnir svarglugga sem inniheldur tímaval með nýrri útlitshönnun."),
        "demoTimePickerTitle": MessageLookupByLibrary.simpleMessage("Tímaval"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Hægt er að nota hnappa til að slökkva og kveikja á flokkun tengdra valkosta. Til að leggja áherslu á flokka tengdra hnappa til að slökkva og kveikja ætti flokkur að vera með sameiginlegan geymi"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Hnappar til að slökkva og kveikja"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Ábendingar veita textamerki sem hjálpa til við að útskýra virkni hnapps eða annarrar aðgerðar í viðmóti. Ábendingar birta upplýsingatexta þegar notendur halda bendli yfir einingu, velja hana eða halda inni."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Halda inni eða halda bendli yfir til að birta ábendingu."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Stutt skilaboð sem birtast þegar takka er haldið inni eða bendli yfir"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Ábendingar"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Tvær línur"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Skilgreiningar mismunandi leturstíla sem finna má í nýju útlitshönnuninni."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Allir fyrirframskilgreindir textastílar"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Leturgerð"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Bæta reikningi við"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("SAMÞYKKJA"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("HÆTTA VIÐ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("HAFNA"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("FLEYGJA"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Viltu fleygja drögunum?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Kynningargluggi á öllum skjánum"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("VISTA"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Gluggi á öllum skjánum"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Leyfðu Google að hjálpa forritum að ákvarða staðsetningu. Í þessu felst að senda nafnlaus staðsetningargögn til Google, jafnvel þótt engin forrit séu í gangi."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Nota staðsetningarþjónustu Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Velja afritunarreikning"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("SÝNA GLUGGA"),
        "dismiss": MessageLookupByLibrary.simpleMessage("HUNSA"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("Flokkar"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Myndasafn"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Strönd"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Bronze Works"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Fiskimaður"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Blómamarkaður"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Hádegisverður undirbúinn"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Markaður"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Saltvinnsla"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Létt bifhjól"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("Silk Maker"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Thanjavur-hof"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Bílasparnaður"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Athugar"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Heimilissparnaður"),
        "rallyAccountDataVacation": MessageLookupByLibrary.simpleMessage("Frí"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Reikningseigandi"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Ársávöxtun í prósentum"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Greiddir vextir á síðasta ári"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Vextir"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Vextir á árinu"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Næsta yfirlit"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Samtals"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Reikningar"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Tilkynningar"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Reikningar"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Til greiðslu"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Klæðnaður"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kaffihús"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Matvörur"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Veitingastaðir"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Eftir"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Kostnaðarmörk"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Forrit fyrir fjármál einstaklinga"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("EFTIR"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("SKRÁ INN"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Skrá inn"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Skrá inn í Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Ertu ekki með reikning?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Aðgangsorð"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Muna eftir mér"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("SKRÁ MIG"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Notandanafn"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("SJÁ ALLT"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Sjá alla reikninga"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Sjá alla reikninga"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Sjá allt kostnaðarhámark"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Finna hraðbanka"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Hjálp"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Stjórna reikningum"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Tilkynningar"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Stillingar Paperless"),
        "rallySettingsPasscodeAndTouchId": MessageLookupByLibrary.simpleMessage(
            "Aðgangskóði og snertiauðkenni"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Persónuupplýsingar"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Skrá út"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Skattaskjöl"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("REIKNINGAR"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("REIKNINGAR"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("KOSTNAÐARMÖRK"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("YFIRLIT"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("STILLINGAR"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Um Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Hannað af TOASTER í London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Loka stillingum"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Stillingar"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Dökkt"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Senda ábendingu"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Ljóst"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Tungumálskóði"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Uppbygging kerfis"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("Hægspilun"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Kerfi"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Textastefna"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Vinstri til hægri"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Byggt á staðsetningu"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Hægri til vinstri"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Textastærð"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Risastórt"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Stórt"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Venjulegt"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Lítið"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Þema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Stillingar"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("HÆTTA VIÐ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("HREINSA KÖRFU"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KARFA"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Sending:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Millisamtala:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Skattur:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("SAMTALS"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("AUKABÚNAÐUR"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ALLT"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("FÖT"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("HEIMA"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("Tískulegt verslunarforrit"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Aðgangsorð"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Notandanafn"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("SKRÁ ÚT"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("VALMYND"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ÁFRAM"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Blár steinbolli"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Rauðbleikur bolur með ávölum faldi"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray-munnþurrkur"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambray-skyrta"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klassísk hvít skyrta"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Clay-peysa"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Koparvírarekkki"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Smáröndóttur bolur"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Hálsmen"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby-hattur"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Herrajakki"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Þrjú hliðarborð"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Rauðbrúnn trefill"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Grár, víður hlýrabolur"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs-tesett"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Dökkbláar buxur"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Ljós skokkur"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Ferhyrnt borð"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Regnbakki"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona-axlarpoki"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Strandskokkur"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Þunn prjónapeysa"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Bolur með uppbrettum ermum"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Axlarpoki"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe-keramiksett"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella-sólgleraugu"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut-eyrnalokkar"),
        "shrineProductSucculentPlanters": MessageLookupByLibrary.simpleMessage(
            "Blómapottar fyrir þykkblöðunga"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Sunshirt-kjóll"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surf and perf-skyrta"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond-taska"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Sokkar með röndum"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (hvítur)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Ofin lyklakippa"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Hvít teinótt skyrta"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney belti"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Setja í körfu"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Loka körfu"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Loka valmynd"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Opna valmynd"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Fjarlægja atriði"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Leita"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Stillingar"),
        "signIn": MessageLookupByLibrary.simpleMessage("SKRÁ INN"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Hraðvirkt upphafsútlit"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Meginmál"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("HNAPPUR"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Fyrirsögn"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Undirtitill"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Titill"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("Ræsiforrit"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Bæta við"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Eftirlæti"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Leita"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Deila")
      };
}
