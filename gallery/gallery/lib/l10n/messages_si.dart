// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a si locale. All the
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
  String get localeName => 'si';

  static m0(value) =>
      "මෙම යෙදුම සඳහා ප්‍රභව කේතය බැලීමට කරුණාකර ${value} වෙත පිවිසෙන්න.";

  static m1(title) => "${title} ටැබය සඳහා තැන් දරණුව";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'අවන්හල් නැත', one: 'අවන්හල් 1', other: 'අවන්හල් ${totalRestaurants}')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'අඛණ්ඩ', one: 'නැවතුම් 1', other: 'නැවතුම් ${numberOfStops}ක්')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'ලබා ගත හැකි කුලී නිවාස නැත', one: 'ලබා ගත හැකි කුලී නිවාස 1', other: 'ලබා ගත හැකි කුලී නිවාස ${totalProperties}')}";

  static m5(value) => "අයිතමය ${value}";

  static m6(error) => "පසුරු පුවරුවට පිටපත් කිරීමට අසමත් විය: ${error}";

  static m7(value) => "අඛණ්ඩ: ${value}";

  static m8(value) => "වෙන් වූ: ${value}";

  static m9(name, phoneNumber) => "${name} දුරකථන අංකය ${phoneNumber}";

  static m10(value) => "ඔබ මෙය තෝරා ඇත: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "${accountName} ගිණුම ${accountNumber} ${amount}කි.";

  static m12(amount) => "ඔබ මේ මාසයේ ATM ගාස්තු සඳහා ${amount} වියදම් කර ඇත";

  static m13(percent) =>
      "හොඳ වැඩක්! ඔබගේ ගෙවීම් ගිණුම පසුගිය මාසයට වඩා ${percent} වැඩිය.";

  static m14(percent) =>
      "දැනුම්දීමයි, ඔබ මේ මාසය සඳහා ඔබේ සාප්පු සවාරි අයවැයෙන් ${percent} භාවිත කර ඇත.";

  static m15(amount) => "ඔබ මේ සතියේ අවන්හල් සඳහා ${amount} වියදම් කර ඇත";

  static m16(count) =>
      "${Intl.plural(count, one: 'ඔබේ විය හැකි බදු අඩු කිරීම වැඩි කරන්න! නොපවරන ලද ගනුදෙනු 1කට වර්ගීකරණ පවරන්න.', other: 'ඔබේ විය හැකි බදු අඩු කිරීම වැඩි කරන්න! නොපවරන ලද ගනුදෙනු ${count}කට වර්ගීකරණ පවරන්න.')}";

  static m17(billName, date, amount) =>
      "${billName} බිල්පත ${date} දිනට ${amount}කි.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${amountTotal} කින් ${amountUsed}ක් භාවිත කළ ${budgetName} අයවැය, ඉතිරි ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'අයිතම නැත', one: 'අයිතම 1', other: 'අයිතම ${quantity}')}";

  static m20(price) => "x {මිල}";

  static m21(quantity) => "ප්‍රමාණය: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'සාප්පු යාමේ කරත්තය, අයිතම නැත', one: 'සාප්පු යාමේ කරත්තය, අයිතම 1', other: 'සාප්පු යාමේ කරත්තය, අයිතම ${quantity}')}";

  static m23(product) => "ඉවත් කරන්න ${product}";

  static m24(value) => "අයිතමය ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter නිදර්ශන GitHub ගබඩාව"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("ගැලරිය වෙත ආපසු යන්න"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("ගිණුම"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("එලාමය"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("දින දර්ශනය"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("කැමරාව"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("අදහස් දැක්වීම්"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("බොත්තම"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("තනන්න"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("බයිසිකල් පැදීම"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("විදුලි සෝපානය"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("ගිනි උඳුන"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("විශාල"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("මධ්‍යම"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("කුඩා"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("ආලෝකය ක්‍රියාත්මක කරන්න"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("රෙදි සෝදන යන්ත්‍රය"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ඇම්බර්"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("නිල්"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("නීල අළු"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("දුඹුරු"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("මයුර නීල"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ගැඹුරු තැඹිලි"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("තද දම්"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("කොළ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("අළු"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ඉන්ඩිගෝ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ලා නිල්"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ලා කොළ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("දෙහි"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("තැඹිලි"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("රෝස"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("දම්"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("රතු"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("තද හරිත නීල"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("කහ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "පෞද්ගලීකකරණය කළ සංචාරක යෙදුමක්"),
        "craneEat": MessageLookupByLibrary.simpleMessage("EAT"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("නේපල්ස්, ඉතාලිය"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("දර උඳුනක ඇති පිට්සාව"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("ඩලාස්, එක්සත් ජනපදය"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("ලිස්බන්, පෘතුගාලය"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "විශාල පැස්ට්‍රාමි සැන්ඩ්විච් එකක් අතැති කාන්තාව"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "රාත්‍ර ආහාර ගන්නා ආකාරයේ බංකු සහිත හිස් තැබෑරුම"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("කෝඩොබා, ආජන්ටීනාව"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("බර්ගර්"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("පෝට්ලන්ඩ්, එක්සත් ජනපදය"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("කොරියානු ටාකෝ"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("පැරීසිය, ප්‍රංශය"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("චොකොලට් අතුරුපස"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("සෝල්, දකුණු කොරියාව"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "කලාත්මක අවන්හලක ඉඳගෙන සිටින ප්‍රදේශය"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("සියැටල්, එක්සත් ජනපදය"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("කූනිස්සෝ පිඟාන"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("නෑෂ්විල්, එක්සත් ජනපදය"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("බේකරි ප්‍රවේශය"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("ඇට්ලන්ටා, එක්සත් ජනපදය"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("පොකිරිස්සෝ පිඟාන"),
        "craneEat9":
            MessageLookupByLibrary.simpleMessage("මැඩ්‍රිඩ්, ස්පාඤ්ඤය"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("පේස්ට්‍රි ඇති කැෆේ කවුන්ටරය"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "ගමනාන්තය අනුව අවන්හල් ගවේෂණය කරන්න"),
        "craneFly": MessageLookupByLibrary.simpleMessage("FLY"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("ඇස්පෙන්, එක්සත් ජනපදය"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "සදාහරිත ගස් සහිත මීදුම සහිත භූමිභාගයක ඇති පැල"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("බිග් සර්, එක්සත් ජනපදය"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("කයිරෝ, ඊජිප්තුව"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ඉර බසින අතරතුර අල් අසාර් පල්ලයේ කුළුණු"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("ලිස්බන්, පෘතුගාලය"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "මුහුදේ ඇති ගඩොල් ප්‍රදීපාගාරය"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("නාපා, එක්සත් ජනපදය"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("තල් ගස් සහිත නාන තටාකය"),
        "craneFly13":
            MessageLookupByLibrary.simpleMessage("බාලි, ඉන්දුනීසියාව"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "තල් ගස් සහිත මුහුද අසබඩ නාන තටාකය"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("පිට්ටනියක ඇති කුඩාරම"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("කුම්බු නිම්නය, නේපාලය"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "හිම කන්දක ඉදිරිපස ඇති යාච්ඤා කොඩි"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("මාචු පික්කූ, පේරු"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("මාචු පිච්චු බළකොටුව"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("මාලේ, මාලදිවයින"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ජලය මත ඇති බංගලා"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("විට්ස්නෝ, ස්විට්සර්ලන්තය"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "කඳු වැටියක ඉදිරිපස ඇති වැව ඉස්මත්තේ හෝටලය"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("මෙක්සිකෝ නගරය, මෙක්සිකෝව"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Palacio de Bellas Artes හි ගුවන් දසුන"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "මවුන්ට් රෂ්මෝර්, එක්සත් ජනපදය"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("රෂ්මෝ කඳුවැටිය"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("සිංගප්පූරුව"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("සුපර්ට්‍රී ග්‍රොව්"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("හවානා, කියුබාව"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "කෞතුක වටිනාකමක් ඇති නිල් පැහැති මෝටර් රථයකට හේත්තු වී සිටින මිනිසා"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "ගමනාන්තය අනුව ගුවන් ගමන් ගවේෂණය කරන්න"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("දිනය තෝරන්න"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("දින තෝරන්න"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("ගමනාන්තය තෝරන්න"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("ආහාර ගන්නන්"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("ස්ථානය තෝරන්න"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("ආරම්භය තෝරන්න"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("වේලාව තෝරන්න"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("සංචාරකයන්"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("නිද්‍රාව"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("මාලේ, මාලදිවයින"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ජලය මත ඇති බංගලා"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("ඇස්පෙන්, එක්සත් ජනපදය"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("කයිරෝ, ඊජිප්තුව"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ඉර බසින අතරතුර අල් අසාර් පල්ලයේ කුළුණු"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("තායිපේ, තායිවානය"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("තාය්පේයි 101 උස් ගොඩනැගිල්ල"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "සදාහරිත ගස් සහිත මීදුම සහිත භූමිභාගයක ඇති පැල"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("මාචු පික්කූ, පේරු"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("මාචු පිච්චු බළකොටුව"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("හවානා, කියුබාව"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "කෞතුක වටිනාකමක් ඇති නිල් පැහැති මෝටර් රථයකට හේත්තු වී සිටින මිනිසා"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("විට්ස්නෝ, ස්විට්සර්ලන්තය"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "කඳු වැටියක ඉදිරිපස ඇති වැව ඉස්මත්තේ හෝටලය"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("බිග් සර්, එක්සත් ජනපදය"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("පිට්ටනියක ඇති කුඩාරම"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("නාපා, එක්සත් ජනපදය"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("තල් ගස් සහිත නාන තටාකය"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("පෝටෝ, පෘතුගාලය"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "රයිබේරියා චතුරස්‍රයේ ඇති වර්ණවත් බද්ධ නිවාස"),
        "craneSleep8":
            MessageLookupByLibrary.simpleMessage("ටුලුම්, මෙක්සිකෝව"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "වෙරළක් ඉහළින් කඳු ශිඛරයක මේයන් නටබුන්"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("ලිස්බන්, පෘතුගාලය"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "මුහුදේ ඇති ගඩොල් ප්‍රදීපාගාරය"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "ගමනාන්තය අනුව කුලී නිවාස ගවේෂණය කරන්න"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("ඉඩ දෙන්න"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("ඇපල් පයි"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("අවලංගු කරන්න"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("චීස් කේක්"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("චොකොලට් බ්‍රව්නි"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "කරුණාකර පහත ලැයිස්තුවෙන් ඔබේ ප්‍රියතම අතුරුපස වර්ගය තෝරන්න. ඔබේ තේරීම ඔබේ ප්‍රදේශයෙහි යෝජිත අවන්හල් ලැයිස්තුව අභිරුචිකරණය කිරීමට භාවිත කරනු ඇත."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("ඉවත ලන්න"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("අවසර නොදෙන්න"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("ප්‍රියතම අතුරුපස තෝරන්න"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ඔබේ වත්මන් ස්ථානය සිතියමේ සංදර්ශනය වී දිශාවන්, අවට සෙවීම් ප්‍රතිඵල සහ ඇස්තමේන්තුගත සංචාර වේලාවන් සඳහා භාවිත කරනු ඇත."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "ඔබ යෙදුම භාවිත කරමින් සිටින අතරතුර \"සිතියම්\" හට ඔබේ ස්ථානයට ප්‍රවේශ වීමට ඉඩ දෙන්නද?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("ටිරාමිසු"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("බොත්තම"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("පසුබිම සමග"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("ඇඟවීම පෙන්වන්න"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("කතාබස්"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("මුල් පිටුව"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("පැතිකඩ"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "ක්‍රියා චිප යනු ප්‍රාථමික අන්තර්ගතයට අදාළ ක්‍රියාවක් ක්‍රියාරම්භ කරන විකල්ප සමූහයකි. ක්‍රියා චිප ගතිකව සහ සංදර්භානුගතය UI එකක දිස් විය යුතුය."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ක්‍රියා චිපය"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ඇඟවීම් සංවාදයක් පිළිගැනීම අවශ්‍ය තත්ත්වයන් පිළිබඳ පරිශීලකට දැනුම් දෙයි. ඇඟවීම් සංවාදයකට විකල්ප මාතෘකාවක් සහ විකල්ප ක්‍රියා ලැයිස්තුවක් තිබේ."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("ඇඟවීම"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("මාතෘකාව සමග ඇඟවීම"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "පහළ සංචාලන තීරු තිරයක පහළින්ම ගමනාන්ත තුනක් හෝ පහක් පෙන්වයි. එක් එක් ගමනාන්තය නිරූපකයක් සහ විකල්ප පෙළ ලේබලයක් මගින් නියෝජනය කෙරේ. පහළ සංචාලන නිරූපකයක් තට්ටු කළ විට, පරිශීලකයා එම නිරූපකය හා සම්බන්ධ ඉහළම මට්ටමේ සංචාලන ගමනාන්තයට ගෙන යනු ලැබේ."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("අඛණ්ඩව පවතින ලේබල"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("තෝරා ගත් ලේබලය"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "හරස් වියැකී යන දසුන් සහිත පහළ සංචාලනය"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("පහළ සංචාලනය"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("එක් කරන්න"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("පහළ පත්‍රය පෙන්වන්න"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("ශීර්ෂකය"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "මාදිලි පහළ පත්‍රයක් යනු මෙනුවකට හෝ සංවාදයකට විකල්පයක් වන අතර පරිශීලකව යෙදුමේ ඉතිරි කොටස සමග අන්තර්ක්‍රියා කීරිමෙන් වළක්වයි."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("මොඩල් පහළ පත්‍රය"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "දිගටම පවතින පහළ පත්‍රයක් යෙදුමේ මූලික අන්තර්ගතය සපයන තොරතුරු පෙන්වයි.පරිශීලක යෙදුමේ අනෙක් කොටස් සමග අන්තර්ක්‍රියා කරන විට දිගටම පවතින පහළ පත්‍රයක් දෘශ්‍යමානව පවතී."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("දිගටම පවතින පහළ පත්‍රය"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "දිගටම පවතින සහ ආදර්ශ පහළ පත්‍ර"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("පහළ පත්‍රය"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("පෙළ ක්ෂේත්‍ර"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "පැතලි, එසවූ, වැටිසන සහ තවත් දේ"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("බොත්තම්"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "ආදානය, ආරෝපණය හෝ ක්‍රියාව නියෝජනය කරන සංගත අංගයකි"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("චිප"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "තේරීම් චිප කට්ටලයකින් තනි තේරීමක් නියෝජනය කරයි. තේරීම් චිප අදාළ විස්තරාත්මක පෙළ හෝ කාණ්ඩ අඩංගු වේ."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("චිපය තේරීම"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("කේත සාම්පලය"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "පසුරු පුවරුවට පිටපත් කරන ලදි."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("සියල්ල පිටපත් කරන්න"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "ද්‍රව්‍ය සැලසුමෙහි වර්ණ තැටිය නියෝජනය කරන වර්ණය සහ වර්ණ සාම්පල නියත."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("පූර්ව නිශ්චිත වර්ණ සියල්ල"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("වර්ණ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "ක්‍රියා පත්‍රයක් යනු වත්මන් සංදර්භයට සම්බන්ධිත තෝරා ගැනීම් දෙකක හෝ වැඩි ගණනක කුලකයක් සහිත පරිශීලකට ඉදිරිපත් කරන විශේෂිත ඇඟවීමේ විලාසයකි. ක්‍රියා පත්‍රයක මාතෘකාවක්, අමතර පණිවිඩයක් සහ ක්‍රියා ලැයිස්තුවක් තිබිය හැකිය."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("ක්‍රියා පත්‍රය"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("ඇඟවීම් බොත්තම් පමණයි"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("බොත්තම් සමග ඇඟවීම"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "ඇඟවීම් සංවාදයක් පිළිගැනීම අවශ්‍ය තත්ත්වයන් පිළිබඳ පරිශීලකට දැනුම් දෙයි. ඇඟවීම් සංවාදයකට විකල්ප මාතෘකාවක්, විකල්ප අන්තර්ගතයක් සහ විකල්ප ක්‍රියා ලැයිස්තුවක් තිබේ. මාතෘකාව අන්තර්ගතය ඉහළින් සංදර්ශනය වන අතර ක්‍රියා අන්තර්ගතයට පහළින් සංදර්ශනය වේ."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("ඇඟවීම"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("මාතෘකාව සමග ඇඟවීම"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-විලාස ඇඟවීම් සංවාද"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("ඇඟවීම්"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-විලාසයේ බොත්තමකි. එළිය වන සහ ස්පර්ශයේදී පෙළ සහ/හෝ අයිකනයක් ගනී. විකල්පව පසුබිමක් තිබිය හැකිය."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-විලාස බොත්තම්"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("බොත්තම්"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "අන්‍යෝන්‍ය වශයෙන් බහිෂ්කාර විකල්ප ගණනාවක් අතර තෝරා ගැනීමට භාවිත කරයි. කොටස් කළ පාලනයේ එක් විකල්පයක් තෝරා ගත් විට, කොටස් කළ පාලනයේ අනෙක් විකල්ප තෝරා ගැනීම නතර වේ."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-විලාස කොටස් කළ පාලනය"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("කොටස් කළ පාලනය"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "ස්ලයිඩරයක් එක්කෝ අඛණ්ඩ හෝ වෙන් වූ අගයන් කට්ටලයක් හෝ වෙතින් තේරීමට භාවිත කළ හැකිය."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-විලාස ස්ලයිඩරය"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("ස්ලයිඩරය"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "ස්විචයක් තනි සැකසීමක තත්ත්වය ක්‍රියාත්මක/ක්‍රියාවිරහිත කිරීමට භාවිත කරයි."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-විලාස ස්විචය"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-විලාස බොත්තම් සංචාලන ටැබ තීරුවකි. එක් ටැබයක් සක්‍රිය ව තිබී, පළමු ටැබය පෙරනිමිය අනුව බහුවිධ ටැබ සංදර්ශනය කරයි."),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-විලාස බොත්තම් ටැබ තීරුව"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("ටැබ තීරුව"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("සරල, ඇඟවීම සහ පූර්ණ තිරය"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("සංවාද"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API ප්‍රලේඛනය"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "පෙරහන් චිප අන්තර්ගතය පෙරීමට ක්‍රමයක් ලෙස ටැග හෝ විස්තරාත්මක වචන භාවිත කරයි."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("පෙරහන් චිපය"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "පැතලි බොත්තමක් එබීමේදී තීන්ත ඉසිරිමක් සංදර්ශනය කරන නමුත් නොඔසවයි. මෙවලම් තීරුවල, සංවාදවල සහ පිරවීම සමග පෙළට පැතලි බොත්තම භාවිත කරන්න"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("පැතලි බොත්තම"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "පාවෙන ක්‍රියා බොත්තමක් යනු යෙදුමෙහි මූලික ක්‍රියාවක් ප්‍රවර්ධනය කිරීමට අන්තර්ගතය උඩින් තබා ගන්නා බොත්තමකි."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("පාවෙන ක්‍රියා බොත්තම"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "පූර්ණ තිර සංවාදය එන පිටුව පූර්ණ තිර ආකෘති සංවාදයක්ද යන්න නිශ්චිතව දක්වයි"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("පූර්ණ තිරය"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("පූර්ණ තිරය"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("තතු"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ආදාන චිප (පුද්ගලයෙක්, ස්ථානයක් හෝ දෙයක්) වැනි සංකීර්ණ තොරතුරු කොටසක් හෝ සංයුක්ත ආකෘතියක සංවාදාත්මක පෙළක් නියෝජනය කරයි."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("ආදාන චිපය"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL සංදර්ශනය කළ නොහැකි විය:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "සාමාන්‍යයෙන් සමහර පෙළ මෙන්ම ඉදිරිපස හෝ පසුපස අයිකනයක් අඩංගු වන තනි ස්ථීර උසක් ඇති පේළියකි."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("ද්විතියික පෙළ"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "අනුචලනය කිරීමේ ලැයිස්තු පිරිසැලසුම්"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("ලැයිස්තු"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("පේළි එකයි"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "මෙම ආදර්ශනය සඳහා ලබා ගත හැකි විකල්ප බැලීමට මෙහි තට්ටු කරන්න."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("විකල්ප බලන්න"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("විකල්ප"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "වැටිසන බොත්තම් එබූ විට අපැහැදිලි වන අතර ඉස්සේ. ඒවා නිතර විකල්ප, ද්විතීයික ක්‍රියාවක් දැක්වීමට එසවූ බොත්තම් සමග යුගළ වේ."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("සරාංශ බොත්තම"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "එසවූ බොත්තම් බොහෝ විට පැතලි පිරිසැලසුම් වෙත පිරිවිතර එක් කරයි. ඒවා කාර්ය බහුල හෝ පුළුල් ඉඩවල ශ්‍රිත අවධාරණය කරයි."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("එසවූ බොත්තම"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "තේරීම් කොටු පරිශීලකයන්ට කට්ටලයකින් විකල්ප කීපයක් තේරීමට ඉඩ දෙයි. සාමාන්‍ය තේරීම් කොටුවක අගය සත්‍ය හෝ අසත්‍ය වන අතර ත්‍රිවිධාකාර තේරීම් කොටුවක අගය ද ශුන්‍ය විය හැකිය."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("තේරීම් කොටුව"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "රේඩියෝ බොත්තම පරිශීලකට කට්ටලයකින් එක් විකල්පයක් තේරීමට ඉඩ දෙයි. පරිශීලකට ලබා ගත හැකි සියලු විකල්ප පැත්තෙන් පැත්තට බැලීමට අවශ්‍යයැයි ඔබ සිතන්නේ නම් සුවිශේෂි තේරීම සඳහා රේඩියෝ බොත්තම භාවිත කරන්න."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("රේඩියෝ"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "තේරීම් කොටු, රේඩියෝ බොත්තම් සහ ස්විච"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ක්‍රියාත්මක කිරීමේ/ක්‍රියාවිරහිත කිරීමේ ස්විච තනි සැකසීම් විකල්පයක තත්ත්වය ටොගල් කරයි. පාලන මෙන්ම එය සිටින තත්තවය මාරු කරන විකල්ප අනුරූප පේළිගත ලේබලයෙන් පැහැදිලි කළ යුතුය."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("මාරු කරන්න"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("තේරීම් පාලන"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "සරල සංවාදයක් විකල්ප කීපයක් අතර තෝරා ගැනීමක් පිරිනමයි. සරල සංවාදයක තෝරා ගැනීම් ඉහළ සංදර්ශනය වන විකල්ප මාතෘකාවක් ඇත."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("සරල"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "ඔබ ස්නැක්බාර් ක්‍රියාව ඔබා ඇත."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ක්‍රියාව"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ස්නැක්බාර් එකක් පෙන්වන්න"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "ස්නැක්බාර් මගින් යෙදුමක් ක්‍රියා කර ඇති බව හෝ ක්‍රියා කරනු ඇති බව ක්‍රියාවලියක පරිශීලකයන්ට දැනුම් දෙයි. ඒවා තිරයේ පහළ දෙසට තාවකාලිකව දිස් වේ. ඒවා පරිශීලක අත්දැකීමට බාධා නොකළ යුතු අතර දිස් නොවී යාමට ඒවාට පරිශීලක ආදානය අවශ්‍ය නොවේ."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ස්නැක්බාර් තිරයේ පහළ ඇති පණිවිඩ පෙන්වයි"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("මෙය ස්නැක්බාර් එකකි."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("ස්නැක්බාර්"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "ටැබ විවිධ තිර, දත්ත කට්ටල සහ වෙනත් අන්තර්ක්‍රියා හරහා අන්තර්ගතය සංවිධානය කරයි."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ස්වාධීනව අනුචලනය කළ හැකි දසුන් සහිත ටැබ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ටැබ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "පෙළ ක්ෂේත්‍ර පරිශීලකයන්ට පෙළ UI එකකට ඇතුළු කිරීමට ඉඩ දෙයි. ඒවා සාමාන්‍යයෙන් ආකෘති සහ සංවාදවල දිස් වේ."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ඉ-තැපෑල"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "කරුණාකර මුරපදයක් ඇතුළත් කරන්න."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - එක්සත් ජනපද දුරකථන අංකයක් ඇතුළත් කරන්න."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "ඉදිරිපත් කිරීමට පෙර කරුණාකර දෝෂ රතු පැහැයෙන් නිවැරදි කරන්න."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("මුරපදය සඟවන්න"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "එය කෙටියෙන් සිදු කරන්න, මෙය හුදෙක් අනතුරු ආදර්ශනයකි."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("ජීවිත කථාව"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("නම*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("නම අවශ්‍යයි."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("අනුලකුණු 8කට වඩා නැත."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "කරුණාකර අකාරාදී අනුලකුණු පමණක් ඇතුළු කරන්න."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("මුරපදය*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("මුරපද නොගැළපේ."),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("දුරකථන අංකය*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* අවශ්‍ය ක්ෂේත්‍රය දක්වයි"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("මුරපදය නැවත ටයිප් කරන්න*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("වැටුප"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("මුරපදය පෙන්වන්න"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("ඉදිරිපත් කරන්න"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "සංස්කරණය කළ හැකි පෙළ සහ අංකවල තනි පේළිය"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "ඔබ ගැන අපට පවසන්න (උදා, ඔබ කරන දේ හෝ ඔබට තිබෙන විනෝදාංශ මොනවාද යන්න ලියා ගන්න)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("පෙළ ක්ෂේත්‍ර"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "පුද්ගලයන් ඔබට කථා කළේ කුමක්ද?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "අපට ඔබ වෙත ළඟා විය හැක්කේ කොතැනින්ද?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("ඔබගේ ඉ-තැපැල් ලිපිනය"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "සම්බන්ධිත විකල්ප සමූහගත කිරීමට ටොගල බොත්තම් භාවිත කළ හැකිය. සම්බන්ධිත ටොගල බොත්තම සමූහ අවධාරණය කිරීමට, සමූහයක් පොදු බහාලුමක් බෙදා ගත යුතුය"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ටොගල බොත්තම්"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("පේළි දෙකයි"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Material Design හි දක්නට ලැබෙන විවිධ මුද්‍රණ විලාස සඳහා අර්ථ දැක්වීම්."),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("සියලු පූර්ව නිර්ණිත විලාස"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("මුද්‍රණ ශිල්පය"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("ගිණුම එක් කරන්න"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("එකඟයි"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("අවලංගු කරන්න"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("එකඟ නොවේ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ඉවත ලන්න"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("කෙටුම්පත ඉවත ලන්නද?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "සම්පූර්ණ තිර සංවාද ආදර්ශනයකි"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("සුරකින්න"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("පූර්ණ තිර සංවාදය"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "යෙදුම්වලට ස්ථානය තීරණය කිරීම සඳහා සහාය වීමට Google හට ඉඩ දෙන්න. මෙයින් අදහස් කරන්නේ කිසිදු යෙදුමක් හෝ ධාවනය නොවන විට පවා Google වෙත නිර්නාමික ස්ථාන දත්ත යැවීමයි."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google හි පිහිටීම් සේවාව භාවිත කරන්නද?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("උපස්ථ ගිණුම සකසන්න"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("සංවාදය පෙන්වන්න"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("පරිශීලන විලාස සහ මාධ්‍ය"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("ප්‍රවර්ග"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("ගැලරිය"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("මෝටර් රථ සුරැකුම්"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("චෙක්පත්"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("ගෘහ ඉතිරි කිරීම්"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("නිවාඩුව"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("ගිණුමේ හිමිකරු"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("වාර්ෂික ප්‍රතිශත අස්වැන්න"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("පසුගිය වර්ෂයේ ගෙවූ පොලී"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("පොලී අනුපාතය"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("පොලී YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("ඊළඟ ප්‍රකාශය"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("එකතුව"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("ගිණුම්"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("ඇඟවීම්"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("බිල්පත්"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("නියමිත"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("ඇඳුම්"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("කෝපි වෙළඳසැල්"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("සිල්ලර භාණ්ඩ"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("අවන්හල්"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("වම"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("අයවැය"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("පුද්ගලික මූල්‍ය යෙදුමක්"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("වම"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("පුරන්න"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("පුරන්න"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally වෙත ඇතුළු වන්න"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("ගිණුමක් නොමැතිද?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("මුරපදය"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("මාව මතක තබා ගන්න"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ලියාපදිංචි වන්න"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("පරිශීලක නම"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("සියල්ල බලන්න"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("සියලු ගිණුම් බලන්න"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("සියලු බිල්පත් බලන්න"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("සියලු අයවැය බලන්න"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATMs සොයන්න"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("උදව්"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("ගිණුම් කළමනාකරණය කරන්න"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("දැනුම් දීම්"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("කඩදාසි රහිත සැකසීම්"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("මුරකේතය සහ ස්පර්ශ ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("පෞද්ගලික තොරතුරු"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("වරන්න"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("බදු ලේඛන"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ගිණුම්"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("බිල්පත්"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("අයවැය"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("දළ විශ්ලේෂණය"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("සැකසීම්"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery ගැන"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "ලන්ඩනයේ TOASTER විසින් නිර්මාණය කරන ලදි"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("සැකසීම් වසන්න"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("සැකසීම්"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("අඳුරු"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("ප්‍රතිපෝෂණ යවන්න"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("සැහැල්ලු"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("පෙදෙසිය"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("වේදිකා උපක්‍රම"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("මන්දගාමී චලනය"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("පද්ධතිය"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("පෙළ දිශාව"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("පෙදෙසිය මත පදනම්"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("පෙළ පරිමාණ කිරීම"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("දැවැන්ත"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("විශාල"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("සාමාන්‍ය"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("කුඩා"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("තේමාව"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("සැකසීම්"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("අවලංගු කරන්න"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("කරත්තය හිස් කරන්න"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("බහලුම"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("නැව්ගත කිරීම:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("උප එකතුව:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("බදු:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("එකතුව"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ආයිත්තම්"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("සියල්ල"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ඇඳුම්"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ගෘහ"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("විලාසිතාමය සිල්ලර යෙදුමකි"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("මුරපදය"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("පරිශීලක නම"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ඉවත් වන්න"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("මෙනුව"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("ඊළඟ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("නිල් ගල් ජෝගුව"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Cerise scallop tee"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Chambray napkins"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chambray shirt"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Classic white collar"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("මැටි ස්වීටරය"),
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
            MessageLookupByLibrary.simpleMessage("වැසි වතුර තැටිය"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Sea tunic"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Seabreeze sweater"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Shoulder rolls tee"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("උරහිස් සෙලවීමේ බෑගය"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Soothe ceramic set"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("ස්ටෙලා අව් කණ්ණාඩි"),
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
            MessageLookupByLibrary.simpleMessage("Walter henley (සුදු)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Weave keyring"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("White pinstripe shirt"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney belt"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("කරත්තයට එක් කරන්න"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("බහලුම වසන්න"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("මෙනුව වසන්න"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("මෙනුව විවෘත කරන්න"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("අයිතමය ඉවත් කරන්න"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("සෙවීම"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("සැකසීම්"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("ප්‍රතිචාරාත්මක පිරිසැලසුමක්"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("අන්තර්ගතය"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("බොත්තම"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("සිරස්තලය"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("උපසිරැසිය"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("මාතෘකාව"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("ආරම්භක යෙදුම"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("එක් කරන්න"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("ප්‍රියතම"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("සෙවීම"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("බෙදා ගන්න")
      };
}
