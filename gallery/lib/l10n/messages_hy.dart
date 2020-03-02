// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hy locale. All the
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
  String get localeName => 'hy';

  static m0(value) => "Այս հավելվածի կոդը տեսնելու համար բացեք ${value} էջը։";

  static m1(title) => "Տեղապահ «${title}» ներդիրի համար";

  static m2(destinationName) => "${destinationName}․ իմանալ ավելին";

  static m3(destinationName) => "${destinationName}․ կիսվել";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Ռեստորաններ չկան', one: '1 ռեստորան', other: '${totalRestaurants} ռեստորան')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Առանց կանգառի', one: '1 կանգառ', other: '${numberOfStops} կանգառ')}";

  static m7(hours) => "${Intl.plural(hours, one: '1 ժ', other: '${hours} ժ')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 ր', other: '${minutes} ր')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Հասանելի հյուրանոցներ չկան', one: '1 հասանելի հյուրանոց', other: '${totalProperties} հասանելի հյուրանոց')}";

  static m10(value) => "${value} մեղրով";

  static m11(value) => "${value} շաքարով";

  static m12(value) => "${value}";

  static m13(error) => "Չհաջողվեց պատճենել սեղմատախտակին՝ ${error}";

  static m14(value) => "Շարունակական՝ ${value}";

  static m15(value) => "Դիսկրետ՝ ${value}";

  static m16(value) => "Նշված է՝ ${value}";

  static m17(value) => "Ընտրված է՝ ${value}";

  static m18(name, phoneNumber) => "${name}՝ ${phoneNumber}";

  static m19(value) => "Դուք ընտրել եք՝ «${value}»";

  static m20(accountName, accountNumber, amount) =>
      "${amount} գումարի ${accountName} հաշիվ (${accountNumber})։";

  static m21(amount) =>
      "Այս ամիս դուք բանկոմատների միջնորդավճարների վրա ծախսել եք ${amount}։";

  static m22(percent) =>
      "Հրաշալի է։ Անցած ամսվա համեմատ՝ այս ամիս ձեր հաշվին ${percent}-ով ավել գումար կա։";

  static m23(percent) =>
      "Ուշադրությո՛ւն։ Դուք ծախսել եք այս ամսվա բյուջեի ${percent}-ը։";

  static m24(amount) => "Դուք այս շաբաթ ռեստորաններում ծախսել եք ${amount}։";

  static m25(count) =>
      "${Intl.plural(count, one: 'Ավելացրեք հարկային հնարավոր նվազեցման գումարը։ Նշանակեք կատեգորիաներ 1 չբաշխված գործարքի համար։', other: 'Ավելացրեք հարկային հնարավոր նվազեցման գումարը։ Նշանակեք կատեգորիաներ ${count} չբաշխված գործարքի համար։')}";

  static m26(billName, date, amount) =>
      "${amount} գումարի ${billName} հաշիվը պետք է վճարվի՝ ${date}։";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Բյուջե՝ ${budgetName}։ Ծախսվել է ${amountUsed}՝ ${amountTotal}-ից։ Մնացել է՝ ${amountLeft}։";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ԱՊՐԱՆՔՆԵՐ ՉԿԱՆ', one: '1 ԱՊՐԱՆՔ', other: '${quantity} ԱՊՐԱՆՔ')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Քանակը՝ ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Զամբյուղը դատարկ է', one: 'Զամբյուղում 1 ապրանք կա', other: 'Զամբյուղում ${quantity} ապրանք կա')}";

  static m32(product) => "${product}՝ հեռացնել";

  static m33(value) => "${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter-ի նմուշներ GitHub շտեմարանից"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Վերադառնալ ցուցասրահ"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Առաջատար պատկերակ"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Մի քանի գործողություն"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Վերակայել ազդերիզը"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Ձեր գաղտնաբառը թարմացվել է ձեր մյուս սարքում։ Նորից մուտք գործեք հաշիվ։"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Կտրվածք"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Գործողության լողացող կոճակի դիրքը"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Վահանակի վրա՝ կենտրոնում"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Վահանակի վրա՝ վերջում"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage(
                "Վահանակի վերևում՝ կենտրոնում"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Վահանակի վերևում՝ վերջում"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Հաշիվ"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Զարթուցիչ"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Օրացույց"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Տեսախցիկ"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Մեկնաբանություններ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ԿՈՃԱԿ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Ստեղծել"),
        "cardsDemoExplore":
            MessageLookupByLibrary.simpleMessage("Իմանալ ավելին"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("Ընտրելի (երկար սեղմել)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage("Հպելի"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Թանջավուր"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Չետինադ"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Համար 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Մետաքսագործներ"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Տաճարներ"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Թանջավուր, Թամիլ Նադու"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Շիվագանգա, Թամիլ Նադու"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Այցելելու լավագույն 10 քաղաքները Թամիլ Նադուում"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Հարավային Հնդկաստանի արհեստավորները"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Բրիհադիշվարա տաճար"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Հեծանվավարություն"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Վերելակ"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Բուխարի"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Մեծ"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Միջին"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Փոքր"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Միացնել լույսերը"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Լվացքի մեքենա"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ՍԱԹ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ԿԱՊՈՒՅՏ"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("ԿԱՊՏԱՄՈԽՐԱԳՈՒՅՆ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ԴԱՐՉՆԱԳՈՒՅՆ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ԵՐԿՆԱԳՈՒՅՆ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ՄՈՒԳ ՆԱՐՆՋԱԳՈՒՅՆ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ՄՈՒԳ ՄԱՆՈՒՇԱԿԱԳՈՒՅՆ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ԿԱՆԱՉ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ՄՈԽՐԱԳՈՒՅՆ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ԻՆԴԻԳՈ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ԲԱՑ ԿԱՊՈՒՅՏ"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ԲԱՑ ԿԱՆԱՉ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ԼԱՅՄ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ՆԱՐՆՋԱԳՈՒՅՆ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ՎԱՐԴԱԳՈՒՅՆ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ՄԱՆՈՒՇԱԿԱԳՈՒՅՆ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ԿԱՐՄԻՐ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ՓԻՐՈՒԶԱԳՈՒՅՆ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ԴԵՂԻՆ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Անհատականացված հավելված ճամփորդությունների համար"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ՍՆՈՒՆԴ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Նեապոլ, Իտալիա"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Պիցցա՝ փայտի վառարանում"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Դալաս, ԱՄՆ"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Լիսաբոն, Պորտուգալիա"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Պաստրամիով հսկայական սենդվիչ բռնած կին"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Բարձր աթոռներով դատարկ բառ"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Կորդոբա, արգենտինա"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Բուրգեր"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("Փորթլենդ, ԱՄՆ"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Կորեական տակո"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Փարիզ, Ֆրանսիա"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Շոկոլադե աղանդեր"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Սեուլ, Հարավային Կորեա"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ռեստորանի նորաձև սրահ"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("Սիեթլ, ԱՄՆ"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ծովախեցգետնից ուտեստ"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("Նեշվիլ, ԱՄՆ"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Փռի մուտք"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("Ատլանտա, ԱՄՆ"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Խեցգետինների ափսե"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Մադրիդ, Իսպանիա"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Թխվածքներով վաճառասեղան սրճարանում"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Դիտեք ռեստորաններն ըստ նպատակակետի"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("ՉՎԵՐԹՆԵՐ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Ասպեն, ԱՄՆ"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Շալե՝ փշատերև ծառերով ձյունե լանդշաֆտի ֆոնի վրա"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("Բիգ Սուր, ԱՄՆ"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Կահիրե, Եգիպտոս"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ալ-Ազհարի մզկիթի մինարեթները մայրամուտին"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Լիսաբոն, Պորտուգալիա"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Աղյուսե փարոս՝ ծովի ֆոնի վրա"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Նապա, ԱՄՆ"),
        "craneFly12SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Արմավենիներով շրջապատված լողավազան"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Բալի, Ինդոնեզիա"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Արմավենիներով շրջապատված ծովափնյա լողավազան"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Վրան դաշտում"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Կհումբու հովիտ, Նեպալ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Աղոթքի դրոշներ՝ ձյունապատ լեռների ֆոնի վրա"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("Մաչու Պիկչու, Պերու"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Մաչու Պիչու ամրոց"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Մալե, Մալդիվներ"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Բունգալոներ ջրի վրա"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Վիցնաու, Շվեյցարիա"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Լճամերձ հյուրանոց՝ լեռների ֆոնի վրա"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Մեխիկո, Մեքսիկա"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Օդից տեսարան դեպի Գեղարվեստի պալատ"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("Ռաշմոր լեռ, ԱՄՆ"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ռաշմոր լեռ"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Սինգապուր"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Գերծառերի պուրակ"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Հավանա, Կուբա"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Կապույտ ռետրո մեքենայի վրա հենված տղամարդ"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Դիտեք չվերթներն ըստ նպատակակետի"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Ընտրել ամսաթիվ"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Ընտրել ամսաթվեր"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Ընտրել նպատակակետ"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Խորտկարաններ"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Ընտրել վայր"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Ընտրել սկզբնակետ"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Ընտրել ժամը"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Ճանապարհորդներ"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("ՔՈՒՆ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Մալե, Մալդիվներ"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Բունգալոներ ջրի վրա"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("Ասպեն, ԱՄՆ"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Կահիրե, Եգիպտոս"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ալ-Ազհարի մզկիթի մինարեթները մայրամուտին"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Թայփեյ, Թայվան"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Թայբեյ 101 երկնաքեր"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Շալե՝ փշատերև ծառերով ձյունե լանդշաֆտի ֆոնի վրա"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Մաչու Պիկչու, Պերու"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Մաչու Պիչու ամրոց"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Հավանա, Կուբա"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Կապույտ ռետրո մեքենայի վրա հենված տղամարդ"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Վիցնաու, Շվեյցարիա"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Լճամերձ հյուրանոց՝ լեռների ֆոնի վրա"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("Բիգ Սուր, ԱՄՆ"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Վրան դաշտում"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Նապա, ԱՄՆ"),
        "craneSleep6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Արմավենիներով շրջապատված լողավազան"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Պորտու, Պորտուգալիք"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Վառ տներ Ռիբեյրա հրապարակում"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Տուլում, Մեքսիկա"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Մայաների ավերակները լողափից վեր՝ ժայռի վրա"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Լիսաբոն, Պորտուգալիա"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Աղյուսե փարոս՝ ծովի ֆոնի վրա"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Դիտեք հյուրանոցներն ըստ նպատակակետի"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Թույլատրել"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Խնձորի կարկանդակ"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Չեղարկել"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Չիզքեյք"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Շոկոլադե բրաունի"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Ընտրեք ձեր սիրած աղանդերը ստորև ցանկից։ Ձեր ընտրությունը կօգտագործվի մոտակայքում գտնվող օբյետկտները կարգավորելու համար։"),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Հեռացնել"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Չթույլատրել"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Ընտրեք սիրած աղանդերը"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Ձեր ընթացիկ գտնվելու վայրը կցուցադրվի քարտեզի վրա և կօգտագործվի երթուղիների, ճշգրիտ որոնման արդյունքների և ճանապարհի տևողության համար։"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Քարտեզներին հասանելի դարձնե՞լ ձեր տեղադրությանը, երբ օգտագործում եք հավելվածը"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Տիրամիսու"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Կոճակ"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Ֆոնով"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Ցուցադրել ծանուցումը"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Զրույց"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Գլխավոր էջ"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Պրոֆիլ"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Կալցիում (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Կալորիաներ"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Ածխաջրեր (գ)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Աղանդեր (1 բաժին)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Ճարպեր (գ)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Երկաթ (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Սպիտակուցներ (գ)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Նատրիում (մգ)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Սնունդ"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Խնձորի կարկանդակ"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Կեքս"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Օղաբլիթ"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Էկլեր"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Սառեցված յոգուրտ"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Կոճապղպեղի անուշահաց"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Մեղրաբջիջ"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Պաղպաղակի սենդվիչ"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Ժելե-կոնֆետներ"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Սառնաշաքար"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Հպեք՝ սալիկները փոփոխելու համար։ Համայնապատկերումը կառավարեք ժեստերի միջոցով։ Մասշտաբը կարգավորելու համար կարող եք մոտեցնել կամ հեռացնել մատները։ Երկու մատների օգնությամբ կարող եք նաև պտտել օբյեկտը։ Սկզբնական պարամետրերին վերադառնալու համար սեղմեք վերակայման կոճակը։"),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Փոփոխել սալիկը"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Վերակայել փոխակերպումները"),
        "demo2dTransformationsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Համայնապատկերում, մասշտաբավորում, պտտում"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D փոխակերպումներ"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Գործողությունների ինտերակտիվ չիպերը կարգավորումների խումբ են, որոնք ակտիվացնում են հիմնական բովանդակության հետ կապված գործողություններ։ Այս չիպերը պետք է հայտնվեն դինամիկ կերպով և լրացնեն միջերեսը։"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Գործողության չիպ"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ծանուցումների երկխոսության պատուհանը տեղեկացնում է օգտատիրոջը ուշադրության արժանի իրադարձությունների մասին։ Այն կարող է ունենալ վերնագիր, ինչպես նաև հասանելի գործողությունների ցանկ։"),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ծանուցում"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ծանուցում վերնագրով"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Ազդերիզը ցուցադրում է կարևոր, համառոտ հաղորդագրություն և գործողությունների ցանկ, որոնք պետք է կատարեն օգտատերերը (նրանք կարող են նաև փակել ազդերիզը)։ Առանց օգտատիրոջ գործողության հնարավոր չէ փակել ազդերիզը։"),
        "demoBannerSubtitle":
            MessageLookupByLibrary.simpleMessage("Ազդերիզի ցուցադրում ցանկում"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Ազդերիզ"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Հավելվածների ստորին գոտում կարելի է տեղակայել նավարկման դարակը և մինչև չորս գործողություն, այդ թվում գործողության լողացող կոճակը։"),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Էկրանի ներքևի հատվածում ցուցադրում է նավարկման տարրերն ու հասանելի գործողությունները"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Հավելվածների ստորին գոտի"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Էկրանի ներքևի հատվածի նավարկման գոտում կարող է տեղավորվել ծառայության երեքից հինգ բաժին։ Ընդ որում դրանցից յուրաքանչյուրը կունենա առանձին պատկերակ և տեքստ (պարտադիր չէ)։ Եթե օգտատերը սեղմի պատկերակներից որևէ մեկի վրա, ապա կանցնի համապատասխան բաժին։"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Ստատիկ պիտակներ"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Ընտրված պիտակ"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Նավիգացիա էկրանի ներքևի հատվածում՝ սահուն անցումով"),
        "demoBottomNavigationTitle": MessageLookupByLibrary.simpleMessage(
            "Նավիգացիա էկրանի ներքևի հատվածում"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Ավելացնել"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ՑՈՒՑԱԴՐԵԼ ՆԵՐՔԵՎԻ ԹԵՐԹԸ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Էջագլուխ"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Ներքևի մոդալ թերթը կարելի է օգտագործել ընտրացանկի կամ երկխոսության պատուհանի փոխարեն։ Այսպիսի թերթն օգտատիրոջն օգնում է ավելի արագ անցնել անհրաժեշտ բաժիններ։"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Ներքևի մոդալ թերթ"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ներքևի ստատիկ թերթը ցույց է տալիս հավելվածի հիմնական բաժինները։ Այսպիսի թերթը միշտ կլինի էկրանի ներքևի հատվածում (նույնիսկ այն դեպքերում, երբ օգտատերը անցնում է մեկ բաժնից մյուսը)։"),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Ներքևի ստատիկ թերթ"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ներքևի ստատիկ և մոդալ թերթեր"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Ներքևի թերթ"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Տեքստային դաշտեր"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Հարթ, բարձրացված, ուրվագծային և այլն"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Կոճակներ"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Քարտը մի թերթիկ է, որը պարունակում է առչնվող տեղեկություններ որևէ բանի (օր․՝ ալբոմի, գտնվելու վայրի, ճաշատեսակի, կոնտակտային տվյալների) մասին։"),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Հիմնական քարտեր՝ կլորացված անկյուններով"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Քարտեր"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Ստուգաթերթ պարունակող ընտրացանկ"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Կոմպակտ տարրեր, որոնք ներկայացնում են մուտքագրում, հատկանիշ կամ գործողություն"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Չիպեր"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Ընտրության ինտերակտիվ չիպերը ներկայացնում են հավաքածուից ընտրված մեկ տարբերակ։ Այս չիպերը պարունակում են առնչվող նկարագրական տեքստ կամ կատեգորիաներ։"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Ընտրության չիպ"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ընթացքի՝ Material Design-ի ոճով շրջանաձև ցուցիչը ցույց է տալիս, որ հավելվածը մշակում է օգտատիրոջ հարցումը։"),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Ընթացքի շրջանաձև ցուցիչ"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Դեմո կոդ"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Պատճենվեց սեղմատախտակին։"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ՊԱՏՃԵՆԵԼ ԱՄԲՈՂՋԸ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Գույների և երանգների հաստատուն պարամետրեր, որոնք ներկայացնում են Material Design-ի գունապնակը։"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Բոլոր նախասահմանված գույները"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Գույներ"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Տեղային ընտրացանկ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Գործողությունների ցանկը ծանուցման հատուկ տեսակ է, որում օգտատիրոջն առաջարկվում է գործողությունների առնվազն երկու տարբերակ՝ կախված կոնտեքստից։ Ցանկը կարող է ունենալ վերնագիր, լրացուցիչ հաղորդագրություն, ինչպես նաև հասանելի գործողությունների ցանկ։"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Գործողությունների ցանկ"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Գործողությունների՝ iOS-ի ոճով ցուցիչ, որը պտտվում է ժամացույցի սլաքի ուղղությամբ։"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Գործողությունների՝ iOS-ի ոճով ցուցիչներ"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Գործողությունների ցուցիչ"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Միայն ծանուցումներով կոճակներ"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Ծանուցում կոճակներով"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Ծանուցումների երկխոսության պատուհանը տեղեկացնում է օգտատիրոջը ուշադրության արժանի իրադարձությունների մասին։ Այն կարող է ունենալ վերնագիր և բովանդակություն, ինչպես նաև հասանելի գործողությունների ցանկ։ Վերնագիրը ցուցադրվում է բովանդակության վերևում, իսկ գործողությունները՝ ներքևում։"),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Ծանուցում"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Վերնագրով ծանուցում"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-ի ոճով ծանուցումների երկխոսության պատուհաններ"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Ծանուցումներ"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-ի ոճով կոճակ։ Պարունակում է տեքստ և/կամ պատկերակ, որը հայտնվում և անհետանում է սեղմելու դեպքում։ Կարող է նաև ֆոն ունենալ։"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ի ոճով կոճակներ"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Կոճակներ"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS-ի ոճով նավարկման գոտի։ Նավարկման գոտին գտնվում է գործիքագոտու մեջտեղում և հնարավորինս փոքր տարբերակով պարունակում է էջի վերնագիրը։"),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ի ոճով նավարկման գոտի"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Նավարկման գոտի"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Ամսաթիվ"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Ամսաթիվ և ժամ"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-ի ոճով ընտրիչի վիջեթ, որի միջոցով կարելի է ընտրել ամսաթվեր, ժամեր կամ ամսաթիվն ու ժամը միասին։"),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-ի ոճով ամսաթվի և ժամի ընտրիչներ"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Ժամ"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Ժամաչափ"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Ընտրիչներ"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Վիջեթ, որը կառավարում է iOS-ի ոճով «Քաշել՝ թարմացնելու համար» բովանդակությունը։"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-ի ոճով «Քաշել՝ թարմացնելու համար» կառավար"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Քաշել՝ թարմացնելու համար"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Թույլ է տալիս ընտրություն անել մի քանի իրար բացառող տարբերակների միջև։ Երբ սեգմենտավորված կառավարման տարրում մեկ տարբերակ է ընտրված, մյուս տարբերակները չեն ընդծգվում։"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-ի ոճով սեգմենտավորված կառավարման տարր"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "Կառավարման սեգմենտավորված տարր"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Սահիչի միջոցով նշված միջակայքում կարելի է որոշակի արժեք ընտրել։"),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ի ոճով սահիչ"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Սահիչ"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Փոխանջատիչի միջոցով կարելի է միացնել կամ անջատել առանձին կարգավորումներ։"),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ի ոճով փոխանջատիչ"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-ի ոճի ստորին նավարկման ներդիրի գոտի։ Ցուցադրում է մի քանի ներդիրներ, որոնցից մեկն ակտիվ է։ Ըստ կանխադրման՝ ակտիվ է համարվում առաջին ներդիրը։"),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-ի ոճով ստորին ներդիրի գոտի"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Ներդիրների գոտի"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Տեքստային դաշտը օգտատիրոջը թույլ է տալիս մուտքագրել տեքստ սովորական կամ էկրանային ստեղնաշարի օգնությամբ։"),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN կոդ"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ի ոճով տեքստային դաշտեր"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Տեքստային դաշտեր"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Սահիչները թույլ են տալիս ընտրել արժեքներից որևէ մեկը կամ նշել արժեքների միջակայքը։ Սահիչները կարելի է անհատականացնել սեփական թեմայով և կարգավորումներով։"),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Հատուկ սահիչներ"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Տվյալների աղյուսակները ցուցադրում են տեղեկություններ տողերի և սյունակների ցանցի տեսքով։ Դրանք տեսակավորում են տեղեկություններն այնպես, որ հեշտ լինի որոնում կատարելը, ինչպես նաև նմուշներ և վիճակագրություն գտնելը։"),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Տեղեկություններ պարունակող տողեր և սյունակներ"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Տվյալների աղյուսակներ"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Ցուցադրում է երկխոսության պատուհան, որը պարունակում է Material Design-ի ոճով ամսաթվի ընտրիչ։"),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Ամսաթվի ընտրիչ"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Պարզ, ծանուցումներով և լիաէկրան"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Երկխոսության պատուհաններ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API-ների փաստաթղթեր"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Զտիչների ինտերակտիվ չիպերը պիտակներ կամ նկարագրող բառեր են օգտագործում՝ բովանդակությունը զտելու համար։"),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Զտիչի չիպ"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Սեղմելու դեպքում հարթ կոճակը չի բարձրանում։ Դրա փոխարեն էկրանին հայտնվում է թանաքի հետք։ Այսպիսի կոճակներն օգտագործեք գործիքագոտիներում, երկխոսության պատուհաններում և տեղադրեք դրանք դաշտերում։"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Հարթ կոճակ"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Լողացող գործողության կոճակը շրճանաձև պատկերակով կոճակ է, որը ցուցադրվում է բովանդակության վրա և թույլ է տալիս ընդգծել ամենակարևոր գործողությունը հավելվածում։"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Գործողության լողացող կոճակ"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog պարամետրը հատկորոշում է, թե արդյոք հաջորդ էկրանը պետք է լինի լիաէկրան մոդալ երկխոսության պատուհան։"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Լիաէկրան"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Լիաէկրան ռեժիմ"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Ցանցաձև ցանկերը հարմարեցված են միատեսակ տվյալների (սովորաբար պատկերների) ցուցադրման համար։ Ցանցաձև ցանկի տարրերը կոչվում են սալիկներ։"),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Էջատակով"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Էջագլխով"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Միայն պատկերներ"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Տողերի և սյունակների դասավորությունը"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Ցանցաձև ցանկեր"),
        "demoInfoTooltip":
            MessageLookupByLibrary.simpleMessage("Տեղեկություններ"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Մուտքագրման ինտերակտիվ չիպերը հակիրճ ձևով ընդհանուր տեղեկություններ են տալիս օբյեկտի (օր․՝ անձի, վայրի, առարկայի) կամ նամակագրության տեքստի մասին։"),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Մուտքագրման չիպ"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Չհաջողվեց ցուցադրել URL-ը՝"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ընթացքի՝ Material Design-ի ոճով գծային ցուցիչ, որը նաև անվանում են ընթացագոտի։"),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Ընթացքի գծային ցուցիչ"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Ֆիքսված բարձրությամբ մեկ տող, որը սովորաբար պարունակում է տեքստ, ինչպես նաև պատկերակ՝ տեքստի սկզբում կամ վերջում։"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Երկրորդական տեքստ"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ոլորման ցանկի դասավորություններ"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Ցանկեր"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Ընտրացանկի ոչ ակտիվ տարր"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Ստուգաթերթ պարունակող ընտրացանկով տարր"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("Տեղային ընտրացանկով տարր"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Բաժիններ պարունակող ընտրացանկով տարր"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Պարզ ընտրացանկով տարր"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("Տեղային ընտրացանկի տարր 1"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("Տեղային ընտրացանկի տարր 2"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Ընտրացանկը ցուցադրում է ընտրանքների ցանկ ժամանակավոր մակերեսին։ Դրանք ցուցադրվում են, երբ օգտատերերը սեղմում են կոճակին կամ այլ գործողություն են կատարում։"),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("չորս"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Ստանալ հղումը"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Ընտրացանկի տարր 1"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Ընտրացանկի տարր 3"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Ընտրացանկի տարր 2"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("մեկ"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Դիտել"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Ջնջել"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Կիսվել"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ընտրացանկի կոճակներ և պարզ ընտրացանկեր"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("երեք"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Ընտրացանկ"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("երկու"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Մեկ գիծ"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Հպեք այստեղ և դիտեք հնարավոր ընտրանքները ցուցադրական տարբերակի համար։"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Դիտեք ընտրանքները"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Ընտրանքներ"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ուրվագծային կոճակները սեղմելիս դառնում են անթափանց և բարձրանում են։ Դրանք հաճախ օգտագործվում են բարձրացված կոճակների հետ՝ որևէ լրացուցիչ, այլընտրանքային գործողություն ընդգծելու համար։"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ուրվագծային կոճակ"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("ՑՈՒՑԱԴՐԵԼ ԸՆՏՐԻՉԸ"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Ամսաթվի և ժամի ընտրություն"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Ընտրիչներ"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("Գծային, շրջանաձև և անորոշ"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Ընթացքի ցուցիչներ"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Բարձրացված կոճակները թույլ են տալիս հարթ մակերեսները դարձնել ավելի ծավալային, իսկ հագեցած և լայն էջերի գործառույթները՝ ավելի տեսանելի։"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Բարձրացված կոճակ"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Սահիչները թույլ են տալիս ընտրել անհրաժեշտ արժեքը տրված միջակայքում։ Պարզության համար, միջակայքի եզրերով կարող եք տեղակայել պատկերակներ։ Սահիչների օգնությամբ հեշտությամբ կարող եք կարգավորել ձայնի մակարդակը, պայծառությունն ու պատկերների զտիչները։"),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Միջակայքի սահիչներ"),
        "demoSectionedMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Բաժիններ պարունակող ընտրացանկ"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Նշավանդակների միջոցով օգտատերը կարող է ցանկից ընտրել մի քանի կարգավորումներ։ Նշավանդակը սովորաբար ունենում է true կամ false կարգավիճակը, և որոշ դեպքերում երրորդ արժեքը՝ null։"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Նշավանդակ"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Կետակոճակների միջոցով օգտատերը կարող է ընտրել մեկ կարգավորում ցանկից։ Օգտագործեք կետակոճակները, եթե կարծում եք, որ օգտատիրոջն անհրաժեշտ է տեսնել բոլոր հասանելի կարգավորումներն իրար կողքի։"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Ռադիո"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Նշավանդակներ, կետակոճակներ և փոխանջատիչներ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Փոխանջատիչի միջոցով կարելի է միացնել կամ անջատել առանձին կարգավորումներ։ Կարգավորման անվանումը և կարգավիճակը պետք է պարզ երևան փոխանջատիչի կողքին։"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Փոխանջատիչ"),
        "demoSelectionControlsTitle": MessageLookupByLibrary.simpleMessage(
            "Ընտրության կառավարման տարրեր"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Սովորական երկխոսության պատուհանում օգտատիրոջն առաջարկվում է ընտրության մի քանի տարբերակ։ Եթե պատուհանն ունի վերնագիր, այն ցուցադրվում է տարբերակների վերևում։"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Պարզ"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Պարզ ընտրացանկ"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Շարունակական"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Միջակայքի շարունակական սահիչ՝ անհատականացված թեմայով"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Շարունակական սահիչ՝ թվային արժեքը խմբագրելու հնարավորությամբ"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Սահիչները թույլ են տալիս ընտրել անհրաժեշտ արժեքը տրված միջակայքում։ Սահիչների օգնությամբ հեշտությամբ կարող եք կարգավորել ձայնի մակարդակը, պայծառությունն ու պատկերների զտիչները։"),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Դիսկրետ"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Դիսկրետ սահիչ՝ անհատականացված թեմայով"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Թվային արժեք"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Որոշակի արժեք ընտրելու համար օգտատերը պետք է մատն էկրանի վրայով սահեցնի"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Սահիչներ"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Դուք սեղմեցիք ծանուցումների տողի կոճակին։"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ԿՈՃԱԿ"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "ՑՈՒՑԱԴՐԵԼ ԾԱՆՈՒՑՈՒՄՆԵՐԻ ՏՈՂԸ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Ծանուցումների տողերը օգտատերերին տեղեկացնում են հավելվածում կատարված կամ կատարվելիք գործողությունների մասին։ Դրանք հայտնվում են կարճ ժամանակով էկրանի ներքևի հատվածում։ Ծանուցումների տողերը չեն շեղում օգտատերերին, և դրանք փակելու կարիք չկա։"),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ծանուցումների տողերի հաղորդագրությունները ցուցադրվում են էկրանի ներքևի հատվածում"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Սա ծանուցումների տող է։"),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Ծանուցումների տողեր"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Ներդիրները թույլ են տալիս դասավորել էկրանների, տվյալակազմերի բովանդակությունը և այլն։"),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Առանց ոլորման"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Ոլորում"),
        "demoTabsSubtitle":
            MessageLookupByLibrary.simpleMessage("Առանձին ոլորվող ներդիրներ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Ներդիրներ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Տեքստային դաշտերի օգնությամբ օգտատերերը կարող են լրացնել ձևեր և մուտքագրել տվյալներ երկխոսության պատուհաններում։"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Էլ․ հասցե"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Մուտքագրեք գաղտնաբառը։"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "Մուտքագրեք ԱՄՆ հեռախոսահամար հետևյալ ձևաչափով՝ (###) ###-####։"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Նախքան ձևն ուղարկելը շտկեք կարմիր գույնով նշված սխալները։"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Թաքցնել գաղտնաբառը"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Երկար-բարակ պետք չէ գրել, սա ընդամենը տեքստի նմուշ է։"),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Կենսագրություն"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Անուն*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired": MessageLookupByLibrary.simpleMessage(
            "Մուտքագրեք անունը (պարտադիր է)։"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Առավելագույնը 8 նիշ։"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Օգտագործեք միայն տառեր։"),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Գաղտնաբառ*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Գաղտնաբառերը չեն համընկնում"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Հեռախոսահամար*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* պարտադիր դաշտ"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Կրկին մուտքագրեք գաղտնաբառը*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("Աշխատավարձ"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ցույց տալ գաղտնաբառը"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ՈՒՂԱՐԿԵԼ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Տեքստի և թվերի խմբագրման մեկ տող"),
        "demoTextFieldTellUsAboutYourself":
            MessageLookupByLibrary.simpleMessage(
                "Պատմեք ձեր մասին (օր․՝ ինչ հոբբի ունեք)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Տեքստային դաշտեր"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Ի՞նչ է ձեր անունը"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Ի՞նչ համարով կարելի է կապվել ձեզ հետ"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Ձեր էլ. հասցեն"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Ցուցադրում է երկխոսության պատուհան, որը պարունակում է Material Design-ի ոճով ժամի ընտրիչ։"),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Ժամի ընտրիչ"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Փոխարկման կոճակների օգնությամբ հնարավոր է խմբավորել նմանատիպ ընտրանքները։ Մեկը մյուսի հետ կապ ունեցող փոխարկման կոճակները պետք է ունենան ընդհանուր զետեղարան։"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Փոխարկման կոճակներ"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Հուշումները տեքստային պիտակների օգնությամբ նկարագրում են կոճակի գործառույթը և միջերեսի մյուս գործողությունները։ Հուշումներում ցուցադրվում են տեքստ պարունակող տեղեկություններ, երբ օգտատերը նշորդն անց է կացնում տարրի վրայով, պահում կամ երկար սեղմում դրա վրա։"),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Երկար սեղմեք կամ նշորդն անցկացրեք՝ հուշումները ցուցադրելու համար։"),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Կարճ հաղորդագրություն, որը ցուցադրվում է երկար սեղմման կամ նշորդն անցկացնելու դեպքում"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Հուշումներ"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Երկու գիծ"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Սահմանումներ Material Design-ում առկա տարբեր տառատեսակների համար։"),
        "demoTypographySubtitle":
            MessageLookupByLibrary.simpleMessage("Տեքստի բոլոր ստանդարտ ոճերը"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Տառատեսակներ"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Ավելացնել հաշիվ"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ԸՆԴՈՒՆԵԼ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ՉԵՂԱՐԿԵԼ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ՉԵՂԱՐԿԵԼ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ՀԵՌԱՑՆԵԼ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Հեռացնե՞լ սևագիրը:"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Երկխոսության լիաէկրան պատուհանի դեմո"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ՊԱՀԵԼ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Լիաէկրան երկխոսության պատուհան"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google-ին տեղադրության անանուն տվյալների ուղարկումը թույլ է տալիս հավելվածներին ավելի ճշգրիտ որոշել ձեր գտնվելու վայրը։ Տվյալները կուղարկվեն, նույնիսկ երբ ոչ մի հավելված գործարկված չէ։"),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Օգտագործե՞լ Google-ի տեղորոշման ծառայությունը"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Պահուստավորման հաշվի կարգավորում"),
        "dialogShow": MessageLookupByLibrary.simpleMessage(
            "ՑՈՒՑԱԴՐԵԼ ԵՐԿԽՈՍՈՒԹՅԱՆ ՊԱՏՈՒՀԱՆԸ"),
        "dismiss": MessageLookupByLibrary.simpleMessage("ՓԱԿԵԼ"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Նորությունների հավելված, որում կարևորը բովանդակությունն է"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Կանաչ բանակի ներքին բարեփոխումներ"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Գյուղատնտեսության մեջ մեղուների պակաս է գրանցվել"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Դիզայներներն օգտագործում են նոր տեխնոլոգիաները՝ ֆուտուրիստական գործվածքներ ստեղծելու համար"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Ֆեմինիստները պարտիզանական պատերազմի են պատրաստվում"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("Բենզինի ապագան"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "Առողջապահության համակարգի հանգիստ, բայց լուրջ հետևանքներով հեղափոխություն"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Բաժնետոմսերի փոխարժեքի ստագնացիայի պատճառով շատերը նախընտրությունը տալիս են արժույթին"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Պատերազմի հետևանքով բաժանված ամերիկացիների կյանքը"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Վերջին թարմացումները"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Բիզնես"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Մշակույթ"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Առաջին էջ"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Քաղաքականություն"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Գիտություն"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Սպորտ"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Տեխնոլոգիաներ"),
        "fortnightlyMenuTravel":
            MessageLookupByLibrary.simpleMessage("Ճանապարհորդություն"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("ԱՄՆ"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("Աշխարհ"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("GreenArmy"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("HealthcareRevolution"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Reform"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Stocks"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("TechDesign"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ՈՃԵՐ ԵՎ ԱՅԼՆ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Կատեգորիաներ"),
        "homeHeaderGallery":
            MessageLookupByLibrary.simpleMessage("Պատկերասրահ"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Ծովափ"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Բրոնզե աշխատանքներ"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Չեննայ"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Չետինադ"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Ձկնորս"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Ծաղիկների շուկա"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Ճաշի պատրաստում"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Շուկա"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Պոնդիչերի"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Աղի հանք"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Մոտոցիկլետներ"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("Մետաքսագործ"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Թանջավուր"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Թանջավուրի տաճար"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings": MessageLookupByLibrary.simpleMessage(
            "Խնայողություններ ավտոմեքենայի համար"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Բանկային հաշիվ"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Խնայողություններ տան համար"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Արձակուրդ"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Հաշվի սեփականատեր"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Տարեկան տոկոսային եկամտաբերությունը"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Անցած տարի վճարված տոկոսներ"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Տոկոսադրույք"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Տոկոսադրույքը տարեսկզբից"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Հաջորդ քաղվածքը"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Ընդամենը"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Հաշիվներ"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Ծանուցումներ"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Վճարման ենթակա գումարը"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Վճարված գումարը"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Ընդհանուր գումարը"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Հաշիվներ"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Վերջնաժամկետ"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Հագուստ"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Սրճարաններ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Մթերք"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ռեստորաններ"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Մնացած գումարը"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Օգտագործված գումարը"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Ընդհանուր սահմանաչափ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Մնացել է"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Բյուջեներ"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Բյուջեի պլանավորման հավելված"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ՄՆԱՑԵԼ Է"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("ՄՈՒՏՔ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Մուտք"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Մուտք Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Չունե՞ք հաշիվ"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Գաղտնաբառ"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Հիշել ինձ"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("ԳՐԱՆՑՎԵԼ"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("Օգտանուն"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ՏԵՍՆԵԼ ԲՈԼՈՐԸ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Դիտել բոլոր հաշիվները"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Դիտել բոլոր վճարումները"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Դիտել բոլոր բյուջեները"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Գտնել բանկոմատներ"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Օգնություն"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Հաշիվների կառավարում"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Ծանուցումներ"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Վիրտուալ կարգավորումներ"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Անցակոդ և Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Անձնական տվյալներ"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Դուրս գալ"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Հարկային փաստաթղթեր"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ՀԱՇԻՎՆԵՐ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ՀԱՇԻՎՆԵՐ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ԲՅՈՒՋԵՆԵՐ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ՀԱՄԱՏԵՍՔ"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("ԿԱՐԳԱՎՈՐՈՒՄՆԵՐ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery-ի մասին"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Դիզայնը՝ TOASTER (Լոնդոն)"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Փակել կարգավորումները"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Կարգավորումներ"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Մուգ"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Կարծիք հայտնել"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Բաց"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage(
            "Տարածաշրջանային կարգավորումներ"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Հարթակ"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Դանդաղեցում"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Համակարգ"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Տեքստի ուղղությունը"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Ձախից աջ"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Տարածաշրջանային կարգավորումներ"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Աջից ձախ"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Տեքստի մասշտաբավորում"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Շատ մեծ"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("Մեծ"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Սովորական"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Փոքր"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Թեմա"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Կարգավորումներ"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ՉԵՂԱՐԿԵԼ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ԴԱՏԱՐԿԵԼ ԶԱՄԲՅՈՒՂԸ"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("ԶԱՄԲՅՈՒՂ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Առաքում՝"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Ենթագումար՝"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Հարկ՝"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("ԸՆԴԱՄԵՆԸ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ԼՐԱՍԱՐՔԵՐ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ԲՈԼՈՐԸ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ՀԱԳՈՒՍՏ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ՏՈՒՆ"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("Ոճային իրեր գնելու հավելված"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Գաղտնաբառ"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Օգտանուն"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ԵԼՔ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("ԸՆՏՐԱՑԱՆԿ"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("ԱՌԱՋ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Կապույտ գավաթ"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Դեղձագույն շապիկ"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Բամբակյա անձեռոցիկներ"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Բամբակյա վերնաշապիկ"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Դասական սպիտակ բլուզ"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Բեժ սվիտեր"),
        "shrineProductCopperWireRack": MessageLookupByLibrary.simpleMessage(
            "Պղնձե մետաղալարերից պատրաստված զամբյուղ"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Զոլավոր շապիկ"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Այգու ճոպաններ"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Գետսբի գլխարկ"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Ջենթրի ոճի բաճկոն"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Սեղանի հավաքածու"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Կոճապղպեղի գույնի շարֆ"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Մոխրագույն շապիկ"),
        "shrineProductHurrahsTeaSet": MessageLookupByLibrary.simpleMessage(
            "Hurrahs թեյի սպասքի հավաքածու"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Խոհանոցային հավաքածու"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Մուգ կապույտ տաբատ"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Մարմնագույն տունիկա"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Կլոր սեղան"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Ջրհորդան"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona բլուզ"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Թեթև սվիտեր"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Ծովի ալիքների գույնի սվիտեր"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Ազատ թևքով շապիկ"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Հոբո պայուսակ"),
        "shrineProductSootheCeramicSet": MessageLookupByLibrary.simpleMessage(
            "Կերամիկական սպասքի հավաքածու"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella արևային ակնոց"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Ականջօղեր"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Սուկուլենտների տնկարկներ"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Ամառային զգեստ"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Ծովի ալիքների գույնի շապիկ"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Թիկնապայուսակ"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Սպորտային գուլպաներ"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Սպիտակ թեթև բաճկոն"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Բանալու հյուսածո կախազարդ"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Սպիտակ գծավոր վերնաշապիկ"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Կաշվե գոտի"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Ավելացնել զամբյուղում"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Փակել զամբյուղը"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Փակել ընտրացանկը"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Բացել ընտրացանկը"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Հեռացնել ապրանքը"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Որոնել"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Կարգավորումներ"),
        "signIn": MessageLookupByLibrary.simpleMessage("ՄՈՒՏՔ"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Հարմարվողական մոդել"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Հիմնական տեքստ"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ԿՈՃԱԿ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Խորագիր"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Ենթավերնագիր"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Անուն"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Գործարկման հավելված"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Ավելացնել"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Ընտրանի"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Որոնում"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Կիսվել")
      };
}
