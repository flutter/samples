// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ml locale. All the
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
  String get localeName => 'ml';

  static m0(value) =>
      "ഈ ആപ്പിനായുള്ള സോഴ്‌സ് കോഡ് കാണുന്നതിന്, ${value} സന്ദർശിക്കുക.";

  static m1(title) => "${title} ടാബിനുള്ള പ്ലെയ്സ്‌ഹോൾഡർ";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'റെസ്‌റ്റോറന്റുകളൊന്നുമില്ല', one: 'ഒരു റെസ്‌റ്റോറന്റ്', other: '${totalRestaurants} റെസ്റ്റോറന്റുകൾ')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'സ്റ്റോപ്പില്ലാത്തവ', one: 'ഒരു സ്റ്റോപ്പ്', other: '${numberOfStops} സ്റ്റോപ്പുകൾ')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'പ്രോപ്പർട്ടികളൊന്നും ലഭ്യമല്ല', one: '1 പ്രോപ്പർട്ടികൾ ലഭ്യമാണ്', other: '${totalProperties} പ്രോപ്പർട്ടികൾ ലഭ്യമാണ്')}";

  static m5(value) => "ഇനം ${value}";

  static m6(error) => "ക്ലിപ്പ്ബോർഡിലേക്ക് പകർത്താനായില്ല: ${error}";

  static m7(value) => "തുടർച്ചയായത്: ${value}";

  static m8(value) => "ഇടവിട്ടുള്ളത്: ${value}";

  static m9(name, phoneNumber) =>
      "${name} എന്ന വ്യക്തിയുടെ ഫോൺ നമ്പർ ${phoneNumber} ആണ്";

  static m10(value) => "നിങ്ങൾ തിരഞ്ഞെടുത്തത്: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "${amount} നിരക്കുള്ള, ${accountNumber} എന്ന അക്കൗണ്ട് നമ്പറോട് കൂടിയ ${accountName} അക്കൗണ്ട്.";

  static m12(amount) => "ഈ മാസം നിങ്ങൾ ${amount} ATM ഫീസ് അടച്ചു";

  static m13(percent) =>
      "തകർപ്പൻ പ്രകടനം! നിങ്ങളുടെ ചെക്കിംഗ് അക്കൗണ്ട് കഴിഞ്ഞ മാസത്തേക്കാൾ ${percent} കൂടുതലാണ്.";

  static m14(percent) =>
      "ശ്രദ്ധിക്കൂ, നിങ്ങൾ ഈ മാസത്തെ ഷോപ്പിംഗ് ബജറ്റിന്റെ ${percent} ഉപയോഗിച്ചു.";

  static m15(amount) => "ഈ ആഴ്ച റസ്റ്റോറന്റുകളിൽ നിങ്ങൾ ${amount} ചെലവാക്കി.";

  static m16(count) =>
      "${Intl.plural(count, one: 'നികുതിയായി നിങ്ങളിൽ നിന്നും പിടിക്കാൻ സാധ്യതയുള്ള തുക കുറയ്ക്കൂ! വിഭാഗങ്ങൾ നിശ്ചയിച്ചിട്ടില്ലാത്ത ഒരു ഇടപാടിന് വിഭാഗങ്ങൾ നൽകുക.', other: 'നികുതിയായി നിങ്ങളിൽ നിന്നും പിടിക്കാൻ സാധ്യതയുള്ള തുക കുറയ്ക്കൂ! വിഭാഗങ്ങൾ നിശ്ചയിച്ചിട്ടില്ലാത്ത ${count} ഇടപാടുകൾക്ക് വിഭാഗങ്ങൾ നൽകുക.')}";

  static m17(billName, date, amount) =>
      "അവസാന തീയതി ${date} ആയ ${amount} വരുന്ന ${billName} ബിൽ.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "മൊത്തം ${amountTotal} തുകയിൽ ${amountUsed} നിരക്ക് ഉപയോഗിച്ച ${budgetName} ബജറ്റ്, ${amountLeft} ശേഷിക്കുന്നു";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'ഇനങ്ങളൊന്നുമില്ല', one: 'ഒരിനം', other: '${quantity} ഇനങ്ങൾ')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "അളവ്: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'ഷോപ്പിംഗ് കാർട്ട്, ഇനങ്ങളൊന്നുമില്ല', one: 'ഷോപ്പിംഗ് കാർട്ട്, ഒരു ഇനം', other: 'ഷോപ്പിംഗ് കാർട്ട്, ${quantity} ഇനങ്ങൾ')}";

  static m23(product) => "${product} നീക്കുക";

  static m24(value) => "ഇനം ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "ഫ്ലട്ടർ സാമ്പിൾസ് ഗിറ്റ്ഹബ് റിപ്പോ"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("ഗാലറിയിലേക്ക് മടങ്ങുക"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("അക്കൗണ്ട്"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("അലാറം"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("കലണ്ടർ"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("ക്യാമറ"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("കമന്റുകൾ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ബട്ടൺ"),
        "buttonTextCreate":
            MessageLookupByLibrary.simpleMessage("സൃഷ്‌ടിക്കുക"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("ബൈക്കിംഗ്"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("എലിവേറ്റർ"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("നെരിപ്പോട്"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("വലുത്"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("ഇടത്തരം"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("ചെറുത്"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("ലൈറ്റുകൾ ഓണാക്കുക"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("വാഷർ"),
        "colorsAmber":
            MessageLookupByLibrary.simpleMessage("മഞ്ഞ കലർന്ന ഓറഞ്ച് വർണ്ണം"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("നീല"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("നീല കലർന്ന ചാരനിറം"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ബ്രൗൺ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("സിയാൻ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ഇരുണ്ട ഓറഞ്ച് നിറം"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ഇരുണ്ട പർപ്പിൾ നിറം"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("പച്ച"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ചാരനിറം"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ഇൻഡിഗോ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ഇളം നീല"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ഇളം പച്ച"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("മഞ്ഞകലർന്ന പച്ച"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ഓറഞ്ച്"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("പിങ്ക്"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("പർപ്പിൾ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ചുവപ്പ്"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ടീൽ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("മഞ്ഞ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "വ്യക്തിപരമാക്കിയ യാത്രാ ആപ്പ്"),
        "craneEat": MessageLookupByLibrary.simpleMessage("കഴിക്കുക"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("നേപ്പിൾസ്, ഇറ്റലി"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "വിറക് ഉപയോഗിക്കുന്ന അടുപ്പിലുണ്ടാക്കുന്ന പിസ"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "ഡാലസ്, യുണൈറ്റഡ് സ്റ്റേറ്റ്‌സ്"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("ലിസ്ബൺ, പോർച്ചുഗൽ"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "വലിയ പേസ്‌ട്രാമി സാൻഡ്‌വിച്ച് കൈയ്യിൽ പിടിച്ച് നിൽകുന്ന സ്‌ത്രീ"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ഡിന്നർ സ്‌റ്റൈൽ സ്‌റ്റൂളുകളുള്ള ആളൊഴിഞ്ഞ ബാർ"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("കോദോബ, അർജന്റീന"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("ബർഗർ"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "പോർട്ട്ലൻഡ്, യുണൈറ്റഡ് സ്റ്റേറ്റ്സ്"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("കൊറിയൻ ടാക്കോ"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("പാരീസ്, ഫ്രാൻസ്"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ചോക്ലേറ്റ് ഡിസേർട്ട്"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("സോൾ, ദക്ഷിണ കൊറിയ"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ആർട്‌സി റെസ്‌റ്റോറന്റിലെ ഇരിപ്പിട സൗകര്യം"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "സീറ്റിൽ, യുണൈറ്റഡ് സ്‌റ്റേറ്റ്‌സ്"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ചെമ്മീന്‍ കൊണ്ടുള്ള വിഭവം"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "നാഷ്‌വിൽ, യുണൈറ്റഡ് സ്റ്റേറ്റ്സ്"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ബേക്കറിയുടെ പ്രവേശനകവാടം"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "അറ്റ്ലാന്റ, യുണൈറ്റഡ് സ്റ്റേറ്റ്സ്"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ഒരു പ്ലേറ്റ് ക്രോഫിഷ്"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("മാഡ്രിഡ്, സ്‌പെയിൻ"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "പേസ്‌ട്രികൾ ലഭ്യമാക്കുന്ന കഫേയിലെ കൗണ്ടർ"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "ലക്ഷ്യസ്ഥാനം അനുസരിച്ച് റെസ്റ്റോറന്റുകൾ അടുത്തറിയുക"),
        "craneFly": MessageLookupByLibrary.simpleMessage("FLY"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "ആസ്പെൻ, യുണൈറ്റഡ് സ്റ്റേറ്റ്സ്"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "മഞ്ഞ് പെയ്യുന്ന നിത്യഹരിത മരങ്ങളുള്ള പ്രദേശത്തെ\nഉല്ലാസ കേന്ദ്രം"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "ബിഗ് സുർ, യുണൈറ്റഡ് സ്‌റ്റേറ്റ്സ്"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("കെയ്‌റോ, ഈജിപ്ത്"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "സൂര്യാസ്‌തമയ സമയത്ത് അൽ-അസ്ഹർ പള്ളിയുടെ മിനാരങ്ങൾ"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("ലിസ്ബൺ, പോർച്ചുഗൽ"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ഇഷ്‌ടിക കൊണ്ട് ഉണ്ടാക്കിയ കടലിലെ ലൈറ്റ്ഹൗസ്"),
        "craneFly12": MessageLookupByLibrary.simpleMessage(
            "നാപ്പ, യുണൈറ്റഡ് സ്റ്റേറ്റ്സ്"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ഈന്തപ്പനകളോടുകൂടിയ പൂൾ"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("ബാലി, ഇന്തോനേഷ്യ"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ഈന്തപ്പനകളോടുകൂടിയ സമുദ്രതീരത്തെ പൂളുകൾ"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ഫീൽഡിലെ ടെന്റ്"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("കുംബു വാലി, നേപ്പാൾ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "മഞ്ഞ് പെയ്യുന്ന മലനിരകൾക്ക് മുന്നിലെ പ്രാർഥനാ ഫ്ലാഗുകൾ"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("മാച്ചു പിച്ചു, പെറു"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("മാച്ചു പിച്ചു സിറ്റാഡെൽ"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("മാലി, മാലദ്വീപുകൾ"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "വെള്ളത്തിന് പുറത്ത് നിർമ്മിച്ചിരിക്കുന്ന ബംഗ്ലാവുകൾ"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("വിറ്റ്‌സ്നോ, സ്വിറ്റ്സർലൻഡ്"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "മലനിരകൾക്ക് മുന്നിലുള്ള തടാകതീരത്തെ ഹോട്ടൽ"),
        "craneFly6": MessageLookupByLibrary.simpleMessage(
            "മെക്‌സിക്കോ സിറ്റി, മെക്‌സിക്കോ"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "പലാസിയോ ഡീ ബെല്ലാസ് അർട്ടെസിന്റെ ആകാശ കാഴ്‌ച"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "മൗണ്ട് റഷ്മോർ, യുണൈറ്റഡ് സ്‌റ്റേറ്റ്സ്"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("മൗണ്ട് റഷ്മോർ"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("സിംഗപ്പൂർ"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ഹവാന, ക്യൂബ"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "നീല നിറത്തിലുള്ള പുരാതന കാറിൽ ചാരിയിരിക്കുന്ന മനുഷ്യൻ"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "ലക്ഷ്യസ്ഥാനം അനുസരിച്ച് ഫ്ലൈറ്റുകൾ അടുത്തറിയുക"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("തീയതി തിരഞ്ഞെടുക്കുക"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("തീയതികൾ തിരഞ്ഞെടുക്കുക"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("ലക്ഷ്യസ്ഥാനം തിരഞ്ഞെടുക്കുക"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("ഡൈനറുകൾ"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("ലൊക്കേഷൻ തിരഞ്ഞെടുക്കുക"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "പുറപ്പെടുന്ന സ്ഥലം തിരഞ്ഞെടുക്കുക"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("സമയം തിരഞ്ഞെടുക്കുക"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("സഞ്ചാരികൾ"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ഉറക്കം"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("മാലി, മാലദ്വീപുകൾ"),
        "craneSleep0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "വെള്ളത്തിന് പുറത്ത് നിർമ്മിച്ചിരിക്കുന്ന ബംഗ്ലാവുകൾ"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "ആസ്പെൻ, യുണൈറ്റഡ് സ്റ്റേറ്റ്സ്"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("കെയ്‌റോ, ഈജിപ്ത്"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "സൂര്യാസ്‌തമയ സമയത്ത് അൽ-അസ്ഹർ പള്ളിയുടെ മിനാരങ്ങൾ"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("തായ്പേയ്, തായ്‌വാൻ"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("തായ്പേയ് 101 സ്കൈസ്ക്രാപ്പർ"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "മഞ്ഞ് പെയ്യുന്ന നിത്യഹരിത മരങ്ങളുള്ള പ്രദേശത്തെ\nഉല്ലാസ കേന്ദ്രം"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("മാച്ചു പിച്ചു, പെറു"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("മാച്ചു പിച്ചു സിറ്റാഡെൽ"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ഹവാന, ക്യൂബ"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "നീല നിറത്തിലുള്ള പുരാതന കാറിൽ ചാരിയിരിക്കുന്ന മനുഷ്യൻ"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("വിറ്റ്‌സ്നോ, സ്വിറ്റ്സർലൻഡ്"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "മലനിരകൾക്ക് മുന്നിലുള്ള തടാകതീരത്തെ ഹോട്ടൽ"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "ബിഗ് സുർ, യുണൈറ്റഡ് സ്‌റ്റേറ്റ്സ്"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ഫീൽഡിലെ ടെന്റ്"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage(
            "നാപ്പ, യുണൈറ്റഡ് സ്റ്റേറ്റ്സ്"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ഈന്തപ്പനകളോടുകൂടിയ പൂൾ"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("പോർട്ടോ, പോർച്ചുഗൽ"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "റിബേറിയ സ്ക്വയറിലെ വർണ്ണശബളമായ അപ്പാർട്ട്മെന്റുകൾ"),
        "craneSleep8":
            MessageLookupByLibrary.simpleMessage("ടുലും, മെക്സിക്കോ"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "കടൽത്തീരത്തുള്ള മലഞ്ചെരുവിൽ മായൻ അവശിഷ്‌ടങ്ങൾ"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("ലിസ്ബൺ, പോർച്ചുഗൽ"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ഇഷ്‌ടിക കൊണ്ട് ഉണ്ടാക്കിയ കടലിലെ ലൈറ്റ്ഹൗസ്"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "ലക്ഷ്യസ്ഥാനം അനുസരിച്ച് പ്രോപ്പർട്ടികൾ അടുത്തറിയുക"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("അനുവദിക്കുക"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("ആപ്പിൾ പൈ"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("റദ്ദാക്കുക"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("ചീസ്‌കേക്ക്"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("ചോക്ലേറ്റ് ബ്രൗണി"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "താഴെ കൊടുത്ത പട്ടികയിൽ നിന്ന് നിങ്ങളുടെ പ്രിയപ്പെട്ട ഡെസേർട്ട് തരം തിരഞ്ഞെടുക്കുക. നിങ്ങളുടെ പ്രദേശത്തെ നിർദ്ദേശിച്ച ഭക്ഷണശാലകളുടെ പട്ടിക ഇഷ്ടാനുസൃതമാക്കാൻ നിങ്ങളുടെ തിരഞ്ഞെടുപ്പ് ഉപയോഗിക്കും."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("നിരസിക്കുക"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("അനുവദിക്കരുത്"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "പ്രിയപ്പെട്ട ഡെസേർട്ട് തിരഞ്ഞെടുക്കുക"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "നിങ്ങളുടെ നിലവിലെ ലൊക്കേഷൻ, മാപ്പിൽ പ്രദർശിപ്പിക്കുകയും ദിശകൾ, സമീപത്തുള്ള തിരയൽ ഫലങ്ങൾ, കണക്കാക്കിയ യാത്രാ സമയങ്ങൾ എന്നിവയ്ക്ക് ഉപയോഗിക്കുകയും ചെയ്യും."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "ആപ്പ് ഉപയോഗിക്കുമ്പോൾ നിങ്ങളുടെ ലൊക്കേഷൻ ആക്‌സസ് ചെയ്യാൻ \"Maps\"-നെ അനുവദിക്കണോ?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("തിറാമിസു"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ബട്ടൺ"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("പശ്ചാത്തലവുമായി"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("മുന്നറിയിപ്പ് കാണിക്കുക"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("ചാറ്റ്"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("ഹോം"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("പ്രൊഫൈൽ"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "പ്രാഥമിക ഉള്ളടക്കവുമായി ബന്ധപ്പെട്ട ഒരു ആക്ഷനെ ട്രിഗർ ചെയ്യുന്ന ഒരു സെറ്റ് ഓപ്ഷനുകളാണ് ആക്ഷൻ ചിപ്പുകൾ. ആക്ഷൻ ചിപ്പുകൾ UI-യിൽ ചലനാത്മകമായും സന്ദർഭോചിതമായും ദൃശ്യമാകും."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ആക്ഷൻ ചിപ്പ്"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "മുന്നറിയിപ്പ് ഡയലോഗ്, അംഗീകാരം ആവശ്യമുള്ള സാഹചര്യങ്ങളെക്കുറിച്ച് ഉപയോക്താവിനെ അറിയിക്കുന്നു. മുന്നറിയിപ്പ് ഡയലോഗിന് ഒരു ഓപ്‌ഷണൽ പേരും പ്രവർത്തനങ്ങളുടെ ഓപ്‌ഷണൽ പട്ടികയും ഉണ്ട്."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("മുന്നറിയിപ്പ്"),
        "demoAlertTitleDialogTitle": MessageLookupByLibrary.simpleMessage(
            "പേര് ഉപയോഗിച്ച് മുന്നറിയിപ്പ്"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "സ്‌ക്രീനിന്റെ ചുവടെ മൂന്ന് മുതൽ അഞ്ച് വരെ ലക്ഷ്യസ്ഥാനങ്ങൾ ബോട്ടം നാവിഗേഷൻ ബാറുകൾ പ്രദർശിപ്പിക്കുന്നു. ഓരോ ലക്ഷ്യസ്ഥാനവും ഐക്കൺ, ഓപ്ഷണൽ ടെക്സ്റ്റ് ലേബൽ എന്നിവയിലൂടെ പ്രതിനിധീകരിക്കപ്പെടുന്നു. ബോട്ടം നാവിഗേഷൻ ഐക്കൺ ടാപ്പ് ചെയ്യുമ്പോൾ, ഉപയോക്താവിനെ ആ ഐക്കണുമായി ബന്ധപ്പെട്ട ഉയർന്ന ലെവൽ നാവിഗേഷൻ ലക്ഷ്യസ്ഥാനത്തേക്ക് കൊണ്ടുപോകും."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("സ്ഥിരമായ ലേബലുകൾ"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("തിരഞ്ഞെടുത്ത ലേബൽ"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "ക്രോസ്-ഫേഡിംഗ് കാഴ്‌ചകളുള്ള ബോട്ടം നാവിഗേഷൻ"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("ബോട്ടം നാവിഗേഷൻ"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("ചേർക്കുക"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ബോട്ടം ഷീറ്റ് കാണിക്കുക"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("തലക്കെട്ട്"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "മോഡൽ ബോട്ടം ഷീറ്റ് മെനുവിനോ ഡയലോഗിനോ ഉള്ള ബദലാണ്, ഇത് ബാക്കി ആപ്പുമായി ഇടപഴകുന്നതിൽ നിന്ന് ഉപയോക്താവിനെ തടയുന്നു."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("മോഡൽ ബോട്ടം ഷീറ്റ്"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "ആപ്പിന്റെ പ്രാഥമിക ഉള്ളടക്കത്തിന് അനുബന്ധമായ വിവരങ്ങൾ സ്ഥിരമായ ബോട്ടം ഷീറ്റ് കാണിക്കുന്നു. ഉപയോക്താവ് ആപ്പിന്റെ മറ്റ് ഭാഗങ്ങളുമായി സംവദിക്കുമ്പോഴും സ്ഥിരമായ ഒരു ബോട്ടം ഷീറ്റ് ദൃശ്യമാകും."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("സ്ഥിരമായ ബോട്ടം ഷീറ്റ്"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "സ്ഥിരമായ, മോഡൽ ബോട്ടം ഷീറ്റുകൾ"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("ബോട്ടം ഷീറ്റ്"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("ടെക്‌സ്റ്റ് ഫീൽഡുകൾ"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "ഫ്ലാറ്റ്, റെയ്‌സ്‌ഡ്, ഔട്ട്‌ലൈൻ എന്നിവയും മറ്റും"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ബട്ടണുകൾ"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "ഇൻപുട്ട്, ആട്രിബ്യൂട്ട് അല്ലെങ്കിൽ ആക്ഷൻ എന്നതിനെ പ്രതിനിധീകരിക്കുന്ന കോംപാക്റ്റ് മൂലകങ്ങൾ"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ചിപ്‌സ്"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "ചോയ്‌സ് ചിപ്പുകൾ, ഒരു സെറ്റിൽ നിന്നുള്ള ഒരൊറ്റ ചോയ്‌സിനെ പ്രതിനിധീകരിക്കുന്നു. ചോയ്‌സ് ചിപ്പുകളിൽ ബന്ധപ്പെട്ട വിവരണാത്മക ടെക്‌സ്‌റ്റോ വിഭാഗങ്ങളോ അടങ്ങിയിരിക്കുന്നു."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("ചോയ്സ് ചിപ്പ്"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("കോഡ് മാതൃക"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "ക്ലിപ്പ്‌ബോർഡിലേക്ക് പകർത്തി."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("എല്ലാം പകർത്തുക"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "മെറ്റീരിയൽ രൂപകൽപ്പനയുടെ വർണ്ണ പാലെറ്റിനെ പ്രതിനിധീകരിക്കുന്ന വർണ്ണ, വർണ്ണ സ്വാച്ച് കോൺസ്‌റ്റന്റുകൾ."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "എല്ലാ മുൻനിശ്ചയിച്ച വർണ്ണങ്ങളും"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("വർണ്ണങ്ങൾ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "നിലവിലെ സന്ദർഭവുമായി ബന്ധപ്പെട്ട രണ്ടോ അതിലധികമോ തിരഞ്ഞെടുക്കലുകളുടെ ഒരു കൂട്ടം, ഉപയോക്താവിനെ അവതരിപ്പിക്കുന്ന ഒരു നിർദ്ദിഷ്ട ശൈലിയിലുള്ള മുന്നറിയിപ്പാണ് ആക്ഷൻ ഷീറ്റ്. ആക്ഷൻ ഷീറ്റിന് ഒരു പേര്, ഒരു അധിക സന്ദേശം, പ്രവർത്തനങ്ങളുടെ പട്ടിക എന്നിവ ഉണ്ടാകാവുന്നതാണ്."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("ആക്ഷൻ ഷീറ്റ്"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "മുന്നറിയിപ്പ് ബട്ടണുകൾ മാത്രം"),
        "demoCupertinoAlertButtonsTitle": MessageLookupByLibrary.simpleMessage(
            "ബട്ടണുകൾ ഉപയോഗിച്ച് മുന്നറിയിപ്പ്"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "മുന്നറിയിപ്പ് ഡയലോഗ്, അംഗീകാരം ആവശ്യമുള്ള സാഹചര്യങ്ങളെക്കുറിച്ച് ഉപയോക്താവിനെ അറിയിക്കുന്നു. മുന്നറിയിപ്പ് ഡയലോഗിന് ഒരു ഓപ്‌ഷണൽ പേര്, ഓപ്‌ഷണൽ ഉള്ളടക്കം, പ്രവർത്തനങ്ങളുടെ ഒരു ഓപ്‌ഷണൽ പട്ടിക എന്നിവയുണ്ട്. ഉള്ളടക്കത്തിന്റെ മുകളിൽ പേര്, താഴെ പ്രവർത്തനങ്ങൾ എന്നിവ പ്രദർശിപ്പിക്കുന്നു."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("മുന്നറിയിപ്പ്"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage(
                "ശീർഷകത്തോടെയുള്ള മുന്നറിയിപ്പ്"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-സ്റ്റൈലിലുള്ള മുന്നറിയിപ്പ് ഡയലോഗുകൾ"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("മുന്നറിയിപ്പുകൾ"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-സ്റ്റൈലിലുള്ള ബട്ടൺ. ടെക്‌സ്‌റ്റിന്റെയോ ഐക്കണിന്റെയോ തെളിച്ചം, സ്‌പർശനത്തിലൂടെ കുറയ്ക്കാനും കൂട്ടാനും ഈ ബട്ടണ് കഴിയും. ഓപ്ഷണലായി. ഒരു പശ്ചാത്തലം ഉണ്ടായേക്കാം."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-സ്റ്റൈലിലുള്ള ബട്ടണുകൾ"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ബട്ടണുകൾ"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "തനതായ നിരവധി ഓപ്‌ഷനുകൾക്കിടയിൽ നിന്ന് തിരഞ്ഞെടുക്കാൻ ഉപയോഗിക്കുന്നു. വിഭാഗീകരിച്ച നിയന്ത്രണത്തിലെ ഒരു ഓപ്ഷൻ തിരഞ്ഞെടുക്കുമ്പോൾ, വിഭാഗീകരിച്ച നിയന്ത്രണത്തിലെ മറ്റ് ഓപ്ഷനുകൾ തിരഞ്ഞെടുക്കപ്പെടുന്നതിൽ നിന്ന് തടയുന്നു."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-സ്റ്റെെലിലുള്ള വിഭാഗീകരിച്ച നിയന്ത്രണം"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("വിഭാഗീകരിച്ച നിയന്ത്രണം"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "തുടർച്ചയായ അല്ലെങ്കിൽ ഇടവിട്ടുള്ള മൂല്യങ്ങളുടെ ഗണത്തിൽ നിന്ന് മൂല്യങ്ങൾ തിരഞ്ഞെടുക്കാൻ സ്ലൈഡർ ഉപയോഗിക്കാം."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-സ്‌റ്റൈലിലുള്ള സ്ലൈഡർ"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("സ്ലൈഡർ"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "ഒരൊറ്റ ക്രമീകരണത്തിന്റെ ഓൺ/ഓഫ് നിലകൾ മാറ്റാൻ ഒരു സ്വിച്ച് ഉപയോഗിക്കുന്നു."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-സ്‌റ്റൈലിലുള്ള സ്വിച്ച്"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-സ്‌റ്റൈലിലുള്ള ചുവട്ടിലെ നാവിഗേഷൻ ടാബ് ബാർ. ഒന്നിലധികം ടാബുകൾ പ്രദർശിപ്പിക്കുന്നു, ആദ്യത്തെ ടാബ് ഡിഫോൾട്ടായി സജീവമാണ്."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-സ്‌റ്റൈലിലുള്ള ചുവട്ടിലെ ടാബ് ബാർ"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("ടാബ് ബാർ"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "ലളിതം, മുന്നറിയിപ്പ്, പൂർണ്ണസ്‌ക്രീൻ എന്നിവ"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("ഡയലോഗുകൾ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API ഡോക്യുമെന്റേഷൻ"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ഫിൽട്ടർ ചിപ്പുകൾ ഉള്ളടക്കം ഫിൽട്ടർ ചെയ്യാൻ ടാഗുകളോ വിവരണാത്മക വാക്കുകളോ ഉപയോഗിക്കുന്നു."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ഫിൽട്ടർ ചിപ്പ്"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ഒരു ഫ്ലാറ്റ് ബട്ടൺ അമർത്തുമ്പോൾ ഒരു ഇങ്ക് സ്പ്ലാഷ് പോലെ പ്രദർശിപ്പിക്കുമെങ്കിലും ബട്ടൺ ഉയർത്തുന്നില്ല. ടൂൾബാറുകളിലും ഡയലോഗുകളിലും പാഡിംഗ് ഉപയോഗിക്കുന്ന ഇൻലൈനിലും ഫ്ലാറ്റ് ബട്ടണുകൾ ഉപയോഗിക്കുക"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ഫ്ലാറ്റ് ബട്ടൺ"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ആപ്പിൽ ഒരു പ്രാഥമിക പ്രവർത്തനം പ്രമോട്ട് ചെയ്യുന്നതിനായി ഉള്ളടക്കത്തിന് മുകളിലൂടെ സഞ്ചരിക്കുന്ന ഒരു വൃത്താകൃതിയിലുള്ള ഐക്കൺ ബട്ടണാണ് ഫ്ലോട്ടിംഗ് പ്രവർത്തന ബട്ടൺ."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ഫ്ലോട്ടിംഗ് പ്രവർത്തന ബട്ടൺ"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ഇൻകമിംഗ് പേജ് ഒരു പൂർണ്ണസ്‌ക്രീൻ മോഡൽ ഡയലോഗാണോയെന്ന് പൂർണ്ണസ്‌ക്രീൻ ഡയലോഗ് പ്രോപ്പർട്ടി വ്യക്തമാക്കുന്നു"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("പൂർണ്ണസ്ക്രീൻ"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("പൂർണ്ണസ്ക്രീൻ"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("വിവരം"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ഇൻപുട്ട് ചിപ്പുകൾ കോംപാക്റ്റ് രൂപത്തിലുള്ള ഒരു എന്റിറ്റി (വ്യക്തി, സ്ഥലം, അല്ലെങ്കിൽ കാര്യം) അല്ലെങ്കിൽ സംഭാഷണ വാചകം പോലുള്ള സങ്കീർണ്ണമായ വിവരങ്ങളെ പ്രതിനിധീകരിക്കുന്നു."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("ഇൻപുട്ട് ചിപ്പ്"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL പ്രദർശിപ്പിക്കാൻ ആയില്ല:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "സാധാരണയായി ചില ടെക്സ്റ്റുകളും ഒപ്പം ലീഡിംഗ് അല്ലെങ്കിൽ ട്രെയിലിംഗ് ഐക്കണും അടങ്ങുന്ന, നിശ്ചിത ഉയരമുള്ള ഒറ്റ വരി."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("രണ്ടാം ടെക്സ്റ്റ്"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "സ്ക്രോൾ ചെയ്യുന്ന ലിസ്റ്റിന്റെ ലേഔട്ടുകൾ"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("ലിസ്റ്റുകൾ"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("ഒറ്റ വരി"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "ഈ ഡെമോയ്ക്ക് ലഭ്യമായ ഓപ്ഷനുകൾ കാണുന്നതിന് ഇവിടെ ടാപ്പ് ചെയ്യുക."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("ഓപ്ഷനുകൾ കാണുക"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("ഓപ്‌ഷനുകൾ"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ഔട്ട്ലൈൻ ബട്ടണുകൾ അതാര്യമാവുകയും അമർത്തുമ്പോൾ ഉയരുകയും ചെയ്യും. ഒരു ഇതര, ദ്വിതീയ പ്രവർത്തനം സൂചിപ്പിക്കുന്നതിന് അവ പലപ്പോഴും റെയ്‌സ്‌ഡ് ബട്ടണുകളുമായി ജോടിയാക്കുന്നു."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("ഔട്ട്‌ലൈൻ ബട്ടൺ"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "റെയ്‌സ്‌ഡ് ബട്ടണുകൾ മിക്കവാറും ഫ്ലാറ്റ് ലേഔട്ടുകൾക്ക് മാനം നൽകുന്നു. തിരക്കേറിയതോ വിശാലമായതോ ആയ ഇടങ്ങളിൽ അവ ഫംഗ്ഷനുകൾക്ക് പ്രാധാന്യം നൽകുന്നു."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("റെയ്‌സ്‌ഡ് ബട്ടൺ"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "ഒരു സെറ്റിൽ നിന്ന് ഒന്നിലധികം ഓപ്ഷനുകൾ തിരഞ്ഞെടുക്കാൻ ചെക്ക്‌ ബോക്‌സുകൾ ഉപയോക്താവിനെ അനുവദിക്കുന്നു. ഒരു സാധാരണ ചെക്ക്ബോക്‌സിന്റെ മൂല്യം ശരിയോ തെറ്റോ ആണ്, കൂടാതെ ഒരു ട്രൈസ്‌റ്റേറ്റ് ചെക്ക്ബോക്‌സിന്റെ മൂല്യവും അസാധുവാണ്."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("ചെക്ക് ബോക്‌സ്"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ഒരു സെറ്റിൽ നിന്ന് ഒരു ഓപ്ഷൻ തിരഞ്ഞെടുക്കാൻ റേഡിയോ ബട്ടണുകൾ ഉപയോക്താവിനെ അനുവദിക്കുന്നു. ഉപയോക്താവിന് ലഭ്യമായ എല്ലാ ഓപ്ഷനുകളും വശങ്ങളിലായി കാണണമെന്ന് നിങ്ങൾ കരുതുന്നുവെങ്കിൽ, എക്‌സ്‌ക്ലൂ‌സീവ് തിരഞ്ഞെടുക്കലിനായി റേഡിയോ ബട്ടണുകൾ ഉപയോഗിക്കുക."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("റേഡിയോ"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ചെക്ക്‌ ബോക്‌സുകൾ, റേഡിയോ ബട്ടണുകൾ, സ്വിച്ചുകൾ എന്നിവ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ഓൺ/ഓഫ് സ്വിച്ചുകൾ ഒറ്റ ക്രമീകരണ ഓപ്ഷന്റെ നില മാറ്റുന്നു. സ്വിച്ച് നിയന്ത്രണ ഓപ്ഷനും അതിന്റെ നിലയും അനുബന്ധ ഇൻലൈൻ ലേബലിൽ നിന്ന് വ്യക്തമാക്കണം."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("മാറുക"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("തിരഞ്ഞെടുക്കൽ നിയന്ത്രണങ്ങൾ"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ഒരു ലളിതമായ ഡയലോഗ് ഉപയോക്താവിന് നിരവധി ഓപ്ഷനുകളിൽ ഒരു തിരഞ്ഞെടുക്കൽ ഓഫർ ചെയ്യുന്നു. ഒരു ലളിതമായ ഡയലോഗിന്റെ ഓപ്‌ഷണൽ പേര്, തിരഞ്ഞെടുത്തവയ്ക്ക് മുകളിൽ പ്രദർശിപ്പിക്കും."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("ലളിതം"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "നിങ്ങൾ സ്‌നാക്‌ബാർ പ്രവർത്തനം അമർത്തിയിരിക്കുന്നു."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("പ്രവർത്തനം"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ഒരു സ്‌നാക്‌ബാർ കാണിക്കുക"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "ഒരു ആപ്പ് നിറവേറ്റിയ അല്ലെങ്കിൽ നിറവേറ്റാൻ പോകുന്ന പ്രോസസിനെ കുറിച്ച് സ്‌നാക്‌ബാറുകൾ ഉപയോക്താക്കളെ അറിയിക്കുന്നു. അവ സ്‌ക്രീനിന്റെ ചുവട്ടിൽ താൽക്കാലികമായി ദൃശ്യമാകുന്നു. അവ ഉപയോക്തൃ അനുഭവത്തെ തടസ്സപ്പെടുത്തരുത്, കൂടാതെ അപ്രത്യക്ഷമാകാൻ ഉപയോക്താവിന്റെ ഇൻപുട്ട് ആവശ്യമാവുകയും ചെയ്യരുത്."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "സ്‌നാക്‌ബാറുകൾ സ്‌ക്രീനിന്റെ ചുവട്ടിൽ സന്ദേശങ്ങൾ കാണിക്കുന്നു"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("ഇതൊരു സ്‌നാക്‌ബാറാണ്."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("സ്‌നാക്‌ബാറുകൾ"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "വ്യത്യസ്ത സ്ക്രീനുകൾ, ഡാറ്റാ സെറ്റുകൾ, മറ്റ് ആശയവിനിമയങ്ങൾ എന്നിവയിലുടനീളം ഉള്ളടക്കം ടാബുകൾ ഓർഗനെെസ് ചെയ്യുന്നു."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "സ്വതന്ത്രമായി സ്ക്രോൾ ചെയ്യാവുന്ന കാഴ്ചകളുള്ള ടാബുകൾ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ടാബുകൾ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "UI-ലേക്ക് ടെക്സ്റ്റ് ചേർക്കാൻ ടെക്സ്റ്റ് ഫീൽഡുകൾ ഉപയോക്താക്കളെ അനുവദിക്കുന്നു. അവ സാധാരണയായി ഫോമുകളിലും ഡയലോഗുകളിലും പ്രത്യക്ഷപ്പെടുന്നു."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ഇമെയിൽ"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("പാസ്‌വേഡ് നൽകുക."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - ഒരു US ഫോൺ നമ്പർ നൽകുക."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "സമർപ്പിക്കുന്നതിന് മുമ്പ് ചുവപ്പ് നിറത്തിൽ അടയാളപ്പെടുത്തിയ പിശകുകൾ പരിഹരിക്കുക."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("പാസ്‍വേഡ് മറയ്ക്കുക"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "ചെറുതാക്കി വയ്ക്കൂ, ഇത് കേവലം ഒരു ഡെമോ മാത്രമാണ്."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("ജീവിത കഥ"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("പേര്*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("പേര് ആവശ്യമാണ്."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("8 പ്രതീകങ്ങളിൽ കൂടരുത്."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("അക്ഷരങ്ങൾ മാത്രം നൽകുക."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("പാസ്‌വേഡ്*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "പാസ്‌വേഡുകൾ പൊരുത്തപ്പെടുന്നില്ല"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ഫോൺ നമ്പർ*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* ചിഹ്നം ഈ ഭാഗം പൂരിപ്പിക്കേണ്ടതുണ്ട് എന്ന് സൂചിപ്പിക്കുന്നു"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "പാസ്‌വേഡ് വീണ്ടും ടൈപ്പ് ചെയ്യുക*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("ശമ്പളം"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("പാസ്‌വേഡ് കാണിക്കുക"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("സമർപ്പിക്കുക"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "എഡിറ്റ് ചെയ്യാവുന്ന ടെക്‌സ്‌റ്റിന്റെയും അക്കങ്ങളുടെയും ഒറ്റ വരി"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "നിങ്ങളെക്കുറിച്ച് ഞങ്ങളോട് പറയുക (ഉദാ. നിങ്ങൾ എന്താണ് ചെയ്യുന്നത്, ഹോബികൾ എന്തൊക്കെ തുടങ്ങിയവ എഴുതുക)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("ടെക്‌സ്റ്റ് ഫീൽഡുകൾ"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "എന്താണ് ആളുകൾ നിങ്ങളെ വിളിക്കുന്നത്?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "നിങ്ങളെ എവിടെയാണ് ഞങ്ങൾക്ക് ബന്ധപ്പെടാനാവുക?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("നിങ്ങളുടെ ഇമെയിൽ വിലാസം"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "സമാനമായ ഓപ്ഷനുകൾ ഗ്രൂപ്പ് ചെയ്യാൻ ടോഗിൾ ബട്ടണുകൾ ഉപയോഗിക്കാം. സമാനമായ ടോഗിൾ ബട്ടണുകളുടെ ഗ്രൂപ്പുകൾക്ക് പ്രാധാന്യം നൽകുന്നതിന്, ഒരു ഗ്രൂപ്പ് ഒരു പൊതു കണ്ടെയിനർ പങ്കിടണം"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ടോഗിൾ ബട്ടണുകൾ"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("രണ്ട് ലെെനുകൾ"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "മെറ്റീരിയൽ രൂപകൽപ്പനയിൽ കാണുന്ന വിവിധ ടൈപ്പോഗ്രാഫിക്കൽ ശൈലികൾക്കുള്ള നിർവ്വചനങ്ങൾ."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "മുൻകൂട്ടി നിശ്ചയിച്ച എല്ലാ ടെക്സ്റ്റ് ശൈലികളും"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("ടൈപ്പോഗ്രാഫി"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("അക്കൗണ്ട് ചേർക്കുക"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("അംഗീകരിക്കുക"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("റദ്ദാക്കുക"),
        "dialogDisagree":
            MessageLookupByLibrary.simpleMessage("അംഗീകരിക്കുന്നില്ല"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("നിരസിക്കുക"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("ഡ്രാഫ്റ്റ് റദ്ദാക്കണോ?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "പൂർണ്ണ സ്‌ക്രീൻ ഡയലോഗ് ഡെമോ"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("സംരക്ഷിക്കുക"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("പൂർണ്ണസ്‌ക്രീൻ ഡയലോഗ്"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ലൊക്കേഷൻ നിർണ്ണയിക്കുന്നതിന് ആപ്പുകളെ സഹായിക്കാൻ Google-നെ അനുവദിക്കുക. ആപ്പുകളൊന്നും പ്രവർത്തിക്കാത്തപ്പോൾ പോലും Google-ലേക്ക് അജ്ഞാത ലൊക്കേഷൻ ഡാറ്റ അയയ്‌ക്കുന്നുവെന്നാണ് ഇത് അർത്ഥമാക്കുന്നത്."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google-ന്റെ ലൊക്കേഷൻ സേവനം ഉപയോഗിക്കണോ?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "ബാക്കപ്പ് അക്കൗണ്ട് സജ്ജീകരിക്കൂ"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ഡയലോഗ് കാണിക്കുക"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("റഫറൻസ് ശെെലികളും മീഡിയയും"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("വിഭാഗങ്ങൾ"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("ഗാലറി"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("കാർ സേവിംഗ്‍സ്"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("പരിശോധിക്കുന്നു"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("ഹോം സേവിംഗ്‌സ്"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("അവധിക്കാലം"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("അക്കൗണ്ട് ഉടമ"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("വാർഷിക വരുമാന ശതമാനം"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("കഴിഞ്ഞ വർഷം അടച്ച പലിശ"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("പലിശനിരക്ക്"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("പലിശ YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("അടുത്ത പ്രസ്താവന"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("മൊത്തം"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("അക്കൗണ്ടുകൾ"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("മുന്നറിയിപ്പുകൾ"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("ബില്ലുകൾ"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("അവസാന തീയതി"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("വസ്ത്രങ്ങൾ"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("കോഫി ഷോപ്പുകൾ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("പലചരക്ക് സാധനങ്ങൾ"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("റെസ്റ്റോറന്റുകൾ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("ഇടത്"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("ബജറ്റുകൾ"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("വ്യക്തിഗത ഫിനാൻസ് ആപ്പ്"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ഇടത്"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ലോഗിൻ ചെയ്യുക"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("ലോഗിൻ ചെയ്യുക"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally-ലേക്ക് ലോഗിൻ ചെയ്യുക"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("ഒരു അക്കൗണ്ട് ഇല്ലേ?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("പാസ്‌വേഡ്"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("എന്നെ ഓർക്കൂ"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("സൈൻ അപ്പ് ചെയ്യുക"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("ഉപയോക്തൃനാമം"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("എല്ലാം കാണുക"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("എല്ലാ അക്കൗണ്ടുകളും കാണുക"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("എല്ലാ ബില്ലുകളും കാണുക"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("എല്ലാ ബജറ്റുകളും കാണുക"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATM-കൾ കണ്ടെത്തുക"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("സഹായം"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("അക്കൗണ്ടുകൾ മാനേജ് ചെയ്യുക"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("അറിയിപ്പുകൾ"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("കടലാസില്ലാതെയുള്ള ക്രമീകരണം"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("പാസ്‌കോഡും ടച്ച് ഐഡിയും"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("വ്യക്തിഗത വിവരം"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("സൈൻ ഔട്ട് ചെയ്യുക"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("നികുതി രേഖകൾ"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("അക്കൗണ്ടുകൾ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ബില്ലുകൾ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ബജറ്റുകൾ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("അവലോകനം"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ക്രമീകരണം"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("ഫ്ലട്ടർ ഗ്യാലറിയെ കുറിച്ച്"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "ലണ്ടനിലെ TOASTER രൂപകൽപ്പന ചെയ്തത്"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("ക്രമീകരണം അടയ്ക്കുക"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ക്രമീകരണം"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("ഇരുണ്ട"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("ഫീഡ്ബാക്ക് അയയ്ക്കുക"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("പ്രകാശം"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("പ്രാദേശിക ഭാഷ"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("പ്ലാറ്റ്‌ഫോം മെക്കാനിക്‌സ്"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("സ്ലോ മോഷൻ"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("സിസ്റ്റം"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("ടെക്‌സ്‌റ്റ് ദിശ"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("ഭാഷാടിസ്ഥാനത്തിൽ"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("ടെക്‌സ്റ്റ് സ്‌കെയിലിംഗ്"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("വളരെ വലുത്"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("വലുത്"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("സാധാരണം"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("ചെറുത്"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("തീം"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("ക്രമീകരണം"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("റദ്ദാക്കുക"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("കാർട്ട് മായ്‌ക്കുക"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("കാർട്ട്"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("ഷിപ്പിംഗ്:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("ആകെത്തുക:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("നികുതി:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("മൊത്തം"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ആക്‌സസറികൾ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("എല്ലാം"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("വസ്ത്രങ്ങൾ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ഹോം"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "ആകർഷകമായ ചില്ലറവ്യാപാര ആപ്പ്"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("പാസ്‌വേഡ്"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ഉപയോക്തൃനാമം"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ലോഗൗട്ട് ചെയ്യുക"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("മെനു"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("അടുത്തത്"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("ബ്ലൂ സ്റ്റോൺ മഗ്"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("സറീസ് സ്കാലപ്പ് ടീ"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("ഷാംബ്രേ നാപ്കിൻസ്"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("ചേമ്പ്രേ ഷർട്ട്"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("ക്ലാസിക് വൈറ്റ് കോളർ"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("ക്ലേ സ്വെറ്റർ"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("കോപ്പർ വയർ റാക്ക്"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("ഫൈൻ ലൈൻസ് ടീ"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("ഗാർഡൻ സ്ട്രാൻഡ്"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("ഗാറ്റ്സ്ബി തൊപ്പി"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ജന്റ്രി ജാക്കറ്റ്"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("ഗിൽറ്റ് ഡെസ്‌ക് ട്രൈയോ"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("ജിൻജർ സ്കാഫ്"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("ഗ്രേ സ്ലൗച്ച് ടാങ്ക്"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("ഹുറാസ് ടീ സെറ്റ്"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("കിച്ചൻ ക്വാത്രോ"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("നേവി ട്രൗസേഴ്‌സ്"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("പ്ലാസ്‌റ്റർ ട്യൂണിക്"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("ക്വാർട്ടറ്റ് പട്ടിക"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("റെയ്‌ൻവാട്ടർ ട്രേ"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("റമോണാ ക്രോസോവർ"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("സീ ട്യൂണിക്"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("സീബ്രീസ് സ്വറ്റർ"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("ഷോൾഡർ റോൾസ് ടീ"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("തോൾ സഞ്ചി"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("സൂത്ത് സെറാമിൽ സെറ്റ്"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("സ്റ്റെല്ല സൺഗ്ലാസസ്"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("സ്റ്റ്രട്ട് ഇയർറിംഗ്‌സ്"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("സക്കുലന്റ് പ്ലാന്റേഴ്‌സ്"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("സൺഷർട്ട് ഡ്രസ്"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("സർഫ് ആന്റ് പെർഫ് ഷർട്ട്"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("വാഗബോണ്ട് സാക്ക്"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("വാഴ്‌സിറ്റി സോക്‌സ്"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("വാൾട്ടർ ഹെൻലി (വൈറ്റ്)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("വീവ് കീറിംഗ്"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("വൈറ്റ് പിൻസ്ട്രൈപ്പ് ഷർട്ട്"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("വിറ്റ്നി ബെൽറ്റ്"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("കാർട്ടിലേക്ക് ചേർക്കുക"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("കാർട്ട് അടയ്ക്കുക"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("മെനു അടയ്ക്കുക"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("മെനു തുറക്കുക"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("ഇനം നീക്കം ചെയ്യുക"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("തിരയുക"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("ക്രമീകരണം"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "റെസ്പോൺസിവ് സ്റ്റാർട്ടർ ലേഔട്ട്"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("ബോഡി"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ബട്ടൺ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("തലക്കെട്ട്"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("സബ്ടൈറ്റിൽ"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("പേര്"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("സ്റ്റാർട്ടർ ആപ്പ്"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("ചേർക്കുക"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("പ്രിയപ്പെട്ടത്"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("തിരയൽ"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("പങ്കിടുക")
      };
}
