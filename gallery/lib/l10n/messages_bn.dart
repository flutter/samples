// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a bn locale. All the
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
  String get localeName => 'bn';

  static m0(value) => "এই অ্যাপের সোর্স কোড দেখতে ${value}-এ দেখুন।";

  static m1(title) => "${title} ট্যাবের প্লেসহোল্ডার";

  static m2(destinationName) => "দেখুন ${destinationName}";

  static m3(destinationName) => "শেয়ার করুন ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'রেস্তোরাঁ নেই', one: '১টি রেস্তোঁরা', other: '${totalRestaurants}টি রেস্তোঁরা')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'ননস্টপ', one: '১টি স্টপ', other: '${numberOfStops}টি স্টপ')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'কোনও প্রপার্টি ভাড়া পাওয়া যাবে না', one: '১টি প্রপার্টি ভাড়া পাওয়া যাবে', other: '${totalProperties}টি প্রপার্টি ভাড়া পাওয়া যাবে')}";

  static m10(value) => "মধু সহ ${value}";

  static m11(value) => "চিনি সহ ${value}";

  static m12(value) => "আইটেম ${value}";

  static m13(error) => "ক্লিপবোর্ডে কপি করা যায়নি: {সমস্যা}";

  static m14(value) => "নিরবিচ্ছিন্ন: ${value}";

  static m15(value) => "পৃথক মান: ${value}";

  static m16(value) => "চেক করা হয়েছে: ${value}";

  static m17(value) => "বেছে নেওয়া হয়েছে: ${value}";

  static m18(name, phoneNumber) => "${name} ফোন নম্বর হল ${phoneNumber}";

  static m19(value) => "আপনি বেছে নিয়েছেন: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "${accountName} অ্যাকাউন্ট ${accountNumber}-এ ${amount}।";

  static m21(amount) => "এই মাসে এটিএম ফি হিসেবে আপনি ${amount} খরচ করেছেন";

  static m22(percent) =>
      "ভাল হয়েছে! আপনার চেকিং অ্যাকাউন্ট আগের মাসের থেকে ${percent} বেশি।";

  static m23(percent) =>
      "আপডেট, আপনি এই মাসে ${percent} কেনাকাটার বাজেট ব্যবহার করে ফেলেছেন।";

  static m24(amount) => "এই সপ্তাহে রেস্তোরাঁয় আপনি ${amount} খরচ করেছেন।";

  static m25(count) =>
      "${Intl.plural(count, one: 'আপনার ট্যাক্সের সম্ভাব্য ছাড় বাড়ান! ১টি অ্যাসাইন না করা ট্রানজ্যাকশনে বিভাগ অ্যাসাইন করুন।', other: 'আপনার ট্যাক্সের সম্ভাব্য ছাড় বাড়ান! ${count}টি অ্যাসাইন না করা ট্রানজ্যাকশনে বিভাগ অ্যাসাইন করুন।')}";

  static m26(billName, date, amount) =>
      "${billName} ${date}-এ ${amount} টাকার বিল বাকি আছে।";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} বাজেটের ${amountTotal}-এর মধ্যে ${amountUsed} খরচ হয়েছে, ${amountLeft} বাকি আছে";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'কোনও আইটেম নেই', one: '১টি আইটেম', other: '${quantity}টি আইটেম')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "পরিমাণ: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'শপিং কার্ট, কোনও আইটেম নেই', one: 'শপিং কার্ট, ১টি আইটেম আছে', other: 'শপিং কার্ট, ${quantity}টি আইটেম আছে')}";

  static m32(product) => "সরান {প্রোডাক্ট}";

  static m33(value) => "আইটেম ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter স্যাম্পেল GitHub রিপোজিটরি"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("গ্যালারিতে ফিরুন"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("লিডিং আইকন"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("বহুমুখী অ্যাকশন"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("ব্যানার রিসেট করুন"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "অন্যান্য ডিভাইসে আপনার পাসওয়ার্ড আপডেট করা হয়েছে। আবার সাইন-ইন করুন।"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("নচ"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "যেখানে ফ্লোটিং অ্যাকশন বোতাম আছে"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("ডক করা - মাঝখানে"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("ডক করা - নিচের দিকে"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("ফ্লোটিং - মাঝখানে"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("ফ্লোটিং - নিচের দিকে"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("অ্যাকাউন্ট"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("অ্যালার্ম"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("ক্যালেন্ডার"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("ক্যামেরা"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("মন্তব্য"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("বোতাম"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("তৈরি করুন"),
        "cardsDemoExplore":
            MessageLookupByLibrary.simpleMessage("কী কী আছে দেখুন"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "বেছে নিতে পারেন (বেশিক্ষণ প্রেস করুন)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("ট্যাপ করতে পারেন"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("তাঞ্জাভুর"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("চেট্টিনাড"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("১০ নম্বর"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("রেশম তন্তুবায়"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("মন্দির"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("তাঞ্জাভুর, তামিলনাড়ু"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("শিবগঙ্গা, তামিলনাড়ু"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "তামিলনাড়ুতে যে ১০টি শহরে অবশ্যই ভ্রমণ করতে হবে"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("দক্ষিণ ভারতের কারিগর"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("বৃহদীশ্বর মন্দির"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("সাইকেল চালানো"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("লিফ্ট"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("ফায়ারপ্লেস"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("বড়"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("মাজারি"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("ছোট"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("লাইট চালু করুন"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("ওয়াশিং মেশিন"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("হলদে বাদামি"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("নীল"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("নীলচে ধূসর"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("বাদামি"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("সবুজ-নীল"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("গাঢ় কমলা"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("গাঢ় লাল-বেগুনি"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("সবুজ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ধূসর"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("নীলচে বেগুনি"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("হালকা নীল"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("হালকা সবুজ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("লেবু রঙ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("কমলা"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("গোলাপী"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("বেগুনি"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("লাল"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("সবজে নীল"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("হলুদ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "নিজের মতো সাজিয়ে নেওয়া ট্রাভেল অ্যাপ"),
        "craneEat": MessageLookupByLibrary.simpleMessage("খাদ্য"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("ন্যাপলি, ইতালি"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("কাঠের চুলায় পিৎজা"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("ডালাস, মার্কিন যুক্তরাষ্ট্র"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("লিসবন, পর্তুগাল"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "মহিলাটি বিশাল পাস্ট্রমি স্যান্ডউইচ ধরে রয়েছে"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ডিনার স্টাইলের চেয়ারের সাথে খালি বার"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("কর্ডোবা, আর্জেন্টিনা"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("বার্গার"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "পোর্টল্যান্ড, মার্কিন যুক্তরাষ্ট্র"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("কোরিয়ান ট্যাকো"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("প্যারিস, ফ্রান্স"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("চকোলেট ডেজার্ট"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("সিওল, দক্ষিণ কোরিয়া"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "আর্টসির রেস্তোঁরা বসার জায়গা"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "সিয়াটেল, মার্কিন যুক্তরাষ্ট্র"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("চিংড়ি মাছের খাবার"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "ন্যাসভেলি, মার্কিন যুক্তরাষ্ট্র"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("বেকারির প্রবেশদ্বার"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "আটলান্টা, মার্কিন যুক্তরাষ্ট্র"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("প্লেট ভর্তি চিংড়ি মাছ"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("মাদ্রিদ, স্পেন"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("পেস্ট্রি সহ ক্যাফে কাউন্টার"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "গন্তব্যের হিসেবে রেস্তোরাঁ দেখুন"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("উড়া"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "অ্যাসপেন, মার্কিন যুক্তরাষ্ট্র"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "চিরসবুজ গাছ সহ একটি তুষারময় আড়াআড়ি কুটীর"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "বিগ সার, মার্কিন যুক্তরাষ্ট্র"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("কায়েরো, মিশর"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "সূর্যাস্তের সময় আল-আজহার মসজিদের টাওয়ার"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("লিসবন, পর্তুগাল"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("সমুদ্রে ইটের বাতিঘর"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("নাপা, মার্কিন যুক্তরাষ্ট্র"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("তাল গাছ সহ পুল"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("বালি, ইন্দোনেশিয়া"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "তাল গাছ সহ সমুদ্রের পাশের পুল"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ফিল্ডে টেন্ট"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("কুম্ভ উপত্যকা, নেপাল"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "বরফের পাহাড়ের সামনে প্রার্থনার পতাকা"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("মাচু পিচ্চু, পেরু"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("মাচু পিচ্চু দুর্গ"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("মালে, মালদ্বীপ"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ওভার ওয়াটার বাংলো"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("ভিতজানাউ, সুইজারল্যান্ড"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "পাহাড়ের সামনে লেক সাইড হোটেল"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("মেক্সিকো সিটি, মেক্সিকো"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "প্যালাসিও দে বেলারাস আর্টেসের এরিয়াল ভিউ"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "মাউন্ট রুসমোর, মার্কিন যুক্তরাষ্ট্র"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("মাউন্ট রাশমোর"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("সিঙ্গাপুর"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("সুপারট্রি গ্রোভ"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("হাভানা, কিউবা"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "একজন পুরনো নীল গাড়িতে ঝুঁকে দেখছে"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "গন্তব্যের হিসেবে ফ্লাইট খুঁজুন"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("তারিখ বেছে নিন"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("তারিখ বেছে নিন"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("গন্তব্য বেছে নিন"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("ডাইনার্স"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("লোকেশন বেছে নিন"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("উৎপত্তি স্থল বেছে নিন"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("সময় বেছে নিন"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("ভ্রমণকারী"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("ঘুম"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("মালে, মালদ্বীপ"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ওভার ওয়াটার বাংলো"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "অ্যাসপেন, মার্কিন যুক্তরাষ্ট্র"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("কায়েরো, মিশর"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "সূর্যাস্তের সময় আল-আজহার মসজিদের টাওয়ার"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("তাইপেই, তাইওয়ান"),
        "craneSleep11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "তাইপেই ১০১ স্কাই স্ক্র্যাপার"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "চিরসবুজ গাছ সহ একটি তুষারময় আড়াআড়ি কুটীর"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("মাচু পিচ্চু, পেরু"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("মাচু পিচ্চু দুর্গ"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("হাভানা, কিউবা"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "একজন পুরনো নীল গাড়িতে ঝুঁকে দেখছে"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("ভিতজানাউ, সুইজারল্যান্ড"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "পাহাড়ের সামনে লেক সাইড হোটেল"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "বিগ সার, মার্কিন যুক্তরাষ্ট্র"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ফিল্ডে টেন্ট"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("নাপা, মার্কিন যুক্তরাষ্ট্র"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("তাল গাছ সহ পুল"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("পোর্টো, পর্তুগাল"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "রিবেরিয়া স্কোয়ারে রঙিন অ্যাপার্টমেন্ট"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("তুলুম, মেক্সিকো"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "সমুদ্র সৈকতের কোনও একটি পাহাড়ে মায়ান সভ্যতার ধ্বংসাবশেষ"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("লিসবন, পর্তুগাল"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("সমুদ্রে ইটের বাতিঘর"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "গন্তব্যের হিসেবে প্রপার্টি দেখুন"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("অনুমতি দিন"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("আপেল পাই"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("বাতিল করুন"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("চিজকেক"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("চকলেট ব্রাউনি"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "নিচে উল্লেখ করা তালিকা থেকে পছন্দের মিষ্টি বেছে নিন। আপনার পছন্দের হিসেবে এলাকার খাবারের দোকানের সাজেস্ট করা একটি তালিকা কাস্টমাইজ করা হবে।"),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("বাতিল করুন"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("অনুমতি দেবেন না"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("পছন্দের মিষ্টি বেছে নিন"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "আপনার বর্তমান লোকেশন ম্যাপে দেখানো হবে এবং সেই সাথে দিকনির্দেশের ও আশেপাশের সার্চের ফলাফলের জন্য ব্যবহার হবে এবং যাত্রাপথের আনুমানিক সময় জানতে ব্যবহার হবে।"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "অ্যাপ ব্যবহার করার সময়ে \"Maps\"-কে আপনার লোকেশন অ্যাক্সেস করার অনুমতি দিতে চান?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("তিরামিসু"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("বোতাম"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("ব্যাকগ্রাউন্ড সহ"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("সতর্কতা দেখান"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("চ্যাট"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("হোম"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("প্রোফাইল"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("ক্যালসিয়াম (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("ক্যালোরি"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("শর্করা (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("ডেসার্ট (১জনকে দেওয়া যাবে)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("ফ্যাট (g)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("আয়রন (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("প্রোটিন (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("সোডিয়াম (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("পুষ্টি"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("আপেল পাই"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Donut"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Eclair"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("জমাট ইয়োগার্ট"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Gingerbread"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Honeycomb"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Ice Cream Sandwich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("4.3 Jelly Bean"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Lollipop"),
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
            "অ্যাকশন চিপ হল বিকল্পগুলির একটি সেট যা প্রাথমিক কন্টেন্ট সম্পর্কিত অ্যাকশন ট্রিগার করে। অ্যাকশন চিপ নিয়ম করে কতটা প্রাসঙ্গিক সেই হিসেবে UI-তে দেখা যায়।"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("অ্যাকশন চিপ"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "সতর্কতা সংক্রান্ত ডায়ালগ পরিস্থিতি সম্পর্কে ব্যবহারকারীকে জানায়, যা খেয়াল রাখতে হয়। সতর্কতা সংক্রান্ত ডায়ালগে ঐচ্ছিক শীর্ষক এবং ঐচ্ছিক অ্যাকশনের তালিকা দেওয়া থাকে।"),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("সতর্কতা"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("সতর্ক বার্তার শীর্ষক"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "ব্যানার গুরুত্বপূর্ণ, সংক্ষিপ্ত অথচ স্পষ্ট মেসেজে দেখায় এবং সেটি নিয়ে কিছু করতে (বা ব্যানার খারিজ করতে) ব্যবহারকারীদের সুযোগ দেয়। ব্যানার খারিজ করতে ব্যবহারকারীকে পদক্ষেপ নিতে হবে।"),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "একটি তালির মধ্যে ব্যানার দেখানো হচ্ছে"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("ব্যানার"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "স্ক্রিনের নিচের দিকের অ্যাপ বার থেকে নিচের নেভিগেশন ড্রয়ার এবং ফ্লোটিং অ্যাকশন বোতাম সহ সর্বোচ্চ আরও চারটে অ্যাকশন অ্যাক্সেস করার অনুমতি দেয়।"),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "স্ক্রিনের নিচের দিকে নেভিগেশন এবং অ্যাকশনের বিকল্প দেখান"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "স্ক্রিনের নিচের দিকে থাকা অ্যাপ বার"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "নিচের নেভিগেশন বার কোনও স্ক্রিনের নীচের দিকে তিন থেকে পাঁচটি গন্তব্য দেখায়। প্রতিটি গন্তব্য একটি আইকন এবং একটি এচ্ছিক টেক্সট লেবেল দিয়ে দেখানো হয়। নিচের নেভিগেশন আইকন ট্যাপ করা হলে, ব্যবহারকারীকে সেই আইকনের সাথে জড়িত একেবারে উপরের নেভিগেশন গন্তব্যে নিয়ে যাওয়া হয়।"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("সব সময় দেখা যাবে এমন লেবেল"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("বেছে নেওয়া লেবেল"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "ক্রস-ফেডিং ভিউ সহ নিচের দিকে নেভিগেশন"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("নিচের দিকে নেভিগেশন"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("যোগ করুন"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("বটম শিট দেখান"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("হেডার"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "\'মোডাল বটম শিট\' হল মেনু অথবা ডায়ালগের একটি বিকল্প এবং এটি ব্যবহারকারীকে অ্যাপের অন্যান্য ফিচার ইন্টার‌্যাক্ট করতে বাধা দেয়।"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("মোডাল বটম শিট"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "সব সময় দেখা যায় এমন বোটম শিট অ্যাপের প্রধান কন্টেন্টের সাথে সম্পর্কিত অন্যান্য তথ্য দেখায়। ব্যবহারকারী অ্যাপের অন্যান্য ফিচারেরে সাথে ইন্ট্যারঅ্যাক্ট করলে সব সময় দেখা যায় এমন বোটম শিট।"),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "সব সময় দেখা যায় এমন বোটম শিট"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "সব সময় দেখা যায় এমন এবং মোডাল বটম শিট"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage("বটম শিট"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("টেক্সট ফিল্ড"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "ফ্ল্যাট, বাড়ানো, আউটলাইন এবং অনেক কিছু"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("বোতাম"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "কার্ড হল কোনও জিনিসের তৈরি পৃষ্ঠা যেখানে কিছু তথ্য থাকে, যেমন অ্যালবাম, ভৌগোলিক লোকেশন, খাবার সংক্রান্ত তথ্য, পরিচিতির বিবরণ ইত্যাদি সেখানে উল্লেখ করা হয়।"),
        "demoCardSubtitle":
            MessageLookupByLibrary.simpleMessage("গোল কোণযুক্ত বেসলাইন কার্ড"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("কার্ড"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("চেকলিস্ট মেনু"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "সারিবদ্ধ এলিমেন্ট যা ইনপুট, অ্যাট্রিবিউট বা অ্যাকশনকে তুলে ধরে"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("চিপস"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "পছন্দের চিপ সেটের থেকে একটি পছন্দকে তুলে ধরে। পছন্দের চিপে প্রাসঙ্গিক বর্ণনামূলক টেক্সট বা বিভাগ থাকে।"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("পছন্দের চিপ"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "একটি বৃত্তাকার মেটেরিয়াল ডিজাইনের প্রগ্রেস নির্দেশক, যেটি অ্যাপ্লিকেশন কাজ করছে কিনা তা বোঝানোর জন্য ঘোরে।"),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("বৃত্তাকার প্রগ্রেস নির্দেশক"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("ডেমো কোড"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("ক্লিপবোর্ডে কপি করা হয়েছে।"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("সব কিছু কপি করুন"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "রঙ এবং গ্রেডিয়েন্টের জন্য ধ্রুবক যা মেটেরিয়াল ডিজাইনের রঙের প্যালেট তুলে ধরে।"),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("আগে থেকে যেসব দেখানো রঙ"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("রঙ"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("সংশ্লিষ্ট মেনু"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "একটি অ্যাকশন শিট হল নির্দিষ্ট ধরনের অ্যালার্ট যা ব্যবহারকারীদের কাছে বর্তমান প্রসঙ্গ সম্পর্কিত দুটি বা তারও বেশি সেট তুলে ধরে. অ্যাকশন শিটে শীর্ষক, অতিরিক্ত মেসেজ এবং অ্যাকশনের তালিকা থাকতে পারে।"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("অ্যাকশন শিট"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "একটি iOS-স্টাইলে অ্যাক্টিভিটি নির্দেশক যেটি ঘড়ির কাঁটার দিকে ঘোরে।"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-স্টাইলে অ্যাক্টিভিটি নির্দেশক"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "শুধুমাত্র সতর্কতা বিষয়ক বোতাম"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("সতর্কতা সংক্রান্ত বোতাম"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "সতর্কতা সংক্রান্ত ডায়ালগ পরিস্থিতি সম্পর্কে ব্যবহারকারীকে জানায়, যা খেয়াল রাখতে হয়। সতর্কতা সংক্রান্ত ডায়ালগে ঐচ্ছিক শীর্ষক, ঐচ্ছিক কন্টেন্ট এবং ঐচ্ছিক অ্যাকশনের তালিকা দেওয়া থাকে। শীর্ষক কন্টেন্টের উপরে দেওয়া থাকে এবং অ্যাকশন কন্টেন্টের নিচে উল্লেখ করা থাকে।"),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("সতর্কতা"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("শীর্ষক সহ সতর্কতা"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-স্টাইলে সতর্কতা ডায়ালগ"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("সতর্কতা"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "একটি iOS-স্টাইল বোতাম। এটির সাহায্যে আপনি টেক্সট এবং/বা কোনও একটি আইকন যা টাচ করলে ফেড-আউট বা ফেড-ইন হয়। বিকল্প হিসেবে একটি ব্যাকগ্রাউন্ড থাকতে পারে।"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-স্টাইল বোতাম"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("বোতাম"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "একটি iOS-স্টাইলে নেভিগেশন বার। নেভিগেশন বার হল এমন একটি টুলবার যাতে কমপক্ষে একটি পৃষ্ঠার শীর্ষক থাকে, এটি টুলবারের মাঝে থাকে।"),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-স্টাইলে নেভিগেশন বার"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("তারিখ"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("তারিখ ও সময়"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-স্টাইলে চয়নকারী উইজেট তারিখ, সময় বা তারিখ ও সময় উভয়েই বেছে নিতে ব্যবহার করা যেতে পারে।"),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-স্টাইলে তারিখ এবং সময় চয়নকারী"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("সময়"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("টাইমার"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("চয়নকারী"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS-স্টাইলে কন্টেন্টের নিয়ন্ত্রণ রিফ্রেশ করতে টেনে আনার জন্য যে উইজেট ব্যবহার করা হয়।"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-স্টাইলে নিয়ন্ত্রণ রিফ্রেশ করতে টানুন"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "একটি ব্যবহার করলে অন্যটি ফ্রিজ হয়ে যাবে এমন কিছু বিকল্পের মধ্যে থেকে বেছে নেওয়ার জন্য ব্যবহার করা হয়। বিভাগীয় নিয়ন্ত্রনে একটি বিকল্প বেছে নিলে, অন্য বিকল্পগুলি আর বেছে নেওয়া যাবে না।"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-স্টাইলে বিভাগীয় নিয়ন্ত্রন"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "নিরবিচ্ছিন্ন বা পৃথক মানের ভ্যালু থেকে বেছে নেওয়ার জন্য স্লাইডার ব্যবহার করা যেতে পারে।"),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-স্টাইল স্লাইডার"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("স্লাইডার"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "আপনি সিঙ্গেল সেটিংস চালু/বন্ধ করতে টগল বোতামটি ব্যবহার করতে পারেন।"),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-স্টাইল স্যুইচ"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-স্টাইল বোতাম নেভিগেশন ট্যাব বার। একটা ট্যাব অ্যাক্টিভ থাকলে অনেক ট্যাব দেখায়।"),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-স্টাইল বোতাম ট্যাব বার"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "টেক্সট লেখার জায়গাতে ব্যবহারকারী হার্ডওয়্যার কীবোর্ড অথবা অনস্ক্রিন কীবোর্ড ব্যবহার করে টেক্সট লিখতে পারেন।"),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("পিন"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-স্টাইলে টেক্সট লেখার জায়গা"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "বারের সাথে সাথে স্লাইডার মানেরও ব্যাপ্তি দেখায়, যেখান থেকে ব্যবহারকারী কোনও একটি মান বা ব্যাপ্তির মান বেছে নিতে পারেন। স্লাইডারকে থিম প্রয়োগ করে সাজানো এবং কাস্টমাইজ করা যায়।"),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("কাস্টম স্লাইডার"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "সারি এবং কলামযুক্ত গ্রিডের মতো ফর্ম্যাটে ডেটা টেবিলগুলি তথ্য দেখায়। ডেটা টেবিলগুলি এমনভাবে তথ্য দেখায় যা সহজেই স্ক্যান করা যায় যাতে ব্যবহারকারীরা প্যাটার্ন এবং ইনসাইট দেখতে পারেন।"),
        "demoDataTableSubtitle":
            MessageLookupByLibrary.simpleMessage("তথ্যের সারি এবং কলাম"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("ডেটা টেবিল"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "মেটেরিয়াল ডিজাইনের তারিখ চয়নকারী রয়েছে এমন ডায়ালগ দেখায়।"),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("তারিখ চয়নকারী"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "সাধারণ, সতর্কতা, ফুল-স্ক্রিন"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("ডায়ালগ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("এপিআই ডকুমেন্টেশান"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "কন্টেন্ট ফিল্টার করার একটি পদ্ধতি হিসেবে ফিল্টার চিপ ট্যাগ বা বর্ণনামূলক শব্দ ব্যবহার করে।"),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ফিল্টার চিপ"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ফ্ল্যাট বোতাম প্রেস করলে কালি ছড়িয়ে পড়ে কিন্তু লিফ্ট করে না। প্যাডিং সহ ফ্ল্যাট বোতাম টুলবার, ডায়ালগ এবং ইনলাইনে ব্যবহার করুন"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ফ্ল্যাট বোতাম"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ফ্লোটিং অ্যাকশন বোতাম হল একটি সার্কুলার আইকন বোতাম যা কন্টেন্টের উপরে থাকে, অ্যাপ্লিকেশনের প্রাথমিক অ্যাকশন দেখানোর জন্য।"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ভাসমান অ্যাকশন বোতাম"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ফুল-স্ক্রিন ডায়ালগ প্রপার্টি নির্দিষ্ট করে পরের পৃষ্ঠাটি একটি ফুল-স্ক্রিন মোডাল ডায়ালগ হবে কিনা"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("ফুল-স্ক্রিন"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("ফুল-স্ক্রিন"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "গ্রিডের তালিকা একই ধরনের ডেটা, সাধারণত ছবি, দেখানোর জন্য সবচেয়ে বেশি ব্যবহার করা হয়। গ্রিড তালিকায় থাকা প্রতিটি আইটেমকে একটি টাইল বলা হয়।"),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("ফুটার সহ"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("হেডার সহ"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("শুধুমাত্র ছবি"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("সারি এবং কলামের লেআউট"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("গ্রিডের তালিকা"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("তথ্য"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ইনপুট চিপে কোনও একটি এন্টিটি (ব্যক্তি, জায়গা অথবা বস্তু) বা কথোপকথন সংক্রান্ত টেক্সট সারিবদ্ধভাবে থাকে যেখানে জটিল তথ্য দেওয়া থাকে।"),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("ইনপুট চিপ"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL ডিসপ্লে করতে পারছে না:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "একটি মেটেরিয়াল ডিজাইন লিনিয়ার প্রগ্রেস নির্দেশক, যেটি প্রগ্রেস বার হিসেবেও পরিচিত।"),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("লিনিয়ার প্রগ্রেস নির্দেশক"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "একক নির্দিষ্ট উচ্চতাসম্পন্ন সারি যেখানে কিছু টেক্সট সহ লিডিং অথবা ট্রেলিং আইকন রয়েছে।"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("গৌণ টেক্সট"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "তালিকার লে-আউট স্ক্রল করা হচ্ছে"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("তালিকা"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("মেনু আইটেম দেখানো বন্ধ করুন"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("চেকলিস্ট মেনু সহ একটি আইটেম"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "সংশ্লিষ্ট মেনু সহ একটি আইটেম"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "বিভাগ অনুযায়ী ভাগ করা মেনু সহ একটি আইটেম"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("সহজ মেনু সহ একটি আইটেম"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("সংশ্লিষ্ট মেনুর প্রথম আইটেম"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("সংশ্লিষ্ট মেনুর তৃতীয় আইটেম"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "এমন একটি মেনু যা অস্থায়ী সারফেসে পছন্দের তালিকা দেখায়। ব্যবহারকারী কোনও বোতাম, অ্যাকশন বা অন্যান্য নিয়ন্ত্রণ ব্যবহার করলে এগুলি দেখা যায়।"),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("চার"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("লিঙ্ক পান"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("মেনুর প্রথম আইটেম"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("মেনুর তৃতীয় আইটেম"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("মেনুর দ্বিতীয় আইটেম"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("এক"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("প্রিভিউ"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("সরিয়ে দিন"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("শেয়ার করুন"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("মেনু বোতাম এবং সহজ মেনু"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("তিন"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("মেনু"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("দুই"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("প্রতি সারিতে একটি লাইন"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "এই ডেমোর জন্য উপলভ্য বিকল্প দেখতে এখানে ট্যাপ করুন।"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("বিকল্প দেখুন"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("বিকল্প"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "আউটলাইন বোতাম প্রেস করলে অস্বচ্ছ হয়ে বড় হয়ে যায়। সেটি প্রায়ই একটি বিকল্প সেকেন্ডারি অ্যাকশন নির্দেশ করতে বড় হওয়া বোতামের সাথে ব্যবহার হয়।"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("আউটলাইন বোতাম"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("চয়নকারী দেখান"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("তারিখ ও সময় বাছাই"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("চয়নকারী"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "লিনিয়ার, বৃত্তাকার, অনির্দিষ্ট"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("কতটা এগিয়েছে তার নির্দেশক"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "বড় হওয়া বোতাম প্রায়ই ফ্ল্যাট লে-আউটকে আকার দিতে সাহায্য করে। ব্যস্ত বা চওড়া জায়গাতে তারা আরও গুরুত্ব দেয়।"),
        "demoRaisedButtonTitle": MessageLookupByLibrary.simpleMessage(
            "ক্রমশ উপরের দিকে যাওয়া বোতাম"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "বারের সাথে সাথে স্লাইডার মানেরও ব্যাপ্তি দেখায়। এর মধ্যে বারের দুই পাশের শেষে মানের ব্যাপ্তি নির্দেশক আইকন থাকতে পারে। ভলিউম, উজ্জ্বলতা বা ছবিতে ফিল্টার প্রয়োগ করা এমন সেটিংস অ্যাডজাস্ট করার জন্য এটি একটি আদর্শ বিকল্প।"),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("রেঞ্জ স্লাইডার"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("বিভাগ অনুযায়ী ভাগ করা মেনু"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "চেকবক্স ব্যবহারকারীকে একটি সেট থেকে একাধিক বিকল্প বেছে নিতে দেয়। একটি সাধারণ চেকবক্সের মান সত্য বা মিথ্যা এবং একটি ট্রাইস্টেট চেকবক্সের মানটিও শূন্য হতে পারে।"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("চেকবক্স"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "রেডিও বোতাম সেট থেকে ব্যবহারকারীকে একটি বিকল্প বেছে নিতে দেয়। একচেটিয়া নির্বাচনের জন্য রেডিও বোতামগুলি ব্যবহার করুন যদি আপনি মনে করেন যে ব্যবহারকারীর পাশাপাশি সমস্ত উপলভ্য বিকল্পগুলি দেখতে হবে।"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("রেডিও"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "চেকবক্স, রেডিও বোতাম এবং সুইচ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "অন/অফ করার সুইচগুলি একটি সিঙ্গেল সেটিংসের বিকল্পের স্ট্যাটাসকে পরিবর্তন করে। যে বিকল্পটি স্যুইচ নিয়ন্ত্রণ করে এবং সেই সাথে এটির মধ্যে থাকা স্ট্যাটাস সম্পর্কিত ইনলাইন লেবেল থেকে মুছে ফেলা উচিত।"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("পাল্টান"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("বেছে নেওয়ার বিষয়ে নিয়ন্ত্রণ"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "একটি সাধারণ ডায়ালগ ব্যবহারকারীদের কাছে একাধিক বিকল্পের মধ্যে একটি বেছে নেওয়ার সুযোগ করে দেয়। একটি সাধারণ ডায়ালগে একটি ঐচ্ছিক শীর্ষক থাকলে, তা বেছে নেওয়ার বিকল্পগুলি উপরে উল্লেখ করা আছে।"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("সাধারণ"),
        "demoSimpleMenuTitle": MessageLookupByLibrary.simpleMessage("সহজ মেনু"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("নিরবিচ্ছিন্ন"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "কাস্টম থিমের সাথে নিরবিচ্ছিন্ন ব্যাপ্তি স্লাইডার"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "এডিট করা যাবে এমন সাংখ্যিক মান দিয়ে চালিয়ে যান"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "বারের সাথে সাথে স্লাইডার মানেরও ব্যাপ্তি দেখায়, যেখান থেকে ব্যবহারকারী কোনও একটি মান বেছে নিতে পারেন। ভলিউম, উজ্জ্বলতা বা ছবিতে ফিল্টার প্রয়োগ করা এমন সেটিংস অ্যাডজাস্ট করার জন্য এটি একটি আদর্শ বিকল্প।"),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("পৃথক মান"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "কাস্টম থিম সহ পৃথক মানের স্লাইডার"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "এডিট করা যায় এমন সাংখ্যিক মান"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "কোনও একটি মান সোয়াইপ করে বেছে নেওয়ার উইজেট"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("স্লাইডার"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "আপনি স্ন্যাকবার অ্যাকশন প্রেস করেছেন।"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("অ্যাকশন"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("স্ন্যাকবার দেখুন"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "অ্যাপটি পারফর্ম করেছে এমন প্রসেস বা পারফর্ম করবে এমন প্রসেসের সম্পর্কে ব্যবহারকারীকে স্ন্যাকবার বিজ্ঞপ্তি পাঠায়। এটি অস্থায়ীভাবে স্ক্রিনের নিচের দিকে দেখায়। এটি ব্যবহারকারীর অভিজ্ঞতাতে কোনও প্রভাব ফেলবে না এবং মুছে ফেলার জন্য ব্যবহারকারীর অনুমতির প্রয়োজন নেই।"),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "স্ক্রিনের নিচে স্ন্যাকবার মেসেজ দেখায়"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("এটি একটি স্ন্যাকবার।"),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("স্ন্যাকবার"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "বিভিন্ন স্ক্রিনে, ডেটা সেটে ও অন্যান্য ইন্টার‌্যাকশনে ট্যাবগুলি কন্টেন্ট সাজায়।"),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "আলাদাভাবে স্ক্রল করা যায় এমন ভিউ সহ ট্যাব"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ট্যাব"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "টেক্সট ফিল্ড ব্যবহারকারীকে UI-এ টেক্সট লেখার অনুমতি দেয়। সেগুলি সাধারণত ফর্ম ও ডায়ালগ হিসেবে দেখা যায়।"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ইমেল"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড লিখুন।"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - একটি মার্কিন যুক্তরাষ্ট্রের ফোন নম্বর লিখুন।"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "জমা দেওয়ার আগে লাল রঙের ভুলগুলি সংশোধন করুন।"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড লুকান"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "ছোট রাখুন, এটি শুধুমাত্র একটি ডেমো।"),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("জীবনের গল্প"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("নাম*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("নাম লিখতে হবে।"),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "৮ অক্ষরের বেশি হওয়া চলবে না।"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "কেবল বর্ণানুক্রমিক অক্ষর লিখুন।"),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড মিলছে না"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ফোন নম্বর*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* প্রয়োজনীয় ফিল্ড নির্দেশ করে"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড আবার টাইপ করুন*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("বেতন"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড দেখুন"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("জমা দিন"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "এডিট করা যাবে এমন টেক্সট ও নম্বরের সিঙ্গল লাইন"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "আপনার সম্পর্কে আমাদের জানান (যেমন, আপনি কী করেন অথবা আপনি কী করতে পছন্দ করেন)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("টেক্সট ফিল্ড"),
        "demoTextFieldUSD":
            MessageLookupByLibrary.simpleMessage("মার্কিন ডলার"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("লোকজন আপনাকে কী বলে ডাকে?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "আমরা আপনার সাথে কীভাবে যোগাযোগ করব?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("আপনার ইমেল আইডি"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "মেটেরিয়াল ডিজাইনের সময় চয়নকারী রয়েছে এমন ডায়ালগ দেখায়।"),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("সময় চয়নকারী"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "টগল বোতাম ব্যবহার করে একই ধরনের বিকল্প গ্রুপ করতে পারেন। সম্পর্কিত টগল বোতামের একটি গ্রুপে গুরুত্ব দিতে, সাধারণ কন্টেনার শেয়ার করতে হবে"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("টগল বোতাম"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "টুলটিপস এমন একটি টেক্সট লেবেল দেখায় যেটি বোতাম বা অন্যান্য ইউজার ইন্টারফেসের অ্যাকশন কীভাবে কাজ করে সেই বিষয়ে বোঝাতে সহায়তা করে। ব্যবহারকারীরা যখন কোনও এলিমেন্টের উপর কারসার নিয়ে যান, ফোকাস করেন বা অনেকক্ষণ প্রেস করে ধরে থাকেন তখন টুলটিপ তথ্যপূর্ণ মেসেজ দেখায়।"),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "টুলটিপ দেখানোর জন্য অনেকক্ষণ প্রেস করে ধরে রাখুন বা স্ক্রিনের উপরে যান।"),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "অনেকক্ষণ বোতাম প্রেস করে রাখলে বা উপরে নিয়ে গেলে একটি ছোট মেসেজ দেখায়"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("টুলটিপ"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("প্রতি সারিতে দু\'টি লাইন"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "মেটেরিয়াল ডিজাইনে খুঁজে পাওয়া বিভিন্ন লেখার স্টাইল।"),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "পূর্বনির্ধারিত সব টেক্সট স্টাইল"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("লেখার ধরন"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("অ্যাকাউন্ট যোগ করুন"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("সম্মত"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("বাতিল করুন"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("অসম্মত"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("বাতিল করুন"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("ড্রাফ্ট বাতিল করতে চান?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("ফুল-স্ক্রিন ডায়ালগ ডেমো"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("সেভ করুন"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("ফুল-স্ক্রিন ডায়ালগ"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "অ্যাপ যাতে লোকেশন বেছে নিতে পারে তার জন্য Google-কে সাহায্য করুন। এর মানে হল, যখন কোন অ্যাপ চালা থাকে না, তখনও Google-এ যে কোনও লোকেশনের তথ্য পাঠানো হবে।"),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google-এর লোকেশন সংক্রান্ত পরিষেবা ব্যবহার করতে চান?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "ব্যাক-আপ অ্যাকাউন্ট সেট করুন"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ডায়ালগ দেখান"),
        "dismiss": MessageLookupByLibrary.simpleMessage("খারিজ করুন"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("বিভাগ"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("গ্যালারি"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("সমুদ্র সৈকত"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("যেখানে ব্রোঞ্জের কাজ হয়"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("চেন্নাই"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("চেট্টিনাড"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("জেলে"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("ফুলের বাজার"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("লাঞ্চ তৈরি করা"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("বাজার"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("পুদুচেরী"),
        "placeSaltFarm":
            MessageLookupByLibrary.simpleMessage("নুন তৈরি করার ফার্ম"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("স্কুটার"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("যারা সিল্ক তৈরি করেন"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("তাঞ্জোর"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("তাঞ্জাভুর মন্দির"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("গাড়ির জন্য সেভিং"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("চেক করা হচ্ছে"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("হোম সেভিংস"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("ছুটি"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("অ্যাকাউন্টের মালিক"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("বার্ষিক লাভের শতাংশ"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("গত বছরে পে করা সুদ"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("সুদের হার"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("সুদ YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("পরবর্তী স্টেটমেন্ট"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("মোট"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("অ্যাকাউন্ট"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("সতর্কতা"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("বিল"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("বাকি আছে"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("জামাকাপড়"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("কফি শপ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("মুদিখানা"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("রেস্তোরাঁ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("বাকি আছে"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("বাজেট"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("ব্যক্তিগত ফাইনান্স অ্যাপ"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("বাকি আছে"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("লগ-ইন"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("লগ-ইন"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally-তে লগ-ইন করুন"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("কোনো অ্যাকাউন্ট নেই?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("আমাকে মনে রাখো"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("সাইন আপ করুন"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("ইউজারনেম"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("সবগুলি দেখুন"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("সব অ্যাকাউন্ট দেখুন"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("সব বিল দেখুন"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("সব বাজেট দেখুন"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("এটিএম খুঁজুন"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("সহায়তা"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("অ্যাকাউন্ট ম্যানেজ করুন"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("বিজ্ঞপ্তি"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("বিনা পেপারের সেটিংস"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("পাসকোড এবং টাচ আইডি"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("ব্যক্তিগত তথ্য"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("সাইন-আউট করুন"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("ট্যাক্স ডকুমেন্ট"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("অ্যাকাউন্ট"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("বিল"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("বাজেট"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("এক নজরে"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("সেটিংস"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("ফ্লাটার গ্যালারি সম্পর্কে"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "লন্ডনে TOASTER দ্বারা ডিজাইন করা হয়েছে"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("সেটিংস বন্ধ করুন"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("সেটিংস"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("গাঢ়"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("মতামত জানান"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("আলো"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("লোকেল"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("প্ল্যাটফর্ম মেকানিক্স"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("স্লো মোশন"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("সিস্টেম"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("টেক্সটের মাধ্যমে দিকনির্দেশ"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("লোকেলের উপর ভিত্তি করে"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("টেক্সট স্কেলিং"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("সবচেয়ে বড়"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("বড়"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("সাধারণ"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("ছোট"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("থিম"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("সেটিংস"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("বাতিল করুন"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("কার্ট মুছে দিন"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("কার্ট"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("শিপিং:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("সাবটোটাল:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("ট্যাক্স:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("মোট"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("অ্যাক্সেসরি"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("সব"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("পোশাক"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("বাড়ি"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("ফ্যাশ্যানেবল রিটেল অ্যাপ"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("পাসওয়ার্ড"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ইউজারনেম"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("লগ-আউট"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("মেনু"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("পরবর্তী"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("নীল রঙের পাথরের মগ"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("সেরাইজ স্ক্যালোপ টি"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("শ্যামব্র্যয় ন্যাপকিন"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("শ্যামব্র্যয় শার্ট"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("ক্লাসিক হোয়াইট কলার"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("ক্লে সোয়েটার"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("কপার ওয়্যার তাক"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("ফাইন লাইন টি"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("গার্ডেন স্ট্র্যান্ড"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("গ্যাস্টবি হ্যাট"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("জেন্ট্রি জ্যাকেট"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("গিল্ট ডেস্ক ট্রাও"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("জিনজার স্কার্ফ"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("গ্রে স্লচ ট্যাঙ্ক"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("হারাহ্‌য়ের টি সেট"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("কিচেন কোয়াট্রো"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("নীল পায়জামা"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("প্লাস্টার টিউনিক"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("চৌকো টেবিল"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("বৃষ্টির জল পাস করানোর ট্রে"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("রামোনা ক্রসওভার"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("সি টিউনিক"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("সিব্রিজ সোয়েটার"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("শোল্ডার রোল টি"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("শ্রাগ ব্যাগ"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("মসৃণ সেরামিক সেট"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("স্টেলা সানগ্লাস"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("স্ট্রাট ইয়াররিং"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("সাকলেন্ট প্ল্যান্টার্স"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("সানশার্ট ড্রেস"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("সার্ফ এবং পার্ফ শার্ট"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("ভ্যাগাবন্ড স্যাক"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("ভারসিটি সক্‌স"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("ওয়াল্টার হেনলি (সাদা)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("উইভ কীরিং"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("সাদা পিনস্ট্রাইপ শার্ট"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("হুইটনি বেল্ট"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("কার্টে যোগ করুন"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("কার্ট বন্ধ করুন"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("মেনু বন্ধ করুন"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("মেনু খুলুন"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("আইটেম সরান"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("সার্চ করুন"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("সেটিংস"),
        "signIn": MessageLookupByLibrary.simpleMessage("সাইন-ইন করুন"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("কাজ করে এমন শুরু করার লেআউট"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("মুখ্য অংশ"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("বোতাম"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("শিরোনাম"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("সাবটাইটেল"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("শীর্ষক"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("শুরু করার অ্যাপ"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("যোগ করুন"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("পছন্দ"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("খুঁজুন"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("শেয়ার করুন")
      };
}
