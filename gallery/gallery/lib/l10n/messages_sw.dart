// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sw locale. All the
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
  String get localeName => 'sw';

  static m0(value) =>
      "Ili uangalie msimbo wa programu hii, tafadhali tembelea ${value}.";

  static m1(title) => "Kishikilia nafasi cha kichupo cha ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Hakuna Mikahawa', one: 'Mkahawa 1', other: 'Mikahawa ${totalRestaurants}')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Moja kwa moja', one: 'Kituo 1', other: 'Vituo ${numberOfStops}')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Hakuna Mali Inayopatikana', one: 'Mali 1 Inayopatikana', other: 'Mali ${totalProperties} Zinazopatikana')}";

  static m5(value) => "Bidhaa ya ${value}";

  static m6(error) => "Imeshindwa kuyaweka kwenye ubao wa kunakili: ${error}";

  static m7(value) => "Endelevu: ${value}";

  static m8(value) => "Zenye kikomo: ${value}";

  static m9(name, phoneNumber) =>
      "Nambari ya simu ya ${name} ni ${phoneNumber}";

  static m10(value) => "Umechagua: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "Akaunti ya ${accountName} ${accountNumber} iliyo na ${amount}.";

  static m12(amount) => "Umetumia ${amount} katika ada za ATM mwezi huu";

  static m13(percent) =>
      "Kazi nzuri! Kiwango cha akaunti yako ya hundi kimezidi cha mwezi uliopita kwa ${percent}.";

  static m14(percent) =>
      "Arifa: umetumia ${percent} ya bajeti yako ya Ununuzi kwa mwezi huu.";

  static m15(amount) => "Umetumia ${amount} kwenye Mikahawa wiki hii.";

  static m16(count) =>
      "${Intl.plural(count, one: 'Ongeza kiwango cha kodi unayoweza kupunguziwa! Weka aina kwenye muamala 1 ambao hauna aina.', other: 'Ongeza kiwango cha kodi unayoweza kupunguziwa! Weka aina kwenye miamala ${count} ambayo haina aina.')}";

  static m17(billName, date, amount) =>
      "Bili ya ${amount} ya ${billName} inapaswa kulipwa ${date}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Bajeti ya ${budgetName} yenye ${amountUsed} ambazo zimetumika kati ya ${amountTotal}, zimesalia ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'HAKUNA BIDHAA', one: 'BIDHAA 1', other: 'BIDHAA ${quantity}')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "Kiasi: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Kikapu, hakuna bidhaa', one: 'Kikapu, bidhaa 1', other: 'Kikapu, bidhaa ${quantity}')}";

  static m23(product) => "Ondoa ${product}";

  static m24(value) => "Bidhaa ya ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Hifadhi ya GitHub ya sampuli za Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Rudi kwenye Gallery"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Akaunti"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Kengele"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalenda"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Maoni"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("KITUFE"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Fungua"),
        "chipBiking":
            MessageLookupByLibrary.simpleMessage("Kuendesha baiskeli"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lifti"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Mekoni"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Kubwa"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Wastani"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Ndogo"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("Washa taa"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Mashine ya kufua nguo"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("KAHARABU"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("SAMAWATI"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("SAMAWATI YA KIJIVU"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("HUDHURUNGI"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("SAMAWATI-KIJANI"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage(
            "RANGI YA MACHUNGWA ILIYOKOLEA"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ZAMBARAU ILIYOKOLEA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("KIJANI"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("KIJIVU"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("NILI"),
        "colorsLightBlue":
            MessageLookupByLibrary.simpleMessage("SAMAWATI ISIYOKOLEA"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("KIJANI KISICHOKOLEA"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("RANGI YA NDIMU"),
        "colorsOrange":
            MessageLookupByLibrary.simpleMessage("RANGI YA MACHUNGWA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("WARIDI"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ZAMBARAU"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("NYEKUNDU"),
        "colorsTeal":
            MessageLookupByLibrary.simpleMessage("SAMAWATI YA KIJANI"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("MANJANO"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Programu ya usafiri iliyogeuzwa kukufaa"),
        "craneEat": MessageLookupByLibrary.simpleMessage("KULA"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Naples, Italia"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piza ndani ya tanuri la kuni"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, Marekani"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisbon, Ureno"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mwanamke aliyeshika sandiwichi kubwa ya pastrami"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Baa tupu yenye stuli za muundo wa behewa"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Ajentina"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("Baga"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Portland, Marekani"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco ya Kikorea"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, Ufaransa"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kitindamlo cha chokoleti"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seoul, Korea Kusini"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Eneo la kukaa la mkahawa wa kisanii"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Seattle, Marekani"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Chakula cha uduvi"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Marekani"),
        "craneEat7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mlango wa kuingia katika tanuri mikate"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Atlanta, Marekani"),
        "craneEat8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sahani ya kamba wa maji baridi"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Uhispania"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kaunta ya mkahawa yenye vitobosha"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Gundua Mikahawa kwa Kutumia Vituo"),
        "craneFly": MessageLookupByLibrary.simpleMessage("RUKA"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, Marekani"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Nyumba ndogo ya kupumzika katika mandhari ya theluji yenye miti ya kijani kibichi"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Big Sur, Marekani"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kairo, Misri"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minara ya Msikiti wa Al-Azhar wakati wa machweo"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisbon, Ureno"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mnara wa taa wa matofali baharini"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, Marekani"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bwawa lenye michikichi"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bwawa lenye michikichi kando ya bahari"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hema katika uwanja"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Bonde la Khumbu, NepalI"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bendera za maombi mbele ya mlima uliofunikwa kwa theluji"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peruu"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ngome ya Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Nyumba zisizo na ghorofa zilizojengwa juu ya maji"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Uswisi"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hoteli kando ya ziwa na mbele ya milima"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Jiji la Meksiko, Meksiko"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mwonekeno wa juu wa Palacio de Bellas Artes"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore, Marekani"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mlima Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapoo"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Kijisitu cha Supertree"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mwanaume aliyeegemea gari la kale la samawati"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Gundua Ndege kwa Kutumia Vituo"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Chagua Tarehe"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Chagua Tarehe"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Chagua Unakoenda"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Migahawa"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Chagua Eneo"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("Chagua Asili"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Chagua Wakati"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Wasafiri"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("HALI TULI"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneSleep0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Nyumba zisizo na ghorofa zilizojengwa juu ya maji"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Aspen, Marekani"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kairo, Misri"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minara ya Msikiti wa Al-Azhar wakati wa machweo"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwani"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maghorofa ya Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Nyumba ndogo ya kupumzika katika mandhari ya theluji yenye miti ya kijani kibichi"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peruu"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ngome ya Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mwanaume aliyeegemea gari la kale la samawati"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Uswisi"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hoteli kando ya ziwa na mbele ya milima"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Marekani"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hema katika uwanja"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, Marekani"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bwawa lenye michikichi"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Ureno"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Nyumba maridadi katika Mraba wa Riberia"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksiko"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Magofu ya Maya kwenye jabali juu ya ufuo"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisbon, Ureno"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mnara wa taa wa matofali baharini"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Gundua Mali kwa Kutumia Vituo"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Ruhusu"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Mkate wa Tufaha"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Ghairi"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Keki ya jibini"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Keki ya Chokoleti"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Tafadhali chagua aina unayoipenda ya kitindamlo kwenye orodha iliyo hapa chini. Uteuzi wako utatumiwa kuweka mapendeleo kwenye orodha iliyopendekezwa ya mikahawa katika eneo lako."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Ondoa"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Usiruhusu"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Chagua Kitindamlo Unachopenda"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Mahali ulipo sasa pataonyeshwa kwenye ramani na kutumiwa kwa maelekezo, matokeo ya utafutaji wa karibu na muda uliokadiriwa wa kusafiri."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Ungependa kuruhusu \"Ramani\" zifikie maelezo ya mahali ulipo unapotumia programu?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Kitufe"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Na Mandharinyuma"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Onyesha Arifa"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Piga gumzo"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Skrini ya kwanza"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Wasifu"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Chipu za kutenda ni seti ya chaguo zinazosababisha kitendo kinachohusiana na maudhui ya msingi. Chipu za kutenda zinafaa kuonekana kwa urahisi na kwa utaratibu katika kiolesura."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Chipu ya Kutenda"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Kidirisha cha arifa humjulisha mtumiaji kuhusu hali zinazohitaji uthibitisho. Kidirisha cha arifa kina kichwa kisicho cha lazima na orodha isiyo ya lazima ya vitendo."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Arifa"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Arifa Yenye Jina"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Sehemu za chini za viungo muhimu huonyesha vituo vitatu hadi vitano katika sehemu ya chini ya skrini. Kila kituo kinawakilishwa na aikoni na lebo ya maandishi isiyo ya lazima. Aikoni ya usogezaji ya chini inapoguswa, mtumiaji hupelekwa kwenye kituo cha usogezaji cha kiwango cha juu kinachohusiana na aikoni hiyo."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Lebo endelevu"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Lebo iliyochaguliwa"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Usogezaji katika sehemu ya chini na mwonekano unaofifia kwa kupishana"),
        "demoBottomNavigationTitle": MessageLookupByLibrary.simpleMessage(
            "Usogezaji katika sehemu ya chini"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Ongeza"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ONYESHA LAHA YA CHINI"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Kijajuu"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Laha ya kawaida ya chini ni mbadala wa menyu au kidirisha na humzuia mtumiaji kutumia sehemu inayosalia ya programu."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Laha ya kawaida ya chini"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Laha endelevu ya chini huonyesha maelezo yanayojaliza maudhui ya msingi ya programu. Laha endelevu ya chini huendelea kuonekana hata wakati mtumiaji anatumia sehemu zingine za programu."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Laha endelevu ya chini"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Laha za kawaida na endelevu za chini"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Laha ya chini"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Sehemu za maandishi"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bapa, iliyoinuliwa, mpaka wa mstari na zaidi"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Vitufe"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Vipengee vilivyoshikamana vinavyowakilisha ingizo, sifa au kitendo"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chipu"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Chipu za kuchagua zinawakilisha chaguo moja kwenye seti. Chipu za kuchagua zina aina au maandishi ya ufafanuzi yanayohusiana."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Chipu ya Kuchagua"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Sampuli ya Msimbo"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Imewekwa kwenye ubao wa kunakili."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("NAKILI YOTE"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Rangi na seti ya rangi isiyobadilika ambayo inawakilisha safu ya rangi ya Usanifu Bora."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rangi zote zilizobainishwa mapema"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Rangi"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Laha ya kutenda ni muundo mahususi wa arifa unaompa mtumiaji seti ya chaguo mbili au zaidi zinazohusiana na muktadha wa sasa. Laha ya kutenda inaweza kuwa na kichwa, ujumbe wa ziada na orodha ya vitendo."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Laha la Kutenda"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Vitufe vya Arifa Pekee"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Arifa Zenye Vitufe"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Kidirisha cha arifa humjulisha mtumiaji kuhusu hali zinazohitaji uthibitisho. Kidirisha cha arifa kina kichwa kisicho cha lazima, maudhui yasiyo ya lazima na orodha isiyo ya lazima ya vitendo. Kichwa huonyeshwa juu ya maudhui na vitendo huonyeshwa chini ya maudhui."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Arifa"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Arifa Yenye Kichwa"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Vidirisha vya arifa vya muundo wa iOS."),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Arifa"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Kitufe cha muundo wa iOS. Huchukua maandishi na/au aikoni ambayo hufifia nje na ndani inapoguswa. Huenda kwa hiari ikawa na mandharinyuma."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Vitufe vya muundo wa iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Vitufe"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Hutumika kuchagua kati ya chaguo kadhaa za kipekee. Chaguo moja katika udhibiti wa vikundi ikichaguliwa, chaguo zingine katika udhibiti wa vikundi hazitachaguliwa."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Udhibiti wa vikundi vya muundo wa iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Udhibiti wa Vikundi"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Kitelezi kinaweza kutumiwa ili kuchagua kati ya seti za thamani endelevu au zenye kikomo."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Kitelezi cha muundo wa iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Kitelezi"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Swichi inatumika kugeuza hali ya kuwasha/kuzima ya chaguo moja la mipangilio."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Swichi ya muundo wa iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Upau wa kichupo cha kusogeza wa upande wa chini wa muundo wa iOS. Huonyesha vichupo vingi huku kichupo kimoja kikitumika, kichupo cha kwanza kwa chaguomsingi."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Upau wa kichupo wa upande wa chini wa muundo wa iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Upao wa Kichupo"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rahisi, arifa na skrini nzima"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Vidirisha"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Uwekaji hati wa API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Chipu za kuchuja hutumia lebo au maneno ya ufafanuzi kama mbinu ya kuchuja maudhui."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Chipu ya Kichujio"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Kitufe bapa huonyesha madoadoa ya wino wakati wa kubonyeza lakini hakiinuki. Tumia vitufe bapa kwenye upau wa vidhibiti, katika vidirisha na kulingana na maandishi yenye nafasi"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Kitufe Bapa"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Kitufe cha kutenda kinachoelea ni kitufe cha aikoni ya mduara kinachoelea juu ya maudhui ili kukuza kitendo cha msingi katika programu."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Kitufe cha Kutenda Kinachoelea"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Sifa ya fullscreenDialog hubainisha iwapo ukurasa ujao ni wa kidirisha cha kawaida cha skrini nzima"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Skrini nzima"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Skrini Nzima"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Maelezo"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Chipu za kuingiza huwakilisha taarifa ya kina, kama vile huluki (mtu, mahali au kitu) au maandishi ya mazungumzo katika muundo wa kushikamana."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Chipu ya Kuingiza"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Imeshindwa kuonyesha URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Safu wima moja ya urefu usiobadilika ambayo kwa kawaida ina baadhi ya maandishi na pia aikoni ya mwanzoni au mwishoni."),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage(
            "Maandishi katika mstari wa pili"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Miundo ya orodha za kusogeza"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Orodha"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Mstari Mmoja"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Gusa hapa ili uangalie chaguo zinazopatikana kwa onyesho hili."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Angalia chaguo"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Chaguo"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Vitufe vya mipaka ya mistari huwa havipenyezi nuru na huinuka vinapobonyezwa. Mara nyingi vinaoanishwa na vitufe vilivyoinuliwa ili kuashiria kitendo mbadala, cha pili."),
        "demoOutlineButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Kitufe chenye Mpaka wa Mstari"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Vitufe vilivyoinuliwa huongeza kivimbe kwenye miundo iliyo bapa kwa sehemu kubwa. Vinasisitiza utendaji kwenye nafasi pana au yenye shughuli nyingi."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Kitufe Kilichoinuliwa"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Visanduku vya kuteua humruhusu mtumiaji kuteua chaguo nyingi kwenye seti. Thamani ya kawaida ya kisanduku cha kuteua ni ndivyo au saivyo na thamani ya hali tatu ya kisanduku cha kuteua pia inaweza kuwa batili."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Kisanduku cha kuteua"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Vitufe vya mviringo humruhusu mtumiaji kuteua chaguo moja kwenye seti. Tumia vitufe vya mviringo kwa uteuzi wa kipekee ikiwa unafikiri kuwa mtumiaji anahitaji kuona chaguo zote upande kwa upande."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Redio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Visanduku vya kuteua, vitufe vya mviringo na swichi"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Swichi za kuwasha/kuzima hugeuza hali ya chaguo moja la mipangilio. Chaguo ambalo swichi inadhibiti na pia hali ambayo chaguo hilo limo inafaa kubainishwa wazi kwenye lebo inayolingana na maandishi."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Swichi"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Vidhibiti vya kuteua"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Kidirisha rahisi humpa mtumiaji chaguo kati ya chaguo nyingi. Kidirisha rahisi kina kichwa kisicho cha lazima kinachoonyeshwa juu ya chaguo."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Rahisi"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Umebonyeza kitendo cha kidirisha cha arifa."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("KITENDO"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ONYESHA KIDIRISHA CHA ARIFA"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Vidirisha vya arifa huwajulisha watumiaji kuhusu mchakato ambao programu imetekeleza au itatekeleza. Huonekana kwa muda mfupi, kuelekea sehemu ya chini ya skrini. Havifai kusumbua hali ya utumiaji, na havihitaji mtumiaji achukue hatua yoyote ili viondoke."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Vidirisha vya arifa huonyesha ujumbe katika sehemu ya chini ya skrini"),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage(
            "Hiki ni kidirisha cha arifa."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Vidirisha vya arifa"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Vichupo hupanga maudhui kwenye skrini tofauti, seti za data na shughuli zingine."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Vichupo vyenye mionekano huru inayoweza kusogezwa"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Vichupo"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Sehemu za maandishi huwaruhusu watumiaji kuweka maandishi kwenye kiolesura. Kwa kawaida huwa zinaonekana katika fomu na vidirisha."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Barua Pepe"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Tafadhali weka nenosiri."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Weka nambari ya simu ya Marekani."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Tafadhali tatua hitilafu zilizo katika rangi nyekundu kabla ya kuwasilisha."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ficha nenosiri"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Tumia herufi chache, hili ni onyesho tu."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Hadithi ya wasifu"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Jina*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Ni sharti ujaze jina."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Zisizozidi herufi 8."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Tafadhali weka herufi za kialfabeti pekee."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Nenosiri*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Manenosiri hayalingani"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Nambari ya simu*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* inaonyesha sehemu ambayo sharti ijazwe"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Andika tena nenosiri*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Mshahara"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Onyesha nenosiri"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("TUMA"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mstari mmoja wa maandishi na nambari zinazoweza kubadilishwa"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Tueleze kukuhusu (k.m., andika kazi unayofanya au mambo unayopenda kupitishia muda)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Sehemu za maandishi"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Je, watu hukuitaje?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Je, tunawezaje kuwasiliana nawe?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Anwani yako ya barua pepe"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Vitufe vya kugeuza vinaweza kutumiwa kuweka chaguo zinazohusiana katika vikundi. Ili kusisitiza vikundi vya vitufe vya kugeuza vinavyohusiana, kikundi kinafaa kushiriki metadata ya kawaida"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Vitufe vya Kugeuza"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Mistari Miwili"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Ufafanuzi wa miundo mbalimbali ya taipografia inayopatikana katika Usanifu Bora."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Miundo yote ya maandishi iliyobainishwa"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Taipografia"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Ongeza akaunti"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("KUBALI"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("GHAIRI"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("KATAA"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ONDOA"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Ungependa kufuta rasimu?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Onyesho la kidirisha cha skrini nzima"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("HIFADHI"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Kidirisha cha Skrini Nzima"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Ruhusu Google isaidie programu kutambua mahali. Hii inamaanisha kutuma data isiyokutambulisha kwa Google, hata wakati hakuna programu zinazotumika."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Ungependa kutumia huduma ya mahali ya Google?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Weka akaunti ya kuhifadhi nakala"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ONYESHA KIDIRISHA"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "MIUNDO NA MAUDHUI YA MAREJELEO"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("Aina"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Matunzio"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Akiba ya Gari"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Inakagua"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Akiba ya Nyumbani"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Likizo"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Mmiliki wa Akaunti"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Asilimia ya Mapato kila Mwaka"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Riba Iliyolipwa Mwaka Uliopita"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Kiwango cha Riba"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Riba ya Mwaka hadi leo"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Taarifa Inayofuata"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Jumla"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Akaunti"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Arifa"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Bili"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Zinahitajika mnamo"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Mavazi"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Maduka ya Kahawa"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Maduka ya vyakula"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Mikahawa"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Kushoto"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Bajeti"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Programu ya fedha ya binafsi"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("KUSHOTO"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("INGIA KATIKA AKAUNTI"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Ingia katika akaunti"),
        "rallyLoginLoginToRally": MessageLookupByLibrary.simpleMessage(
            "Ingia katika programu ya Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Huna akaunti?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Nenosiri"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Nikumbuke"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("JISAJILI"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Jina la mtumiaji"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ANGALIA YOTE"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Angalia akaunti zote"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Angalia bili zote"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Angalia bajeti zote"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Tafuta ATM"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Usaidizi"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Dhibiti Akaunti"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Arifa"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Mipangilio ya Kutotumia Karatasi"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Nambari ya siri na Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Taarifa Binafsi"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Ondoka"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Hati za Kodi"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("AKAUNTI"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("BILI"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BAJETI"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("MUHTASARI"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("MIPANGILIO"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Kuhusu Matunzio ya Flutter"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Imebuniwa na TOASTER mjini London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Funga mipangilio"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Mipangilio"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Meusi"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("Tuma maoni"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Meupe"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Lugha"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Umakanika wa mfumo"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Mwendopole"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Mfumo"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Mwelekeo wa maandishi"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Kushoto kuelekea kulia"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Kulingana na lugha"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Kulia kuelekea kushoto"),
        "settingsTextScaling": MessageLookupByLibrary.simpleMessage(
            "Ubadilishaji ukubwa wa maandishi"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Kubwa"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Kubwa"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Ya Kawaida"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Ndogo"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Mandhari"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Mipangilio"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("GHAIRI"),
        "shrineCartClearButtonCaption": MessageLookupByLibrary.simpleMessage(
            "ONDOA KILA KITU KWENYE KIKAPU"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KIKAPU"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Usafirishaji:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Jumla ndogo:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Ushuru:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("JUMLA"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("VIFUASI"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ZOTE"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("MAVAZI"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("NYUMBANI"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Programu ya kisasa ya uuzaji wa rejareja"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Nenosiri"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Jina la mtumiaji"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ONDOKA"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENYU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ENDELEA"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Magi ya Blue stone"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Fulana ya Cerise"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Kitambaa cha Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Shati ya Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Blauzi nyeupe ya kawaida"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Sweta ya Clay"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Copper wire rack"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Fulana yenye milia"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Kofia ya Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Jaketi ya ngozi"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Vifaa vya dawatini"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Skafu ya Ginger"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Fulana yenye mikono mifupi"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Vyombo vya chai"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Suruali ya buluu"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Gwanda la Plaster"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Meza"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Trei ya maji"),
        "shrineProductRamonaCrossover": MessageLookupByLibrary.simpleMessage(
            "Blauzi iliyofunguka kidogo kifuani"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Sweta ya kijivu"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Sweta ya Seabreeze"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Fulana ya mikono"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("Mkoba"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Vyombo vya kauri vya Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Miwani ya Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Herini"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Mimea"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Nguo"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Shati ya Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Mfuko wa mgongoni"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Soksi za Varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Fulana ya vifungo (nyeupe)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Pete ya ufunguo ya Weave"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Shati nyeupe yenye milia"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Mshipi wa Whitney"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Ongeza kwenye kikapu"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Funga kikapu"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Funga menyu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Fungua menyu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Ondoa bidhaa"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Tafuta"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Mipangilio"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Muundo wa kuanzisha unaobadilika kulingana na kifaa"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Mwili"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("KITUFE"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Kichwa"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Kichwa kidogo"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Kichwa"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Programu ya kuanza"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Ongeza"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Kipendwa"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Tafuta"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Shiriki")
      };
}
