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

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Ռեստորաններ չկան', one: '1 ռեստորան', other: '${totalRestaurants} ռեստորան')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Առանց կանգառի', one: '1 կանգառ', other: '${numberOfStops} կանգառ')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Հասանելի հյուրանոցներ չկան', one: '1 հասանելի հյուրանոց', other: '${totalProperties} հասանելի հյուրանոց')}";

  static m5(value) => "${value}";

  static m6(error) => "Չհաջողվեց պատճենել սեղմատախտակին՝ ${error}";

  static m7(name, phoneNumber) => "${name}՝ ${phoneNumber}";

  static m8(value) => "Դուք ընտրել եք՝ «${value}»";

  static m9(accountName, accountNumber, amount) =>
      "${amount} գումարի ${accountName} հաշիվ (${accountNumber})։";

  static m10(amount) =>
      "Այս ամիս դուք բանկոմատների միջնորդավճարների վրա ծախսել եք ${amount}։";

  static m11(percent) =>
      "Հրաշալի է։ Անցած ամսվա համեմատ՝ այս ամիս ձեր հաշվին ${percent}-ով ավել գումար կա։";

  static m12(percent) =>
      "Ուշադրությո՛ւն։ Դուք ծախսել եք այս ամսվա բյուջեի ${percent}-ը։";

  static m13(amount) => "Դուք այս շաբաթ ռեստորաններում ծախսել եք ${amount}։";

  static m14(count) =>
      "${Intl.plural(count, one: 'Ավելացրեք հարկային հնարավոր նվազեցման գումարը։ Նշանակեք կատեգորիաներ 1 չբաշխված գործարքի համար։', other: 'Ավելացրեք հարկային հնարավոր նվազեցման գումարը։ Նշանակեք կատեգորիաներ ${count} չբաշխված գործարքի համար։')}";

  static m15(billName, date, amount) =>
      "${amount} գումարի ${billName} հաշիվը պետք է վճարվի՝ ${date}։";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Բյուջե՝ ${budgetName}։ Ծախսվել է ${amountUsed}՝ ${amountTotal}-ից։ Մնացել է՝ ${amountLeft}։";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'ԱՊՐԱՆՔՆԵՐ ՉԿԱՆ', one: '1 ԱՊՐԱՆՔ', other: '${quantity} ԱՊՐԱՆՔ')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Քանակը՝ ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Զամբյուղը դատարկ է', one: 'Զամբյուղում 1 ապրանք կա', other: 'Զամբյուղում ${quantity} ապրանք կա')}";

  static m21(product) => "${product}՝ հեռացնել";

  static m22(value) => "${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter-ի նմուշներ Github շտեմարանից"),
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
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Դիտեք ռեստորաններն ըստ նպատակակետի"),
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
        "craneFlyStops": m3,
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
        "craneSleepProperties": m4,
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
        "demoBottomSheetItem": m5,
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
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Կոմպակտ տարրեր, որոնք ներկայացնում են մուտքագրում, հատկանիշ կամ գործողություն"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Չիպեր"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Ընտրության ինտերակտիվ չիպերը ներկայացնում են հավաքածուից ընտրված մեկ տարբերակ։ Այս չիպերը պարունակում են առնչվող նկարագրական տեքստ կամ կատեգորիաներ։"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Ընտրության չիպ"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Կոդի օրինակ"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Պատճենվեց սեղմատախտակին։"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ՊԱՏՃԵՆԵԼ ԱՄԲՈՂՋԸ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Գույների և երանգների հաստատուն պարամետրեր, որոնք ներկայացնում են Material Design-ի գունապնակը։"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Բոլոր նախասահմանված գույները"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Գույներ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Գործողությունների ցանկը ծանուցման հատուկ տեսակ է, որում օգտատիրոջն առաջարկվում է գործողությունների առնվազն երկու տարբերակ՝ կախված կոնտեքստից։ Ցանկը կարող է ունենալ վերնագիր, լրացուցիչ հաղորդագրություն, ինչպես նաև հասանելի գործողությունների ցանկ։"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Գործողությունների ցանկ"),
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
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Թույլ է տալիս ընտրություն անել մի քանի իրար բացառող տարբերակների միջև։ Երբ սեգմենտավորված կառավարման տարրում մեկ տարբերակ է ընտրված, մյուս տարբերակները չեն ընդծգվում։"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-ի ոճով սեգմենտավորված կառավարման տարր"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage(
                "Սեգմենտավորված կառավարման տարր"),
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
        "demoInfoTooltip":
            MessageLookupByLibrary.simpleMessage("Տեղեկություններ"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Մուտքագրման ինտերակտիվ չիպերը հակիրճ ձևով ընդհանուր տեղեկություններ են տալիս օբյեկտի (օր․՝ անձի, վայրի, առարկայի) կամ նամակագրության տեքստի մասին։"),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Մուտքագրման չիպ"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Չհաջողվեց ցուցադրել URL-ը՝"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Ֆիքսված բարձրությամբ մեկ տող, որը սովորաբար պարունակում է տեքստ, ինչպես նաև պատկերակ՝ տեքստի սկզբում կամ վերջում։"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Երկրորդական տեքստ"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ոլորման ցանկի դասավորություններ"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Ցանկեր"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Մեկ գիծ"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tap here to view available options for this demo."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("View options"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("Ընտրանքներ"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ուրվագծային կոճակները սեղմելիս դառնում են անթափանց և բարձրանում են։ Դրանք հաճախ օգտագործվում են բարձրացված կոճակների հետ՝ որևէ լրացուցիչ, այլընտրանքային գործողություն ընդգծելու համար։"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ուրվագծային կոճակ"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Բարձրացված կոճակները թույլ են տալիս հարթ մակերեսները դարձնել ավելի ծավալային, իսկ հագեցած և լայն էջերի գործառույթները՝ ավելի տեսանելի։"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Բարձրացված կոճակ"),
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
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Ներդիրները թույլ են տալիս դասավորել էկրանների, տվյալակազմերի բովանդակությունը և այլն։"),
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
        "demoTextFieldNameHasPhoneNumber": m7,
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
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Փոխարկման կոճակների օգնությամբ հնարավոր է խմբավորել նմանատիպ ընտրանքները։ Մեկը մյուսի հետ կապ ունեցող փոխարկման կոճակները պետք է ունենան ընդհանուր զետեղարան։"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Փոխարկման կոճակներ"),
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
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Պահուստավորման հաշվի կարգավորում"),
        "dialogShow": MessageLookupByLibrary.simpleMessage(
            "ՑՈՒՑԱԴՐԵԼ ԵՐԿԽՈՍՈՒԹՅԱՆ ՊԱՏՈՒՀԱՆԸ"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ՏԵՂԵԿԱՏՈՒՆԵՐ ԵՎ ՄԵԴԻԱ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Կատեգորիաներ"),
        "homeHeaderGallery":
            MessageLookupByLibrary.simpleMessage("Պատկերասրահ"),
        "rallyAccountAmount": m9,
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
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Հաշիվներ"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Վերջնաժամկետ"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Հագուստ"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Սրճարաններ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Մթերք"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Ռեստորաններ"),
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
        "shrineCartItemCount": m17,
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
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
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
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Ավելացնել զամբյուղում"),
        "shrineScreenReaderRemoveProductButton": m21,
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
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Հարմարվողական մոդել"),
        "starterAppDrawerItem": m22,
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
