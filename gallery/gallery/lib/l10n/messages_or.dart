// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a or locale. All the
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
  String get localeName => 'or';

  static m0(value) =>
      "ଏହି ଆପ୍ ପାଇଁ ଉତ୍ସ କୋଡ୍ ଦେଖିବାକୁ, ଦୟାକରି ${value}କୁ ଯାଆନ୍ତୁ।";

  static m1(title) => "${title} ଟାବ୍ ପାଇଁ ପ୍ଲେସ୍‌ହୋଲ୍ଡର୍";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'କୌଣସି ରେଷ୍ଟୁରାଣ୍ଟ ନାହିଁ', one: '1ଟି ରେଷ୍ଟୁରାଣ୍ଟ', other: '${totalRestaurants}ଟି ରେଷ୍ଟୁରାଣ୍ଟ')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'ନନ୍‌ଷ୍ଟପ୍', one: '1ଟି ରହଣି', other: '${numberOfStops}ଟି ରହଣି')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'କୌଣସି ପ୍ରୋପର୍ଟି ଉପଲବ୍ଧ ନାହିଁ', one: '1ଟି ଉପଲବ୍ଧ ଥିବା ପ୍ରୋପର୍ଟି', other: '${totalProperties}ଟି ଉପଲବ୍ଧ ଥିବା ପ୍ରୋପର୍ଟି')}";

  static m5(value) => "ଆଇଟମ୍ ${value}";

  static m6(error) => "କ୍ଲିପ୍‌ବୋର୍ଡକୁ କପି କରିବାରେ ବିଫଳ ହେଲା: ${error}";

  static m7(value) => "ଅବିରତ: ${value}";

  static m8(value) => "ଭିନ୍ନ: ${value}";

  static m9(name, phoneNumber) => "${name}ଙ୍କ ଫୋନ୍ ନମ୍ବର ${phoneNumber} ଅଟେ";

  static m10(value) => "ଆପଣ ଏହା ଚୟନ କରିଛନ୍ତି: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "${accountName}ଙ୍କ ଆକାଉଣ୍ଟ ନମ୍ବର ${accountNumber}ରେ ${amount} ଜମା କରାଯାଇଛି।";

  static m12(amount) => "ଆପଣ ଏହି ମାସରେ ATM ଶୁଳ୍କରେ ${amount} ଖର୍ଚ୍ଚ କରିଛନ୍ତି";

  static m13(percent) =>
      "ବଢ଼ିଆ କାମ! ଗତ ମାସଠାରୁ ଆପଣଙ୍କ ଆକାଉଣ୍ଟର ଚେକିଂ ${percent} ବଢ଼ିଛି।";

  static m14(percent) =>
      "ଆପଣ ଏହି ମାସ ପାଇଁ ${percent} ସପିଂ ବଜେଟ୍ ବ୍ୟବହାର କରିଛନ୍ତି।";

  static m15(amount) =>
      "ଆପଣ ଏହି ମାସରେ ରେଷ୍ଟୁରାଣ୍ଟଗୁଡ଼ିକରେ ${amount} ଖର୍ଚ୍ଚ କରିଛନ୍ତି।";

  static m16(count) =>
      "${Intl.plural(count, one: 'ଆପଣଙ୍କର କରରେ ସମ୍ଭାବ୍ୟ ଛାଡ଼କୁ ବଢ଼ାନ୍ତୁ! 1ଟି ଆସାଇନ୍ କରାଯାଇନଥିବା ଟ୍ରାଞ୍ଜାକ୍ସନ୍‌ରେ ବର୍ଗଗୁଡ଼ିକୁ ଆସାଇନ୍ କରନ୍ତୁ।', other: 'ଆପଣଙ୍କର କରରେ ସମ୍ଭାବ୍ୟ ଛାଡ଼କୁ ବଢ଼ାନ୍ତୁ! ${count}ଟି ଆସାଇନ୍ କରାଯାଇନଥିବା ଟ୍ରାଞ୍ଜାକ୍ସନ୍‌ରେ ବର୍ଗଗୁଡ଼ିକୁ ଆସାଇନ୍ କରନ୍ତୁ।')}";

  static m17(billName, date, amount) =>
      "${billName} ପାଇଁ ${amount} ପେମେଣ୍ଟ କରିବାର ଧାର୍ଯ୍ୟ ସମୟ ${date} ଅଟେ।";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} ବଜେଟ୍‌ରେ ${amountTotal}ରୁ ${amountUsed} ବ୍ୟବହୃତ ହୋଇଛି, ${amountLeft} ବାକି ଅଛି";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'କୌଣସି ଆଇଟମ୍ ନାହିଁ', one: '1ଟି ଆଇଟମ୍', other: '${quantity}ଟି ଆଇଟମ୍')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "ପରିମାଣ: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'ସପିଂ କାର୍ଟ, କୌଣସି ଆଇଟମ୍ ନାହିଁ', one: 'ସପିଂ କାର୍ଟ, 1ଟି ଆଇଟମ୍', other: 'ସପିଂ କାର୍ଟ, ${quantity}ଟି ଆଇଟମ୍')}";

  static m23(product) => "${product} କାଢ଼ନ୍ତୁ";

  static m24(value) => "ଆଇଟମ୍ ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("ଫ୍ଲଟର୍ ସାମ୍ପଲ୍ ଗିଥୁବ୍ ରେପୋ"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("ଗ୍ୟାଲେରୀକୁ ଫେରନ୍ତୁ"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("ଆକାଉଣ୍ଟ"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("ଆଲାରାମ୍"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("କ୍ୟାଲେଣ୍ଡର୍"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("କ୍ୟାମେରା"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("ମନ୍ତବ୍ୟଗୁଡ଼ିକ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ବଟନ୍"),
        "buttonTextCreate":
            MessageLookupByLibrary.simpleMessage("ତିଆରି କରନ୍ତୁ"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("ବାଇକ୍ ଚଲାଇବା"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("ଏଲିଭେଟର୍"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("ଫାୟାରପ୍ଲେସ୍"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("ବଡ଼"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("ମଧ୍ୟମ"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("ଛୋଟ"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("ଲାଇଟ୍ ଚାଲୁ କରନ୍ତୁ"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("ୱାସର୍"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ଅମ୍ବର୍"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ନୀଳ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ନୀଳ ଧୂସର"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ଧୂସର"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ସାଇଆନ୍"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("ଗାଢ଼ କମଳା"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ଗାଢ଼ ବାଇଗଣି"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ସବୁଜ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ଧୂସର"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ଘନ ନୀଳ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ହାଲୁକା ନୀଳ"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ହାଲୁକା ସବୁଜ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ଲାଇମ୍"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("କମଳା"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ଗୋଲାପୀ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ବାଇଗଣୀ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ଲାଲ୍"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ଟିଲ୍"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ହଳଦିଆ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ବ୍ୟକ୍ତିଗତକୃତ ଟ୍ରାଭେଲ୍ ଆପ୍"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ଖାଇବାର ସ୍ଥାନଗୁଡ଼ିକ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("ନେପଲସ୍, ଇଟାଲୀ"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ଏକ କାଠର ଓଭାନ୍‌ରେ ପିଜା"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("ଡଲାସ୍, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("ଲିସବନ୍, ପର୍ତ୍ତୁଗାଲ୍"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ବଡ଼ ପାଷ୍ଟ୍ରାମି ସାଣ୍ଡୱିଚ୍ ଧରିଥିବା ମହିଳା"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଡିନର୍ ଶୈଳୀର ଷ୍ଟୁଲ୍‌ଗୁଡ଼ିକ ଥିବା ଖାଲି ବାର୍"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("କୋର୍ଡୋବା, ଆର୍ଜେଣ୍ଟିନା"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ବର୍ଗର୍"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "ପୋର୍ଟଲ୍ୟାଣ୍ଡ, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("କୋରୀୟ ଟାକୋ"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("ପ୍ୟାରିସ୍, ଫ୍ରାନ୍ସ"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ଚକୋଲେଟ୍ ମିଠା"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("ସିଓଲ୍, ଦକ୍ଷିଣ କୋରିଆ"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଆର୍ଟସେ ରେଷ୍ଟୁରାଣ୍ଟର ବସିବା ଅଞ୍ଚଳ"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("ସିଟଲ୍, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ଚିଙ୍ଗୁଡ଼ି ତରକାରି"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "ନ୍ୟାସ୍‌ଭ୍ୟାଲି, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ବେକେରୀର ପ୍ରବେଶ ସ୍ଥାନ"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "ଆଟଲାଣ୍ଟା, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneEat8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "କଙ୍କଡ଼ା ପରି ଦେଖାଯାଉଥିବା ଚିଙ୍ଗୁଡ଼ି ମାଛ ପ୍ଲେଟ୍"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("ମାଦ୍ରିଦ୍, ସ୍ପେନ୍"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ପେଷ୍ଟ୍ରୀ ସହ କଫୀ କାଉଣ୍ଟର୍"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "ଗନ୍ତବ୍ୟସ୍ଥଳ ଅନୁଯାୟୀ ରେଷ୍ଟୁରାଣ୍ଟଗୁଡ଼ିକ ଏକ୍ସପ୍ଲୋର୍ କରନ୍ତୁ"),
        "craneFly": MessageLookupByLibrary.simpleMessage("ଫ୍ଲାଏ ମୋଡ୍"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "ଅସ୍ପେନ୍, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଏଭର୍‌ଗ୍ରୀନ୍ ଗଛ ଓ ଆଖପାଖରେ ବରଫ ପଡ଼ିଥିବା ଦୃଶ୍ୟ"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "ବିଗ୍ ସୁର୍, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("କାଏରୋ, ଇଜିପ୍ଟ"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ସୂର୍ଯ୍ୟାସ୍ତ ସମୟରେ ଅଲ୍-ଆଜହାର୍ ମୋସ୍କ ଟାୱାର୍‌ର"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("ଲିସବନ୍, ପର୍ତ୍ତୁଗାଲ୍"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ସମୂଦ୍ରରେ ଇଟାରେ ତିଆରି ଲାଇଟ୍‌ହାଉସ୍"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("ନାପା, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ଖଜୁରୀ ଗଛ ସହ ପୁଲ୍"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("ବାଲି, ଇଣ୍ଡୋନେସିଆ"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଖଜୁରୀ ଗଛ ଥିବା ସମୁଦ୍ର ପାଖ ପୁଲ୍"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ଏକ ପଡ଼ିଆରେ ଥିବା ଟେଣ୍ଟ"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("ଖୁମ୍ୱୁ ଉପତ୍ୟକା, ନେପାଳ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ବରଫ ପାହାଡ଼ ସାମ୍ନାରେ ପ୍ରାର୍ଥନା ପାଇଁ ପତାକା"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("ମାଚୁ ପିଚୁ, ପେରୁ"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ମାଚୁ ପିଚୁ ସିଟାଡେଲ୍"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("ମାଲେ, ମାଳଦ୍ୱୀପ"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ପାଣି ଉପରେ ଥିବା ଘର"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("ଭିଜ୍‍ନାଉ, ସ୍ଵିଜର୍‌ଲ୍ୟାଣ୍ଡ"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ପର୍ବତଗୁଡ଼ିକ ସାମ୍ନାରେ ହ୍ରଦ ପାଖରେ ଥିବା ହୋଟେଲ୍"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("ମେକ୍ସିକୋ ସହର, ମେକ୍ସିକୋ"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ପାଲାସିଓ ଡେ ବେଲାସ୍ ଆର୍ଟସ୍‌ର ଉପର ଦୃଶ୍ୟ"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "ମାଉଣ୍ଟ ରସ୍‌ମୋର୍, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ମାଉଣ୍ଟ ରସ୍‌ମୋର୍"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("ସିଙ୍ଗାପୁର"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ସୁପର୍‌ଟ୍ରି ଗ୍ରୋଭ୍"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ହାଭାନା, କ୍ୟୁବା"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଏକ ପୁରୁଣା ନୀଳ କାରରେ ବୁଲୁଥିବା ପୁରୁଷ"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "ଗନ୍ତବ୍ୟସ୍ଥଳ ଅନୁଯାୟୀ ଫ୍ଲାଇଟ୍‍ଗୁଡ଼ିକ ଏକ୍ସପ୍ଲୋର୍ କରନ୍ତୁ"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("ତାରିଖ ଚୟନ କରନ୍ତୁ"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("ତାରିଖଗୁଡ଼ିକୁ ଚୟନ କରନ୍ତୁ"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("ଗନ୍ତବ୍ୟସ୍ଥଳ ବାଛନ୍ତୁ"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("ଭୋଜନକାରୀ ବ୍ୟକ୍ତିମାନେ"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("ଲୋକେସନ୍ ଚୟନ କରନ୍ତୁ"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("ଆରମ୍ଭ ସ୍ଥଳୀ ବାଛନ୍ତୁ"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("ସମୟ ଚୟନ କରନ୍ତୁ"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("ଭ୍ରମଣକାରୀମାନେ"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ସ୍ଲିପ୍ ମୋଡ୍"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("ମାଲେ, ମାଳଦ୍ୱୀପ"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ପାଣି ଉପରେ ଥିବା ଘର"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "ଅସ୍ପେନ୍, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("କାଏରୋ, ଇଜିପ୍ଟ"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ସୂର୍ଯ୍ୟାସ୍ତ ସମୟରେ ଅଲ୍-ଆଜହାର୍ ମୋସ୍କ ଟାୱାର୍‌ର"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("ତାଇପେଇ, ତାଇୱାନ୍"),
        "craneSleep11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଟାଇପେୟୀ 101 ଆକକାଶ ଛୁଆଁ ପ୍ରାସାଦ"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଏଭର୍‌ଗ୍ରୀନ୍ ଗଛ ଓ ଆଖପାଖରେ ବରଫ ପଡ଼ିଥିବା ଦୃଶ୍ୟ"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("ମାଚୁ ପିଚୁ, ପେରୁ"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ମାଚୁ ପିଚୁ ସିଟାଡେଲ୍"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ହାଭାନା, କ୍ୟୁବା"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ଏକ ପୁରୁଣା ନୀଳ କାରରେ ବୁଲୁଥିବା ପୁରୁଷ"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("ଭିଜ୍‍ନାଉ, ସ୍ଵିଜର୍‌ଲ୍ୟାଣ୍ଡ"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ପର୍ବତଗୁଡ଼ିକ ସାମ୍ନାରେ ହ୍ରଦ ପାଖରେ ଥିବା ହୋଟେଲ୍"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "ବିଗ୍ ସୁର୍, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ଏକ ପଡ଼ିଆରେ ଥିବା ଟେଣ୍ଟ"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("ନାପା, ଯୁକ୍ତରାଷ୍ଟ୍ର ଆମେରିକା"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ଖଜୁରୀ ଗଛ ସହ ପୁଲ୍"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("ପୋର୍ତୋ, ପର୍ତ୍ତୁଗାଲ୍"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ରିବେରିଆ ସ୍କୋୟାର୍‌ରେ ରଙ୍ଗୀନ୍ ଆପାର୍ଟମେଣ୍ଟଗୁଡ଼ିକ"),
        "craneSleep8":
            MessageLookupByLibrary.simpleMessage("ଟ୍ୟୁଲମ୍, ମେକ୍ସିକୋ"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ସମୂଦ୍ର ତଟରେ ଥିବା ଏକ ଚଟାଣ ଉପରେ ଗଢ଼ିଉଠିଥିବା ମାୟା ସଭ୍ୟତା"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("ଲିସବନ୍, ପର୍ତ୍ତୁଗାଲ୍"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ସମୂଦ୍ରରେ ଇଟାରେ ତିଆରି ଲାଇଟ୍‌ହାଉସ୍"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "ଗନ୍ତବ୍ୟସ୍ଥଳ ଅନୁଯାୟୀ ପ୍ରୋପର୍ଟି ଏକ୍ସପ୍ଲୋର୍ କରନ୍ତୁ"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("ଅନୁମତି ଦିଅନ୍ତୁ"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("ଆପଲ୍ ପାଏ"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("ବାତିଲ୍ କରନ୍ତୁ"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("ଚିଜ୍ କେକ୍"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("ଚକୋଲେଟ୍ ବ୍ରାଉନି"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "ଦୟାକରି ନିମ୍ନସ୍ଥ ତାଲିକାରୁ ଆପଣଙ୍କ ପସନ୍ଦର ଡେଜର୍ଟର ପ୍ରକାର ଚୟନ କରନ୍ତୁ। ଆପଣଙ୍କର ଚୟନଟି ଆପଣଙ୍କ ଅଞ୍ଚଳରେ ଭୋଜନଳୟଗୁଡ଼ିକର ପ୍ରସ୍ତାବିତ ତାଲିକାକୁ କଷ୍ଟମାଇଜ୍ କରିବା ପାଇଁ ବ୍ୟବହାର କରାଯିବ।"),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("ଖାରଜ କରନ୍ତୁ"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("ଅନୁମତି ଦିଅନ୍ତୁ ନାହିଁ"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("ପସନ୍ଦର ଡେଜର୍ଟ ଚୟନ କରନ୍ତୁ"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ଆପଣଙ୍କର ଲୋକେସନ୍ mapରେ ପ୍ରଦର୍ଶିତ ହେବ ଏବଂ ଦିଗନିର୍ଦ୍ଦେଶ୍, ନିକଟର ସନ୍ଧାନ ଫଳାଫଳ ଏବଂ ଆନୁମାନିକ ଭ୍ରମଣ ସମୟ ପାଇଁ ବ୍ୟବହାର କରାଯିବ।"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "ଆପଣ ଆପ୍ ବ୍ୟବହାର କରିବା ସମୟରେ ଆପଣଙ୍କର ଲୋକେସନ୍ ଆକ୍ସେସ୍ କରିବା ପାଇଁ \"Maps\"କୁ ଅନୁମତି ଦେବେ?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("ତିରାମିସୁ"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ବଟନ୍"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("ପୃଷ୍ଠପଟ ସହିତ"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("ଆଲର୍ଟ ଦେଖାନ୍ତୁ"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("ଚାଟ୍"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("ହୋମ୍"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("ପ୍ରୋଫାଇଲ୍"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "ଆକ୍ସନ୍ ଚିପ୍ସ, ବିକଳ୍ପଗୁଡ଼ିକର ଏକ ସେଟ୍ ଯାହା ପ୍ରାଥମିକ ବିଷୟବସ୍ତୁ ସମ୍ପର୍କିତ କାର୍ଯ୍ୟଗୁଡ଼ିକୁ ଟ୍ରିଗର୍ କରିଥାଏ। ଏକ UIରେ ଆକ୍ସନ୍ ଚିପ୍ସ ଗତିଶୀଳ ଏବଂ ପ୍ରାସଙ୍ଗିକ ଭାବରେ ଦେଖାଯିବା ଉଚିତ।"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ଆକ୍ସନ୍ ଚିପ୍"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ଆଲର୍ଟ ଡାଏଲଗ୍ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ସ୍ୱୀକୃତି ଆବଶ୍ୟକ କରୁଥିବା ପରିସ୍ଥିତି ବିଷୟରେ ସୂଚନା ଦିଏ। ଆଲର୍ଟ ଡାଏଲଗ୍‍‍ରେ ଏକ ଇଚ୍ଛାଧୀନ ଟାଇଟେଲ୍ ଏବଂ କାର୍ଯ୍ୟଗୁଡ଼ିକର ଏକ ଇଚ୍ଛାଧୀନ ତାଲିକା ଥାଏ।"),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("ଆଲର୍ଟ"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("ଟାଇଟେଲ୍ ସହ ଆଲର୍ଟ"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "ବଟମ୍ ନାଭିଗେସନ୍ ବାର୍ ତିନିରୁ ପାଞ୍ଚ ଦିଗରେ ସ୍କ୍ରିନ୍‌ର ତଳେ ଦେଖାଯାଏ। ପ୍ରତ୍ୟେକ ଦିଗ ଏକ ଆଇକନ୍ ଏବଂ ଏକ ବିକଳ୍ପ ଟେକ୍ସଟ୍ ସ୍ତର ଦ୍ୱାରା ପ୍ରଦର୍ଶିତ କରାଯାଇଛି। ଯେତେବେଳେ ବଟମ୍ ନାଭିଗେସନ୍ ଆଇକନ୍ ଟାପ୍ କରାଯାଏ, ସେତେବେଳେ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ସେହି ଆଇକନ୍ ସହ ସମ୍ବନ୍ଧିତ ଶୀର୍ଷ ସ୍ତର ନେଭିଗେସନ୍ ଦିଗକୁ ନେଇଯାଇଥାଏ।"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("ପର୍ସିଷ୍ଟେଣ୍ଟ ସ୍ତର"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("ଚୟନିତ ସ୍ତର"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "କ୍ରସ୍-ଫେଡିଂ ଭ୍ୟୁ ସହ ବଟମ୍ ନାଭିଗେସନ୍"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("ବଟମ୍ ନାଭିଗେସନ୍"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("ଯୋଗ କରନ୍ତୁ"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ତଳ ସିଟ୍ ଦେଖାନ୍ତୁ"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("ହେଡର୍"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ମୋଡାଲ୍ ବଟମ୍ ସିଟ୍ ହେଉଛି ଏକ ମେନୁ କିମ୍ବା ଏକ ଡାଇଲଗ୍‌ର ବିକଳ୍ପ ଏବଂ ଏହା ବାକି ଆପ୍ ବ୍ୟବହାର କରିବାରୁ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ପ୍ରତିରୋଧ କରିଥାଏ।"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("ମୋଡାଲ୍ ବଟମ୍ ସିଟ୍"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "ଏକ ପର୍ସିଷ୍ଟେଣ୍ଟ ବଟମ୍ ସିଟ୍ ଆପ୍‌ର ଏଭଳି ସୂଚନା ସେୟାର୍ କରେ ଯାହା ଏହାର ପ୍ରାଥମିକ ବିଷୟବସ୍ତୁର ପୂରକ ଅଟେ। ଉପଯୋଗକର୍ତ୍ତା ଆପ୍‌ର ଅନ୍ୟ ଭାଗ ବ୍ୟବହାର କରୁଥିବା ବେଳେ ଏକ ପର୍ସିଷ୍ଟାଣ୍ଟ ବଟମ୍ ସିଟ୍ ଦୃଶ୍ୟମାନ ହୋଇ ରହିବ।"),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("ପର୍ସିଷ୍ଟେଣ୍ଟ ବଟମ୍ ସିଟ୍"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "ପର୍ସିଷ୍ଟେଣ୍ଟ ଏବଂ ମୋଡାଲ୍ ବଟମ୍ ସିଟ୍"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage("ତଳ ସିଟ୍"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "ସମତଳ, ଉଠିଥିବା, ଆଉଟ୍‍ଲାଇନ୍ ଏବଂ ଆହୁରି ଅନେକ କିଛି"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ବଟନ୍‍ଗୁଡ଼ିକ"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "ସଂକ୍ଷିପ୍ତ ଉପାଦାନଗୁଡ଼ିକ ଯାହା ଏକ ଇନ୍‍ପୁଟ୍, ବିଶେଷତା କିମ୍ବା କାର୍ଯ୍ୟକୁ ପ୍ରତିନିଧିତ୍ୱ କରେ"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ଚିପ୍ସ"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "ଚଏସ୍ ଚିପ୍ସ, କୌଣସି ସେଟ୍‍ରୁ ଏକକ ପସନ୍ଦର ପ୍ରତିନିଧିତ୍ୱ କରିଥାଏ। ଚଏସ୍ ଚିପ୍ସରେ ସମ୍ପର୍କିତ ବର୍ଣ୍ଣନାତ୍ମକ ଟେକ୍ସଟ୍ କିମ୍ବା ବର୍ଗଗୁଡ଼ିକ ଥାଏ।"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("ଚଏସ୍ ଚିପ୍"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("କୋଡ୍‍ର ନମୁନା"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "କ୍ଲିପ୍‌ବୋର୍ଡ‌କୁ କପି କରାଯାଇଛି।"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ସବୁ କପି କରନ୍ତୁ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "ରଙ୍ଗ ଓ ରଙ୍ଗ ସ୍ୱାଚ୍ ସ୍ଥିରାଙ୍କଗୁଡ଼ିକ ଉପାଦାନ ଡିଜାଇନ୍‍ର ରଙ୍ଗ ପ୍ୟାଲେଟ୍‍ର ପ୍ରତିନିଧିତ୍ୱ କରେ।"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ପୂର୍ବ ନିର୍ଦ୍ଧାରିତ ସମସ୍ତ ରଙ୍ଗ"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("ରଙ୍ଗ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "ଆକ୍ସନ୍ ସିଟ୍ ହେଉଛି ଆଲର୍ଟର ଏକ ନିର୍ଦ୍ଦିଷ୍ଟ ଶୈଳୀ ଯାହା ଉପଯୋଗକର୍ତ୍ତାଙ୍କ ପାଇଁ ବର୍ତ୍ତମାନର ପ୍ରସଙ୍ଗ ସମ୍ବନ୍ଧିତ ଦୁଇ କିମ୍ବା ତା\'ଠାରୁ ଅଧିକ ପସନ୍ଦର ଏକ ସେଟ୍ ପ୍ରସ୍ତୁତ କରେ। ଆକ୍ସନ୍ ସିଟ୍‍‍ରେ ଏକ ଟାଇଟେଲ୍, ଏକ ଅତିରିକ୍ତ ମେସେଜ୍ କାର୍ଯ୍ୟଗୁଡ଼ିକର ଏକ ତାଲିକା ଥାଏ।"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("ଆକ୍ସନ୍ ସିଟ୍"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("କେବଳ ଆଲର୍ଟ ବଟନ୍‍ଗୁଡ଼ିକ"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ବଟନ୍‍ଗୁଡ଼ିକ ସହ ଆଲର୍ଟ"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ଆଲର୍ଟ ଡାଏଲଗ୍ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ସ୍ୱୀକୃତି ଆବଶ୍ୟକ କରୁଥିବା ପରିସ୍ଥିତି ବିଷୟରେ ସୂଚନା ଦିଏ। ଆଲର୍ଟ ଡାଏଲଗ୍‍‍ରେ ଏକ ଇଚ୍ଛାଧୀନ ଟାଇଟେଲ୍, ଇଚ୍ଛାଧୀନ ବିଷୟବସ୍ତୁ ଏବଂ କାର୍ଯ୍ୟଗୁଡ଼ିକର ଏକ ଇଚ୍ଛାଧୀନ ତାଲିକା ଥାଏ। ଟାଇଟେଲ୍ ବିଷୟବସ୍ତୁର ଉପରେ ଏବଂ କାର୍ଯ୍ୟଗୁଡ଼ିକ ବିଷୟବସ୍ତୁର ତଳେ ପ୍ରଦର୍ଶିତ ହୁଏ।"),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("ଆଲର୍ଟ"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("ଟାଇଟେଲ୍ ସହ ଆଲର୍ଟ"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ଶୈଳୀର ଆଲର୍ଟ ଡାଏଲଗ୍"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("ଆଲର୍ଟଗୁଡ଼ିକ"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ iOS-ଶୈଳୀର ବଟନ୍। ଏଥିରେ ଟେକ୍ସଟ୍ ଏବଂ/କିମ୍ବା ଅନ୍ତର୍ଭୁକ୍ତ ଅଛି ଯାହା ସ୍ପର୍ଶ କଲେ ଯାହା ଫିକା ଏବଂ ଗାଢ଼ ହୋଇଯାଏ। ଏଥିରେ ଇଚ୍ଛାଧୀନ ରୂପେ ଏକ ପୃଷ୍ଠପଟ ଥାଇପାରେ।"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ଶୈଳୀଋ ବଟନ୍‍ଗୁଡ଼ିକ"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ବଟନ୍‍ଗୁଡ଼ିକ"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "କେତେଗୁଡ଼ିଏ ଭିନ୍ନ ସ୍ୱତନ୍ତ୍ର ବିକଳ୍ପ ମଧ୍ୟରୁ ଗୋଟିଏ ନମ୍ବରକୁ ଚୟନ କରିବା ପାଇଁ ଏହା ବ୍ୟବହାର କରାଯାଏ। ଯେତେବେଳେ ବର୍ଗୀକୃତ ନିୟନ୍ତ୍ରଣରୁ ଗୋଟିଏ ବିକଳ୍ପ ଚୟନ କରାଯାଏ, ସେତେବେଳେ ସେହି ବର୍ଗୀକୃତ ନିୟନ୍ତ୍ରଣରୁ ଅନ୍ୟ ବିକଳ୍ପ ଚୟନ କରିହେବ ନାହିଁ।"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-ଶୈଳୀର ବର୍ଗୀକୃତ ନିୟନ୍ତ୍ରଣ"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("ବର୍ଗୀକୃତ ନିୟନ୍ତ୍ରଣ"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "ମୂଲ୍ୟଗୁଡ଼ିକର ଏକ ଅବିରତ ବା ଏକ ଭିନ୍ନ ସେଟ୍‌ରୁ ଚୟନ କରିବା ପାଇଁ ଏକ ସ୍ଲାଇଡର୍ ବ୍ୟବହାର କରାଯାଇପାରେ।"),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ଷ୍ଟାଇଲ୍ ସ୍ଲାଇଡର୍"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("ସ୍ଲାଇଡର୍"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ସ୍ୱିଚ୍ ଯାହା ଏକ ସିଙ୍ଗଲ୍ ସେଟିଂସ୍‌ର ଚାଲୁ/ବନ୍ଦ ସ୍ଥିତିକୁ ଟୋଗଲ୍ କରିବା ପାଇଁ ବ୍ୟବହୃତ ହୋଇଥାଏ।"),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ଷ୍ଟାଇଲ୍ ସ୍ୱିଚ୍"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ iOS-ଷ୍ଟାଇଲ୍ ବଟମ୍ ନାଭିଗେସନ୍ ଟାବ୍ ବାର୍। ଏକାଧିକ ଟାବ୍ ଦେଖାଏ, ଯେଉଁଥିରେ ଡିଫଲ୍ଟ ଭାବେ ପ୍ରଥମ ଟାବ୍ ସକ୍ରିୟ ଥାଏ।"),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ଷ୍ଟାଇଲ୍ ବଟମ୍ ଟାବ୍ ବାର୍"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("ଟାବ୍ ବାର୍"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "ସରଳ, ଆଲର୍ଟ ଏବଂ ପୂର୍ଣ୍ଣ ସ୍କ୍ରିନ୍"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("ଡାଏଲଗ୍‍ଗୁଡ଼ିକ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API ଡକ୍ୟୁମେଣ୍ଟେସନ୍"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ଫିଲ୍ଟର୍ ଚିପ୍ସ, ବିଷୟବସ୍ତୁକୁ ଫିଲ୍ଟର୍ କରିବାର ଉପାୟ ଭାବରେ ଟ୍ୟାଗ୍ କିମ୍ବା ବର୍ଣ୍ଣନାତ୍ମକ ଶବ୍ଦଗୁଡ଼ିକୁ ବ୍ୟବହାର କରିଥାଏ।"),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ଫିଲ୍ଟର୍ ଚିପ୍"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ସମତଳ ବଟନ୍ ଦବାଇଲେ କାଳିର ଛିଟିକା ପ୍ରଦର୍ଶିତ ହୁଏ, କିନ୍ତୁ ଏହା ଉପରକୁ ଉଠେ ନାହିଁ। ଟୁଲ୍‍ବାର୍‍‍ରେ, ଡାଏଲଗ୍‍‍ରେ ଏବଂ ପ୍ୟାଡିଂ ସହ ଇନ୍‍ଲାଇନ୍‍‍ରେ ସମତଳ ବଟନ୍ ବ୍ୟବହାର କରନ୍ତୁ"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ସମତଳ ବଟନ୍"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ଫ୍ଲୋଟିଂ କାର୍ଯ୍ୟ ବଟନ୍ ହେଉଛି ଏକ ବୃତ୍ତାକାର ଆଇକନ୍ ବଟନ୍ ଯାହା ଆପ୍ଲିକେସନ୍‍‍ରେ କୌଣସି ପ୍ରାଥମିକ କାର୍ଯ୍ୟକୁ ପ୍ରଚାର କରିବା ପାଇଁ ବିଷୟବସ୍ତୁ ଉପରେ ରହେ।"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ଫ୍ଲୋଟିଂ ଆକ୍ସନ୍ ବଟନ୍"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog ବୈଶିଷ୍ଟ୍ୟ ଇନ୍‍କମିଂ ପୃଷ୍ଠାଟି ଏକ ପୂର୍ଣ୍ଣ ସ୍କ୍ରିନ୍ ମୋଡାଲ୍ ଡାଏଲଗ୍‍ ହେବ କି ନାହିଁ ତାହା ନିର୍ଦ୍ଦିଷ୍ଟ କରେ"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("ପୂର୍ଣ୍ଣ ସ୍କ୍ରିନ୍"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("ପୂର୍ଣ୍ଣ ସ୍କ୍ରିନ୍"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("ସୂଚନା"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ଇନ୍‍ପୁଟ୍ ଚିପ୍ସ, ଏକ ଏଣ୍ଟିଟି (ବ୍ୟକ୍ତି, ସ୍ଥାନ କିମ୍ବା ଜିନିଷ) କିମ୍ବା ବାର୍ତ୍ତାଳାପ ଟେକ୍ସଟ୍ ପରି ଏକ ଜଟିଳ ସୂଚନାର ଅଂଶକୁ ସଂକ୍ଷିପ୍ତ ଆକାରରେ ପ୍ରତିନିଧିତ୍ୱ କରେ।"),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("ଚିପ୍ ଇନ୍‍ପୁଟ୍ କରନ୍ତୁ"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL ଦେଖାଯାଇପାରିଲା ନାହିଁ:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ଏକକ ନିର୍ଦ୍ଦିଷ୍ଟ-ଉଚ୍ଚତା ଧାଡ଼ି ଯେଉଁଥିରେ ସାଧାରଣତଃ କିଛି ଟେକ୍ସଟ୍ ସାମିଲ ଥାଏ, ଏହାସହ ଆଗରେ କିମ୍ବା ପଛରେ ଏକ ଆଇକନ୍ ଥାଏ।"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("ଦ୍ୱିତୀୟ ଟେକ୍ସଟ୍"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ତାଲିକା ଲେଆଉଟ୍‌ଗୁଡ଼ିକୁ ସ୍କ୍ରୋଲ୍ କରୁଛି"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("ତାଲିକାଗୁଡ଼ିକ"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("ଗୋଟିଏ ଲାଇନ୍"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "ଏହି ଡେମୋ ପାଇଁ ଉପଲବ୍ଧ ବିକଳ୍ପଗୁଡ଼ିକୁ ଦେଖିବାକୁ ଏଠାରେ ଟାପ୍ କରନ୍ତୁ।"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("ବିକଳ୍ପଗୁଡ଼ିକ ଦେଖନ୍ତୁ"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("ବିକଳ୍ପଗୁଡ଼ିକ"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ଆଉଟ୍‍ଲାଇନ୍ ବଟନ୍‍ଗୁଡ଼ିକ ଅସ୍ୱଚ୍ଛ ହୋଇଥାଏ ଏବଂ ଦବାଇଲେ ଉପରକୁ ଉଠିଯାଏ। ଏକ ଇଚ୍ଛାଧୀନ, ଦ୍ୱିତୀୟ କାର୍ଯ୍ୟକୁ ସୂଚିତ କରିବା ପାଇଁ ସେଗୁଡ଼ିକୁ ଅନେକ ସମୟରେ ଉଠିଥିବା ବଟନ୍‍ଗୁଡ଼ିକ ସହ ପେୟର୍ କରାଯାଇଥାଏ।"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("ଆଉଟ୍‍ଲାଇନ୍ ବଟନ୍"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ଉଠିଥିବା ବଟନ୍‍ଗୁଡ଼ିକ ପ୍ରାୟ ସମତଳ ଲେଆଉଟ୍‍ଗୁଡ଼ିକୁ ଆକାର ଦେଇଥାଏ। ସେଗୁଡ଼ିକ ବ୍ୟସ୍ତ କିମ୍ବା ଚଉଡ଼ା ଜାଗାଗୁଡ଼ିକରେ ଫଙ୍କସନ୍‍ଗୁଡ଼ିକୁ ଗୁରୁତ୍ୱ ଦେଇଥାଏ।"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("ଉଠିଥିବା ବଟନ୍"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "ଚେକ୍‌ବକ୍ସଗୁଡ଼ିକ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ଏକ ସେଟ୍‌ରୁ ଏକାଧିକ ବିକଳ୍ପ ଚୟନ କରିବାକୁ ଅନୁମତି ଦେଇଥାଏ। ଏକ ସାମାନ୍ୟ ଚେକ୍‌ବକ୍ସର ମୂଲ୍ୟ ସତ୍ୟ କିମ୍ବା ମିଥ୍ୟା ଅଟେ ଏବଂ ଏକ ଟ୍ରିସେଟ୍ ଚେକ୍‌ବକ୍ସର ମୂଲ୍ୟ ମଧ୍ୟ ଶୂନ୍ୟ ହୋଇପାରିବ।"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("ଚେକ୍‌ବକ୍ସ"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ରେଡିଓ ବଟନ୍‌ଗୁଡ଼ିକ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ଏକ ସେଟ୍‌ରୁ ଗୋଟିଏ ବିକଳ୍ପ ଚୟନ କରିବାକୁ ଅନୁମତି ଦେଇଥାଏ। ଯଦି ଆପଣ ଭାବୁଛନ୍ତି କି ଉପଯୋଗକର୍ତ୍ତା ଉପଲବ୍ଧ ଥିବା ସମସ୍ତ ବିକଳ୍ପ ଦେଖିବାକୁ ଚାହୁଁଛନ୍ତି, ତେବେ ବିଶେଷ ଚୟନ ପାଇଁ ରେଡିଓ ବଟନ୍ ବ୍ୟବହାର କରନ୍ତୁ।"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("ରେଡିଓ"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Checkboxes, ରେଡିଓ ବଟନ୍ ଏବଂ ସ୍ୱିଚ୍‌ଗୁଡ଼ିକ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ଏକ ସିଙ୍ଗଲ୍ ସେଟିଂସ୍ ବିକଳ୍ପରେ ସ୍ୱିଚ୍‌ର ଚାଲୁ/ବନ୍ଦ ସ୍ଥିତିକୁ ଟୋଗଲ୍ କରାଯାଏ। ସ୍ୱିଚ୍ ନିୟନ୍ତ୍ରଣ କରୁଥିବା ବିକଳ୍ପ ଏହାସହ ଏହାର ସ୍ଥିତି ସମ୍ବନ୍ଧରେ ଇନ୍‌ଲାଇନ୍ ଲେବଲ୍‌ରେ ସ୍ପଷ୍ଟ କରାଯିବ ଉଚିତ୍।"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("ସ୍ୱିଚ୍ କରନ୍ତୁ"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("ଚୟନ ଉପରେ ନିୟନ୍ତ୍ରଣ"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ସରଳ ଡାଏଲଗ୍ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ବିଭିନ୍ନ ବିକଳ୍ପଗୁଡ଼ିକ ମଧ୍ୟରୁ ଏକ ପସନ୍ଦ ପ୍ରଦାନ କରେ। ଏକ ସରଳ ଡାଏଲଗ୍‍‍ରେ ଏକ ଇଚ୍ଛାଧୀନ ଟାଇଟେଲ୍ ଥାଏ ଯାହା ପସନ୍ଦଗୁଡ଼ିକ ଉପରେ ପ୍ରଦର୍ଶିତ ହୁଏ।"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("ସରଳ"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "ଆପଣ ସ୍ନାକ୍‌ବାର୍ କାର୍ଯ୍ୟକୁ ଦବାଇଛନ୍ତି।"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("କାର୍ଯ୍ୟ"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ଏକ ସ୍ନାକ୍‌ବାର୍ ଦେଖାନ୍ତୁ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "ସ୍ନାକ୍‌ବାର୍ ଉପଯୋଗକର୍ତ୍ତାମାନଙ୍କୁ ସେହି ପ୍ରକ୍ରିୟା ବିଷୟରେ ସୂଚନା ଦେଇଥାଏ, ଯାହା ଏକ ଆପ୍ କାର୍ଯ୍ୟ କରିଛି ବା କାର୍ଯ୍ୟ କରିବ। ସେଗୁଡ଼ିକ ସ୍କ୍ରିନ୍‌ର ତଳ ଆଡ଼କୁ ଅସ୍ଥାୟୀ ଭାବେ ଦେଖାଯାଏ। ସେଗୁଡ଼ିକ ଉପଯୋଗକର୍ତ୍ତାଙ୍କ ଅନୁଭବରେ ବାଧା ଉପୁଯାଇବା ଆବଶ୍ୟକ ନୁହେଁ ଏବଂ ଅଦୃଶ୍ୟ ହେବାକୁ ଉପଯୋଗକର୍ତ୍ତା ଇନ୍‌ପୁଟ୍ ଆବଶ୍ୟକ ନୁହେଁ।"),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ସ୍ନାକ୍‌ବାର୍ ସ୍କ୍ରିନ୍‌ର ତଳେ ମେସେଜ୍‌ଗୁଡ଼ିକ ଦେଖାଏ"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("ଏହା ଏକ ସ୍ନାକ୍‌ବାର୍ ଅଟେ।"),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("ସ୍ନାକ୍‌ବାର୍"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "ଟାବ୍, ଭିନ୍ନ ସ୍କ୍ରିନ୍, ଡାଟା ସେଟ୍ ଏବଂ ଅନ୍ୟ ଇଣ୍ଟରାକ୍ସନ୍‌ଗୁଡ଼ିକରେ ବିଷୟବସ୍ତୁ ସଂଗଠିତ କରେ।"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ସ୍ୱତନ୍ତ୍ରଭାବରେ ସ୍କ୍ରୋଲ୍ ଯୋଗ୍ୟ ଭ୍ୟୁଗୁଡ଼ିକର ଟାବ୍"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ଟାବ୍‌ଗୁଡ଼ିକ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "ଟେକ୍ସଟ୍ ଫିଲ୍ଡ ଉପଯୋଗକର୍ତ୍ତାଙ୍କୁ ଏକ UIରେ ଟେକ୍ସଟ୍ ଲେଖିବାକୁ ଅନୁମତି ଦେଇଥାଏ। ସେମାନେ ସାଧାରଣତଃ ଫର୍ମ ଏବଂ ଡାଇଲଗ୍‌ରେ ଦେଖାଯାଆନ୍ତି।"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ଇ-ମେଲ୍"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "ଦୟାକରି ଗୋଟିଏ ପାସ୍‌ୱାର୍ଡ ଲେଖନ୍ତୁ।"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - ଏକ US ଫୋନ୍ ନମ୍ବର ଲେଖନ୍ତୁ।"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "ଦାଖଲ କରିବା ପୂର୍ବରୁ ଦୟାକରି ଲାଲ ତ୍ରୁଟିଗୁଡ଼କୁ ସମାଧାନ କରନ୍ତୁ।"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("ପାସ୍‍ୱାର୍ଡ ଲୁଚାନ୍ତୁ"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "ଏହାକୁ ଛୋଟ ରଖନ୍ତୁ, ଏହା କେବଳ ଏକ ଡେମୋ ଅଟେ।"),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("ଲାଇଫ୍ ଷ୍ଟୋରୀ"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("ନାମ*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("ନାମ ଆବଶ୍ୟକ ଅଟେ।"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8ରୁ ଅଧିକ ଅକ୍ଷର ନୁହେଁ"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "ଦୟାକରି କେବଳ ଅକ୍ଷରରେ ଲେଖନ୍ତୁ।"),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("ପାସ୍‌ୱାର୍ଡ*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "ପାସ୍‌ୱାର୍ଡଗୁଡ଼ିକ ମେଳ ହେଉନାହିଁ"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ଫୋନ୍ ନମ୍ବର*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* ଆବଶ୍ୟକ ଫିଲ୍ଡକୁ ସୂଚିତ କରେ"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("ପାସ୍‍ୱାର୍ଡ ପୁଣି ଲେଖନ୍ତୁ*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("ଦରମା"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("ପାସ୍‍ୱାର୍ଡ ଦେଖାନ୍ତୁ"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("ଦାଖଲ କରନ୍ତୁ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "ଏଡିଟ୍ ଯୋଗ୍ୟ ଟେକ୍ସଟ୍ ଏବଂ ସଂଖ୍ୟାଗୁଡ଼ିକର ସିଙ୍ଗଲ୍ ଲାଇନ୍"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "ଆପଣଙ୍କ ବିଷୟରେ ଆମକୁ କୁହନ୍ତୁ (ଉ.ଦା., ଆପଣ କ\'ଣ କରନ୍ତି କିମ୍ବା ଆପଣଙ୍କ ସଉକ କ\'ଣ କୁହନ୍ତୁ)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("ଟେକ୍ସଟ୍ ଫିଲ୍ଡ"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("ଲୋକ ଆପଣଙ୍କୁ କ\'ଣ ଡାକୁଛନ୍ତି?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "ଆମେ କେଉଁଥିରେ ଆପଣଙ୍କୁ ସମ୍ପର୍କ କରିବୁ?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("ଆପଣଙ୍କର ଇମେଲ୍ ଠିକଣା"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ସମ୍ବନ୍ଧିତ ବିକଳ୍ପଗୁଡ଼ିକ ଗୋଷ୍ଠୀଭୁକ୍ତ କରିବା ପାଇଁ ଟୋଗଲ୍ ବଟନ୍‍ଗୁଡ଼ିକ ବ୍ୟବହାର କରାଯାଏ। ସମ୍ବନ୍ଧିତ ଟୋଗଲ୍ ବଟନ୍‍ଗୁଡ଼ିକର ଗୋଷ୍ଠୀଗୁଡ଼ିକୁ ଗୁରୁତ୍ୱ ଦେବା ପାଇଁ, ଗୋଷ୍ଠୀ ସମାନ କଣ୍ଟେନର୍ ସେୟାର୍ କରିବା ଉଚିତ"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ଟୋଗଲ୍ ବଟନ୍‍ଗୁଡ଼ିକ"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("ଦୁଇଟି ଲାଇନ୍"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "ମେଟେରିଆଲ୍ ଡିଜାଇନ୍‌ରେ ପାଇଥିବା ଭିନ୍ନ ଟାଇପୋଗ୍ରାଫିକାଲ୍ ଶୈଳୀର ସଂଜ୍ଞା।"),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "ସମସ୍ତ ପୂର୍ବ ନିର୍ଦ୍ଧାରିତ ଟେକ୍ସଟ୍ ଶୈଳୀ"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("ଟାଇପୋଗ୍ରାଫି"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("ଆକାଉଣ୍ଟ ଯୋଗ କରନ୍ତୁ"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ସମ୍ମତ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ବାତିଲ୍ କରନ୍ତୁ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ଅସମ୍ମତ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ଖାରଜ କରନ୍ତୁ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("ଡ୍ରାଫ୍ଟ ଖାରଜ କରିବେ?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "ପୂର୍ଣ୍ଣ ସ୍କ୍ରିନ୍ ଡାଏଲଗ୍ ଡେମୋ"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ସେଭ୍ କରନ୍ତୁ"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("ପୂର୍ଣ୍ଣ ସ୍କ୍ରିନ୍ ଡାଏଲଗ୍"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Googleକୁ ଲୋକେସନ୍ ନିର୍ଦ୍ଧାରଣ କରିବାରେ ଆପ୍ସର ସାହାଯ୍ୟ କରିବାକୁ ଦିଅନ୍ତୁ। ଏହାର ଅର୍ଥ ହେଲା, କୌଣସି ଆପ୍ ଚାଲୁ ନଥିବା ସମୟରେ ମଧ୍ୟ Googleକୁ ଲୋକେସନ୍ ଡାଟା ପଠାଇବା।"),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Googleର ଲୋକେସନ୍ ସେବା ବ୍ୟବହାର କରିବେ?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "ବ୍ୟାକ୍‍ଅପ୍ ଆକାଉଣ୍ଟ ସେଟ୍ କରନ୍ତୁ"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ଡାଏଲଗ୍ ଦେଖାନ୍ତୁ"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ରେଫରେନ୍ସ ଶୈଳୀ ଓ ମିଡ଼ିଆ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("ବର୍ଗଗୁଡ଼ିକ"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("ଗ୍ୟାଲେରୀ"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("କାର୍ ସେଭିଂସ୍"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("ଯାଞ୍ଚ କରାଯାଉଛି"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("ହୋମ୍ ସେଭିଂସ୍"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("ଛୁଟି"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("ଆକାଉଣ୍ଟ ମାଲିକ"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("ବାର୍ଷିକ ପ୍ରତିଶତ ୟେଲ୍ଡ"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("ଗତ ବର୍ଷ ଦେଇଥିବା ସୁଧ"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("ସୁଧ ଦର"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("ସୁଧ YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("ପରବର୍ତ୍ତୀ ଷ୍ଟେଟ୍‍ମେଣ୍ଟ"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("ମୋଟ"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("ଆକାଉଣ୍ଟଗୁଡ଼ିକ"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("ଆଲର୍ଟଗୁଡ଼ିକ"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("ବିଲ୍‌ଗୁଡ଼ିକ"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("ଧାର୍ଯ୍ୟ ସମୟ"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("କପଡ଼ା"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("କଫି ଦୋକାନ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("ଗ୍ରୋସେରୀ"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("ରେଷ୍ଟୁରାଣ୍ଟଗୁଡ଼ିକ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("ଅବଶିଷ୍ଟ ଅଛି"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("ବଜେଟ୍"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("ଏକ ବ୍ୟକ୍ତିଗତ ଫାଇନାନ୍ସ ଆପ୍"),
        "rallyFinanceLeft":
            MessageLookupByLibrary.simpleMessage("ଅବଶିଷ୍ଟ ରାଶି"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ଲଗ୍ ଇନ୍ କରନ୍ତୁ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("ଲଗ୍ଇନ୍"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rallyରେ ଲଗ୍ ଇନ୍ କରନ୍ତୁ"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage(
            "କୌଣସି AdSense ଆକାଉଣ୍ଟ ନାହିଁ?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("ପାସ୍‌ୱାର୍ଡ"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("ମୋତେ ମନେରଖନ୍ତୁ"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ସାଇନ୍ ଅପ୍ କରନ୍ତୁ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("ଉପଯୋଗକର୍ତ୍ତାଙ୍କ ନାମ"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ସବୁ ଦେଖନ୍ତୁ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("ସବୁ ଆକାଉଣ୍ଟ ଦେଖନ୍ତୁ"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("ସବୁ ବିଲ୍ ଦେଖନ୍ତୁ"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("ସବୁ ବଜେଟ୍ ଦେଖନ୍ତୁ"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATM ଖୋଜନ୍ତୁ"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("ସାହାଯ୍ୟ"),
        "rallySettingsManageAccounts": MessageLookupByLibrary.simpleMessage(
            "ଆକାଉଣ୍ଟଗୁଡ଼ିକୁ ପରିଚାଳନା କରନ୍ତୁ"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("ବିଜ୍ଞପ୍ତିଗୁଡ଼ିକ"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("ପେପର୍‌ଲେସ୍ ସେଟିଂସ୍"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("ପାସ୍‌କୋଡ୍ ଏବଂ ଟଚ୍ ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("ବ୍ୟକ୍ତିଗତ ସୂଚନା"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("ସାଇନ୍-ଆଉଟ୍ କରନ୍ତୁ"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("ଟେକ୍ସ ଡକ୍ୟୁମେଣ୍ଟ"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("ଆକାଉଣ୍ଟଗୁଡ଼ିକ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ବିଲ୍‌ଗୁଡ଼ିକ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ବଜେଟ୍"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ସାରାଂଶ"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ସେଟିଂସ୍"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("ଫ୍ଲଟର୍ ଗ୍ୟାଲେରୀ ବିଷୟରେ"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "ଲଣ୍ଡନ୍‌ରେ TOASTER ଦ୍ୱାରା ଡିଜାଇନ୍ କରାଯାଇଛି"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("ସେଟିଂସ୍‌କୁ ବନ୍ଦ କରନ୍ତୁ"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("ସେଟିଂସ୍"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("ଗାଢ଼"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("ମତାମତ ପଠାନ୍ତୁ"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("ଲାଇଟ୍"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("ସ୍ଥାନ"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("ପ୍ଲାଟଫର୍ମ ମେକାନିକ୍"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("ସ୍ଲୋ ମୋଶନ୍"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("ସିଷ୍ଟମ୍"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("ଟେକ୍ସଟ୍ ଦିଗ"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("ଲୋକେଲର ଆଧାରରେ"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("ଟେକ୍ସଟ୍ ସ୍କେଲିଂ"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("ବହୁତ ବଡ଼"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("ବଡ଼"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("ସାଧାରଣ"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("ଛୋଟ"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("ଥିମ୍"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("ସେଟିଂସ୍"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ବାତିଲ୍ କରନ୍ତୁ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("କାର୍ଟ ଖାଲି କରନ୍ତୁ"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("କାର୍ଟ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("ସିପିଂ:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("ସର୍ବମୋଟ:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("କର:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("ମୋଟ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ଆକସେସୋରୀ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ସମସ୍ତ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ପୋଷାକ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ଘର"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("ଏକ ଫେସନେ‌ବଲ୍ ରିଟେଲ୍ ଆପ୍"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("ପାସ୍‌ୱାର୍ଡ"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ଉପଯୋଗକର୍ତ୍ତାଙ୍କ ନାମ"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ଲଗଆଉଟ୍"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("ମେନୁ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ପରବର୍ତ୍ତୀ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("ବ୍ଲୁ ଷ୍ଟୋନ୍ ମଗ୍"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("ସିରିଜ୍ ସ୍କଲୋପ୍ ଟି"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("ଚାମ୍ବରେ ନାପ୍‌କିନ୍ସ"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("ଚାମ୍ବରେ ସାର୍ଟ"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("କ୍ଲାସିକ୍ ହ୍ୱାଇଟ୍ କୋଲାର୍"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("କ୍ଲେ ସ୍ୱେଟର୍"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("ତମ୍ବା ୱାୟାର୍ ରେକ୍"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("ଫାଇନ୍ ଲାଇନ୍ ଟି"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("ଗାର୍ଡେନ୍ ଷ୍ଟ୍ରାଣ୍ଡ"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("ଗେଟ୍ସବାଏ ହେଟ୍"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ଜେଣ୍ଟ୍ରି ଜ୍ୟାକେଟ୍"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("ଗ୍ଲିଟ୍ ଡେସ୍କ ଟ୍ରିଓ"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("ଜିଞ୍ଜର୍ ସ୍କାର୍ଫ"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("ଗ୍ରେ ସ୍ଲାଉଚ୍ ଟାଙ୍କ"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("ହୁରାହ୍\'ର ଟି ସେଟ୍"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("କିଚେନ୍ କ୍ୱାଟ୍ରୋ"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("ନେଭି ଟ୍ରାଉଜର୍"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("ପ୍ଲାଷ୍ଟର୍ ଟ୍ୟୁନିକ୍"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("କ୍ୱାର୍ଟେଟ୍ ଟେବଲ୍"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("ରେନ୍‌ୱାଟର୍ ଟ୍ରେ"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("ରାମୋନା କ୍ରସ୍‌ଓଭର୍"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("ସି ଟ୍ୟୁନିକ୍"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("ସିବ୍ରିଜ୍ ସ୍ୱେଟର୍"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("ସୋଲ୍‌ଡର୍ ରୋଲ୍ସ ଟି"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("ସ୍ରଗ୍ ବ୍ୟାଗ୍"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("ସୁଦ୍ ସେରାମିକ୍ ସେଟ୍"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("ଷ୍ଟେଲା ସନ୍‌ଗ୍ଲାସ୍"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("ଷ୍ଟ୍ରଟ୍ ଇଅର୍‌ରିଂ"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("ସକ୍ୟୁଲେଣ୍ଟ ପ୍ଲାଣ୍ଟର୍ସ"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("ସନ୍‌ସାର୍ଟ ଡ୍ରେସ୍"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("ସର୍ଫ ଏବଂ ପର୍ଫ ସାର୍ଟ"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("ଭାଗାବଣ୍ଡ ସାକ୍"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("ଭାର୍ସିଟୀ ସକ୍ସ"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("ୱାଲ୍ଟର୍ ହେନ୍‌ଲି (ଧଳା)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("ୱେଭ୍ କୀ\'ରିଂ"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("ଧଳା ପିନ୍‌ଷ୍ଟ୍ରିପ୍ ସାର୍ଟ"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("ହ୍ୱିଟ୍‌ନେ ବେଲ୍ଟ"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("କାର୍ଟରେ ଯୋଗ କରନ୍ତୁ"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("କାର୍ଟ ବନ୍ଦ କରନ୍ତୁ"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("ମେନୁ ବନ୍ଦ କରନ୍ତୁ"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("ମେନୁ ଖୋଲନ୍ତୁ"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("ଆଇଟମ୍ କାଢ଼ି ଦିଅନ୍ତୁ"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ସନ୍ଧାନ କରନ୍ତୁ"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("ସେଟିଂସ୍"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "ଏକ ପ୍ରତିକ୍ରିୟାଶୀଳ ଷ୍ଟାର୍ଟର୍ ଲେଆଉଟ୍"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("ବଡି"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("ବଟନ୍"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("ହେଡଲାଇନ"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("ସବ୍‌ଟାଇଟଲ୍"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("ଟାଇଟଲ୍"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("ଷ୍ଟାର୍ଟର୍ ଆପ୍"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("ଯୋଗ କରନ୍ତୁ"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("ପସନ୍ଦ"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ସନ୍ଧାନ କରନ୍ତୁ"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("ସେୟାର୍‍ କରନ୍ତୁ")
      };
}
