// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a my locale. All the
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
  String get localeName => 'my';

  static m0(value) =>
      "ဤအက်ပ်အတွက် ကုဒ်အရင်းအမြစ်ကို ကြည့်ရန် ${value} သို့ သွားပါ။";

  static m1(title) => "${title} တဘ်အတွက် နေရာဦးထားခြင်း";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'မည်သည့်စားသောက်ဆိုင်မျှ မရှိပါ', one: 'စားသောက်ဆိုင် ၁ ဆိုင်', other: 'စားသောက်ဆိုင် ${totalRestaurants} ဆိုင်')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'မရပ်မနား', one: 'ခရီးစဉ်အတွင်း ၁ နေရာ ရပ်နားမှု', other: 'ခရီးစဉ်အတွင်း ${numberOfStops} နေရာ ရပ်နားမှု')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'မည်သည့်အိမ်မျှ မရနိုင်ပါ', one: 'ရနိုင်သောအိမ် ၁ လုံး', other: 'ရနိုင်သောအိမ် ${totalProperties} လုံး')}";

  static m5(value) => "ပစ္စည်း ${value}";

  static m6(error) => "ကလစ်ဘုတ်သို့ မိတ္တူကူး၍မရပါ− ${error}";

  static m7(name, phoneNumber) => "${name} ၏ ဖုန်းနံပါတ်သည် ${phoneNumber}";

  static m8(value) => "သင်ရွေးထားသည့်အရာ- \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "${amount} ထည့်ထားသော ${accountName} အကောင့် ${accountNumber}။";

  static m10(amount) => "ဤလထဲတွင် ATM ကြေး ${amount} အသုံးပြုပြီးပါပြီ";

  static m11(percent) =>
      "ကောင်းပါသည်။ သင်၏ ဘဏ်စာရင်းရှင် အကောင့်သည် ယခင်လထက် ${percent} ပိုများနေသည်။";

  static m12(percent) =>
      "သတိ၊ ဤလအတွက် သင်၏ \'စျေးဝယ်ခြင်း\' ငွေစာရင်းမှနေ၍ ${percent} သုံးပြီးသွားပါပြီ။";

  static m13(amount) =>
      "ဤအပတ်ထဲတွင် \'စားသောက်ဆိုင်\' များအတွက် ${amount} သုံးပြီးပါပြီ။";

  static m14(count) =>
      "${Intl.plural(count, one: 'သင်၏အခွန်နုတ်ယူနိုင်ခြေကို တိုးမြှင့်ပါ။ မသတ်မှတ်ရသေးသော အရောင်းအဝယ် ၁ ခုတွင် အမျိုးအစားများ သတ်မှတ်ပါ။', other: 'သင်၏အခွန်နုတ်ယူနိုင်ခြေကို တိုးမြှင့်ပါ။ မသတ်မှတ်ရသေးသော အရောင်းအဝယ် ${count} ခုတွင် အမျိုးအစားများ သတ်မှတ်ပါ။')}";

  static m15(billName, date, amount) =>
      "${billName} ငွေတောင်းခံလွှာအတွက် ${date} တွင် ${amount} ပေးရပါမည်။";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${amountTotal} အနက် ${amountUsed} အသုံးပြုထားသော ${budgetName} အသုံးစရိတ်တွင် ${amountLeft} ကျန်ပါသည်";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'မည်သည့်ပစ္စည်းမျှ မရှိပါ', one: 'ပစ္စည်း ၁ ခု', other: 'ပစ္စည်း ${quantity} ခု')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "အရေအတွက်- ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'ဈေးခြင်းတောင်း၊ ပစ္စည်းမရှိပါ', one: 'ဈေးခြင်းတောင်း၊ ပစ္စည်း ၁ ခု', other: 'ဈေးခြင်းတောင်း၊ ပစ္စည်း ${quantity} ခု')}";

  static m21(product) => "${product} ကို ဖယ်ရှားရန်";

  static m22(value) => "ပစ္စည်း ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter နမူနာ Github ပြတိုက်"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("အကောင့်"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("နှိုးစက်"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("ပြက္ခဒိန်"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("ကင်မရာ"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("မှတ်ချက်များ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ခလုတ်"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("ပြုလုပ်ရန်"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("စက်ဘီးစီးခြင်း"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("စက်လှေကား"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("မီးလင်းဖို"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("ကြီး"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("အလယ်အလတ်"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("သေး"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("မီးဖွင့်ရန်"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("အဝတ်လျှော်စက်"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ပယင်းရောင်"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("အပြာ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("မီးခိုးပြာ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("အညို"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("စိမ်းပြာ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("လိမ္မော်ရင့်"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ခရမ်းရင့်"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("အစိမ်း"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("မီးခိုး"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("မဲနယ်"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("အပြာဖျော့"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("အစိမ်းနု"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("အစိမ်းဖျော့"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("လိမ္မော်"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ပန်းရောင်"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ခရမ်း"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("အနီ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("စိမ်းပြာရောင်"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("အဝါ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "ပုဂ္ဂိုလ်ရေးသီးသန့် ပြုလုပ်ပေးထားသည့် ခရီးသွားအက်ပ်"),
        "craneEat": MessageLookupByLibrary.simpleMessage("စား"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("နေပယ်လ်၊ အီတလီ"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ထင်းမီးဖိုရှိ ပီဇာ"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "ဒါးလပ်စ်၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("လစ္စဘွန်း၊ ပေါ်တူဂီ"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ကြီးမားသော အမဲကျပ်တိုက်အသားညှပ်ပေါင်မုန့်ကို ကိုင်ထားသောအမျိုးသမီး"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ညစာစားရာတွင် အသုံးပြုသည့်ခုံပုံစံများဖြင့် လူမရှိသောအရက်ဆိုင်"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("ကော်ဒိုဘာ၊ အာဂျင်တီးနား"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("အသားညှပ်ပေါင်မုန့်"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "ပေါ့တ်လန်၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ကိုးရီးယား တာကို"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("ပဲရစ်၊ ပြင်သစ်"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ချောကလက် အချိုပွဲ"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("ဆိုးလ်၊ တောင်ကိုးရီးယား"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "အနုပညာလက်ရာမြောက်သော စားသောက်ဆိုင် တည်ခင်းဧည့်ခံရန်နေရာ"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "ဆီယက်တဲ၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ပုဇွန်ဟင်း"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "နက်ရှ်ဗီးလ်၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("မုန့်ဖုတ်ဆိုင် ဝင်ပေါက်"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "အတ္တလန်တာ၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ကျောက်ပုစွန် ဟင်းလျာ"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("မဒရစ်၊ စပိန်"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ပေါင်မုန့်များဖြင့် ကော်ဖီဆိုင်ကောင်တာ"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "သွားရောက်ရန်နေရာအလိုက် စားသောက်ဆိုင်များကို စူးစမ်းခြင်း"),
        "craneFly": MessageLookupByLibrary.simpleMessage("ပျံသန်းခြင်း"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "အက်စ်ပန်၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "အမြဲစိမ်းသစ်ပင်များဖြင့် နှင်းကျသော ရှုခင်းတစ်ခုရှိ တောင်ပေါ်သစ်သားအိမ်"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("ဘစ်စာ၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("ကိုင်ရို၊ အီဂျစ်"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "နေဝင်ချိန် Al-Azhar Mosque မျှော်စင်များ"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("လစ္စဘွန်း၊ ပေါ်တူဂီ"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ပင်လယ်ရှိ အုတ်ဖြင့်တည်ဆောက်ထားသော မီးပြတိုက်"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("နာပါ၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ထန်းပင်များနှင့် ရေကူးကန်"),
        "craneFly13":
            MessageLookupByLibrary.simpleMessage("ဘာလီ၊ အင်ဒိုနီးရှား"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ထန်းပင်များဖြင့် ပင်လယ်ကမ်းစပ်ရှိ ရေကူးကန်"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("လယ်ကွင်းတစ်ခုရှိတဲ"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("ကွန်ဘူတောင်ကြား၊ နီပေါ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "နှင်းတောင်ရှေ့ရှိ ဆုတောင်းအလံများ"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("မာချူ ပီချူ၊ ပီရူး"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("မာချူ ပီချူ ခံတပ်"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("မာလီ၊ မော်လဒိုက်"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ရေပေါ်အိမ်လေးများ"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("ဗစ်ဇ်နောင်၊ ဆွစ်ဇာလန်"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "တောင်တန်းများရှေ့ရှိ ကမ်းစပ်ဟိုတယ်"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("မက္ကဆီကိုမြို့၊ မက္ကဆီကို"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Palacio de Bellas Artes ၏ အပေါ်မှမြင်ကွင်း"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "ရပ်ရှ်မောတောင်၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ရက်ရှ်မောတောင်"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("စင်္ကာပူ"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ဟာဗားနား၊ ကျူးဘား"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ရှေးဟောင်းကားပြာဘေး မှီနေသည့်လူ"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "သွားရောက်ရန်နေရာအလိုက် လေယာဉ်ခရီးစဉ်များကို စူးစမ်းခြင်း"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("ရက်စွဲရွေးပါ"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("ရက်များကို ရွေးချယ်ပါ"),
        "craneFormDestination": MessageLookupByLibrary.simpleMessage(
            "သွားရောက်လိုသည့်နေရာအား ရွေးချယ်ပါ"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("စားသောက်ဆိုင်များ"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("တည်နေရာ ရွေးရန်"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("မူရင်းနေရာကို ရွေးပါ"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("အချိန်ရွေးပါ"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("ခရီးသွားများ"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("အိပ်စက်ခြင်း"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("မာလီ၊ မော်လဒိုက်"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ရေပေါ်အိမ်လေးများ"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "အက်စ်ပန်၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("ကိုင်ရို၊ အီဂျစ်"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "နေဝင်ချိန် Al-Azhar Mosque မျှော်စင်များ"),
        "craneSleep11":
            MessageLookupByLibrary.simpleMessage("တိုင်ပေ၊ ထိုင်ဝမ်"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("တိုင်ပေ 101 မိုးမျှော်တိုက်"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "အမြဲစိမ်းသစ်ပင်များဖြင့် နှင်းကျသော ရှုခင်းတစ်ခုရှိ တောင်ပေါ်သစ်သားအိမ်"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("မာချူ ပီချူ၊ ပီရူး"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("မာချူ ပီချူ ခံတပ်"),
        "craneSleep3":
            MessageLookupByLibrary.simpleMessage("ဟာဗားနား၊ ကျူးဘား"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ရှေးဟောင်းကားပြာဘေး မှီနေသည့်လူ"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("ဗစ်ဇ်နောင်၊ ဆွစ်ဇာလန်"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "တောင်တန်းများရှေ့ရှိ ကမ်းစပ်ဟိုတယ်"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("ဘစ်စာ၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("လယ်ကွင်းတစ်ခုရှိတဲ"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("နာပါ၊ အမေရိကန် ပြည်ထောင်စု"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ထန်းပင်များနှင့် ရေကူးကန်"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("ပေါ်တို၊ ပေါ်တူဂီ"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Riberia Square ရှိ ရောင်စုံတိုက်ခန်းများ"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("တူလမ်၊ မက္ကဆီကို"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ကမ်းခြေထက် ကျောက်ကမ်းပါးတစ်ခုပေါ်ရှိ Mayan ဘုရားပျက်"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("လစ္စဘွန်း၊ ပေါ်တူဂီ"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ပင်လယ်ရှိ အုတ်ဖြင့်တည်ဆောက်ထားသော မီးပြတိုက်"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "သွားရောက်ရန်နေရာအလိုက် အိမ်ရာများကို စူးစမ်းခြင်း"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("ခွင့်ပြုရန်"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("ပန်းသီးပိုင်မုန့်"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("မလုပ်တော့"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("ချိစ်ကိတ်"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("ချောကလက် ကိတ်မုန့်ညို"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "အောက်ပါစာရင်းမှနေ၍ သင့်အကြိုက်ဆုံး အချိုပွဲအမျိုးအစားကို ရွေးပါ။ သင့်ရွေးချယ်မှုကို သင့်ဒေသရှိ အကြံပြုထားသည့် စားသောက်စရာစာရင်းကို စိတ်ကြိုက်ပြင်ဆင်ရန် အသုံးပြုသွားပါမည်။"),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("ဖယ်ပစ်ရန်"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("ခွင့်မပြုပါ"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "အနှစ်သက်ဆုံး အချိုပွဲကို ရွေးပါ"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "သင့်လက်ရှိ တည်နေရာကို မြေပုံပေါ်တွင် ဖော်ပြမည်ဖြစ်ပြီး လမ်းညွှန်ချက်များ၊ အနီးနားရှိ ရှာဖွေမှုရလဒ်များနှင့် ခန့်မှန်းခြေ ခရီးသွားချိန်များအတွက် အသုံးပြုသွားပါမည်။"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "အက်ပ်ကို အသုံးပြုနေစဉ် သင့်တည်နေရာကို \"Maps\" အားအသုံးပြုခွင့် ပေးလိုသလား။"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("တီရာမီစု"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ခလုတ်"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("နောက်ခံနှင့်"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("သတိပေးချက် ပြရန်"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "လုပ်ဆောင်ချက်ချစ်ပ်များသည် ရွေးချယ်မှုစနစ်အုပ်စုတစ်ခုဖြစ်ပြီး ပင်မအကြောင်းအရာနှင့် သက်ဆိုင်သော လုပ်ဆောင်ချက်ကို ဆောင်ရွက်ပေးသည်။ လုပ်ဆောင်ချက်ချစ်ပ်များသည် UI တွင် အကြောင်းအရာ အပေါ်မူတည်၍ ပေါ်လာသင့်ပါသည်။"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("လုပ်ဆောင်ချက် ချစ်ပ်"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "သတိပေးချက် ဒိုင်ယာလော့ဂ်သည် အသိအမှတ်ပြုရန် လိုအပ်သည့် အခြေအနေများအကြောင်း အသုံးပြုသူထံ အသိပေးသည်။ သတိပေးချက် ဒိုင်ယာလော့ဂ်တွင် ချန်လှပ်ထားနိုင်သည့် ခေါင်းစဉ်နှင့် ချန်လှပ်ထားနိုင်သည့် လုပ်ဆောင်ချက်စာရင်းပါဝင်သည်။"),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("သတိပေးချက်"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("ခေါင်းစဉ်ပါသည့် သတိပေးချက်"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "အောက်ခြေမီနူးပါ လမ်းညွှန်ဘားသည် သွားရောက်ရန်နေရာ သုံးခုမှ ငါးခုအထိ မျက်နှာပြင်၏ အောက်ခြေတွင် ဖော်ပြပေးသည်။ သွားရောက်ရန်နေရာတစ်ခုစီတွင် သင်္ကေတတစ်ခုစီရှိပြီး အညွှန်းပါနိုင်ပါသည်။ အောက်ခြေမီနူးပါ လမ်းညွှန်သင်္ကေတကို တို့လိုက်သည့်အခါ ၎င်းသင်္ကေတနှင့် ဆက်စပ်နေသည့် ထိပ်တန်းအဆင့် သွားရောက်ရန်နေရာတစ်ခုကို ဖွင့်ပေးပါသည်။"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("မပြောင်းလဲသည့် အညွှန်းများ"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("ရွေးချယ်ထားသော အညွှန်း"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "အရောင်မှိန်သွားသည့် မြင်ကွင်းများဖြင့် အောက်ခြေမီနူးပါ လမ်းညွှန်မှု"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("အောက်ခြေတွင် လမ်းညွှန်ခြင်း"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("ထည့်ရန်"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "အောက်ခြေမီနူးပါ စာမျက်နှာကို ပြရန်"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("ခေါင်းစီး"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modal အောက်ခြေမီနူးပါ စာမျက်နှာသည် မီနူး သို့မဟုတ် ဒိုင်ယာလော့ဂ်အတွက် အစားထိုးနည်းလမ်းတစ်ခုဖြစ်ပြီး အသုံးပြုသူက အက်ပ်၏ကျန်ရှိအပိုင်းများနှင့် ပြန်လှန်တုံ့ပြန်မှုမပြုရန် ကန့်သတ်ပေးသည်။"),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "အောက်ခြေမီနူးပါ ပုံစံစာမျက်နှာ"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "မပြောင်းလဲသော အောက်ခြေမီနူးပါ စာမျက်နှာသည် အက်ပ်၏ ပင်မအကြောင်းအရာအတွက် ဖြည့်စွက်ချက်များပါဝင်သည့် အချက်အလက်များကို ပြသည်။ အသုံးပြုသူက အက်ပ်၏ အခြားအစိတ်အပိုင်းများကို အသုံးပြုနေသည့်အခါတွင်ပင် မပြောင်းလဲသော အောက်ခြေမီနူးပါ စာမျက်နှာကို မြင်နိုင်ပါမည်။"),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "မပြောင်းလဲသော အောက်ခြေမီနူးပါ စာမျက်နှာ"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "မပြောင်းလဲသော အောက်ခြေမီနူးပါ စာမျက်နှာပုံစံများ"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("အောက်ခြေမီနူးပါ စာမျက်နှာ"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("စာသားအကွက်များ"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "အပြား၊ အမြင့်၊ ဘောင်မျဉ်းပါခြင်းနှင့် အခြားများ"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ခလုတ်များ"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "အဝင်၊ ရည်ညွှန်းချက် သို့မဟုတ် လုပ်ဆောင်ချက်ကို ကိုယ်စားပြုသည့် ကျစ်လစ်သော အကြောင်းအရာများ"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ချစ်ပ်များ"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "ရွေးချယ်မှုချစ်ပ်များသည် အစုတစ်ခုရှိ ရွေးချယ်မှုတစ်ခုကို ကိုယ်စားပြုသည်။ ရွေးချယ်မှုချစ်ပ်များတွင် သက်ဆိုင်ရာ အကြောင်းအရာစာသား သို့မဟုတ် အမျိုးအစားများပါဝင်သည်။"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("ရွေးချယ်မှု ချစ်ပ်"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("နမူနာကုဒ်"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "ကလစ်ဘုတ်သို့ မိတ္တူကူးပြီးပါပြီ။"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("အားလုံး မိတ္တူကူးရန်"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "အရောင်နှင့် အရောင်နမူနာ ပုံသေများသည် ပစ္စည်းဒီဇိုင်း၏ အရောင်အစုအဖွဲ့ကို ကိုယ်စားပြုသည်။"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ကြိုတင်သတ်မှတ်ထားသည့် အရောင်အားလုံး"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("အရောင်များ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "လုပ်ဆောင်ချက် စာမျက်နှာတစ်ခုသည် တိကျသည့် သတိပေးချက်ပုံစံဖြစ်ပြီး လက်ရှိအကြောင်းအရာနှင့် သက်ဆိုင်သည့် ရွေးချယ်မှု နှစ်ခု သို့မဟုတ် ၎င်းအထက်ကို အသုံးပြုသူအား ဖော်ပြပါသည်။ လုပ်ဆောင်ချက် စာမျက်နှာတွင် ခေါင်းစဉ်၊ နောက်ထပ်မက်ဆေ့ဂျ်နှင့် လုပ်ဆောင်ချက်စာရင်း ပါရှိနိုင်သည်။"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("လုပ်ဆောင်ချက် စာမျက်နှာ"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("သတိပေးချက် ခလုတ်များသာ"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ခလုတ်များနှင့် သတိပေးချက်"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "သတိပေးချက် ဒိုင်ယာလော့ဂ်သည် အသိအမှတ်ပြုရန် လိုအပ်သည့် အခြေအနေများအကြောင်း အသုံးပြုသူထံ အသိပေးသည်။ သတိပေးချက် ဒိုင်ယာလော့ဂ်တွင် ချန်လှပ်ထားနိုင်သည့် ခေါင်းစဉ်၊ ချန်လှပ်ထားနိုင်သည့် အကြောင်းအရာနှင့် ချန်လှပ်ထားနိုင်သည့် လုပ်ဆောင်ချက်စာရင်း ပါဝင်သည်။ ခေါင်းစဉ်ကို အကြောင်းအရာ၏ အပေါ်တွင် ဖော်ပြပြီး ‌လုပ်ဆောင်ချက်များကို အကြောင်းအရာ၏ အောက်တွင် ဖော်ပြသည်။"),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("သတိပေးချက်"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("ခေါင်းစဉ်ပါသည့် သတိပေးချက်"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-ပုံစံ သတိပေးချက် ဒိုင်ယာလော့ဂ်များ"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("သတိပေးချက်များ"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-ပုံစံ ခလုတ်။ ထိလိုက်သည်နှင့် အဝင်နှင့် အထွက် မှိန်သွားသည့် စာသားနှင့်/သို့မဟုတ် သင်္ကေတကို ၎င်းက လက်ခံသည်။ နောက်ခံလည်း ပါဝင်နိုင်သည်။"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ပုံစံ ခလုတ်များ"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ခလုတ်များ"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "နှစ်ဦးနှစ်ဖက် သီးသန့်သတ်မှတ်ချက်များအကြား ရွေးချယ်ရန် အသုံးပြုထားသည်။ အပိုင်းလိုက် ထိန်းချုပ်မှုအတွင်းရှိ သတ်မှတ်ချက်တစ်ခုကို ရွေးချယ်သည့်အခါ ထိုအတွင်းရှိ အခြားသတ်မှတ်ချက်များအတွက် ရွေးချယ်မှု ရပ်ဆိုင်းသွားပါသည်။"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS ပုံစံ အပိုင်းလိုက် ထိန်းချုပ်မှု"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("အပိုင်းလိုက် ထိန်းချုပ်မှု"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "ရိုးရှင်းသော၊ သတိပေးချက်နှင့် မျက်နှာပြင်အပြည့်"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("ဒိုင်ယာလော့ဂ်များ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API မှတ်တမ်း"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "အကြောင်းအရာကို စစ်ထုတ်သည့်နည်းလမ်းတစ်ခုအဖြစ် တဂ်များ သို့မဟုတ် ဖော်ပြချက် စကားလုံးများသုံးပြီး ချစ်ပ်များကို စစ်ထုတ်သည်။"),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ချစ်ပ်ကို စစ်‌ထုတ်ခြင်း"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "နှိပ်လိုက်သည့်အခါ မှင်ပက်ဖြန်းမှုကို ပြသသော်လည်း မ တင်ခြင်းမရှိသည့် ခလုတ်အပြား။ ကိရိယာဘား၊ ဒိုင်ယာလော့ဂ်များနှင့် စာကြောင်းအတွင်းတွင် ခလုတ်အပြားများကို အသုံးပြုပါ"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ခလုတ်အပြား"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "မျောနေသည့် လုပ်ဆောင်ချက်ခလုတ်ဆိုသည်မှာ အပလီကေးရှင်းတစ်ခုအတွင်း ပင်မလုပ်ဆောင်ချက်တစ်ခု အထောက်အကူပြုရန် အကြောင်းအရာ၏ အပေါ်တွင် ရစ်ဝဲနေသော စက်ဝိုင်းသင်္ကေတ ခလုတ်တစ်ခုဖြစ်သည်။"),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "လွင့်မျောနေသည့် လုပ်ဆောင်ချက်ခလုတ်"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "FullscreenDialog အချက်အလက်က အဝင်စာမျက်နှာသည် မျက်နှာပြင်အပြည့် နမူနာဒိုင်ယာလော့ဂ် ဟုတ်မဟုတ် သတ်မှတ်ပေးသည်"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("မျက်နှာပြင်အပြည့်"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("မျက်နှာပြင် အပြည့်"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("အချက်အလက်"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "အဝင်ချစ်ပ်သည် အစုအဖွဲ့ (လူပုဂ္ဂိုလ်၊ နေရာ သို့မဟုတ် အရာဝတ္ထု) သို့မဟုတ် စကားဝိုင်းစာသားကဲ့သို့ ရှုပ်ထွေးသော အချက်အလက်များကို ကျစ်လစ်သည့်ပုံစံဖြင့် ကိုယ်စားပြုသည်။"),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("အဝင်ချစ်ပ်"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("URL ကို ပြ၍မရပါ-"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "ယေဘုယျအားဖြင့် စာသားအချို့အပြင် ထိပ်ပိုင်း သို့မဟုတ် နောက်ပိုင်းတွင် သင်္ကေတများ ပါဝင်သည့် တိကျသောအမြင့်ရှိသော စာကြောင်းတစ်ကြောင်း။"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("ဒုတိယစာသား"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "လှိမ့်ခြင်းစာရင်း အပြင်အဆင်များ"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("စာရင်းများ"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("တစ်ကြောင်း"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "ယခုသရုပ်ပြမှုအတွက် ရနိုင်သောရွေးစရာများ ကြည့်ရန် ဤနေရာကို တို့နိုင်သည်။"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("ရွေးစရာများ ကြည့်ရန်"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("ရွေးစရာများ"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ဘောင်မျဉ်းပါသည့် ခလုတ်များကို နှိပ်လိုက်သည့်အခါ ဖျော့သွားပြီး မြှင့်တက်လာသည်။ ကွဲပြားသည့် ဒုတိယလုပ်ဆောင်ချက်တစ်ခုကို ဖော်ပြရန် ၎င်းတို့ကို ခလုတ်မြင့်များနှင့် မကြာခဏ တွဲထားလေ့ရှိသည်။"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("ဘောင်မျဉ်းပါ ခလုတ်"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ခလုတ်မြင့်များသည် အများအားဖြင့် အပြားလိုက် အပြင်အဆင်များတွင် ထုထည်အားဖြင့်ဖြည့်ပေးသည်။ ၎င်းတို့သည် ကျယ်ပြန့်သော သို့မဟုတ် ခလုတ်များပြားသော နေရာများတွင် လုပ်ဆောင်ချက်များကို အထူးပြုသည်။"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("ခလုတ်မြင့်"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "အမှန်ခြစ်ရန်နေရာများသည် အုပ်စုတစ်ခုမှ တစ်ခုထက်ပို၍ ရွေးချယ်ခွင့်ပေးသည်။ ပုံမှန်အမှန်ခြစ်ရန်နေရာ၏ တန်ဖိုးသည် အမှန် သို့မဟုတ် အမှားဖြစ်ပြီး အခြေအနေသုံးမျိုးပါ အမှန်ခြစ်ရန်နေရာ၏ တန်ဖိုးသည် ဗလာလည်း ဖြစ်နိုင်သည်။"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("အမှတ်ခြစ်ရန် နေရာ"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ရေဒီယိုခလုတ်များသည် အုပ်စုတစ်ခုမှ ရွေးချယ်စရာများအနက် တစ်ခုကို ရွေးခွင့်ပေးသည်။ အသုံးပြုသူသည် ရွေးချယ်မှုများကို ဘေးချင်းကပ်ကြည့်ရန် လိုအပ်သည်ဟု ယူဆပါက အထူးသီးသန့်ရွေးချယ်မှုအတွက် ရေဒီယိုခလုတ်ကို အသုံးပြုပါ။"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("ရေဒီယို"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "အမှန်ခြစ်ရန် နေရာများ၊ ရေဒီယိုခလုတ်များနှင့် အဖွင့်အပိတ်ခလုတ်များ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "အဖွင့်/အပိတ်ခလုတ်များသည် ဆက်တင်တစ်ခုတည်း ရွေးချယ်မှု၏ အခြေအနေကို ပြောင်းပေးသည်။ ခလုတ်က ထိန်းချုပ်သည့် ရွေးချယ်မှု၊ ၎င်းရောက်ရှိနေသည့် အခြေအနေကို သက်‌ဆိုင်ရာ အညွှန်းတွင် ရှင်းရှင်းလင်းလင်း ‌ထားရှိသင့်သည်။"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("ပြောင်းရန်"),
        "demoSelectionControlsTitle": MessageLookupByLibrary.simpleMessage(
            "ရွေးချယ်မှု ထိန်းချုပ်ချက်များ"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ရိုးရှင်းသည့် ဒိုင်ယာလော့ဂ်သည် မတူညီသည့် ရွေးချယ်မှုများစွာမှ အသုံးပြုသူအား ရွေးခွင့်ပြုသည်။ ရိုးရှင်းသည့် ဒိုင်ယာလော့ဂ်တွင် ရွေးချယ်မှုများ၏ အပေါ်တွင် ဖော်ပြသော ချန်လှပ်ထားနိုင်သည့် ခေါင်းစဉ်ပါဝင်သည်။"),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("ရိုးရှင်းသော"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "တဘ်များက ဖန်သားပြင်၊ ဒေတာအတွဲနှင့် အခြားပြန်လှန်တုံ့ပြန်မှု အမျိုးမျိုးရှိ အကြောင်းအရာများကို စုစည်းပေးသည်။"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "သီးခြားလှိမ့်နိုင်သော မြင်ကွင်းများဖြင့် တဘ်များ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("တဘ်များ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "စာသားအကွက်များသည် UI သို့ စာသားများထည့်သွင်းရန် အသုံးပြုသူအား ခွင့်ပြုသည်။ ၎င်းတို့ကို ဖောင်များနှင့် ဒိုင်ယာလော့ဂ်များတွင် ယေဘုယျအားဖြင့် တွေ့ရသည်။"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("အီးမေးလ်"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("စကားဝှက်ကို ထည့်ပါ။"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - US ဖုန်းနံပါတ်ကို ထည့်ပါ"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "မပေးပို့မီ အနီရောင်ဖြင့်ပြထားသော အမှားများကို ပြင်ပါ။"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("စကားဝှက်ကို ဖျောက်ရန်"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "လိုရင်းတိုရှင်းထားပါ၊ ဤသည်မှာ သရုပ်ပြချက်သာဖြစ်သည်။"),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("ဘဝဇာတ်ကြောင်း"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("အမည်*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("အမည် လိုအပ်ပါသည်။"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("အက္ခရာ ၈ လုံးထက် မပိုရ။"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "ဗျည်းအက္ခရာများကိုသာ ထည့်ပါ။"),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("စကားဝှက်*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("စကားဝှက်များ မတူကြပါ"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ဖုန်းနံပါတ်*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* သည် ဖြည့်ရန် လိုအပ်ကြောင်း ဖော်ပြခြင်းဖြစ်သည်"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("စကားဝှက်ကို ပြန်ရိုက်ပါ*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("လစာ"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("စကားဝှက်ကို ပြရန်"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("ပေးပို့ရန်"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "တည်းဖြတ်နိုင်သော စာသားနှင့် နံပါတ်စာကြောင်းတစ်ကြောင်း"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "သင့်အကြောင်း ပြောပြပါ (ဥပမာ သင့်အလုပ် သို့မဟုတ် သင့်ဝါသနာကို ချရေးပါ)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("စာသားအကွက်များ"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "လူများက သင့်အား မည်သို့ ခေါ်ပါသလဲ။"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "သင့်ကို မည်သို့ ဆက်သွယ်နိုင်ပါသလဲ။"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("သင့်အီးမေး လိပ်စာ"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "သက်ဆိုင်ရာ ရွေးချယ်စရာများကို အုပ်စုဖွဲ့ရန် အဖွင့်အပိတ်ခလုတ်များကို အသုံးပြုနိုင်သည်။ သက်ဆိုင်ရာ အဖွင့်ပိတ်ခလုတ်များကို အထူးပြုရန် အုပ်စုတစ်ခုသည် တူညီသည့် ကွန်တိန်နာကို အသုံးပြုသင့်သည်။"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("အဖွင့်အပိတ်ခလုတ်များ"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("နှစ်ကြောင်း"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "\'ပစ္စည်းပုံစံ\' တွင် မြင်တွေ့ရသော စာသားပုံစံအမျိုးမျိုးတို့၏ အဓိပ္ပာယ်ဖွင့်ဆိုချက်များ။"),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "ကြိုတင်သတ်မှတ်ထားသည့် စာသားပုံစံများအားလုံး"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("စာလုံးဒီဇိုင်း"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("အကောင့်ထည့်ရန်"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("သဘောတူသည်"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("မလုပ်တော့"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("သဘောမတူပါ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ဖယ်ပစ်ရန်"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("စာကြမ်းကို ဖယ်ပစ်လိုသလား။"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "မျက်နှာပြင်အပြည့် ဒိုင်ယာလော့ဂ်သရုပ်ပြ"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("သိမ်းရန်"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "မျက်နှာပြင်အပြည့် ဒိုင်ယာလော့ဂ်"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "အက်ပ်များက တည်နေရာဆုံးဖြတ်ရာတွင် Google အား ကူညီခွင့်ပြုလိုက်ပါ။ ဆိုလိုသည်မှာ မည်သည့်အက်ပ်မျှ အသုံးပြုနေခြင်းမရှိသည့်အခါတွင်ပင် တည်နေရာဒေတာများကို Google သို့ အမည်မဖော်ဘဲ ပို့ခြင်းဖြစ်သည်။"),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google ၏ တည်နေရာ ဝန်ဆောင်မှုကို သုံးလိုသလား။"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "အရန်အကောင့် စနစ်ထည့်သွင်းရန်"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ဒိုင်ယာလော့ဂ်ကို ပြရန်"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "မှီငြမ်းပြုပုံစံများနှင့် မီဒီယာ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("အမျိုးအစားများ"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("ပြခန်း"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("ကား စုငွေများ"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("စာရင်းရှင်"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("အိမ်စုငွေ‌များ"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("အားလပ်ရက်"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("အကောင့် ပိုင်ရှင်"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "တစ်နှစ်တာ ထွက်ရှိမှုရာခိုင်နှုန်း"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("ယခင်နှစ်က ပေးထားသည့် အတိုး"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("အတိုးနှုန်း"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("အတိုး YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("နောက် ထုတ်ပြန်ချက်"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("စုစုပေါင်း"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("အကောင့်များ"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("သတိပေးချက်များ"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills":
            MessageLookupByLibrary.simpleMessage("ငွေတောင်းခံလွှာများ"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("နောက်ဆုံးထား ပေးရမည့်ရက်"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("အဝတ်အထည်"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("ကော်ဖီဆိုင်များ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("စားသောက်ကုန်များ"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("စားသောက်ဆိုင်များ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("လက်ကျန်"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("ငွေစာရင်းများ"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "ကိုယ်ပိုင် ငွေကြေးဆိုင်ရာ အက်ပ်"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("လက်ကျန်"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("အကောင့်ဝင်ရန်"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("အကောင့်ဝင်ရန်"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally သို့ အကောင့်ဝင်ရန်"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("အကောင့်မရှိဘူးလား။"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("စကားဝှက်"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("ကျွန်ုပ်ကို မှတ်ထားရန်"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("စာရင်းသွင်းရန်"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("အသုံးပြုသူအမည်"),
        "rallySeeAll":
            MessageLookupByLibrary.simpleMessage("အားလုံးကို ကြည့်ရန်"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("အကောင့်အားလုံး ကြည့်ရန်"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage(
            "ငွေတောင်းခံလွှာအားလုံး ကြည့်ရန်"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage(
            "အသုံးစရိတ်အားလုံးကို ကြည့်ရန်"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATM များကို ရှာရန်"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("အကူအညီ"),
        "rallySettingsManageAccounts": MessageLookupByLibrary.simpleMessage(
            "အကောင့်များကို စီမံခန့်ခွဲရန်"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("အကြောင်းကြားချက်များ"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("စာရွက်မသုံး ဆက်တင်များ"),
        "rallySettingsPasscodeAndTouchId": MessageLookupByLibrary.simpleMessage(
            "လျှို့ဝှက်ကုဒ်နှင့် \'လက်ဗွေ ID\'"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("ကိုယ်ရေးအချက်အလက်များ"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("ထွက်ရန်"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("အခွန် မှတ်တမ်းများ"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("အကောင့်များ"),
        "rallyTitleBills":
            MessageLookupByLibrary.simpleMessage("ငွေတောင်းခံလွှာများ"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("ငွေစာရင်းများ"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("အနှစ်ချုပ်"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("ဆက်တင်များ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery အကြောင်း"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Designed by TOASTER in London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("ဆက်တင်အားပိတ်ရန်"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ဆက်တင်များ"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("အမှောင်"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("အကြံပြုချက် ပို့ခြင်း"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("အလင်း"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage(
            "ဘာသာစကားနှင့် နိုင်ငံအသုံးအနှုန်း"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("စနစ် ယန္တရားများ"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("အနှေးပြကွက်"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("စနစ်"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("စာသားဦးတည်ရာ"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "ဘာသာစကားနှင့် နိုင်ငံအသုံးအနှုန်းအပေါ် အခြေခံထားသည်"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("စာလုံး အရွယ်တိုင်းတာခြင်း"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("ဧရာမ"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("အကြီး"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("ပုံမှန်"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("အသေး"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("အပြင်အဆင်"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("ဆက်တင်များ"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("မလုပ်တော့"),
        "shrineCartClearButtonCaption": MessageLookupByLibrary.simpleMessage(
            "စျေးခြင်းတောင်းကို ရှင်းလင်းရန်"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("ဈေးခြင်းတောင်း"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("ကုန်ပစ္စည်းပေးပို့ခြင်း-"),
        "shrineCartSubtotalCaption": MessageLookupByLibrary.simpleMessage(
            "စုစုပေါင်းတွင် ပါဝင်သော ကိန်းအပေါင်း-"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("အခွန်-"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("စုစုပေါင်း"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ဆက်စပ်ပစ္စည်းများ"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("အားလုံး"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("အဝတ်အထည်"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("အိမ်"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("ခေတ်မီသော အရောင်းဆိုင်အက်ပ်"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("စကားဝှက်"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("အသုံးပြုသူအမည်"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("အကောင့်မှ ထွက်ရန်"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("မီနူး"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ရှေ့သို့"),
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
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
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
            MessageLookupByLibrary.simpleMessage("လက်ဆွဲအိတ်"),
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
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage(
                "ဈေးခြင်းတောင်းသို့ ပေါင်းထည့်မည်"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("ဈေးခြင်းတောင်းကို ပိတ်ရန်"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("မီနူးကို ပိတ်ရန်"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("မီနူး ဖွင့်ရန်"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("ပစ္စည်းကို ဖယ်ရှားရန်"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ရှာဖွေရန်"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("ဆက်တင်များ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "တုံ့ပြန်မှုကောင်းမွန်သော အစပြုရန် အပြင်အဆင်"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("စာကိုယ်"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ခလုတ်"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("ခေါင်းစီး"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("ခေါင်းစဉ်ငယ်"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("ခေါင်းစဉ်"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("အစပြုအက်ပ်"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("ထည့်ရန်"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("အကြိုက်ဆုံး"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ရှာဖွေရန်"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("မျှဝေရန်")
      };
}
