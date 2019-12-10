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

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Engir veitingastaðir', one: '1 veitingastaður', other: '${totalRestaurants} veitingastaðir')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Engar millilendingar', one: 'Ein millilending', other: '${numberOfStops} millilendingar')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Engar tiltækar eignir', one: '1 tiltæk eign', other: '${totalProperties} tiltækar eignir')}";

  static m5(value) => "Vara ${value}";

  static m6(error) => "Ekki tókst að afrita á klippiborð: ${error}";

  static m7(name, phoneNumber) => "Símanúmer ${name} er ${phoneNumber}";

  static m8(value) => "Þú valdir: „${value}“";

  static m9(accountName, accountNumber, amount) =>
      "${accountName}, reikningur ${accountNumber}, að upphæð ${amount}.";

  static m10(amount) => "Þú hefur eytt ${amount} í hraðbankagjöld í mánuðinum";

  static m11(percent) =>
      "Vel gert! Þú átt ${percent} meira inni á veltureikningnum þínum en í síðasta mánuði.";

  static m12(percent) =>
      "Athugaðu að þú ert búin(n) með ${percent} af kostnaðarhámarki mánaðarins.";

  static m13(amount) => "Þú hefur eytt ${amount} á veitingastöðum í vikunni.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Auktu hugsanlegan frádrátt frá skatti! Úthluta flokkum á 1 óúthlutaða færslu.', other: 'Auktu hugsanlegan frádrátt frá skatti! Úthluta flokkum á ${count} óúthlutaðar færslur.')}";

  static m15(billName, date, amount) =>
      "${billName}, gjalddagi ${date}, að upphæð ${amount}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} kostnaðarhámark þar sem ${amountUsed} er notað af ${amountTotal} og ${amountLeft} er eftir";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'ENGIN ATRIÐI', one: '1 ATRIÐI', other: '${quantity} ATRIÐI')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Magn: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Karfa, engir hlutir', one: 'Karfa, 1 hlutur', other: 'Karfa, ${quantity} hlutir')}";

  static m21(product) => "Fjarlægja ${product}";

  static m22(value) => "Vara ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter-sýnishorn í Github-geymslu"),
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
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Skoða veitingastaði eftir áfangastað"),
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
        "craneFlyStops": m3,
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
        "craneSleepProperties": m4,
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
        "demoBottomSheetItem": m5,
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
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Þjappaðar einingar sem tákna inntak, eigind eða aðgerð"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Kubbar"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Valkubbar tákna eitt val úr mengi. Valkubbar innihalda tengdan lýsandi texta eða flokka."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Valkubbur"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Kóðasýnishorn"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Afritað á klippiborð."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("AFRITA ALLT"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Fastar fyrir liti og litaprufur sem standa fyrir litaspjald nýju útlitshönnunarinnar."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Allir fyrirfram skilgreindu litirnir"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Litir"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Aðgerðablað er sérstök gerð af viðvörun sem býður notandanum upp á tvo eða fleiri valkosti sem tengjast núverandi samhengi. Aðgerðablað getur haft titil, viðbótarskilaboð og lista yfir aðgerðir."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Aðgerðablað"),
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
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Notað til að velja á milli valkosta sem útiloka hvern annan. Þegar einn valkostur í hlutavali er valinn er ekki lengur hægt að velja hina valkostina."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("Hlutaval með iOS-stíl"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Hlutaval"),
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
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Upplýsingar"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Innsláttarkubbar tákna flóknar upplýsingar á borð við einingar (einstakling, stað eða hlut) eða samtalstexta á þjöppuðu sniði."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Innsláttarkubbur"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Ekki var hægt að birta vefslóð:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Ein lína í fastri hæð sem yfirleitt inniheldur texta og tákn á undan eða á eftir."),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("Aukatexti"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Útlit lista sem flettist"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listar"),
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
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Upphleyptir hnappar gefa flatri uppsetningu aukna vídd. Þeir undirstrika virkni á stórum svæðum eða þar sem mikið er um að vera."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Upphleyptur hnappur"),
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
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Flipar raða efni á mismunandi skjái, mismunandi gagnasöfn og önnur samskipti."),
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
        "demoTextFieldNameHasPhoneNumber": m7,
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
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Hægt er að nota hnappa til að slökkva og kveikja á flokkun tengdra valkosta. Til að leggja áherslu á flokka tengdra hnappa til að slökkva og kveikja ætti flokkur að vera með sameiginlegan geymi"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Hnappar til að slökkva og kveikja"),
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
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Velja afritunarreikning"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("SÝNA GLUGGA"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("TILVÍSUNARSTÍLAR OG EFNI"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("Flokkar"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Myndasafn"),
        "rallyAccountAmount": m9,
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
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Reikningar"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Til greiðslu"),
        "rallyBudgetAmount": m16,
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
        "shrineCartItemCount": m17,
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
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
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
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Setja í körfu"),
        "shrineScreenReaderRemoveProductButton": m21,
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
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Hraðvirkt upphafsútlit"),
        "starterAppDrawerItem": m22,
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
