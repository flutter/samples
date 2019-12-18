// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ta locale. All the
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
  String get localeName => 'ta';

  static m0(value) =>
      "இந்த ஆப்ஸின் மூலக் குறியீட்டைப் பார்க்க ${value}க்குச் செல்லவும்.";

  static m1(title) => "${title} தாவலுக்கான ஒதுக்கிடம்";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'உணவகங்கள் இல்லை', one: 'ஒரு உணவகம்', other: '${totalRestaurants} உணவகங்கள்')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'நிறுத்தம் எதுவுமில்லை', one: 'ஒரு நிறுத்தம்', other: '${numberOfStops} நிறுத்தங்கள்')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'பிராப்பர்ட்டி எதுவும் இல்லை', one: 'ஒரு பிராப்பர்ட்டி உள்ளது', other: '${totalProperties} பிராப்பர்ட்டிகள் உள்ளன')}";

  static m5(value) => "${value} பொருள்";

  static m6(error) => "கிளிப்போர்டுக்கு நகலெடுக்க இயலவில்லை: ${error}";

  static m7(name, phoneNumber) => "${name} உடைய ஃபோன் எண் ${phoneNumber}";

  static m8(value) => "You selected: \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "${amount} பேலன்ஸைக் கொண்ட ${accountName} அக்கவுண்ட் எண்: ${accountNumber}.";

  static m10(amount) =>
      "இந்த மாதம் ATM கட்டணங்களாக ${amount} செலவிட்டுள்ளீர்கள்";

  static m11(percent) =>
      "பாராட்டுகள்! உங்கள் செக்கிங் கணக்கு சென்ற மாதத்தைவிட  ${percent} அதிகரித்துள்ளது.";

  static m12(percent) =>
      "கவனத்திற்கு: இந்த மாதத்திற்கான ஷாப்பிங் பட்ஜெட்டில் ${percent} பயன்படுத்திவிட்டீர்கள்.";

  static m13(amount) =>
      "இந்த வாரத்தில் உணவகங்களில் ${amount} செலவழித்துள்ளீர்கள்.";

  static m14(count) =>
      "${Intl.plural(count, one: 'உங்களுக்குரிய சாத்தியமான வரிக் கழிவை அதிகரித்துக்கொள்ளுங்கள்! ஒரு பொறுப்புமாற்றப்படாத பணப் பரிமாற்றத்திற்கான வகைகளைச் சேருங்கள்.', other: 'உங்களுக்குரிய சாத்தியமான வரிக் கழிவை அதிகரித்துக்கொள்ளுங்கள்! ${count} பொறுப்புமாற்றப்படாத பணப் பரிமாற்றங்களுக்கான வகைகளைச் சேருங்கள்.')}";

  static m15(billName, date, amount) =>
      "${amount}க்கான ${billName} பில்லின் நிலுவைத் தேதி: ${date}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${amountTotal}க்கான ${budgetName} பட்ஜெட்டில் பயன்படுத்தப்பட்ட தொகை: ${amountUsed}, மீதமுள்ள தொகை: ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'எதுவும் இல்லை', one: 'ஒரு பொருள்', other: '${quantity} பொருட்கள்')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "எண்ணிக்கை: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'ஷாப்பிங் கார்ட், எதுவும் இல்லை', one: 'ஷாப்பிங் கார்ட், 1 பொருள்', other: 'ஷாப்பிங் கார்ட், ${quantity} பொருட்கள்')}";

  static m21(product) => "${product} ஐ அகற்றும்";

  static m22(value) => "${value} பொருள்";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter மாதிரிகள் GitHub தரவு சேமிப்பகம்"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("கணக்கு"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("அலாரம்"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("கேலெண்டர்"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("கேமரா"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("கருத்துகள்"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("பட்டன்"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Create"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("பைக்கிங்"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("மின்தூக்கி"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("நெருப்பிடம்"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("பெரியது"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("நடுத்தரமானது"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("சிறியது"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("விளக்குகளை ஆன் செய்க"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("வாஷர்"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("AMBER"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLUE"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("BLUE GREY"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BROWN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYAN"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("DEEP ORANGE"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("DEEP PURPLE"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("GREEN"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GREY"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("LIGHT BLUE"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("LIGHT GREEN"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIME"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANGE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PINK"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("PURPLE"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("RED"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TEAL"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("YELLOW"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("பிரத்தியேகப் பயண ஆப்ஸ்"),
        "craneEat": MessageLookupByLibrary.simpleMessage("உணவருந்துமிடம்"),
        "craneEat0":
            MessageLookupByLibrary.simpleMessage("நேப்பிள்ஸ், இத்தாலி"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "கட்டையால் நெருப்பூட்டப்பட்ட ஓவனில் உள்ள பிட்ஜா"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("டல்லாஸ், அமெரிக்கா"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("லிஸ்பன், போர்ச்சுகல்"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பெரிய பாஸ்டிராமி சாண்ட்விச்சை வைத்திருக்கும் பெண்"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "டின்னர் ஸ்டைல் ஸ்டூல்களைக் கொண்ட காலியான பார்"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("கோர்டோபா, அர்ஜெண்டினா"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("பர்கர்"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("போர்ட்லாந்து, அமெரிக்கா"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("கொரிய டாகோ"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("பாரிஸ், ஃபிரான்ஸ்"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("சாக்கலேட் டெசெர்ட்"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("சியோல், தென் கொரியா"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ஆர்ட்ஸி உணவகத்தில் உள்ள அமரும் பகுதி"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("சியாட்டில், அமெரிக்கா"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ஷ்ரிம்ப் டிஷ்"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("நாஷ்வில்லி, அமெரிக்கா"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("பேக்கரி நுழைவு"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("அட்லாண்டா, அமெரிக்கா"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ஒரு பிளேட் கிராஃபிஷ்"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("மாட்ரிட், ஸ்பெயின்"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பாஸ்த்திரிக்கள் உள்ள கஃபே கவுண்ட்டர்"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "சேருமிடத்தின் அடிப்படையில் உணவகங்களைக் கண்டறிதல்"),
        "craneFly": MessageLookupByLibrary.simpleMessage("விமானங்கள்"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("ஆஸ்பென், அமெரிக்கா"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பனிபடர்ந்த மரங்கள் சூழ்ந்த நிலப்பரப்பில் உள்ள சாலேட்"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("பிக் ஸுர், அமெரிக்கா"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("கெய்ரோ, எகிப்து"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "சூரிய அஸ்தமனத்தின் போது அல் அஜார் மசூதியின் காட்சி"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("லிஸ்பன், போர்ச்சுகல்"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("கடலில் பிரைட்டான லைட்ஹவுஸ்"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("நாப்பா, அமெரிக்கா"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("பனைமரங்கள் சூழ்ந்த குளம்"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("பாலி, இந்தோனேசியா"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பனைமரங்கள் அதிகம் கொண்ட கடலருகே உள்ள குளம்"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("களத்தில் உள்ள டெண்ட்"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("கும்பு வேலி, நேபாளம்"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பனிபடர்ந்த மலைக்கு முன் உள்ள வழிபாட்டுக் கொடிகள்"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("மச்சு பிச்சு, பெரு"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("மாச்சு பிச்சு சைட்டாடெல்"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("மாலே, மாலத்தீவுகள்"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ஓவர்வாட்டர் பங்களாக்கள்"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("விட்ஸ்னாவ், சுவிட்சர்லாந்து"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "மலைகளின் முன்னால் ஏரிக்கு அருகில் உள்ள ஹோட்டல்"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("மெக்ஸிகோ நகரம், மெக்ஸிகோ"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பலாசியா டி பெல்லாஸ் ஆர்டஸின் ஏரியல் வியூ"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("ரஷ்மோர் மலை, அமெரிக்கா"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ரஷ்மோர் மலை"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("சிங்கப்பூர்"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("சூப்பர்டிரீ குரோவ்"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ஹவானா, கியூபா"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பழங்கால நீளக் காரில் சாய்ந்தபடி உள்ள ஒருவன்"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "சேருமிடத்தின் அடிப்படையில் விமானங்களைக் கண்டறிதல்"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("தேதியைத் தேர்வுசெய்க"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("தேதிகளைத் தேர்வுசெய்க"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("சேருமிடத்தைத் தேர்வுசெய்க"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("உணவருந்துவோர்"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("இருப்பிடத்தைத் தேர்வுசெய்க"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "தொடங்குமிடத்தைத் தேர்வுசெய்க"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("நேரத்தைத் தேர்வுசெய்க"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("பயணிகள்"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("உறங்குமிடம்"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("மாலே, மாலத்தீவுகள்"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ஓவர்வாட்டர் பங்களாக்கள்"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("ஆஸ்பென், அமெரிக்கா"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("கெய்ரோ, எகிப்து"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "சூரிய அஸ்தமனத்தின் போது அல் அஜார் மசூதியின் காட்சி"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("டாய்பேய், தைவான்"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("தைபெய் 101 ஸ்கைஸ்கிரேப்பர்"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பனிபடர்ந்த மரங்கள் சூழ்ந்த நிலப்பரப்பில் உள்ள சாலேட்"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("மச்சு பிச்சு, பெரு"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("மாச்சு பிச்சு சைட்டாடெல்"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ஹவானா, கியூபா"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பழங்கால நீளக் காரில் சாய்ந்தபடி உள்ள ஒருவன்"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("விட்ஸ்னாவ், சுவிட்சர்லாந்து"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "மலைகளின் முன்னால் ஏரிக்கு அருகில் உள்ள ஹோட்டல்"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("பிக் ஸுர், அமெரிக்கா"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("களத்தில் உள்ள டெண்ட்"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("நாப்பா, அமெரிக்கா"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("பனைமரங்கள் சூழ்ந்த குளம்"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("போர்ட்டோ, போர்ச்சுகல்"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ரிபாரியா ஸ்கொயரில் உள்ள கலகலப்பான அபார்ட்மெண்ட்டுகள்"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("டுலூம், மெக்சிகோ"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "பீச்சைத் தாண்டி உள்ள ஒற்றைக் கிளிஃப்பில் உள்ள மாயன்"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("லிஸ்பன், போர்ச்சுகல்"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("கடலில் பிரைட்டான லைட்ஹவுஸ்"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "சேருமிடத்தின் அடிப்படையில் வாடகை விடுதிகளைக் கண்டறிதல்"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Allow"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Chocolate Brownie"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Please select your favorite type of dessert from the list below. Your selection will be used to customize the suggested list of eateries in your area."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Discard"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Don\'t Allow"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Select Favorite Dessert"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Allow \"Maps\" to access your location while you are using the app?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("பட்டன்"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("With Background"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Show Alert"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "செயல்பாட்டு சிப்கள் முதன்மை உள்ளடக்கம் தொடர்பான செயலை மேற்கொள்ளத் தூண்டும் விருப்பங்களின் தொகுப்பாகும். குறிப்பிட்ட UIயில் மாறும் விதத்திலும் சூழலுக்கேற்பவும் செயல்பாட்டு சிப்கள் தோன்ற வேண்டும்."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("செயல்பாட்டு சிப்"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alert"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alert With Title"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "கீழ் வழிசெலுத்தல் பட்டிகள் கீழ்த் திரையில் மூன்று முதல் ஐந்து இடங்களைக் காட்டும். ஒவ்வொரு இடமும் ஒரு ஐகானாலும் விருப்பத்திற்குட்பட்ட உரை லேபிளாலும் குறிப்பிடப்படும். கீழ் வழிசெலுத்தல் ஐகான் தட்டப்படும்போது அந்த ஐகானுடன் தொடர்புடைய உயர்நிலை வழிசெலுத்தல் இடத்திற்குப் பயனர் இட்டுச் செல்லப்படுவார்."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("நிலைத்திருக்கும் லேபிள்கள்"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("தேர்ந்தெடுக்கப்பட்ட லேபிள்"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "கிராஸ்-ஃபேடிங் பார்வைகள் கொண்ட கீழ் வழிசெலுத்தல்"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("கீழ்ப்புற வழிசெலுத்தல்"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("சேர்"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("கீழ்த் திரையைக் காட்டு"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("மேற்தலைப்பு"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "மோடல் கீழ்த் திரை என்பது மெனு அல்லது உரையாடலுக்கு ஒரு மாற்று ஆகும். அது பயனரை ஆப்ஸின் பிற பகுதிகளைப் பயன்படுத்துவதிலிருந்து தடுக்கிறது."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("மோடல் கீழ்த் திரை"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "நிலைத்திருக்கும் கீழ்த் திரை ஒன்று ஆப்ஸின் முதன்மை உள்ளடக்கத்துக்குத் தொடர்புடைய தகவல்களைக் காட்டும். ஆப்ஸின் பிற பகுதிகளைப் பயன்படுத்தினாலும் பயனரால் நிலைத்திருக்கும் கீழ்த் திரையைப் பார்க்க முடியும்."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "நிலைத்திருக்கும் கீழ்த் திரை"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "நிலைத்திருக்கும் மற்றும் மோடல் கீழ்த் திரைகள்"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("கீழ்த் திரை"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("உரைப் புலங்கள்"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Flat, raised, outline, and more"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Buttons"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "இவை உள்ளீட்டையோ பண்புக்கூற்றையோ செயலையோ குறிப்பதற்கான சிறிய கூறுகள் ஆகும்"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("சிப்கள்"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "குறிப்பிட்ட தொகுப்பில் இருந்து ஒன்றை மட்டும் தேர்வுசெய்ய தேர்வு சிப்கள் பயன்படுகின்றன. தேர்வு சிப்களில் தொடர்புடைய விளக்க உரையோ வகைகளோ இருக்கும்."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("தேர்வு சிப்"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Code Sample"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "கிளிப்போர்டுக்கு நகலெடுக்கப்பட்டது."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("அனைத்தையும் நகலெடு"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "மெட்டீரியல் டிசைனின் வண்ணத் தட்டைக் குறிக்கின்ற வண்ணங்களும், வண்ணக் கலவை மாறிலிகளும்."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "All of the predefined colors"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Colors"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "An action sheet is a specific style of alert that presents the user with a set of two or more choices related to the current context. An action sheet can have a title, an additional message, and a list of actions."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Action Sheet"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Alert Buttons Only"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alert With Buttons"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title, optional content, and an optional list of actions. The title is displayed above the content and the actions are displayed below the content."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("விழிப்பூட்டல்"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage(
                "தலைப்புடன் கூடிய விழிப்பூட்டல்"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style alert dialogs"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alerts"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "An iOS-style button. It takes in text and/or an icon that fades out and in on touch. May optionally have a background."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style buttons"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("பட்டன்கள்"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "பல பரஸ்பர பிரத்தியேக விருப்பங்களில் இருந்து தேவையானதைத் தேர்வுசெய்யப் பயன்படுகிறது. பகுதிப் பிரிப்பிற்கான கட்டுப்பாட்டில் ஒரு விருப்பத்தைத் தேர்வுசெய்துவிட்டால் அதிலுள்ள மற்ற விருப்பங்களைத் தேர்வுசெய்ய இயலாது."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-ஸ்டைல் பகுதிப் பிரிப்பிற்கான கட்டுப்பாடு"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "பகுதிப் பிரிப்பிற்கான கட்டுப்பாடு"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, alert, and fullscreen"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialogs"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API Documentation"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "வடிப்பான் சிப்கள் உள்ளடக்கத்தை வடிகட்டுவதற்கு குறிச்சொற்களையோ விளக்கச் சொற்களையோ பயன்படுத்துகின்றன."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("வடிப்பான் சிப்"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A flat button displays an ink splash on press but does not lift. Use flat buttons on toolbars, in dialogs and inline with padding"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Flat Button"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A floating action button is a circular icon button that hovers over content to promote a primary action in the application."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Floating Action Button"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "The fullscreenDialog property specifies whether the incoming page is a fullscreen modal dialog"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Fullscreen"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("முழுத்திரை"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Info"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "குறிப்பிட்ட விஷயம் (நபர், இடம் அல்லது பொருள்) அல்லது உரையாடுவதற்கான உரை போன்ற சிக்கலான தகவல்களை சுருக்கமாகக் குறிக்க உள்ளீட்டு சிப்கள் பயன்படுகின்றன."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("சிப்பை உள்ளிடுக"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Couldn\'t display URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "ஒற்றை நிலையான உயர வரிசை பொதுவாக சில உரையையும் முன்னணி அல்லது பின்னணி ஐகானையும் கொண்டுள்ளது."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("இரண்டாம் நிலை உரை"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "நகரும் பட்டியல் தளவமைப்புகள்"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("பட்டியல்கள்"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("ஒரு வரி"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "இந்த டெமோவிற்குக் கிடைக்கக்கூடிய விருப்பங்களைப் பார்க்க இங்கே தட்டவும்."),
        "demoOptionsFeatureTitle": MessageLookupByLibrary.simpleMessage(
            "விருப்பங்களைக் காட்டுவதற்கான பட்டன்"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Options"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Outline buttons become opaque and elevate when pressed. They are often paired with raised buttons to indicate an alternative, secondary action."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Outline Button"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Raised buttons add dimension to mostly flat layouts. They emphasize functions on busy or wide spaces."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Raised Button"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "அமைப்பில் இருந்து ஒன்றுக்கும் மேற்பட்ட விருப்பங்களைத் தேர்வுசெய்ய செக்பாக்ஸ்கள் உதவும். சாதாராண செக்பாக்ஸின் மதிப்பு சரி அல்லது தவறாக இருப்பதுடன் டிரைஸ்டேட் செக்பாக்ஸின் மதிப்பு பூஜ்ஜியமாகவும்கூட இருக்கக்கூடும்."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("செக்பாக்ஸ்"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "அமைப்பில் இருந்து ஒரு விருப்பத்தைத் தேர்வுசெய்ய ரேடியோ பட்டன்கள் அனுமதிக்கும். பயனர் அனைத்து விருப்பங்களையும் ஒன்றை அடுத்து ஒன்று பார்க்க வேண்டுமானால் பிரத்தியேகத் தேர்விற்கு ரேடியோ பட்டன்களைப் பயன்படுத்தும்."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("வானொலி"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "செக்பாக்ஸ்கள், ரேடியோ பட்டன்கள் மற்றும் ஸ்விட்ச்கள்"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ஆன்/ஆஃப் செய்வதால் ஒற்றை அமைப்புகள் குறித்த விருப்பத் தேர்வின் நிலைமாறும். மாற்றத்தை நிர்வகிப்பதுடன் அது இருக்கும் நிலையை நிர்வகிக்கும் விருப்பத்தேர்விற்குரிய இன்லைன் லேபிள் தெளிவக்கப்பட வேண்டியது அவசியமாக்கும்."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("மாற்றுக"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("தேர்வுக் கட்டுப்பாடுகள்"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Simple"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "தாவல்கள் என்பவை வெவ்வேறு திரைகள், தரவுத் தொகுப்புகள் மற்றும் பிற தொடர்புகளுக்கான உள்ளடக்கத்தை ஒழுங்கமைக்கின்றன."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "சார்பின்றி நகர்த்திப் பார்க்கும் வசதியுடைய தாவல்கள்"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("தாவல்கள்"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "உரைப் புலங்கள் பயனர்களை UIயில் உரையை உள்ளிட அனுமதிக்கும். அவை வழக்கமாகப் படிவங்களாகவும் உரையாடல்களாகவும் தோன்றும்."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("மின்னஞ்சல் முகவரி"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("கடவுச்சொல்லை உள்ளிடவும்."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - அமெரிக்க ஃபோன் எண் ஒன்றை உள்ளிடவும்."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "சமர்ப்பிப்பதற்கு முன் சிவப்பு நிறத்தால் குறிக்கப்பட்டுள்ள பிழைகளைச் சரிசெய்யவும்."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("கடவுச்சொல்லை மறைக்கும்"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "சுருக்கமாக இருக்கட்டும், இது ஒரு டெமோ மட்டுமே."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("வாழ்க்கைக் கதை"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("பெயர்*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("பெயரை உள்ளிடுவது அவசியம்."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "8 எழுத்துகளுக்கு மேல் இருக்கக் கூடாது."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "எழுத்துகளை மட்டும் உள்ளிடவும்."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("கடவுச்சொல்*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("கடவுச்சொற்கள் பொருந்தவில்லை"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ஃபோன் எண்*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* அவசியமானதைக் குறிக்கிறது"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "கடவுச்சொல்லை மீண்டும் உள்ளிடுக*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("சம்பளம்"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("கடவுச்சொல்லைக் காட்டு"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("சமர்ப்பி"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "திருத்தக்கூடிய ஒற்றை வரி உரையும் எண்களும்"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "உங்களைப் பற்றிச் சொல்லுங்கள் (எ.கா., நீங்கள் என்ன செய்கிறீர்கள் என்பதையோ உங்கள் பொழுதுபோக்கு என்ன என்பதையோ எழுதுங்கள்)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("உரைப் புலங்கள்"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("உங்களை எப்படி அழைப்பார்கள்?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "உங்களை எப்படித் தொடர்புகொள்வது?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("உங்கள் மின்னஞ்சல் முகவரி"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Toggle buttons can be used to group related options. To emphasize groups of related toggle buttons, a group should share a common container"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Toggle Buttons"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("இரண்டு கோடுகள்"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "மெட்டீரியல் டிசைனில் இருக்கும் வெவ்வேறு டைப்போகிராஃபிக்கல் ஸ்டைல்களுக்கான விளக்கங்கள்."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "முன்கூட்டியே வரையறுக்கப்பட்ட உரை ஸ்டைல்கள்"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("டைப்போகிராஃபி"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Add account"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("AGREE"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCEL"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("DISAGREE"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("DISCARD"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Discard draft?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("A full screen dialog demo"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SAVE"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Full Screen Dialog"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Use Google\'s location service?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Set backup account"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("SHOW DIALOG"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("மேற்கோள் ஸ்டைல்கள் & மீடியா"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("வகைகள்"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("கேலரி"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("கார் சேமிப்புகள்"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("செக்கிங்"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("வீட்டு சேமிப்புகள்"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("சுற்றுலா"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("கணக்கு உரிமையாளர்"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "சதவீத அடிப்படையில் ஆண்டின் லாபம்"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("கடந்த ஆண்டு செலுத்திய வட்டி"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("வட்டி விகிதம்"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("வட்டி YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("அடுத்த அறிக்கை"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("மொத்தம்"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("கணக்குகள்"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("விழிப்பூட்டல்கள்"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("பில்கள்"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("நிலுவை"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("ஆடை"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("காஃபி ஷாப்கள்"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("மளிகைப்பொருட்கள்"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("உணவகங்கள்"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("மீதம்"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("பட்ஜெட்கள்"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("ஒரு பிரத்தியேக நிதி ஆப்ஸ்"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("மீதம்"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("உள்நுழைக"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("உள்நுழைக"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rallyயில் உள்நுழைக"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("கணக்கு இல்லையா?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("கடவுச்சொல்"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("எனது கடவுச்சொல்லைச் சேமி"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("பதிவு செய்க"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("பயனர்பெயர்"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("எல்லாம் காட்டு"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage(
            "அனைத்து அக்கவுண்ட்டுகளையும் காட்டு"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage(
            "அனைத்துப் பில்களையும் காட்டு"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage(
            "அனைத்து பட்ஜெட்களையும் காட்டு"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATMகளைக் கண்டறி"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("உதவி"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("கணக்குகளை நிர்வகி"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("அறிவிப்புகள்"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("பேப்பர்லெஸ் அமைப்புகள்"),
        "rallySettingsPasscodeAndTouchId": MessageLookupByLibrary.simpleMessage(
            "கடவுக்குறியீடும் தொடுதல் ஐடியும்"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("தனிப்பட்ட தகவல்"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("வெளியேறு"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("வரி தொடர்பான ஆவணங்கள்"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("கணக்குகள்"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("பில்கள்"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("பட்ஜெட்கள்"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("மேலோட்டம்"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("அமைப்புகள்"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Flutter கேலரி - ஓர் அறிமுகம்"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "லண்டனில் இருக்கும் TOASTER வடிவமைத்தது"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("அமைப்புகளை மூடும்"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("அமைப்புகள்"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("டார்க்"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("கருத்தை அனுப்பு"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("லைட்"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("மொழி"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("பிளாட்ஃபார்ம் மெக்கானிக்ஸ்"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("ஸ்லோ மோஷன்"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("சிஸ்டம்"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("உரையின் திசை"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("இடமிருந்து வலம்"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "வட்டார மொழியின் அடிப்படையில்"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("வலமிருந்து இடம்"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("உரை அளவிடல்"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("மிகப் பெரியது"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("பெரியது"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("இயல்பு"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("சிறியது"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("தீம்"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("அமைப்புகள்"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ரத்துசெய்"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("கார்ட்டை காலி செய்"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("கார்ட்"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("ஷிப்பிங் விலை:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("கூட்டுத்தொகை:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("வரி:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("மொத்தம்"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("அணிகலன்கள்"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("அனைத்தும்"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ஆடை"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("வீட்டுப்பொருட்கள்"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("ஒரு நவீன ஷாப்பிங் ஆப்ஸ்"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("கடவுச்சொல்"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("பயனர்பெயர்"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("வெளியேறு"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("மெனு"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("அடுத்து"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("புளூ ஸ்டோன் மக்"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("செரைஸ் ஸ்கேலாப் டீ-ஷர்ட்"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("சாம்பிரே நாப்கின்கள்"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("சாம்பிரே ஷர்ட்"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("கிளாசிக்கான வெள்ளை காலர்"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("கிளே ஸ்வெட்டர்"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("காப்பர் வயர் ரேக்"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("ஃபைன் லைன்ஸ் டீ-ஷர்ட்"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("கார்டன் ஸ்டிராண்டு"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("காட்ஸ்பை தொப்பி"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ஜெண்ட்ரி ஜாக்கெட்"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("கில்ட் டெஸ்க் டிரியோ"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("ஜிஞ்சர் ஸ்கார்ஃப்"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("கிரே ஸ்லவுச் டேங்க்"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("ஹுர்ராஸ் டீ செட்"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("கிட்சன் குவாட்ரோ"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("நேவி டிரவுசர்கள்"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("பிளாஸ்டர் டியூனிக்"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("குவார்டெட் டேபிள்"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("ரெயின்வாட்டர் டிரே"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("ரமோனா கிராஸ்ஓவர்"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("கடல் டியூனிக்"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("கடல்காற்றுக்கேற்ற ஸ்வெட்டர்"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("ஷோல்டர் ரோல்ஸ் டீ-ஷர்ட்"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("ஷ்ரக் பேக்"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("இதமான செராமிக் செட்"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("ஸ்டெல்லா சன்கிளாஸ்கள்"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("ஸ்டிரட் காதணிகள்"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("சக்குலண்ட் பிளாண்ட்டர்கள்"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("சன்ஷர்ட் ஆடை"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("ஸர்ஃப் & பெர்ஃப் ஷர்ட்"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("வேகபாண்ட் பேக்"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("வார்சிட்டி சாக்ஸ்கள்"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("வால்ட்டர் ஹென்லே (வெள்ளை)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("வீவ் கீரிங்"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("வெள்ளை பின்ஸ்டிரைப் ஷர்ட்"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("விட்னி பெல்ட்"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("கார்ட்டில் சேர்"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("கார்ட்டை மூடுவதற்கான பட்டன்"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("மெனுவை மூடுவதற்கான பட்டன்"),
        "shrineTooltipOpenMenu": MessageLookupByLibrary.simpleMessage(
            "மெனுவைத் திறப்பதற்கான பட்டன்"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("பொருளை அகற்றுவதற்கான பட்டன்"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("தேடலுக்கான பட்டன்"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("அமைப்புகளுக்கான பட்டன்"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "திரைக்கு ஏற்ப மாறும் ஸ்டார்ட்டர் தளவமைப்பு"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("உரைப் பகுதி"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("பட்டன்"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("தலைப்பு"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("துணைத்தலைப்பு"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("தலைப்பு"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("ஸ்டாட்டர் ஆப்ஸ்"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("சேர்க்கும்"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("பிடித்தது"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("தேடும்"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("பகிரும்")
      };
}
