// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a gu locale. All the
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
  String get localeName => 'gu';

  static m0(value) =>
      "આ ઍપનો સોર્સ કોડ જોવા માટે, કૃપા કરીને ${value}ની મુલાકાત લો.";

  static m1(title) => "${title} ટૅબ માટેનું પ્લેસહોલ્ડર";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'કોઈ રેસ્ટોરન્ટ નથી', one: '1 રેસ્ટોરન્ટ', other: '${totalRestaurants} રેસ્ટોરન્ટ')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'નૉનસ્ટોપ', one: '1 સ્ટૉપ', other: '${numberOfStops} સ્ટૉપ')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'કોઈ પ્રોપર્ટી ઉપલબ્ધ નથી', one: '1 પ્રોપર્ટી ઉપલબ્ધ છે', other: '${totalProperties} પ્રોપર્ટી ઉપલબ્ધ છે')}";

  static m5(value) => "આઇટમ ${value}";

  static m6(error) => "ક્લિપબોર્ડ પર કૉપિ કરવામાં નિષ્ફળ રહ્યાં: ${error}";

  static m7(value) => "સતત: ${value}";

  static m8(value) => "અલગ: ${value}";

  static m9(name, phoneNumber) => "${name} ફોન નંબર ${phoneNumber} છે";

  static m10(value) => "તમે પસંદ કર્યું: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "${accountName}ના એકાઉન્ટ નંબર ${accountNumber}માં ${amount} જમા કર્યાં.";

  static m12(amount) => "આ વર્ષે તમે ATM ફી માટે ${amount} વાપર્યા છે";

  static m13(percent) =>
      "ઘણું સરસ! તમારું ચેકિંગ એકાઉન્ટ પાછલા મહિના કરતાં ${percent} વધારે છે.";

  static m14(percent) =>
      "હવે ધ્યાન રાખજો, તમે ખરીદી માટેના આ મહિનાના તમારા બજેટમાંથી ${percent} વાપરી નાખ્યા છે.";

  static m15(amount) => "આ અઠવાડિયે તમે રેસ્ટોરન્ટ પાછળ ${amount} વાપર્યા છે.";

  static m16(count) =>
      "${Intl.plural(count, one: 'તમારો સંભવિત કર કપાત વધારો! ન સોંપાયેલ 1 વ્યવહાર માટે કૅટેગરી સોંપો.', other: 'તમારો સંભવિત કર કપાત વધારો! ન સોંપાયેલ ${count} વ્યવહાર માટે કૅટેગરી સોંપો.')}";

  static m17(billName, date, amount) =>
      "${billName}નું ${amount}નું બિલ ચુકવવાની નિયત તારીખ ${date} છે.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName}ના ${amountTotal}ના બજેટમાંથી ${amountUsed} વપરાયા, ${amountLeft} બાકી છે";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'કોઈ આઇટમ નથી', one: '1 આઇટમ', other: '${quantity} આઇટમ')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "જથ્થો: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'શોપિંગ કાર્ટ, કોઈ આઇટમ નથી', one: 'શોપિંગ કાર્ટ, 1 આઇટમ', other: 'શોપિંગ કાર્ટ, ${quantity} આઇટમ')}";

  static m23(product) => "${product} કાઢી નાખો";

  static m24(value) => "આઇટમ ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter samples GitHub repo"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("ગૅલેરી પર પાછા જાઓ"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("એકાઉન્ટ"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("એલાર્મ"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("કૅલેન્ડર"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("કૅમેરા"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("કૉમેન્ટ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("બટન"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("બનાવો"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("બાઇકિંગ"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("એલિવેટર"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("ફાયરપ્લેસ"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("મોટું"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("મધ્યમ"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("નાનું"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("લાઇટ ચાલુ કરો"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("વૉશર"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("અંબર"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("વાદળી"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("વાદળી ગ્રે"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("તપખીરિયો રંગ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("સ્યાન"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("ઘાટો નારંગી"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ઘાટો જાંબલી"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("લીલો"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("રાખોડી"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ઘેરો વાદળી રંગ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("આછો વાદળી"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("આછો લીલો"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("લિંબુડિયો"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("નારંગી"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ગુલાબી"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("જાંબલી"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("લાલ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("મોરપીચ્છ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("પીળો"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "તમને મનગમતી બનાવાયેલી પ્રવાસ માટેની ઍપ"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ખાવા માટેના સ્થાન"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("નેપલ્સ, ઇટાલી"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ચૂલામાં લાકડાથી પકાવેલા પિઝા"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("ડલાસ, યુનાઇટેડ સ્ટેટ્સ"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("લિસ્બન, પોર્ટુગલ"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "મોટી પાસ્ટ્રામી સેન્ડવિચ પકડીને ઉભેલી સ્ત્રી"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ડાઇનર-સ્ટાઇલ સ્ટૂલવાળો ખાલી બાર"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("કોર્ડોબા, આર્જેન્ટિના"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("બર્ગર"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "પૉર્ટલેન્ડ, યુનાઇટેડ સ્ટેટ્સ"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("કોરિયન ટાકો"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("પેરિસ, ફ્રાન્સ"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ચોકલેટ ડેઝર્ટ"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("સિઓલ, દક્ષિણ કોરિયા"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "કલાત્મક રીતે બનાવેલા રેસ્ટોરન્ટનો બેઠક વિસ્તાર"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("સિએટલ, યુનાઇટેડ સ્ટેટ્સ"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ઝીંગાની વાનગી"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("નેશવિલે, યુનાઇટેડ સ્ટેટ્સ"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("બેકરીનો પ્રવેશદ્વાર"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("એટલાન્ટા, યુનાઇટેડ સ્ટેટ્સ"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ક્રોફિશથી ભરેલી પ્લેટ"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("મેડ્રિડ, સ્પેઇન"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("પેસ્ટ્રી સાથે કૅફે કાઉન્ટર"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "નિર્ધારિત સ્થાન દ્વારા રેસ્ટોરન્ટની શોધખોળ કરો"),
        "craneFly": MessageLookupByLibrary.simpleMessage("ઉડાન"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("અસ્પેન, યુનાઇટેડ સ્ટેટ્સ"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "સદાબહાર ઝાડવાળા બર્ફીલા લૅન્ડસ્કેપમાં ચેલેટ"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("બિગ સર, યુનાઇટેડ સ્ટેટ્સ"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("કેરો, ઇજિપ્ત"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "સૂર્યાસ્ત પછી અલ-અઝહર મસ્જિદના ટાવર"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("લિસ્બન, પોર્ટુગલ"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "સમુદ્ર કિનારે ઈંટથી બનાવેલી દીવાદાંડી"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("નાપા, યુનાઇટેડ સ્ટેટ્સ"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("પામના વૃક્ષોવાળો પૂલ"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("બાલી, ઇન્ડોનેશિયા"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "સમુદ્ર કિનારે પામના વૃક્ષોવાળો પૂલ"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ફીલ્ડમાં તંબુ"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("ખુમ્બુ વેલી, નેપાળ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "બર્ફીલા પર્વતની આગળ પ્રાર્થના માટે લગાવેલા ધ્વજ"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("માચુ પિચ્ચુ, પેરુ"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("માચુ પિચ્ચુનો રાજગઢ"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("માલી, માલદીવ્સ"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("પાણીની ઉપર બનાવેલો બંગલો"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("વિઝનાઉ, સ્વિટ્ઝરલૅન્ડ"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "પર્વતોની સામે તળાવ બાજુ હોટલ"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("મેક્સિકો સિટી, મેક્સિકો"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "પેલેસિઓ ડી બેલાસ આર્ટસનું ઉપરથી દેખાતું દૃશ્ય"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "માઉન્ટ રુશમોરે, યુનાઇટેડ સ્ટેટ્સ"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("માઉન્ટ રુશ્મોર"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("સિંગાપુર"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("સુપરટ્રી ગ્રોવ"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("હવાના, ક્યૂબા"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "પ્રાચીન વાદળી કારને ટેકો આપીને ઉભેલો માણસ"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "નિર્ધારિત સ્થાન દ્વારા ફ્લાઇટની શોધખોળ કરો"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("તારીખ પસંદ કરો"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("તારીખ પસંદ કરો"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("નિર્ધારિત સ્થાન પસંદ કરો"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("ડાઇનર"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("સ્થાન પસંદ કરો"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("મૂળ સ્ટેશન પસંદ કરો"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("સમય પસંદ કરો"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("મુસાફરો"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("સ્લીપ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("માલી, માલદીવ્સ"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("પાણીની ઉપર બનાવેલો બંગલો"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("અસ્પેન, યુનાઇટેડ સ્ટેટ્સ"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("કેરો, ઇજિપ્ત"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "સૂર્યાસ્ત પછી અલ-અઝહર મસ્જિદના ટાવર"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("તાઇપેઇ, તાઇવાન"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("તાઇપેઇ 101 સ્કાયસ્ક્રેપર"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "સદાબહાર ઝાડવાળા બર્ફીલા લૅન્ડસ્કેપમાં ચેલેટ"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("માચુ પિચ્ચુ, પેરુ"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("માચુ પિચ્ચુનો રાજગઢ"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("હવાના, ક્યૂબા"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "પ્રાચીન વાદળી કારને ટેકો આપીને ઉભેલો માણસ"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("વિઝનાઉ, સ્વિટ્ઝરલૅન્ડ"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "પર્વતોની સામે તળાવ બાજુ હોટલ"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("બિગ સર, યુનાઇટેડ સ્ટેટ્સ"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ફીલ્ડમાં તંબુ"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("નાપા, યુનાઇટેડ સ્ટેટ્સ"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("પામના વૃક્ષોવાળો પૂલ"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("પોર્ટો, પોર્ટુગલ"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "રિબેરિયા સ્ક્વેરમાં રંગીન એપાર્ટમેન્ટ"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("ટુલુમ, મેક્સિકો"),
        "craneSleep8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("મય બીચના ખડક પર ખંડેર"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("લિસ્બન, પોર્ટુગલ"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "સમુદ્ર કિનારે ઈંટથી બનાવેલી દીવાદાંડી"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "નિર્ધારિત સ્થાન દ્વારા પ્રોપર્ટીની શોધખોળ કરો"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("મંજૂરી આપો"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("એપલ પાઇ"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("રદ કરો"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("ચીઝકેક"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("ચોકલેટ બ્રાઉની"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "નીચેની સૂચિમાંથી કૃપા કરીને તમારા મનપસંદ પ્રકારની મીઠાઈને પસંદ કરો. તમારા ક્ષેત્રમાં રહેલી ખાવા-પીવાની દુકાનોની સૂચવેલી સૂચિને કસ્ટમાઇઝ કરવા માટે તમારી પસંદગીનો ઉપયોગ કરવામાં આવશે."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("કાઢી નાખો"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("મંજૂરી આપશો નહીં"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("મનપસંદ મીઠાઈ પસંદ કરો"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "નકશા પર તમારું વર્તમાન સ્થાન બતાવવામાં આવશે અને દિશા નિર્દેશો, નજીકના શોધ પરિણામ અને મુસાફરીના અંદાજિત સમયને બતાવવા માટે તેનો ઉપયોગ કરવામાં આવશે."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "તમે ઍપનો ઉપયોગ કરી રહ્યાં હો તે વખતે \"Maps\"ને તમારા સ્થાનના ઍક્સેસની મંજૂરી આપીએ?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("ટિરામિસુ"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("બટન"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("બૅકગ્રાઉન્ડની સાથે"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("અલર્ટ બતાવો"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("ચૅટ"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("હોમ"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("પ્રોફાઇલ"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "ઍક્શન ચિપ એ વિકલ્પોનો સેટ છે જે મુખ્ય કન્ટેન્ટથી સંબંધિત ઍક્શનને ટ્રિગર કરે છે. ઍક્શન ચિપ, UIમાં ડાયનામિક રીતે અને સાંદર્ભિક રીતે દેખાવા જોઈએ."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ઍક્શન ચિપ"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "અલર્ટ સંવાદ વપરાશકર્તાને જ્યાં સંમતિ જરૂરી હોય એવી સ્થિતિઓ વિશે સૂચિત કરે છે. અલર્ટ સંવાદમાં વૈકલ્પિક શીર્ષક અને ક્રિયાઓની વૈકલ્પિક સૂચિ હોય છે."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("અલર્ટ"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("શીર્ષકની સાથે અલર્ટ"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "બોટમ નૅવિગેશન બાર સ્ક્રીનના તળિયે ત્રણથી પાંચ સ્થાન બતાવે છે. દરેક સ્થાન આઇકન અને વૈકલ્પિક ટેક્સ્ટ લેબલ દ્વારા દર્શાવાય છે. બોટમ નૅવિગેશન આઇકન પર ટૅપ કરવામાં આવે, ત્યારે વપરાશકર્તાને તે આઇકન સાથે સંકળાયેલા ટોચના સ્તરના નૅવિગેશન સ્થાન પર લઈ જવામાં આવે છે."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("પર્સીસ્ટન્ટ લેબલ"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("પસંદ કરેલું લેબલ"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "અરસપરસ ફેડ થતા દૃશ્યો સાથે બોટમ નૅવિગેશન"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("બોટમ નૅવિગેશન"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("ઉમેરો"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("બોટમ શીટ બતાવો"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("હેડર"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "મોડલ બોટમ શીટ મેનૂ અથવા સંવાદના વિકલ્પરૂપે હોય છે અને વપરાશકર્તાને ઍપના બાકીના ભાગ સાથે ક્રિયાપ્રતિક્રિયા કરતા અટકાવે છે."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("મોડલ બોટમ શીટ"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "પર્સીસ્ટન્ટ બોટમ શીટ ઍપના મુખ્ય કન્ટેન્ટને પૂરક હોય તેવી માહિતી બતાવે છે. વપરાશકર્તા ઍપના અન્ય ભાગ સાથે ક્રિયાપ્રતિક્રિયા કરતા હોય ત્યારે પણ પર્સીસ્ટન્ટ બોટમ શીટ દેખાતી રહે છે."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("પર્સીસ્ટન્ટ બોટમ શીટ"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "પર્સીસ્ટન્ટ અને મોડલ બોટમ શીટ"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("બોટમ શીટ"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "સમતલ, ઉપસી આવેલા, આઉટલાઇન અને બીજા ઘણા બટન"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("બટન"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "સંક્ષિપ્ત ઘટકો કે જે ઇનપુટ, એટ્રિબ્યુટ અથવા ઍક્શનને પ્રસ્તુત કરે છે"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ચિપ"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "ચૉઇસ ચિપ એ કોઈ સેટની એકલ પસંદગીને પ્રસ્તુત કરે છે. ચૉઇસ ચિપમાં સંબંધિત વર્ણનાત્મક ટેક્સ્ટ અથવા શ્રેણીઓ શામેલ હોય છે."),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("ચૉઇસ ચિપ"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("કોડનો નમૂનો"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("ક્લિપબોર્ડ પર કૉપિ કર્યા."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("બધા કૉપિ કરો"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "સામગ્રીની ડિઝાઇનના વિવિધ રંગનું પ્રતિનિધિત્વ કરતા રંગ અને રંગ સ્વૉચ કૉન્સ્ટન્ટ."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("તમામ પૂર્વનિર્ધારિત રંગ"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("રંગો"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "ઍક્શન શીટ એ અલર્ટની એક ચોક્કસ શૈલી છે જે વપરાશકર્તા સમક્ષ વર્તમાન સંદર્ભથી સંબંધિત બે કે તેથી વધુ વિકલ્પોનો સેટ પ્રસ્તુત કરે છે. ઍક્શન શીટમાં શીર્ષક, વૈકલ્પિક સંદેશ અને ક્રિયાઓની સૂચિ હોય શકે છે."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("ઍક્શન શીટ"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("ફક્ત અલર્ટ બટન"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("બટનની સાથે અલર્ટ"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "અલર્ટ સંવાદ વપરાશકર્તાને જ્યાં સંમતિ જરૂરી હોય એવી સ્થિતિઓ વિશે સૂચિત કરે છે. અલર્ટ સંવાદમાં વૈકલ્પિક શીર્ષક, વૈકલ્પિક કન્ટેન્ટ અને ક્રિયાઓની વૈકલ્પિક સૂચિ હોય છે. શીર્ષક, કન્ટેન્ટની ઉપર બતાવવામાં આવે છે અને ક્રિયાઓ, કન્ટેન્ટની નીચે બતાવવામાં આવે છે."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("અલર્ટ"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("શીર્ષકની સાથે અલર્ટ"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-શૈલીના અલર્ટ સંવાદ"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("અલર્ટ"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-શૈલીનું બટન. તે ટેક્સ્ટ અને/અથવા આઇકનનો ઉપયોગ કરે છે કે જે સ્પર્શ કરવા પર ઝાંખું થાય છે તથા ઝાંખું નથી થતું. તેમાં વૈકલ્પિક રૂપે બૅકગ્રાઉન્ડ હોઈ શકે છે."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-શૈલીના બટન"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("બટન"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "આનો ઉપયોગ પરસ્પર ખાસ વિકલ્પોમાંથી પસંદ કરવા માટે થાય છે. જ્યારે વિભાગ મુજબ નિયંત્રણમાંથી એક વિકલ્પ પસંદ કર્યો હોય, ત્યારે વિભાગ મુજબ નિયંત્રણના અન્ય વિકલ્પો પસંદ કરવાની સુવિધા બંધ કરવામાં આવે છે."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-શૈલીના વિભાગ મુજબ નિયંત્રણ"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("વિભાગ મુજબ નિયંત્રણ"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "સ્લાઇડરનો ઉપયોગ સતત અથવા અલગ મૂલ્યોના સેટમાંથી પસંદ કરવા માટે કરી શકાય છે."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-શૈલીનું સ્લાઇડર"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("સ્લાઇડર"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "સ્વિચનો ઉપયોગ સિંગલ સેટિંગની ચાલુ/બંધ સ્થિતિને ટૉગલ કરવા માટે થાય છે."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-શૈલીનું સ્વિચ"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-શૈલીના તળિયાના નૅવિગેશન ટૅબનું બાર. એક ટૅબ સક્રિય હોવાની સાથે એકથી વધુ ટૅબ બતાવે છે, જેમાં પહેલી ટૅબ ડિફૉલ્ટ તરીકે હોય છે."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-શૈલીના તળિયાની ટૅબનું બાર"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("ટૅબ બાર"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("સરળ, અલર્ટ અને પૂર્ણસ્ક્રીન"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("સંવાદો"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API દસ્તાવેજો"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ફિલ્ટર ચિપ, કન્ટેન્ટને ફિલ્ટર કરવા માટે ટૅગ અથવા વર્ણનાત્મક શબ્દોનો ઉપયોગ કરે છે."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ફિલ્ટર ચિપ"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "સમતલ બટન દબાવવા પર ઇંક સ્પ્લૅશ બતાવે છે પરંતુ તે ઉપસી આવતું નથી. ટૂલબાર પર, સંવાદમાં અને પૅડિંગની સાથે ઇનલાઇનમાં સમતલ બટનનો ઉપયોગ કરો"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("સમતલ બટન"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ફ્લોટિંગ ઍક્શન બટન એ એક સર્ક્યુલર આઇકન બટન છે જે ઍપમાં મુખ્ય ક્રિયાનો પ્રચાર કરવા માટે કન્ટેન્ટ પર હૉવર કરે છે."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ફ્લોટિંગ ઍક્શન બટન"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog પ્રોપર્ટી ઇનકમિંગ પેજ પૂર્ણસ્ક્રીન મૉડલ સંવાદ હશે કે કેમ તેનો ઉલ્લેખ કરે છે"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("પૂર્ણસ્ક્રીન"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("પૂર્ણ સ્ક્રીન"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("માહિતી"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ઇનપુટ ચિપ, એકમ (વ્યક્તિ, સ્થાન અથવા વસ્તુ) અથવા સંવાદી ટેક્સ્ટ જેવી જટિલ માહિતીને સંક્ષિપ્ત રૂપમાં પ્રસ્તુત કરે છે."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("ઇનપુટ ચિપ"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL બતાવી શકાયું નથી:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "એક નિશ્ચિત-ઊંચાઈની પંક્તિમાં સામાન્ય રીતે અમુક ટેક્સ્ટ તેમજ તેની આગળ કે પાછળ આઇકન શામેલ હોય છે."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("ગૌણ ટેક્સ્ટ"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("સ્ક્રોલિંગ સૂચિ લેઆઉટ"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("સૂચિઓ"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("એક લાઇન"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "આ ડેમો માટે ઉપલબ્ધ વિકલ્પો જોવા માટે અહીં ટૅપ કરો."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("વિકલ્પો જુઓ"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("વિકલ્પો"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "આઉટલાઇન બટન દબાવવા પર અપારદર્શી બને છે અને તે ઉપસી આવે છે. વૈકલ્પિક, ગૌણ ક્રિયા બતાવવા માટે અવારનવાર ઉપસેલા બટન સાથે તેઓનું જોડાણ બનાવવામાં આવે છે."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("આઉટલાઇન બટન"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ઉપસેલા બટન મોટાભાગના સમતલ લેઆઉટ પર પરિમાણ ઉમેરે છે. તે વ્યસ્ત અથવા વ્યાપક સ્થાનો પર ફંક્શન પર ભાર આપે છે."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("ઉપસેલું બટન"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "ચેકબૉક્સ વપરાશકર્તાને સેટમાંથી એકથી વધુ વિકલ્પો પસંદ કરવાની મંજૂરી આપે છે. સામાન્ય ચેકબૉક્સનું મૂલ્ય સાચું અથવા ખોટું છે અને ત્રણ સ્ટેટના ચેકબોક્સનું મૂલ્ય શૂન્ય પણ હોઈ શકે છે."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("ચેકબૉક્સ"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "રેડિયો બટન વપરાશકર્તાને સેટમાંથી એક વિકલ્પ પસંદ કરવાની મંજૂરી આપે છે. જો તમને લાગે કે વપરાશકર્તાને એક પછી એક ઉપલબ્ધ બધા વિકલ્પો જોવાની જરૂર છે, તો વિશિષ્ટ પસંદગી માટે રેડિયો બટનનો ઉપયોગ કરો."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("રેડિયો"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ચેકબૉક્સ, રેડિયો બટન અને સ્વિચ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ચાલુ/બંધ સ્વિચ સિંગલ સેટિંગ વિકલ્પની સ્થિતિને ટૉગલ કરે છે. સ્વિચ નિયંત્રિત કરે છે તે વિકલ્પ તેમજ તેની સ્થિતિ સંબંધિત ઇનલાઇન લેબલથી સ્પષ્ટ થવી જોઈએ."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("સ્વિચ"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("પસંદગીના નિયંત્રણો"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "સરળ સંવાદ વપરાશકર્તાને ઘણા વિકલ્પો વચ્ચે પસંદગીની તક આપે છે. સરળ સંવાદમાં વૈકલ્પિક શીર્ષક હોય છે જે વિકલ્પોની ઉપર બતાવવામાં આવે છે."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("સરળ"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "તમે સ્નૅકબાર ઍક્શન દબાવ્યું."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ઍક્શન"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("સ્નૅકબાર બતાવો"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "સ્નૅકબાર વપરાશકર્તાઓને તે પ્રક્રિયા અંગે સૂચના આપે છે કે જે ઍપે કરી છે અથવા તો જે કરશે. તે સ્ક્રીનના તળિયે અસ્થાયીરૂપે દેખાય છે. તેઓએ વપરાશકર્તા અનુભવમાં વિક્ષેપ કરવો જોઈએ નહીં અને અદૃશ્ય થવા માટે તેઓને વપરાશકર્તા ઇનપુટની જરૂર હોતી નથી."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "સ્નૅકબાર, સ્ક્રીનના તળિયા પર સંદેશા બતાવે છે"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("આ સ્નૅકબાર છે."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("સ્નૅકબાર"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "ટૅબ અલગ અલગ સ્ક્રીન, ડેટા સેટ અને અન્ય ક્રિયાપ્રતિક્રિયાઓ પર કન્ટેન્ટને ગોઠવે છે."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "સ્વતંત્ર રીતે સ્ક્રોલ કરવા યોગ્ય વ્યૂ ટૅબ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ટૅબ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "ટેક્સ્ટ ફીલ્ડ વડે વપરાશકર્તાઓ UIમાં ટેક્સ્ટ દાખલ કરી શકે છે. સામાન્ય રીતે તે ફોર્મ અને સંવાદમાં આવતા હોય છે."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ઇ-મેઇલ"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "કૃપા કરીને પાસવર્ડ દાખલ કરો."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - અમેરિકાનો ફોન નંબર દાખલ કરો."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "સબમિટ કરતા પહેલાં કૃપા કરીને લાલ રંગે દર્શાવેલી ભૂલો ઠીક કરો."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("પાસવર્ડ છુપાવો"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "ટૂંકું જ બનાવો, આ માત્ર ડેમો છે."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("જીવન વૃત્તાંત"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("નામ*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("નામ જરૂરી છે."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8 અક્ષર કરતાં વધુ નહીં."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "કૃપા કરીને માત્ર મૂળાક્ષરના અક્ષરો દાખલ કરો."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("પાસવર્ડ*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("પાસવર્ડનો મેળ બેસતો નથી"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ફોન નંબર*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* ફરજિયાત ફીલ્ડ સૂચવે છે"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("પાસવર્ડ ફરીથી લખો*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("પગાર"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("પાસવર્ડ બતાવો"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("સબમિટ કરો"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "ફેરફાર કરી શકાય તેવા ટેક્સ્ટ અને નંબરની સિંગલ લાઇન"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "અમને તમારા વિશે જણાવો (દા.ત., તમે શું કરો છો તે અથવા તમારા શોખ વિશે લખો)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("ટેક્સ્ટ ફીલ્ડ"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "લોકો તમને શું કહીને બોલાવે છે?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "અમે ક્યાં તમારો સંપર્ક કરી શકીએ?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("તમારું ઇમેઇલ ઍડ્રેસ"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "સંબંધિત વિકલ્પોનું ગ્રૂપ બનાવવા માટે ટૉગલ બટનનો ઉપયોગ કરી શકાય છે. સંબંધિત ટૉગલ બટનના ગ્રૂપ પર ભાર આપવા માટે, ગ્રૂપે એક કૉમન કન્ટેનર શેર કરવું જોઈએ"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ટૉગલ બટન"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("બે લાઇન"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "સામગ્રીની ડિઝાઇનમાં જોવા મળતી ટાઇપોગ્રાફીની વિવિધ શૈલીઓ માટેની વ્યાખ્યાઓ."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "ટેક્સ્ટની પૂર્વવ્યાખ્યાયિત બધી જ શૈલીઓ"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("ટાઇપોગ્રાફી"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("એકાઉન્ટ ઉમેરો"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("સંમત"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("રદ કરો"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("અસંમત"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("કાઢી નાખો"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("ડ્રાફ્ટ કાઢી નાખવો છે?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("પૂર્ણ-સ્ક્રીન સંવાદ ડેમો"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("સાચવો"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("પૂર્ણ-સ્ક્રીન સંવાદ"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Googleને સ્થાન નિર્ધારિત કરવામાં ઍપની સહાય કરવા દો. આનો અર્થ છે જ્યારે કોઈ ઍપ ચાલી ન રહી હોય ત્યારે પણ Googleને અનામ સ્થાન ડેટા મોકલવો."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Googleની સ્થાન સેવાનો ઉપયોગ કરીએ?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("બૅકઅપ એકાઉન્ટ સેટ કરો"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("સંવાદ બતાવો"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("સંદર્ભ શૈલીઓ અને મીડિયા"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("કૅટેગરી"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("ગૅલેરી"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("કાર બચત"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("ચેક કરી રહ્યાં છીએ"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("ઘરેલુ બચત"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("વેકેશન"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("એકાઉન્ટના માલિક"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("વાર્ષિક ઉપજની ટકાવારી"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("ગયા વર્ષે ચૂકવેલું વ્યાજ"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("વ્યાજનો દર"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("વ્યાજ YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("આગલું સ્ટેટમેન્ટ"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("કુલ"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("એકાઉન્ટ"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("અલર્ટ"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("બિલ"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("બાકી"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("વસ્ત્રો"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("કૉફી શૉપ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("કરિયાણું"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("રેસ્ટોરન્ટ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("બાકી"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("બજેટ"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "વ્યક્તિગત નાણાંકીય આયોજન માટેની ઍપ"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("બાકી"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("લૉગ ઇન"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("લૉગ ઇન"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rallyમાં લૉગ ઇન કરો"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("કોઈ એકાઉન્ટ નથી?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("પાસવર્ડ"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("મને યાદ રાખો"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("સાઇન અપ કરો"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("વપરાશકર્તાનું નામ"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("બધું જુઓ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("બધા એકાઉન્ટ જુઓ"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage("બધા બિલ જુઓ"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("બધા બજેટ જુઓ"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATMs શોધો"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("સહાય"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("એકાઉન્ટ મેનેજ કરો"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("નોટિફિકેશન"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("પેપરલેસ સેટિંગ"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("પાસકોડ અને સ્પર્શ ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("વ્યક્તિગત માહિતી"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("સાઇન આઉટ કરો"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("કરવેરાના દસ્તાવેજો"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("એકાઉન્ટ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("બિલ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("બજેટ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ઝલક"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("સેટિંગ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery વિશે"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "લંડનમાં TOASTER દ્વારા ડિઝાઇન કરાયેલ"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("સેટિંગ બંધ કરો"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("સેટિંગ"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("ઘેરી"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("પ્રતિસાદ મોકલો"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("આછી"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("લોકેલ"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("પ્લૅટફૉર્મ મેકૅનિક્સ"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("સ્લો મોશન"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("સિસ્ટમ"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("ટેક્સ્ટની દિશા"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("લોકેલ પર આધારિત"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("ટેક્સ્ટનું કદ"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("વિશાળ"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("મોટું"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("સામાન્ય"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("નાનું"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("થીમ"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("સેટિંગ"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("રદ કરો"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("કાર્ટ ખાલી કરો"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("કાર્ટ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("શિપિંગ:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("પેટાસરવાળો:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("કર:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("કુલ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ઍક્સેસરી"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("બધા"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("કપડાં"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("હોમ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "છૂટક વેચાણ માટેની ફેશનેબલ ઍપ"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("પાસવર્ડ"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("વપરાશકર્તાનું નામ"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("લૉગ આઉટ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("મેનૂ"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("આગળ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Blue stone mug"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Cerise scallop tee"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray napkins"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambray shirt"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Classic white collar"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Clay sweater"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Copper wire rack"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Fine lines tee"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby hat"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry jacket"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Gilt desk trio"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Ginger scarf"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Grey slouch tank"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Hurrahs tea set"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Navy trousers"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Plaster tunic"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Quartet table"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Rainwater tray"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Sea tunic"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Seabreeze sweater"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Shoulder rolls tee"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Shrug bag"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe ceramic set"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella sunglasses"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut earrings"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Succulent planters"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Sunshirt dress"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surf and perf shirt"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond sack"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Varsity socks"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (white)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Weave keyring"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("White pinstripe shirt"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney belt"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("કાર્ટમાં ઉમેરો"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("કાર્ટ બંધ કરો"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("મેનૂ બંધ કરો"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("મેનૂ ખોલો"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("આઇટમ કાઢી નાખો"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("શોધો"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("સેટિંગ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "પ્રતિભાવ આપતું સ્ટાર્ટર લેઆઉટ"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("મુખ્ય ભાગ"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("બટન"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("હેડલાઇન"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("ઉપશીર્ષક"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("શીર્ષક"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("સ્ટાર્ટર ઍપ"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("ઉમેરો"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("મનપસંદ"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("શોધો"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("શેર કરો")
      };
}
