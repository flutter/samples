// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a as locale. All the
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
  String get localeName => 'as';

  static m0(value) => "এই এপ্‌টোৰ উৎস ক’ডটো চাবলৈ, অনুগ্ৰহ কৰি ${value} চাওক।";

  static m1(title) => "${title} টেবৰ বাবে প্লে’চহ’ল্ডাৰ";

  static m2(destinationName) => "${destinationName} অন্বেষণ কৰক";

  static m3(destinationName) => "${destinationName} শ্বেয়াৰ কৰক";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'কোনো ৰেষ্টুৰেণ্ট নাই', one: '১ খন ৰেষ্টুৰেণ্ট', other: '${totalRestaurants} খন ৰেষ্টুৰেণ্ট')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'কোনো আস্থান নাই', one: '১ টা আস্থান', other: '${numberOfStops} টা আস্থান')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'কোনো উপলব্ধ সম্পত্তি নাই', one: '১ টা উপলব্ধ সম্পত্তি', other: '${totalProperties} টা উপলব্ধ সম্পত্তি')}";

  static m10(value) => "মৌযুক্ত ${value}";

  static m11(value) => "চেনিযুক্ত ${value}";

  static m12(value) => "বস্তু ${value}";

  static m13(error) => "ক্লিপব\'ৰ্ডলৈ প্ৰতিলিপি কৰিব পৰা নগ\'ল: ${error}";

  static m14(value) => "অবিৰত: ${value}";

  static m15(value) => "বিৰত: ${value}";

  static m16(value) => "এইটো পৰীক্ষা কৰা হৈছে: ${value}";

  static m17(value) => "এইটো বাছনি কৰা হৈছে: ${value}";

  static m18(name, phoneNumber) => "${name}ৰ ফ’ন নম্বৰটো হৈছে ${phoneNumber}";

  static m19(value) => "আপুনি এইটো বাছনি কৰিছে: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "${accountName} একাউণ্ট ${accountNumber}ত ${amount} জমা কৰা হৈছে।";

  static m21(amount) => "আপুনি এই মাহত এটিএমৰ মাচুলৰ বাবদ ${amount} খৰচ কৰিছে";

  static m22(percent) =>
      "ভাল কাম কৰিছে! আপোনাৰ চেকিং একাউণ্ট যোৱা মাহতকৈ ${percent} বেছি।";

  static m23(percent) =>
      "জৰুৰী ঘোষণা, আপুনি এই মাহৰ বাবে আপোনাৰ শ্বপিং বাজেটৰ ${percent} খৰচ কৰিছে।";

  static m24(amount) => "আপুনি এই সপ্তাহত ৰেষ্টুৰেণ্টত ${amount} খৰচ কৰিছে।";

  static m25(count) =>
      "${Intl.plural(count, one: 'আপোনাৰ সম্ভাব্য কৰ কটাৰ পৰিমাণ বৃদ্ধি কৰক! ১ টা আবণ্টন নকৰা লেনদেনত শিতানসমূহ আবণ্টন কৰক।', other: 'আপোনাৰ সম্ভাব্য কৰ কটাৰ পৰিমাণ বৃদ্ধি কৰক! ${count} টা আবণ্টন নকৰা লেনদেনত শিতানসমূহ আবণ্টন কৰক।')}";

  static m26(billName, date, amount) =>
      "${billName} বিল ${amount} পৰিশোধ কৰাৰ শেষ তাৰিখ ${date}।";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName}ৰ ${amountTotal}ৰ ভিতৰত ${amountUsed} ব্যৱহাৰ কৰা হৈছে, ${amountLeft} বাকী আছে";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'কোনো বস্তু নাই', one: '১ টা বস্তু', other: '${quantity} টা বস্তু')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "পৰিমাণ: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'শ্বপিং কাৰ্ট, কোনো বস্তু নাই', one: 'শ্বপিং কাৰ্ট, ১ টা বস্তু', other: 'শ্বপিং কার্ট, ${quantity} টা বস্তু')}";

  static m32(product) => "${product} আঁতৰাওক";

  static m33(value) => "বস্তু ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutterৰ আর্হিসমূহ GitHub ৰেপ’"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("গেলাৰীলৈ উভতি যাওক"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("শীৰ্ষ স্থানত থকা আইকন"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("একাধিক কাৰ্য"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("বেনাৰখন ৰিছেট কৰক"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "আপোনাৰ পাছৱৰ্ডটো আপোনাৰ আনটো ডিভাইচত আপডে’ট কৰা হৈছে। অনুগ্ৰহ কৰি পুনৰ ছাইন ইন কৰক।"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("নট্‌চ্চ"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "ওপঙি থকা কাৰ্য বুটামৰ অৱস্থান"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("ডক কৰা - কেন্দ্ৰত"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("ডক কৰা - শেষত"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("ওপঙি থকা - কেন্দ্ৰত"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("ওপঙি থকা - শেষত"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("একাউণ্ট"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("এলাৰ্ম"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("কেলেণ্ডাৰ"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("কেমেৰা"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("মন্তব্যসমূহ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("বুটাম"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("সৃষ্টি কৰক"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("অন্বেষণ কৰক"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "বাছনি কৰিব পৰা (দীঘলীয়াকৈ টিপক)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage("টিপিব পৰা"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("তাঞ্জাভুৰ"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("চেটিনাদ"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("সংখ্যা ১০"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("ৰেচম স্পীনাৰসকল"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("মন্দিৰসমূহ"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("তাঞ্জাভুৰ, তামিলনাডু"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("শিৱগংগা, তামিলনাডু"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "তামিলনাডুত ফুৰিবলগীয়া শীৰ্ষৰ ১০ খন চহৰ"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("দক্ষিণ ভাৰতৰ শিল্পীসকল"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("বৃহদেশ্বৰ মন্দিৰ"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("বাইকিং"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("এলিভে\'টৰ"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("জুহাল আছে"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("ডাঙৰ"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("মধ্যমীয়া"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("সৰু"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("লাইটসমূহ অন কৰক"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("ৱাশ্বাৰ"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("এম্বাৰ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("নীলা"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("নীলা ধোঁৱাবৰণীয়া"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("মাটীয়া"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("চায়ান"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("গাঢ় কমলা"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ডাঠ বেঙুনীয়া"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("সেউজীয়া"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ধোঁৱাবৰণীয়া"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ইণ্ডিগ\'"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("পাতল নীলা"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("পাতল সেউজীয়া"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("নেমুৰঙী"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("কমলা"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("গুলপীয়া"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("বেঙুনীয়া"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ৰঙা"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("গাঢ় সেউজ-নীলা"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("হালধীয়া"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "এটা ব্যক্তিগতকৃত ভ্ৰমণৰ এপ্‌"),
        "craneEat": MessageLookupByLibrary.simpleMessage("খোৱা"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("নেপলচ, ইটালী"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("খৰিৰ ভাতীত থকা পিজ্জা"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "ডাল্লাছ, মার্কিন যুক্তৰাষ্ট্ৰ"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("লিছবন, পর্তুগাল"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "এটা বৃহৎ পাষ্ট্ৰামি ছেণ্ডৱিচ ধৰি থকা মহিলা"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ভোজনৰ সময়ত ব্যৱহৃত শৈলীৰ টুলৰ সৈতে খালী বাৰ"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("কৰড\'বা, আর্জেণ্টিনা"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("বার্গাৰ"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "পৰ্টলেণ্ড, মাৰ্কিন যুক্তৰাষ্ট্ৰ"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("কোৰিয়ান টাক’"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("পেৰিছ, ফ্ৰান্স"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("চকলেটৰ মিষ্টান্ন"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("ছিউল, দক্ষিণ কোৰিয়া"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ৰেষ্টুৰাৰ কলাসুলভ বহা ঠাই"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "ছিট্টেল, আমেৰিকা যুক্তৰাষ্ট্ৰ"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("মিছামাছৰ ব্যঞ্জন"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "নাশ্বভিল্লে, মার্কিন যুক্তৰাষ্ট্ৰ"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("বেকাৰীৰ প্ৰৱেশদ্বাৰ"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "আটলাণ্টা, মাৰ্কিন যুক্তৰাষ্ট্ৰ"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ক্ৰ’ফিশ্বৰ প্লেট"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("মাদ্ৰিদ, স্পেইন"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("পেষ্ট্ৰিসহ কেফেৰ কাউণ্টাৰ"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "গন্তব্যস্থান অনুসৰি ৰেষ্টুৰেণ্টসমূহ অন্বেষণ কৰক"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("উৰণ"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("এছপেন, মার্কিন যুক্তৰাষ্ট্ৰ"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "চিৰসেউজ উদ্ভিদৰ এক বৰফাবৃত প্ৰাকৃতিক দৃশ্যৰ সৈতে শ্ব্যালেই"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "বিগ ছুৰ, মাৰ্কিন যুক্তৰাষ্ট্ৰ"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("কাইৰ\', ঈজিপ্ত"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "অল-আঝাৰ মছজিদটো সূৰ্যাস্তৰ সময়ত সুউচ্চ দেখা গৈছে"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("লিছবন, পর্তুগাল"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("সাগৰত থকা ইটাৰ আলোকস্তম্ভ"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("নাপা, মাৰ্কিন যুক্তৰাষ্ট্ৰ"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("তাল গছৰ সৈতে সাঁতোৰা পুখুৰী"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("বালি, ইণ্ডোনেছিয়া"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "তাল গজ থকা সাগৰৰ কাষৰীয়া সাঁতোৰা পুখুৰী"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("পথাৰত থকা তম্বু"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("খুমবু ভেলী, নেপাল"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "বৰফেৰে আৱৰা পৰ্বতৰ সন্মুখত প্ৰাৰ্থনাৰ পতাকা"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("মাশ্বু পিচশ্বু, পেৰু"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("মাচু পিচু চিটাডেল"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("মালে, মালদ্বীপ"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("পানীৰ ওপৰত সজোৱা বঙলা"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("ভিজনাও, ছুইজাৰলেণ্ড"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "পৰ্বতৰ সন্মুখত থকা এটা হ্ৰদৰ কাষৰীয়া হোটেল"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("মেক্সিক’ চহৰ, মেক্সিক’"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "পালাচিও ড্য বেলাছ আৰ্টেছৰ আকাশী দৃশ্য"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "মাউণ্ট ৰাশ্বম\'ৰ, মাৰ্কিন যুক্তৰাষ্ট্ৰ"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("মাউণ্ট ৰুশ্বম’ৰ"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("ছিংগাপুৰ"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ছুপাৰট্ৰী গ্ৰুভ"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("হানাভা, কিউবা"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "এখন পুৰণি নীলা গাড়ীত হালি থকা মানুহ"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "গন্তব্যস্থানৰ অনুসৰি ফ্লাইটবোৰ অন্বেষণ কৰক"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("তাৰিখ বাছনি কৰক"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("তাৰিখবোৰ বাছনি কৰক"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("গন্তব্যস্থান বাছনি কৰক"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("নৈশ আহাৰ"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("অৱস্থান বাছনি কৰক"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "যাত্ৰা আৰম্ভ কৰাৰ স্থান বাছনি কৰক"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("সময় বাছনি কৰক"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("ভ্ৰমণকাৰীসকল"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("টোপনি"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("মালে, মালদ্বীপ"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("পানীৰ ওপৰত সজোৱা বঙলা"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("এছপেন, মার্কিন যুক্তৰাষ্ট্ৰ"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("কাইৰ\', ঈজিপ্ত"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "অল-আঝাৰ মছজিদটো সূৰ্যাস্তৰ সময়ত সুউচ্চ দেখা গৈছে"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("তাইপেই, তাইৱান"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("টাইপেই ১০১ স্কাইস্ক্ৰেপাৰ"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "চিৰসেউজ উদ্ভিদৰ এক বৰফাবৃত প্ৰাকৃতিক দৃশ্যৰ সৈতে শ্ব্যালেই"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("মাশ্বু পিচশ্বু, পেৰু"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("মাচু পিচু চিটাডেল"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("হানাভা, কিউবা"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "এখন পুৰণি নীলা গাড়ীত হালি থকা মানুহ"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("ভিজনাও, ছুইজাৰলেণ্ড"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "পৰ্বতৰ সন্মুখত থকা এটা হ্ৰদৰ কাষৰীয়া হোটেল"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "বিগ ছুৰ, মাৰ্কিন যুক্তৰাষ্ট্ৰ"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("পথাৰত থকা তম্বু"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("নাপা, মাৰ্কিন যুক্তৰাষ্ট্ৰ"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("তাল গছৰ সৈতে সাঁতোৰা পুখুৰী"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("প\'র্ট\', পর্তুগাল"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ৰাইবেৰিয়া স্কুয়েৰত ৰঙীন আবাস"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("টুলুম, মেক্সিকো"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "এটা উপকূলৰ ওপৰত মায়া সভ্যতাৰ ধ্বংসাৱশেষ"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("লিছবন, পর্তুগাল"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("সাগৰত থকা ইটাৰ আলোকস্তম্ভ"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "গন্তব্যস্থান অনুসৰি সম্পত্তিসমূহ অন্বেষণ কৰক"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("অনুমতি দিয়ক"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("বাতিল কৰক"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("চীজেৰে প্ৰস্তুত কৰা কেক"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("চকলেট ব্ৰাউনি"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "অনুগ্ৰহ কৰি, তলৰ সূচীখনৰ পৰা আপোনাৰ প্ৰিয় ডিজার্টৰ প্ৰকাৰ বাছনি কৰক। আপুনি কৰা বাছনি পৰামর্শ হিচাপে আগবঢ়োৱা আপোনাৰ এলেকাত থকা খাদ্যৰ দোকানসমূহৰ সূচীখন কাষ্টমাইজ কৰিবলৈ ব্যৱহাৰ কৰা হয়।"),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("প্ৰত্যাখ্যান কৰক"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("অনুমতি নিদিব"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("প্ৰিয় ডিজার্ট বাছনি কৰক"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "আপোনাৰ বর্তমানৰ অৱস্থানটো মেপত প্ৰদর্শন কৰা হ\'ব আৰু দিক্-নিৰ্দেশনাসমূহ, নিকটৱৰ্তী সন্ধানৰ ফলাফলসমূহ আৰু আনুমানিক যাত্ৰাৰ সময়বোৰৰ বাবে এইটো ব্যৱহাৰ কৰা হ\'ব।"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "আপুনি এপ্‌টো ব্যৱহাৰ কৰি থাকোঁতে \"Maps\"ক আপোনাৰ অৱস্থান এক্সেছ কৰিবলৈ অনুমতি দিবনে?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("টিৰামিছু"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("বুটাম"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("নেপথ্যৰ সৈতে"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("সতর্কবার্তা দেখুৱাওক"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("চাট"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("গৃহ"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("প্ৰ’ফাইল"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("কেলচিয়াম (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("কেল\'ৰি"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("শ্বেতসাৰ (গ্ৰাম)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("ডিজার্ট (১ টা পৰিবেশন)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("চর্বী (গ্ৰাম)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("আইৰন (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("প্ৰ\'টিন (গ্ৰাম)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("ছ\'ডিয়াম (মিলিগ্ৰাম)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("পৰিপুষ্টি"),
        "dataTableRowApplePie": MessageLookupByLibrary.simpleMessage("এপল পাই"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("কাপকে’ক"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("ড’নাট"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("ইক্লেয়াৰ"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("ফ্র’জেন য়\'গাৰ্ট"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("জিঞ্জাৰব্ৰেড"),
        "dataTableRowHoneycomb": MessageLookupByLibrary.simpleMessage("মৌচাক"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("আইচক্ৰীম ছেণ্ডৱিচ্‌"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("জেলী বিন"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("ল\'লিপ\'প"),
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
            "কার্যৰ চিপসমূহ প্ৰাথমিক সমল সম্পর্কীয় কোনো কার্য সূচনা কৰা বিকল্পসমূহৰ এক ছেট। কার্যৰ চিপসমূহ কোনো ইউআইত পৰিৱৰ্তনশীলভাৱে আৰু প্ৰাসংগিতা অনুসৰি প্ৰদর্শন হোৱা উচিত।"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("কার্যৰ চিপ"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "এটা সতর্কবার্তাৰ ডায়ল\'গে ব্যৱহাৰকাৰীক স্বীকৃতি আৱশ্যক হোৱা পৰিস্থিতিসমূহৰ বিষয়ে জনায়। এটা সতর্কবার্তাৰ ডায়ল\'গত এটা ঐচ্ছিক শিৰোনাম আৰু এখন কার্যসমূহৰ ঐচ্ছিক সূচী থাকে।"),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("সতৰ্কবাৰ্তা"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("শিৰোনামৰ সৈতে সতর্কবার্তা"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "এখন বেনাৰে কোনো গুৰুত্বপূৰ্ণ, সংক্ষিপ্ত বাৰ্তা দেখুৱায় আৰু ব্যৱহাৰকাৰীসকলৰ বাবে বিষয়টো সম্বোধন কৰাৰ (অথবা বেনাৰখন অগ্ৰাহ্য কৰাৰ) কার্যসমূহ প্ৰদান কৰে। এইটো অগ্ৰাহ্য কৰিবলৈ এটা ব্যৱহাৰকাৰীৰ কাৰ্যৰ আৱশ্যক হয়।"),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "এখন তালিকাৰ ভিতৰত এখন বেনাৰ প্ৰদৰ্শিত কৰা"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("বেনাৰ"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "তলত অৱস্থিত এপ্‌ বাৰে নিম্নাংশত থকা এটা নেভিগে’শ্বন ড্ৰৱাৰ আৰু ওপঙি থকা কাৰ্য বুটামকে ধৰি চাৰিটা কাৰ্যলৈ এক্সেছ প্ৰদান কৰে।"),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "নেভিগে’শ্বন আৰু কাৰ্যসমূহ তলত দেখুৱায়"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("তলত অৱস্থিত এপ্‌ বাৰ"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "একেবাৰে নিম্নাংশৰ নেভিগেশ্বন বাৰসমূহে স্ক্ৰীনখনৰ একেবাৰে নিম্নাংশত তিনিৰ পৰা পাঁচটা লক্ষ্যস্থান প্ৰদর্শন কৰে। প্ৰতিটো লক্ষ্যস্থানক এটা চিহ্ন আৰু এটা ঐচ্ছিক পাঠ লেবেলেৰে প্ৰতিনিধিত্ব কৰা হয়। একেবাৰে নিম্নাংশৰ এটা নেভিগেশ্বন চিহ্ন টিপিলে ব্যৱহাৰকাৰীজনক সেই চিহ্নটোৰ সৈতে জড়িত উচ্চ-স্তৰৰ নেভিগেশ্বনৰ লক্ষ্যস্থানটোলৈ লৈ যোৱা হয়।"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("অবিৰত লেবেলসমূহ"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("বাছনি কৰা লেবেল"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "ক্ৰছ-ফে’ডিং ভিউসমূহৰ সৈতে একেবাৰে নিম্নাংশৰ নেভিগেশ্বন"),
        "demoBottomNavigationTitle": MessageLookupByLibrary.simpleMessage(
            "একেবাৰে নিম্নাংশৰ নেভিগেশ্বন"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("যোগ কৰক"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "একেবাৰে নিম্নাংশৰ শ্বীটখন দেখুৱাওক"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("হেডাৰ"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "এখন একেবাৰে নিম্নাংশৰ ম’ডাল শ্বীট হৈছে এখন মেনু অথবা এটা ডায়ল’গৰ এক বিকল্প আৰু ই ব্যৱহাৰকাৰীজনক এপ্‌টোৰ বাকী অংশ ব্যৱহাৰ কৰাত বাধা দিয়ে।"),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "একেবাৰে নিম্নাংশৰ ম’ডেল শ্বীট"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "এখন একেবাৰে নিম্নাংশৰ অবিৰত শ্বীটে এপ্‌টোৰ প্ৰাথমিক সমলক পৰিপূৰণ কৰা তথ্য দেখুৱায়। ব্যৱহাৰকাৰীয়ে এপ্‌টোৰ অন্য অংশসমূহ ব্যৱহাৰ কৰাৰ সময়তো একেবাৰে নিম্নাংশৰ অবিৰত শ্বীটখন দৃশ্যমান হৈ থাকে।"),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "একেবাৰে নিম্নাংশৰ অবিৰত শ্বীট"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "একেবাৰে নিম্নাংশৰ অবিৰত আৰু ম’ডাল শ্বীটসমূহ"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("একেবাৰে নিম্নাংশৰ শ্বীট"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("পাঠৰ ক্ষেত্ৰসমূহ"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "সমতল, উঠঙা, ৰূপৰেখা আৰু বহুতো"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("বুটামসমূহ"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "এখন কাৰ্ড হৈছে কিছুমান প্ৰাসংগিক তথ্য প্ৰতিনিধিত্ব কৰিবলৈ ব্যৱহাৰ কৰা বস্তুবোৰৰ এখন শ্বীট, যেনে এলবাম, কোনো ভৌগোলিক অৱস্থান, কোনো আহাৰ, যোগাযোগৰ সবিশেষ ইত্যাদি।"),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "ঘূৰণীয়া কোণৰ বেছলাইন কাৰ্ডসমূহ"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("কাৰ্ডসমূহ"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("চেকলিষ্ট মেনু"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "কোনো ইনপুট, বৈশিষ্ট্য অথবা কার্য প্ৰতিনিধিত্ব কৰা সংক্ষিপ্ত উপাদানবোৰ"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("চিপসমূহ"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "পচন্দৰ চিপসমূহে এটা ছেটৰ পৰা এটা একক পচন্দ প্ৰতিনিধিত্ব কৰে। পচন্দৰ চিপসমূহত সমল সম্পর্কীয় বিৱৰণমূলক পাঠ অথবা শিতানসমূহ অন্তর্ভুক্ত হয়।"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("পচন্দৰ চিপ"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "এটা ভৌতিক আৰ্হিৰ চক্ৰাকাৰ সূচক যি এপ্লিকেশ্বনটো ব্যস্ত হৈ থকাটো সূচাবলৈ ঘূৰি থাকে।"),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("চক্ৰাকাৰ অগ্ৰগতিৰ সূচক"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("ডেম’ ক’ড"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "ক্লিপব’ৰ্ডলৈ প্ৰতিলিপি কৰা হ’ল।"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("সকলো প্ৰতিলিপি কৰক"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Material Designৰ ৰঙৰ পেলেট প্ৰতিনিধিত্ব কৰা ৰং আৰু ৰঙৰ অপৰিৱর্তিত কণিকাসমূহ।"),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("পূৰ্বনিৰ্ধাৰিত সকলোবোৰ ৰং"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("ৰঙবোৰ"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("প্ৰসংগ মেনু"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "এখন কার্যৰ শ্বীট হৈছে সতর্কবার্তাৰ এক নির্দিষ্ট শৈলী, যি ব্যৱহাৰকাৰীক প্ৰাসংগিক দুটা ছেট অথবা তাতকৈ অধিক বাছনি কৰিব পৰা বিকল্পৰ সৈতে আগবঢ়ায়। এখন কার্য শ্বীটৰ এটা শিৰোনাম, এটা অতিৰিক্ত বার্তা আৰু এখন কার্যসমূহৰ সূচী থাকিব পাৰে।"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("কার্যৰ শ্বীট"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "এটা iOS-শৈলীৰ কাৰ্যকলাপৰ সূচক যি ঘড়ীৰ কাঁটাৰ দিশত ঘূৰে।"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-শৈলীৰ কাৰ্যকলাপৰ সূচকসমূহ"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("কেৱল সতর্কবার্তাৰ বুটামসমূহ"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("সতর্কবার্তাৰ সৈতে বুটামসমূহ"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "এটা সতর্কবার্তাৰ ডায়ল\'গে ব্যৱহাৰকাৰীক স্বীকৃতি আৱশ্যক হোৱা পৰিস্থিতিসমূহৰ বিষয়ে জনায়। এটা সতর্কবার্তাৰ ডায়ল\'গত এটা ঐচ্ছিক শিৰোনাম, ঐচ্ছিক সমল আৰু এখন কার্যসমূহৰ ঐচ্ছিক সূচী থাকে। শিৰোনামটো সমলৰ ওপৰত প্ৰদর্শন কৰা হয় আৰু কার্যসমূহ সমলৰ তলত প্ৰদর্শন কৰা হয়।"),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("সতৰ্কবাৰ্তা"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("শিৰোনামৰ সৈতে সতর্কবার্তা"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-শৈলীৰ সতর্কবার্তাৰ ডায়ল’গসমূহ"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("সতৰ্কবার্তাসমূহ"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "এটা iOS-শৈলীৰ বুটাম। এইটো পাঠত আৰু/অথবা এখন আইকন হিচাপে থাকে, যিটোৱে স্পর্শ কৰিলে পোহৰৰ পৰিমাণ সলনি কৰি তোলে। ঐচ্ছিকভাৱে কোনো নেপথ্য থাকিব পাৰে।"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-শৈলীৰ বুটামসমূহ"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("বুটামসমূহ"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "এডাল iOS-শৈলীৰ নেভিগেশ্বন বাৰ নেভিগেশ্বন বাৰৰ সৈতে এডাল টুলবাৰ য\'ত টুলবাৰৰ মাজত সীমিতভাৱে এটা পৃষ্ঠাৰ শিৰোনাম অন্তর্ভুক্ত হয়।"),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-শৈলীৰ নেভিগেশ্বন বাৰ"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("তাৰিখ"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("তাৰিখ আৰু সময়"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "কোনো iOS-শৈলী বাছনি কৰোঁতা ৱিজেট যিটো তাৰিখ, সময় অথবা তাৰিখ আৰু সময় দুয়োটা বাছনি কৰিবলৈ ব্যৱহাৰ কৰিব পাৰি।"),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-শৈলীৰ তাৰিখ আৰু সময় বাছনি কৰোঁতা"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("সময়"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("টাইমাৰ"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("বাছনি কৰোঁতাসকল"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS-শৈলীৰ ৰিফ্ৰেশ্ব কৰিবলৈ টনাৰ নিয়ন্ত্ৰণ কার্যকৰী কৰা এটা ৱিজেট।"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-শৈলীৰ ৰিফ্ৰেশ্ব কৰিবলৈ টনাৰ নিয়ন্ত্ৰণ"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "এটা ব্যৱহাৰ কৰাৰ সময়ত অন্য এটা ব্যৱহাৰ কৰিব নোৱাৰা বিকল্পসমূহৰ মাজৰ পৰা বাছনি কৰিবলৈ ব্যৱহাৰ কৰা হয়। বিভাজিত নিয়ন্ত্ৰণত এটা বিকল্প বাছনি কৰিলে, বিভাজিত নিয়ন্ত্ৰণত অন্য বিকল্পসমূহ বাছনি কৰিব নোৱাৰা হয়।"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-শৈলীৰ বিভাজিত নিয়ন্ত্ৰণ"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "অবিৰত অথবা বিৰত মানসমূহৰ এটা ছেটৰ পৰা বাছনি কৰিবলৈ এটা শ্লাইডাৰ ব্যৱহাৰ কৰিব পৰা যায়।"),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-শৈলীৰ শ্লাইডাৰ"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("শ্লাইডাৰ"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "এটা একক ছেটিঙৰ অন/অফ স্থিতি টগ\'ল কৰিবলৈ এটা ছুইচ্ছ ব্যৱহাৰ কৰা হয়।"),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-শৈলীৰ ছুইচ্ছ"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "এটা iOS-শৈলীৰ বুটাম নেভিগেশ্বন টেবৰ দণ্ড। একাধিক টেব প্ৰদর্শন কৰে, য\'ত ডিফ\'ল্ট হিচাপে প্ৰথম টেবটো সক্ৰিয় হৈ থাকে।"),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-শৈলীৰ বুটামৰ টেবৰ দণ্ড"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "এখন পাঠৰ ক্ষেত্ৰই ব্যৱহাৰকাৰীক এখন হাৰ্ডৱেৰ কীব\'ৰ্ড অথবা অনস্ক্ৰীন কীব\'ৰ্ডৰ দ্বাৰা পাঠ অন্তর্ভুক্ত কৰিবলৈ দিয়ে।"),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("পিন"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-শৈলীৰ পাঠৰ ক্ষেত্ৰসমূহ"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "শ্লাইডাৰসমূহে এডাল বাৰত মানৰ এক পৰিসৰ দেখুৱায় য’ৰ পৰা ব্যৱহাৰকাৰীসকলে এটা একক মান অথবা মানৰ এক পৰিসৰ বাছনি কৰিব পাৰে। শ্লাইডাৰসমূহত থীম প্ৰয়োগ কৰিব পাৰি আৰু কাষ্টমাইজ কৰিব পাৰি।"),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("কাষ্টম শ্লাইডাৰসমূহ"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "ডেটাৰ তালিকাসমূহে শাৰী আৰু স্তম্ভবোৰৰ গ্ৰিড দৰে এটা ফর্মেটত তথ্য প্ৰদৰ্শন কৰে। সেইবোৰে সহজে স্কেন কৰিব পৰাকৈ তথ্য সংগঠিত কৰে, যাতে ব্যৱহাৰকাৰীসকলে আৰ্হি আৰু অন্তৰ্নিহিত কথাবোৰ চাব পাৰে।"),
        "demoDataTableSubtitle":
            MessageLookupByLibrary.simpleMessage("তথ্যৰ শাৰী আৰু স্তম্ভসমূহ"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("ডেটাৰ তালিকাসমূহ"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "এটা বস্তুৰ ডিজাইনৰ তাৰিখ বাছনি কৰোঁতা থকা কোনো ডায়ল\'গ প্ৰদৰ্শন কৰে।"),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("তাৰিখ বাছনি কৰোঁতা"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "সৰল, সতর্কবার্তা আৰু সম্পূর্ণ স্ক্ৰীন"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("ডায়ল’গসমূহ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API নথি-পত্ৰ"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ফিল্টাৰ চিপসমূহে সমল ফিল্টাৰ কৰাৰ উপায় হিচাপে টেগসমূহ অথবা বিৱৰণমূলক শব্দবোৰ ব্যৱহাৰ কৰে।"),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ফিল্টাৰ চিপ"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "এটা সমতল বুটাম টিপিলে চিয়াঁহী পৰাৰ দৰে দৃশ্য প্ৰদর্শন কৰে কিন্তু তুলি নধৰে। সমতল বুটামসমূহ টুলবাৰসমূহত, ডায়ল’গসমূহত আৰু পেডিঙৰ সৈতে ইনলাইনত ব্যৱহাৰ কৰক"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("সমতল বুটাম"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "এটা ওপঙা কার্যৰ বুটাম হৈছে এটা বৃত্তাকাৰ আইকন বুটাম, যি এপ্লিকেশ্বনটোত এটা প্ৰাথমিক কার্য প্ৰচাৰ কৰিবলৈ সমলৰ ওপৰত ওপঙি থাকে।"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ওপঙি থকা কার্যৰ বুটাম"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog সম্পদে পৃষ্ঠাখন সম্পূর্ণ স্ক্ৰীনৰ ম’ডেল ডায়ল\'গ হয়নে নহয় সেয়া নির্দিষ্ট কৰে"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("সম্পূৰ্ণ স্ক্ৰীন"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("সম্পূৰ্ণ স্ক্ৰীন"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "গ্ৰিডৰ সূচীসমূহ প্ৰতিচ্ছবিসমূহৰ দৰে একেধৰণৰ ডেটা উপস্থাপন কৰিবলৈ সকলোতকৈ বেছি উপযুক্ত। এখন গ্ৰিডৰ সূচীৰ প্ৰতিটো বস্তুক এখন টাইল বুলি কোৱা হয়।"),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("ফুটাৰৰ সৈতে"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("হেডাৰৰ সৈতে"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("কেৱল প্ৰতিচ্ছবি"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("শাৰী আৰু স্তম্ভৰ লেইআউট"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("গ্ৰিডৰ সূচীসমূহ"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("তথ্য"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ইনপুট চিপসমূহে এক জটিল তথ্য সংক্ষিপ্ত ৰূপত প্ৰতিনিধিত্ব কৰে, যেনে এটা সত্ত্বা (লোক, ঠাই অথবা বস্তু) অথবা বার্তালাপৰ পাঠ।"),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("ইনপুট চ্চিপ"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL প্ৰদর্শন কৰিব পৰা নগ\'ল:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "এটা ভৌতিক আৰ্হিৰ চক্ৰাকাৰ সূচক যাক অগ্ৰগতি সূচক হিচাপেও জনা যায়।"),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("ৰৈখিক অগ্ৰগতি সূচক"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "এটা একক স্থিৰ উচ্চতাৰ শাৰী য’ত সচৰাচৰ কিছুমান পাঠ তথা লীডিং অথবা ট্ৰেইলিং আইকন থাকে।"),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("গৌণ পাঠ"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("স্ক্ৰ’লিং সূচীৰ লে’আউটসমূহ"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("সূচীসমূহ"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("অক্ষম কৰা মেনুৰ বস্তু"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "এখন চেকলিষ্ট মেনুৰ সৈতে এটা বস্তু"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "এখন প্ৰসংগ মেনুৰ সৈতে এটা বস্তু"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "এখন বিভক্ত মেনুৰ সৈতে এটা বস্তু"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "এখন সৰল মেনুৰ সৈতে এটা বস্তু"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("প্ৰসংগ মেনুৰ প্ৰথম বস্তু"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("প্ৰসংগ মেনুৰ তৃতীয় বস্তু"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "এখন মেনুয়ে বাছনিসমূহৰ সূচী এখন সমতলত প্ৰদর্শন কৰে। ব্যৱহাৰকাৰীসকলে এটা বুটাম, কার্য অথবা অন্য নিয়ন্ত্ৰণ ব্যৱহাৰ কৰাৰ সময়ত সেইবোৰ প্ৰদর্শিত হয়।"),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("চাৰি"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("লিংকটো পাওক"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("মেনুত থকা প্ৰথম বস্তু"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("মেনুত থকা তৃতীয় বস্তু"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("মেনুত থকা দ্বিতীয় বস্তু"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("এক"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("পূৰ্বদৰ্শন"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("আঁতৰাওক"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("শ্বেয়াৰ কৰক"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "মেনুৰ বুটামবোৰ আৰু সৰল মেনুবোৰ"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("তিনি"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("মেনু"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("দুই"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("এটা শাৰী"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "এই ডেম’টোৰ বাবে উপলব্ধ বিকল্পসমূহ চাবলৈ ইয়াত টিপক।"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("বিকল্পসমূহ চাওক"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("বিকল্পসমূহ"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ৰূপৰেখাৰ বুটামসমূহ টিপিলে অস্বচ্ছ আৰু উঠঙা হয়। সেইবোৰক সততে এটা বৈকল্পিক গৌণ কার্য সূচাবলৈ উঠঙা বুটামসমূহৰ সৈতে পেয়াৰ কৰা হয়।"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("ৰূপৰেখাৰ বুটাম"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("বাছনি কৰোঁতা প্ৰদৰ্শন কৰক"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("তাৰিখ আৰু সময়ৰ বাছনি"),
        "demoPickersTitle":
            MessageLookupByLibrary.simpleMessage("বাছনি কৰোঁতাসকল"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("ৰৈখিক, চক্ৰাকাৰ, অনিৰ্ধাৰিত"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("অগ্ৰগতিৰ সূচক"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "উঠঙা বুটামসমূ্হে অধিকাংশ সমতল লে\'আউটত মাত্ৰা যোগ কৰে। সেইবোৰে ব্যস্ত অথবা বহল ঠাইসমূহত কৰা কার্যক অধিক প্ৰধান্য দিয়ে।"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("উঠঙা বুটাম"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "শ্লাইডাৰসমূহে এডাল বাৰত মানৰ এক পৰিসৰ দেখুৱায়। সেইবিলাকত বাৰডালৰ দুয়োটা প্ৰান্তত আইকন থাকিব পাৰে যি মানৰ এক পৰিসৰ দেখুৱায়। সেইবিলাক ভলিউম, উজ্জ্বলতা আদিৰ দৰে ছেটিংসমূহ মিলোৱা অথবা প্ৰতিচ্ছবিৰ ফিল্টাৰ প্ৰয়োগ কৰাৰ বাবে উপযোগী।"),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("পৰিসৰৰ শ্লাইডাৰসমূহ"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("বিভক্ত মেনু"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "চেকবাকচসমূহে এটা ছেটৰ পৰা একাধিক বিকল্প বাছনি কৰিবলৈ ব্যৱহাৰকাৰীক অনুমতি দিয়ে। এটা সাধাৰণ চেকবাকচৰ মান সঁচা অথবা মিছা হ’ব পাৰে আৰু এটা ট্ৰাইষ্টেট চেকবাকচৰ কোনো মান নাথাকিবও পাৰে।"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("চেকবাকচ"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ৰেডিঅ’ বুটামসমূহে এটা ছেটৰ পৰা এটা বিকল্প বাছনি কৰিবলৈ ব্যৱহাৰকাৰীক অনুমতি দিয়ে। যদি আপুনি ভাবে যে ব্যৱহাৰকাৰীয়ে উপলব্ধ সকলো বিকল্প এটাৰ কাষত অন্য এটাকৈ দেখা প্ৰয়োজন তেনে ক্ষেত্ৰত কেৱল এটা বাছনি কৰিবলৈ ৰেডিঅ’ বুটামসমূহ ব্যৱহাৰ কৰক।"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("ৰেডিঅ’"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "চেকবাকচ, ৰেডিঅ’ বুটাম আৰু ছুইচ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "এটা একক ছেটিঙৰ বিকল্প অন/অফ ছুইচসমূহে ট’গল কৰে। ছুইচটোৱে নিয়ন্ত্ৰণ কৰা বিকল্পটো তথা সেয়া কি স্থিতিত আছে তাক আনুষংগিক ইনলাইন লেবেলটোৱে স্পষ্ট কৰা উচিত।"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("সলনি কৰক"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("বাছনি নিয়ন্ত্ৰণসমূহ"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "এটা সৰল ডায়ল\'গে ব্যৱহাৰকাৰীক বিভিন্ন বিকল্পসমূহৰ পৰা বাছনি কৰাৰ সুবিধা দিয়ে। এটা সৰল ডায়ল\'গৰ বাছনি কৰাৰ বাবে থকা বিকল্পসমূহৰ ওপৰত প্ৰদর্শন কৰা এটা ঐচ্ছিক শিৰোনাম থাকে।"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("সৰল"),
        "demoSimpleMenuTitle": MessageLookupByLibrary.simpleMessage("সৰল মেনু"),
        "demoSlidersContinuous": MessageLookupByLibrary.simpleMessage("অবিৰত"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "কাষ্টম থীমযুক্ত অবিৰত পৰিসৰৰ শ্লাইডাৰ"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "সম্পাদনা কৰিব পৰা সাংখ্যিক মানৰ সৈতে অবিৰত"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "শ্লাইডাৰসমূহে এডাল বাৰত মানৰ এক পৰিসৰ দেখুৱায় য’ৰ পৰা ব্যৱহাৰকাৰীসকলে এটা একক মান বাছনি কৰিব পাৰে। সেইবিলাক ভলিউম, উজ্জ্বলতা আদিৰ দৰে ছেটিংসমূহ মিলোৱা অথবা প্ৰতিচ্ছবিৰ ফিল্টাৰ প্ৰয়োগ কৰাৰ বাবে উপযোগী।"),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("পৃথক"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "কাষ্টম থীমযুক্ত পৃথক শ্লাইডাৰ"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "সম্পাদনা কৰিব পৰা সাংখ্যিক মান"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "ছোৱাইপ কৰি কোনো মান বাছনি কৰিবৰ বাবে ৱিজেটসমূহ"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("শ্লাইডাৰসমূহ"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "আপুনি স্নেকবাৰ কার্যটো টিপিছে।"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("একশ্বন"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("এডাল স্নেকবাৰ দেখুৱাওক"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "স্নেকবাৰসমূহে ব্যৱহাৰকাৰীসকলক কোনো এটা এপে সম্পাদন কৰা অথবা কৰিব ল\'গা কোনো প্ৰক্ৰিয়াৰ সম্পর্কে জনায়। সেইবোৰ স্ক্ৰীনখনৰ একেবাৰে তলৰফালে অস্থায়ীভাৱে প্ৰদর্শিত হয়। সেইবোৰে ব্যৱহাৰকাৰীগৰাকীৰ অভিজ্ঞতাত ব্যাঘাত জন্মোৱা উচিত নহয় আৰু সেইবোৰ অদৃশ্য হ\'বৰ বাবে ব্যৱহাৰকাৰীৰ ইনপুটৰ আৱশ্যক নহয়।"),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "স্নেকবাৰসমূহে স্ক্ৰীনখনৰ একেবাৰে তলত বার্তাসমূহ প্ৰদর্শন কৰে"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("এইডাল এডাল স্নেকবাৰ।"),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("স্নেকবাৰসমূহ"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "টেবসমূহে সমলক বিভিন্ন স্ক্ৰীনসমূহত, ডেটা ছেটসমূহত আৰু অন্য ভাব-বিনিময়সমূহত সংগঠিত কৰে।"),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "স্বতন্ত্ৰভাৱে স্ক্ৰ’ল কৰিবপৰা ভিউসমূহৰ সৈতে টেবসমূহ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("টেবসমূহ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "পাঠ ক্ষেত্ৰসমূহে ব্যৱহাৰকাৰীসকলক এটা ইউআইত পাঠ ভৰাবলৈ দিয়ে। সেইবোৰ সাধাৰণতে ফর্ম আৰু ডায়ল’গসমূহত দেখা পোৱা যায়।"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ইমেইল"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "অনুগ্ৰহ কৰি এটা পাছৱর্ড দিয়ক।"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - এটা আমেৰিকা যুক্তৰাষ্ট্ৰৰ ফ’ন নম্বৰ দিয়ক।"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "দাখিল কৰাৰ আগতে অনুগ্ৰহ কৰি ৰঙা হৈ থকা আসোঁৱাহসমূহ সমাধান কৰক।"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("পাছৱৰ্ডটো লুকুৱাওক"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "এইটো দীঘলীয়া নকৰিব, এইটো এটা ডেম’হে।"),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("জীৱন কাহিনী"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("নাম*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("নামটো আৱশ্যক।"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("৮টাতকৈ অধিক বর্ণ নহয়।"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "অনুগ্ৰহ কৰি কেৱল বৰ্ণসমূহ দিয়ক।"),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("পাছৱৰ্ড*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("পাছৱর্ডসমূহ মিলা নাই"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ফ’ন নম্বৰ*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* চিহ্নই প্ৰয়োজনীয় ক্ষেত্ৰক চিহ্নিত কৰে"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("পাছৱৰ্ডটো পুনৰ টাইপ কৰক*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("দৰমহা"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("পাছৱৰ্ডটো দেখুৱাওক"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("দাখিল কৰক"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "সম্পাদনা কৰিব পৰা পাঠ আৰু সংখ্যাসমূহৰ একক শাৰী"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "আমাক আপোনাৰ বিষয়ে কওক (উদাহৰণস্বৰূপে, আপুনি কি কৰে অথবা আপোনাৰ কৰি ভাল পোৱা কামবোৰৰ বিষয়ে লিখক)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("পাঠৰ ক্ষেত্ৰসমূহ"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("ইউএছডি"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("মানুহে আপোনাক কি বুলি মাতে?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("আপোনাৰ ফ’ন নম্বৰটো কি?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("আপোনাৰ ইমেইল ঠিকনা"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "এটা বস্তুৰ ডিজাইনৰ সময় বাছনি কৰোঁতা থকা কোনো ডায়ল\'গ প্ৰদৰ্শন কৰে।"),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("সময় বাছনি কৰোঁতা"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "প্ৰাসংগিক বিকল্পসমূহ একগোট কৰিবলৈ ট’গল বুটামসমূহ ব্যৱহাৰ কৰিব পৰা যায়। প্ৰাসংগিক ট’গল বুটামসমূহৰ গোটসমূহক প্ৰাধান্য দিবলৈ, এটা গোটে এটা সাধাৰণ কণ্টেনাৰ শ্বেয়াৰ কৰা উচিত"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ট’গলৰ বুটামসমূহ"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "টুলটিপসমূহে পাঠ লেবেলসমূহ প্ৰদান কৰে, যিবোৰে কোনো বুটাম অথবা অন্য ব্যৱহাৰকাৰীৰ ইণ্টাৰফে’চৰ কার্য বর্ণনা কৰাত সহায় কৰে। ব্যৱহাৰকাৰীসকলে কোনো উপাদানৰ ওপৰত ধৰি থাকিলে, মনোযোগ দিলে অথবা দীঘলীয়া সময় ধৰি টিপি থাকিলে টুলটিপে তথ্যমূলক পাঠ প্ৰদর্শন কৰে।"),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "টুলটিপ প্ৰদর্শন কৰিবলৈ দীঘলীয়াকৈ টিপা অথবা টিপি ধৰি থকা।"),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "দীঘলীয়াকৈ টিপা অথবা টিপি ধৰি থকাত প্ৰদর্শিত চমু বার্তা"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("টুলটিপসমূহ"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("দুটা শাৰী"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Designত পোৱা বিভিন্ন টাইপ’গ্ৰাফীকেল শৈলীৰ সংজ্ঞাসমূহ।"),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "পূর্বনির্ধাৰিত সকলো পাঠৰ শৈলী"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("টাইপ’গ্ৰাফী"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("একাউণ্ট যোগ কৰক"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("সন্মত"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("বাতিল কৰক"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("অসন্মত"),
        "dialogDiscard":
            MessageLookupByLibrary.simpleMessage("প্ৰত্যাখ্যান কৰক"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("খচৰা প্ৰত্যাখ্যান কৰিবনে?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "এটা সম্পূর্ণ স্ক্ৰীনৰ ডায়ল\'গ ডেম’"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ছেভ কৰক"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("সম্পূর্ণ স্ক্ৰীনৰ ডায়ল\'গ"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Googleক এপ্‌সমূহে অৱস্থান নির্ধাৰণ কৰাত সহায় কৰিবলৈ দিয়ক। এই কার্যই কোনো এপ্ চলি নাথাকিলেও Googleলৈ নামবিহীনভাৱে অৱস্থানৰ ডেটা পঠিওৱা বুজায়।"),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Googleৰ অৱস্থান সেৱা ব্যৱহাৰ কৰিবনে?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("বেকআপ একাউণ্ট ছেট কৰক"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ডায়ল\'গ দেখুৱাওক"),
        "dismiss": MessageLookupByLibrary.simpleMessage("অগ্ৰাহ্য কৰক"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("শিতানসমূহ"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("গেলাৰী"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("সমুদ্ৰতীৰ"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("ব্ৰ’ঞ্জৰ কাম"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("চেন্নাই"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("চেটিনাদ"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("মাছমৰীয়া"),
        "placeFlowerMarket": MessageLookupByLibrary.simpleMessage("ফুলৰ বজাৰ"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("দুপৰীয়াৰ আহাৰৰ প্ৰস্তুতি"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("বজাৰ"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("পন্ডিচেৰী"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("নিমখৰ ফার্ম"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("স্কুটাৰসমূহ"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("ছিল্ক প্ৰস্তুতকর্তা"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("টাঞ্জৰ"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("থাঞ্জাবৰ মন্দিৰ"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("গাড়ীৰ সঞ্চয়"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("চেকিং"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("ঘৰৰ সঞ্চয়"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("বন্ধৰ দিন"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("একাউণ্টৰ গৰাকী"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("বাৰ্ষিক আয়ৰ শতাংশ"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("যোৱা বছৰ পৰিশোধ কৰা সুদ"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("সুদৰ হাৰ"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("সুদ YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("পৰৱর্তী বিবৃতি"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("সৰ্বমুঠ"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("একাউণ্টসমূহ"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("সতৰ্কবার্তাসমূহ"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("বিলসমূহ"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("সম্পূৰ্ণ কৰাৰ শেষ তাৰিখ"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("পোছাক"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("কফিৰ দোকানসমূহ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("গেলামাল"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("ৰেষ্টুৰেণ্টসমূহ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("বাওঁ"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("বাজেটসমূহ"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("এটা ব্যক্তিগত বিত্তীয় এপ্‌"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("বাওঁ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("লগ ইন কৰক"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("লগ ইন কৰক"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rallyত লগ ইন কৰক"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("কোনো একাউণ্ট নাই নেকি?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("পাছৱৰ্ড"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("মোক মনত ৰাখক"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("ছাইন আপ কৰক"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("ব্যৱহাৰকাৰীৰ নাম"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("সকলো চাওক"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("সকলো একাউণ্ট চাওক"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("সকলো বিল চাওক"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("সকলো বাজেট চাওক"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("এটিএম বিচাৰক"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("সহায়"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("একাউণ্টসমূহ পৰিচালনা কৰক"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("জাননীসমূহ"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("কাকতবিহীন ছেটিংসমূহ"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("পাছক’ড আৰু স্পৰ্শ আইডি"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("ব্যক্তিগত তথ্য"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("ছাইন আউট কৰক"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("কৰ সম্পর্কীয় নথিসমূহ"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("একাউণ্টসমূহ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("বিলসমূহ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("বাজেটসমূহ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("অৱলোকন"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ছেটিংসমূহ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Galleryৰ বিষয়ে"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("লণ্ডনত TOASTERএ ডিজাইন কৰা"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("ছেটিংসমূহ বন্ধ কৰক"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ছেটিংসমূহ"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("গাঢ়"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("মতামত পঠিয়াওক"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("পাতল"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("ল’কেল"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("প্লেটফ’ৰ্ম মেকানিকসমূহ"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("মন্থৰ গতি"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("ছিষ্টেম"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("পাঠৰ দিশ"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("বাওঁফালৰ পৰা সোঁফাললৈ"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("ল’কেল ভিত্তিক"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("সোঁফালৰ পৰা বাওঁফাললৈ"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("পাঠ মিলোৱা কাৰ্য"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("বৃহৎ"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("ডাঙৰ"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("সাধাৰণ"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("সৰু"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("থীম"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("ছেটিংসমূহ"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("বাতিল কৰক"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("কাৰ্টত থকা সমল মচক"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("কাৰ্ট"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("শ্বিপিং:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("প্ৰাথমিক মুঠ:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("কৰ:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("সর্বমুঠ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("আনুষংগিক সামগ্ৰী"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("সকলো"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("পোছাক"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ঘৰ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "ফেশ্বনৰ লগত জড়িত এটা খুচৰা এপ্‌"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("পাছৱৰ্ড"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ব্যৱহাৰকাৰীৰ নাম"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("লগ আউট কৰক"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("মেনু"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("পৰৱৰ্তী"),
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
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
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
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("কাৰ্টত যোগ কৰক"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("কাৰ্ট বন্ধ কৰক"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("মেনু বন্ধ কৰক"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("মেনু খোলক"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("বস্তু আঁতৰাওক"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("সন্ধান কৰক"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("ছেটিংসমূহ"),
        "signIn": MessageLookupByLibrary.simpleMessage("ছাইন ইন কৰক"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "এটা প্ৰতিক্ৰিয়াশীল ষ্টাৰ্টাৰ লে’আউট"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("মূল অংশ"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("বুটাম"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("শীৰ্ষ শিৰোনাম"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("ছাবটাইটেল"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("শিৰোনাম"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("ষ্টাৰ্টাৰ এপ্‌"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("যোগ কৰক"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("প্ৰিয়"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("সন্ধান কৰক"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("শ্বেয়াৰ কৰক")
      };
}
