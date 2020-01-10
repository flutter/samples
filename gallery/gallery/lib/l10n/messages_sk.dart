// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sk locale. All the
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
  String get localeName => 'sk';

  static m0(value) =>
      "Ak si chcete zobraziť zdrojový kód tejto aplikácie, navštívte ${value}.";

  static m1(title) => "Zástupný symbol pre kartu ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Žiadne reštaurácie', one: '1 reštaurácia', few: '${totalRestaurants} reštaurácie', many: '${totalRestaurants} Restaurants', other: '${totalRestaurants} reštaurácií')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Priamy let', one: '1 medzipristátie', few: '${numberOfStops} medzipristátia', many: '${numberOfStops} stops', other: '${numberOfStops} medzipristátí')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Žiadne dostupné objekty', one: '1 dostupný objekt', few: '${totalProperties} dostupné objekty', many: '${totalProperties} Available Properties', other: '${totalProperties} dostupných objektov')}";

  static m5(value) => "Položka ${value}";

  static m6(error) => "Kopírovanie do schránky sa nepodarilo: ${error}";

  static m7(value) => "Súvislá: ${value}";

  static m8(value) => "Nesúvislá: ${value}";

  static m9(name, phoneNumber) =>
      "Telefónne číslo používateľa ${name} je ${phoneNumber}";

  static m10(value) => "Vybrali ste: ${value}";

  static m11(accountName, accountNumber, amount) =>
      "Účet ${accountName} ${accountNumber} má zostatok ${amount}.";

  static m12(amount) =>
      "Tento mesiac ste minuli ${amount} na poplatky v bankomatoch";

  static m13(percent) =>
      "Dobrá práca. Zostatok na vašom bežnom účte je oproti minulému mesiacu o ${percent} vyšší.";

  static m14(percent) =>
      "Upozorňujeme, že ste minuli ${percent} rozpočtu v Nákupoch na tento mesiac.";

  static m15(amount) => "Tento týždeň ste minuli ${amount} v reštauráciách.";

  static m16(count) =>
      "${Intl.plural(count, one: 'Zvýšte svoj potenciálny odpočet dane. Prideľte kategórie 1 nepridelenej transakcii.', few: 'Zvýšte svoj potenciálny odpočet dane. Prideľte kategórie ${count} neprideleným transakciám.', many: 'Zvýšte svoj potenciálny odpočet dane. Assign categories to ${count} unassigned transactions.', other: 'Zvýšte svoj potenciálny odpočet dane. Prideľte kategórie ${count} neprideleným transakciám.')}";

  static m17(billName, date, amount) =>
      "Termín splatnosti faktúry za ${billName} vo výške ${amount} je ${date}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Rozpočet ${budgetName} s minutou sumou ${amountUsed} z ${amountTotal} a zostatkom ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'ŽIADNE POLOŽKY', one: '1 POLOŽKA', few: '${quantity} POLOŽKY', many: '${quantity} POLOŽKY', other: '${quantity} POLOŽIEK')}";

  static m20(price) => "× ${price}";

  static m21(quantity) => "Množstvo: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Nákupný košík, žiadne položky', one: 'Nákupný košík, 1 položka', few: 'Nákupný košík, ${quantity} položky', many: 'Shopping cart, ${quantity} items', other: 'Nákupný košík, ${quantity} položiek')}";

  static m23(product) => "Odstrániť výrobok ${product}";

  static m24(value) => "Položka ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Odkladací priestor GitHub na ukážky Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Späť do služby Gallery"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Účet"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Budík"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendár"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Fotoaparát"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komentáre"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("TLAČIDLO"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Vytvoriť"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Cyklistika"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Výťah"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Krb"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Veľké"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Stredné"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Malé"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Zapnúť svetlá"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Práčka"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ŽLTOHNEDÁ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("MODRÁ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("MODROSIVÁ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("HNEDÁ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("TYRKYSOVÁ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TMAVOORANŽOVÁ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("TMAVOFIALOVÁ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ZELENÁ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("SIVÁ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGOVÁ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("SVETLOMODRÁ"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("SVETLOZELENÁ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ŽLTOZELENÁ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANŽOVÁ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("RUŽOVÁ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("FIALOVÁ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ČERVENÁ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("MODROZELENÁ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ŽLTÁ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Prispôsobená cestovná aplikácia"),
        "craneEat": MessageLookupByLibrary.simpleMessage("JEDLO"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapol, Taliansko"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza v peci na drevo"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, USA"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalsko"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Žena s obrovským pastrami sendvičom"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Prázdny bar so stoličkami v bufetovom štýle"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentína"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburger"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portland, USA"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kórejské taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paríž, Francúzsko"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Čokoládový dezert"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Soul, Južná Kórea"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Priestor na sedenie v umeleckej reštaurácii"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Seattle, USA"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pokrm z kreviet"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Nashville, USA"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Vstup do pekárne"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, USA"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tanier s rakmi"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Španielsko"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kaviarenský pult s múčnikmi"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Prieskum reštaurácií podľa cieľa"),
        "craneFly": MessageLookupByLibrary.simpleMessage("LETY"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chata v zasneženej krajine s ihličnatými stromami"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Káhira, Egypt"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Veže mešity Al-Azhar pri západe slnka"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalsko"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tehlový maják pri mori"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazén s palmami"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonézia"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazén pri mori s palmami"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Stan na poli"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Dolina Khumbu, Nepál"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Modlitebné vlajky so zasneženou horou v pozadí"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Citadela Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldivy"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalovy nad vodou"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("Vitznau, Švajčiarsko"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel na brehu jazera s horami v pozadí"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexiko (mesto), Mexiko"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Letecký pohľad na palác Palacio de Bellas Artes"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore, USA"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Háj superstromov"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Muž opierajúci sa o starodávne modré auto"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Prieskum letov podľa cieľa"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Vyberte dátum"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Vyberte dátumy"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Vyberte cieľ"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Reštaurácie"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Vyberte miesto"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Vyberte východiskové miesto"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Vyberte čas"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Cestujúci"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("REŽIM SPÁNKU"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldivy"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalovy nad vodou"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, USA"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Káhira, Egypt"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Veže mešity Al-Azhar pri západe slnka"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("Tchaj-pej, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mrakodrap Tchaj-pej 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chata v zasneženej krajine s ihličnatými stromami"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Citadela Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Muž opierajúci sa o starodávne modré auto"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitznau, Švajčiarsko"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel na brehu jazera s horami v pozadí"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Big Sur, USA"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Stan na poli"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, USA"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazén s palmami"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugalsko"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pestrofarebné byty na námestí Riberia"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexiko"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mayské ruiny na útese nad plážou"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalsko"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tehlový maják pri mori"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Prieskum objektov podľa cieľa"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Povoliť"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Jablkový koláč"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Zrušiť"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Tvarohový koláč"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Čokoládový koláč"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Vyberte si v zozname nižšie svoj obľúbený typ dezertu. Na základe vášho výberu sa prispôsobí zoznam navrhovaných reštaurácií vo vašom okolí."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Zahodiť"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Nepovoliť"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Výber obľúbeného dezertu"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Vaša aktuálna poloha sa zobrazí na mape a budú sa pomocou nej vyhľadávať trasy, výsledky vyhľadávania v okolí a odhadované časy cesty."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Chcete povoliť Mapám prístup k vašej polohe, keď túto aplikáciu používate?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Tlačidlo"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("S pozadím"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Zobraziť upozornenie"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Čet"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Domov"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky akcie sú skupina možností spúšťajúcich akcie súvisiace s hlavným obsahom. V používateľskom rozhraní by sa mali zobrazovať dynamicky a v kontexte."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvok akcie"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Dialógové okno upozornenia informuje používateľa o situáciách, ktoré vyžadujú potvrdenie. Má voliteľný názov a voliteľný zoznam akcií."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Upozornenie"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Upozornenie s názvom"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Dolné navigačné panely zobrazujú v dolnej časti obrazovky tri až päť cieľov. Každý cieľ prestavuje ikona a nepovinný textový štítok. Používateľ, ktorý klepne na ikonu dolnej navigácie, prejde do cieľa navigácie najvyššej úrovne, ktorá je s touto ikonou spojená."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Trvalé štítky"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Vybraný štítok"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dolná navigácia s prelínajúcimi sa zobrazeniami"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Dolná navigácia"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Pridať"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ZOBRAZIŤ DOLNÝ HÁROK"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Hlavička"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modálny dolný hárok je alternatíva k ponuke alebo dialógovému oknu. Bráni používateľovi interagovať so zvyškom aplikácie."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modálny dolný hárok"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Trvalý dolný hárok zobrazuje informácie doplňujúce hlavný obsah aplikácie. Zobrazuje sa neustále, aj keď používateľ interaguje s inými časťami aplikácie."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Trvalý dolný hárok"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Trvalé a modálne dolné hárky"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Dolný hárok"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ploché, zvýšené, s obrysom a ďalšie"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Tlačidlá"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompaktné prvky predstavujúce vstup, atribút alebo akciu"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Prvky"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky výberu predstavujú jednotlivé možnosti z určitej skupiny. Obsahujú súvisiaci popisný text alebo kategórie."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvok výberu"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Ukážka kódu"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Skopírované do schránky."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPÍROVAŤ VŠETKO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Konštantné farby a vzorka farieb, ktoré predstavujú paletu farieb vzhľadu Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Všetky vopred definované farby"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Farby"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Hárok s akciami je špecifický štýl upozornenia ponúkajúceho používateľovi dve alebo viac možností, ktoré sa týkajú aktuálneho kontextu. Má názov, dodatočnú správu a zoznam akcií."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Hárok s akciami"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Iba tlačidlá upozornení"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Upozornenie s tlačidlami"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Dialógové okno upozornenia informuje používateľa o situáciách, ktoré vyžadujú potvrdenie. Dialógové okno upozornenia má voliteľný názov, obsah aj zoznam akcií. Názov sa zobrazuje nad obsahom a akcie pod obsahom."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Upozornenie"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Upozornenie s názvom"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dialógové okná upozornení v štýle systému iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Upozornenia"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Tlačidlo v štýle systému iOS. Zahŕňa text a ikonu, ktorá sa po dotyku stmaví alebo vybledne. Voliteľne môže mať aj pozadie."),
        "demoCupertinoButtonsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tlačidlá v štýle systému iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Tlačidlá"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Pomocou tejto funkcie môžete vyberať medzi viacerými navzájom sa vylučujúcimi možnosťami. Po vybraní jednej možnosti v segmentovanom ovládaní sa výber ostatných zruší."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Segmentované ovládanie v štýle systému iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmentované ovládanie"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Posúvačom je možné vyberať hodnoty zo súvislej aj nesúvislej skupiny."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Posúvač v štýle systému iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Posúvač"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Prepínačom je možné prepínať stav zapnuté alebo vypnuté pre jedno nastavenie."),
        "demoCupertinoSwitchSubtitle": MessageLookupByLibrary.simpleMessage(
            "Prepínač v štýle systému iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Spodný navigačný panel kariet v štýle systému iOS. Zobrazuje viacero kariet, z ktorých je jedna aktívna. Predvolene je to prvá karta."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Spodný panel kariet v štýle systému iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Panel kariet"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jednoduché, upozornenie a celá obrazovka"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Dialógové okná"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Dokumentácia rozhraní API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky filtra odfiltrujú obsah pomocou značiek alebo popisných slov."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvok filtra"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ploché tlačidlo po stlačení zobrazí atramentovú škvrnu, ale nezvýši sa. Používajte ploché tlačidlá v paneloch s nástrojmi, dialógových oknách a texte s odsadením"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ploché tlačidlo"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Plávajúce tlačidlo akcie je okrúhla ikona vznášajúca sa nad obsahom propagujúca primárnu akciu v aplikácii."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Plávajúce tlačidlo akcie"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Hodnota fullscreenDialog určuje, či je prichádzajúca stránka modálne dialógové okno na celú obrazovku"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Celá obrazovka"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Celá obrazovka"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informácie"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Prvky vstupu sú komplexné informácie, napríklad subjekt (osoba, miesto, vec) alebo text konverzácie, uvedené v kompaktnej podobe."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Prvok vstupu"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Webovú adresu sa nepodarilo zobraziť:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Jeden riadok s pevnou výškou, ktorý obvykle obsahuje text a ikonu na začiatku alebo na konci."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekundárny text"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rozloženia posúvacích zoznamov"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Zoznamy"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Jeden riadok"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Klepnutím sem zobrazíte dostupné možnosti pre túto ukážku."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Zobraziť možnosti"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Možnosti"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Tlačidlá s obrysom sa po stlačení zmenia na nepriehľadné a zvýšia sa. Často sú spárované so zvýšenými tlačidlami na označenie alternatívnej sekundárnej akcie."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Tlačidlo s obrysom"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Zvýšené tlačidlá pridávajú rozmery do prevažne plochých rozložení. Zvýrazňujú funkcie v neprehľadných alebo širokých priestoroch."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Zvýšené tlačidlo"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Začiarkavacie políčka umožňujú používateľovi vybrať viacero možností zo skupiny možností. Hodnota bežného začiarkavacieho políčka je pravda alebo nepravda. Hodnota začiarkavacieho políčka s troma stavmi môže byť tiež nulová."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Začiarkavacie políčko"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Prepínače umožňujú používateľovi vybrať jednu položku zo skupiny možností. Prepínače použite na výhradný výber, ak sa domnievate, že používateľ by mal vidieť všetky dostupné možnosti vedľa seba."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Prepínač"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Začiarkavacie políčka a prepínače"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Prepínače na zapnutie alebo vypnutie stavu jednej možnosti nastavení. Príslušná možnosť, ktorú prepínač ovláda, ako aj stav, v ktorom sa nachádza, by mali jasne vyplývať zo zodpovedajúceho vloženého štítka."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Prepínač"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Ovládacie prvky výberu"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Jednoduché dialógové okno poskytuje používateľovi výber medzi viacerými možnosťami. Má voliteľný názov, ktorý sa zobrazuje nad možnosťami."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Jednoduché"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Stlačili ste tlačidlo akcie oznámenia."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("AKCIA"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ZOBRAZIŤ OZNÁMENIE"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Oznámenia informujú používateľov o procese, ktorý aplikácia vykonáva alebo bude vykonávať. Zobrazujú sa dočasne v dolnej časti obrazovky. Nemali by rušiť dojem používateľov a na zrušenie ich zobrazovania nie je zo strany používateľa potrebná žiadna akcia."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Oznámenia zobrazujú správy v dolnej časti obrazovky"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Toto je oznámenie."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Oznámenia"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Karty usporiadajú obsah z rôznych obrazoviek, množín údajov a ďalších interakcií."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Karty so samostatne posúvateľnými zobrazeniami"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Karty"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Textové polia umožňujú používateľom zadávať text do používateľského rozhrania. Zvyčajne sa nachádzajú vo formulároch a dialógových oknách."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E‑mail"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Zadajte heslo."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – Zadajte telefónne číslo v USA."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Pred odoslaním odstráňte chyby označené červenou."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Skryť heslo"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Napíšte stručný text. Toto je iba ukážka."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biografia"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Názov*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Meno je povinné."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Maximálne 8 znakov."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Zadajte iba abecedné znaky."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Heslo*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Heslá sa nezhodujú"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Telefónne číslo*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* Označuje povinné pole."),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Znovu zadajte heslo*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Plat"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Zobraziť heslo"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ODOSLAŤ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jeden riadok upraviteľného textu a čísel"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Povedzte nám o sebe (napíšte napríklad, kde pracujete alebo aké máte záľuby)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Textové polia"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "V súvislosti s čím vám ľudia volajú?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Na akom čísle sa môžeme s vami spojiť?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Vaša e‑mailová adresa"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Pomocou prepínačov môžete zoskupiť súvisiace možnosti. Skupina by mala zdieľať spoločný kontajner na zvýraznenie skupín súvisiacich prepínačov"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Prepínače"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dva riadky"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definície rôznych typografických štýlov vo vzhľade Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Všetky preddefinované štýly textu"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Typografia"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Pridať účet"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("SÚHLASÍM"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ZRUŠIŤ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NESÚHLASÍM"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ZAHODIŤ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Chcete zahodiť koncept?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Ukážka dialógového okna na celú obrazovku"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ULOŽIŤ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Dialógové okno na celú obrazovku"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Povoľte, aby mohol Google pomáhať aplikáciám určovať polohu. Znamená to, že do Googlu budú odosielané anonymné údaje o polohe, aj keď nebudú spustené žiadne aplikácie."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Chcete použiť službu určovania polohy od Googlu?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Nastavenie zálohovacieho účtu"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ZOBRAZIŤ DIALÓGOVÉ OKNO"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("REFERENČNÉ ŠTÝLY A MÉDIÁ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategórie"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galéria"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Úspory na auto"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Bežný"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Úspory na dom"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Dovolenka"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Vlastník účtu"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Ročný percentuálny výnos"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Úroky zaplatené minulý rok"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Úroková sadzba"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Úrok od začiatku roka dodnes"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Ďalší výpis"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Celkove"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Účty"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Upozornenia"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Faktúry"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Termín"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Oblečenie"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kaviarne"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Potraviny"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Reštaurácie"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Zostatok:"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Rozpočty"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Osobná finančná aplikácia"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ZOSTATOK:"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("PRIHLÁSIŤ SA"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Prihlásiť sa"),
        "rallyLoginLoginToRally": MessageLookupByLibrary.simpleMessage(
            "Prihlásenie do aplikácie Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Nemáte účet?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Heslo"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Zapamätať si ma"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("REGISTROVAŤ SA"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Používateľské meno"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ZOBRAZIŤ VŠETKO"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Zobraziť všetky účty"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Zobraziť všetky faktúry"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Zobraziť všetky rozpočty"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Nájsť bankomaty"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Pomocník"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Spravovať účty"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Upozornenia"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Nastavenia bez papiera"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Vstupný kód a Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Osobné údaje"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Odhlásiť sa"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Daňové dokumenty"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ÚČTY"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FAKTÚRY"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ROZPOČTY"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("PREHĽAD"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("NASTAVENIA"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Navrhol TOASTER v Londýne"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Zavrieť nastavenia"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Nastavenia"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Tmavý"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Odoslať spätnú väzbu"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Svetlý"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Miestne nastavenie"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mechanika platformy"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Spomalenie"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Systém"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Smer textu"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("Ľ-P"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Na základe miestneho nastavenia"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("P-Ľ"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Mierka písma"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Veľmi veľké"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Veľké"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normálna"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Malé"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Motív"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Nastavenia"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ZRUŠIŤ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("VYMAZAŤ KOŠÍK"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KOŠÍK"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Dopravné:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Medzisúčet:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Daň:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("CELKOVE"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("DOPLNKY"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("VŠETKO"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("OBLEČENIE"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("DOMÁCNOSŤ"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("Módna predajná aplikácia"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Heslo"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Používateľské meno"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ODHLÁSIŤ SA"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("PONUKA"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ĎALEJ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Modrý keramický pohár"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Tričko s lemom Cerise"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Obrúsky Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Košeľa Chambray"),
        "shrineProductClassicWhiteCollar": MessageLookupByLibrary.simpleMessage(
            "Klasická košeľa s bielym límcom"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Terakotový sveter"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Medený drôtený stojan"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Tričko s tenkými pásikmi"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Záhradný pás"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Klobúk Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Kabátik"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Trio pozlátených stolíkov"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Zázvorový šál"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Sivé tielko"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Čajová súprava Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kuchynská skrinka"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Námornícke nohavice"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tunika"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Štvorcový stôl"),
        "shrineProductRainwaterTray": MessageLookupByLibrary.simpleMessage(
            "Zberná nádoba na dažďovú vodu"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Prechodné šaty Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Plážová tunika"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Sveter na chladný vánok"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Tričko na plecia"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Kabelka na plece"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Keramická súprava Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Slnečné okuliare Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Náušnice Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Sukulenty"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Slnečné šaty"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surferské tričko"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Taška Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Ponožky Varsity"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Tričko bez límca so zapínaním Walter (biele)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Kľúčenka Weave"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Biela pásiková košeľa"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Opasok Whitney"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Pridať do košíka"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Zavrieť košík"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Zavrieť ponuku"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Otvoriť ponuku"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Odstrániť položku"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Hľadať"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Nastavenia"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Responzívne rozloženie štartovacej aplikácie"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Obsahová časť"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("TLAČIDLO"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Nadpis"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Podnadpis"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Názov"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Štartovacia aplikácia"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Pridať"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Zaradiť medzi obľúbené"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Hľadať"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Zdieľať")
      };
}
