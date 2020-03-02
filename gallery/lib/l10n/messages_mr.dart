// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a mr locale. All the
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
  String get localeName => 'mr';

  static m0(value) =>
      "या अ‍ॅपसाठी स्रोत कोड पाहण्यासाठी, कृपया ${value} ला भेट द्या.";

  static m1(title) => "${title} टॅबसाठी प्लेसहोल्डर";

  static m2(destinationName) => "एक्सप्लोर करा ${destinationName}";

  static m3(destinationName) => "शेअर करा ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'रेस्टॉरंट नाही', one: 'एक उपाहारगृह', other: '${totalRestaurants} रेस्टॉरंट')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'नॉनस्टॉप', one: 'एक थांबा', other: '${numberOfStops} थांबे')}";

  static m7(hours) => "${Intl.plural(hours, one: '१ता', other: '${hours}ता')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '१मि', other: '${minutes}मि')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'कोणतीही प्रॉपर्टी उपलब्ध नाही', one: 'एक प्रॉपर्टी उपलब्ध आहे', other: '${totalProperties} प्रॉपर्टी उपलब्ध आहेत')}";

  static m10(value) => "मधाचा समावेश असलेले ${value}";

  static m11(value) => "साखरेचा समावेश असलेले ${value}";

  static m12(value) => "आयटम ${value}";

  static m13(error) => "क्लिपबोर्डवर कॉपी करता आला नाही: ${error}";

  static m14(value) => "सतत: ${value}";

  static m15(value) => "भिन्न: ${value}";

  static m16(value) => "तपासलेले: ${value}";

  static m17(value) => "निवडलेले: ${value}";

  static m18(name, phoneNumber) => "${name} फोन नंबर ${phoneNumber} आहे";

  static m19(value) => "तुम्ही निवडली: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "${amount} ${accountName} चे खाते नंबर ${accountNumber} मध्ये जमा केले.";

  static m21(amount) =>
      "तुम्ही या महिन्यात ATM शुल्क म्हणून ${amount} खर्च केले";

  static m22(percent) =>
      "उत्तम कामगिरी! तुमचे चेकिंग खाते मागील महिन्यापेक्षा ${percent} वर आहे.";

  static m23(percent) =>
      "पूर्वसूचना, तुम्ही या महिन्यासाठी तुमच्या खरेदीच्या बजेटचे ${percent} वापरले आहे.";

  static m24(amount) => "तुम्ही या आठवड्यात रेस्टॉरंटवर ${amount} खर्च केले.";

  static m25(count) =>
      "${Intl.plural(count, one: 'तुमची संभाव्य कर कपात वाढवा! एका असाइन न केलेल्या व्यवहाराला वर्गवाऱ्या असाइन करा.', other: 'तुमची संभाव्य कर कपात वाढवा! ${count} असाइन न केलेल्या व्यवहारांना वर्गवाऱ्या असाइन करा.')}";

  static m26(billName, date, amount) =>
      "${billName} च्या ${amount} च्या बिलाची शेवटची तारीख ${date} आहे.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} च्या बजेटच्या एकूण ${amountTotal} मधून ${amountUsed} वापरले गेले आणि ${amountLeft} शिल्लक आहे";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'कोणताही आयटम नाही', one: 'एक आयटम', other: '${quantity} आयटम')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "प्रमाण: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'खरेदीचा कार्ट, कोणतेही आयटम नाहीत', one: 'खरेदीचा कार्ट, एक आयटम आहे', other: 'खरेदीचा कार्ट, ${quantity} आयटम आहेत')}";

  static m32(product) => "${product} काढून टाका";

  static m33(value) => "आयटम ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter नमुने GitHub रेपो"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("गॅलरी मध्ये परत जा"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("सुरुवातीचा आयकन"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("एकाहून अधिक कृती"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("बॅनर रीसेट करा"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "तुमचा पासवर्ड तुमच्या इतर डिव्हाइसवर अपडेट केला गेला आहे. कृपया पुन्हा साइन इन करा."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("नॉच"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "फ्लोटिंग अ‍ॅक्शन बटणाचे स्थान"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("डॉक केलेले - मध्यभागी"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("डॉक केलेले - शेवटी"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("फ्लोटिंग - मध्यभागी"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("फ्लोटिंग - शेवटी"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("खाते"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("अलार्म"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Calendar"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("कॅमेरा"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("टिप्पण्या"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("बटण"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("तयार करा"),
        "cardsDemoExplore":
            MessageLookupByLibrary.simpleMessage("एक्सप्लोर करा"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("निवडण्यायोग्य (दाबून ठेवा)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("टॅप करण्‍यायोग्य"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("तंजावर"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("चेट्टीनाड"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("नंबर १०"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("सिल्क स्पिनर"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("मंदिरे"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("तंजावर, तामिळनाडू"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("शिवगंगा, तामिळनाडू"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "तामिळनाडू मध्ये भेट देण्यासाठी टॉप १० शहरे"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("दक्षिण भारतातील कारागीर"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("बृहदेश्वर मंदिर"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("सायकल चालवणे"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("लिफ्ट"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("फायरप्लेस"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("मोठे"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("मध्यम"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("लहान"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("लाइट सुरू करा"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("वॉशर"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("मातकट रंग"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("निळा"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("निळसर राखाडी"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("तपकिरी"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("निळसर"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("गडद नारिंगी"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("गडद जांभळा"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("हिरवा"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("राखाडी"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("आकाशी निळा"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("फिकट निळा"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("फिकट हिरवा"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("लिंबू रंग"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("नारिंगी"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("गुलाबी"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("जांभळा"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("लाल"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("हिरवट निळा"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("पिवळा"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "पर्सनलाइझ केलेले प्रवास अ‍ॅप"),
        "craneEat": MessageLookupByLibrary.simpleMessage("खाण्याची ठिकाणे"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("नेपल्स, इटली"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "लाकडाचे इंधन असलेल्या ओव्हनमधील पिझ्झा"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("डॅलस, युनायटेड स्टेट्स"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("लिस्बन, पोर्तुगाल"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "भलेमोठे पास्रामी सॅंडविच धरलेली महिला"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "डिनर स्टाइल स्टुल असलेला रिकामा बार"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("कोर्दोबा, अर्जेंटिना"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("बर्गर"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("पोर्टलंड, युनायटेड स्टेट्स"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("कोरियन टाको"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("पॅरिस, फ्रान्स"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("चॉकलेट डेझर्ट"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("सोल, दक्षिण कोरिया"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "कलात्मक रेस्टॉरंटमधील बसण्याची जागा"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("सीएटल, युनायटेड स्‍टेट्‍स"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("कोळंबीची डिश"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("नॅशविल, युनायटेड स्टेट्स"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("बेकरीचे प्रवेशव्दार"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("अटलांटा, युनायटेड स्टेट्स"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("क्रॉफिशने भरलेली प्लेट"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("माद्रिद, स्पेन"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पेस्ट्री ठेवलेला कॅफे काउंटर"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "गंतव्यस्थानानुसार रेस्टॉरंट शोधा"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("उडणे"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("ॲस्पेन, युनायटेड स्टेट्स"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सदाहरित झाडे असलेल्या बर्फाळ प्रदेशातील शॅले"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("बिग सुर, युनायटेड स्टेट्स"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("कैरो, इजिप्त"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सूर्यास्ताच्या वेळी दिसणारे अल-अजहर मशिदीचे मिनार"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("लिस्बन, पोर्तुगाल"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "समुद्रात असलेले विटांचे दीपगृह"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("नापा, युनायटेड स्टेट्स"),
        "craneFly12SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पामच्या झाडांच्या सान्निध्यातील पूल"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("बाली, इंडोनेशिया"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पामच्या झाडांच्या सान्निध्यातील समुद्रकिनाऱ्याच्या बाजूला असलेला पूल"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माळरानावरचा टेंट"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("खुम्बू व्हॅली, नेपाळ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "बर्फाळ डोंगरासमोरील प्रेअर फ्लॅग"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("माचू पिचू, पेरू"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माचू पिचू बालेकिल्ला"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("मेल, मालदीव"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("पाण्यावरील तरंगते बंगले"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("फिट्सनाऊ, स्वित्झर्लंड"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "डोंगरांसमोर वसलेले तलावाशेजारचे हॉटेल"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("मेक्सिको शहर, मेक्‍सिको"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पलासिओ दे बेयास आर्तेसचे विहंगम दृश्य"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "माउंट रशमोर, युनायटेड स्टेट्स"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माउंट रशमोअर"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("सिंगापूर"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("सुपरट्री ग्रोव्ह"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("हवाना, क्यूबा"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "जुन्या काळातील एका निळ्या कारला टेकून उभा असलेला माणूस"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "गंतव्यस्थानानुसार फ्लाइट शोधा"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("तारीख निवडा"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("तारखा निवडा"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("गंतव्यस्थान निवडा"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("खाण्याचे प्रकार"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("स्थान निवडा"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("सुरुवातीचे स्थान निवडा"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("वेळ निवडा"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("प्रवासी"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("स्लीप"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("मेल, मालदीव"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("पाण्यावरील तरंगते बंगले"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("ॲस्पेन, युनायटेड स्टेट्स"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("कैरो, इजिप्त"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सूर्यास्ताच्या वेळी दिसणारे अल-अजहर मशिदीचे मिनार"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("ताइपै, तैवान"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("गगनचुंबी तैपेई १०१ इमारत"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सदाहरित झाडे असलेल्या बर्फाळ प्रदेशातील शॅले"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("माचू पिचू, पेरू"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माचू पिचू बालेकिल्ला"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("हवाना, क्यूबा"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "जुन्या काळातील एका निळ्या कारला टेकून उभा असलेला माणूस"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("फिट्सनाऊ, स्वित्झर्लंड"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "डोंगरांसमोर वसलेले तलावाशेजारचे हॉटेल"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("बिग सुर, युनायटेड स्टेट्स"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माळरानावरचा टेंट"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("नापा, युनायटेड स्टेट्स"),
        "craneSleep6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पामच्या झाडांच्या सान्निध्यातील पूल"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("पोर्तो, पोर्तुगीज"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "रिबेरिया स्क्वेअरमधील रंगीत अपार्टमेंट"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("तुलुम, मेक्सिको"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "समुद्रकिनाऱ्याच्याबाजूला उंच डोंगरावर असलेले मायन संस्कृतीतील अवशेष"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("लिस्बन, पोर्तुगाल"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "समुद्रात असलेले विटांचे दीपगृह"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "गंतव्यस्थानानुसार मालमत्ता शोधा"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("अनुमती द्या"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("ॲपल पाय"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("रद्द करा"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("चीझकेक"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("चॉकलेट ब्राउनी"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "कृपया खालील सूचीमधून तुमच्या आवडत्या डेझर्टचा प्रकार निवडा. तुमच्या परिसरातील सुचवलेल्या उपहारगृहांची सूची कस्टमाइझ करण्यासाठी तुमच्या निवडीचा उपयोग केला जाईल."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("काढून टाका"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("अनुमती देऊ नका"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("आवडते डेझर्ट निवडा"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "तुमचे सध्याचे स्थान नकाशावर दाखवले जाईल आणि दिशानिर्देश, जवळपासचे शोध परिणाम व प्रवासाचा अंदाजे वेळ दाखवण्यासाठी वापरले जाईल."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "तुम्ही ॲप वापरत असताना \"Maps\" ला तुमचे स्थान ॲक्सेस करण्याची अनुमती द्यायची का?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("तिरामिसू"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("बटण"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("बॅकग्राउंडसह"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("सूचना दाखवा"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("चॅट"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("होम"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("प्रोफाइल"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("कॅल्शिअम (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("कॅलरी"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("कर्बोदके (ग्रॅ)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("डिझर्ट (१)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("चरबी (ग्रॅ)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("आयरन (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("प्रथिने (ग्रॅ)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("सोडियम (मिग्रॅ)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("पोषण"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("अ‍ॅपल पाय"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("कपकेक"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("डोनट"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("इक्लेअर"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("फ्रोझन योगर्ट"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("जिंजरब्रेड"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("हनीकोंब"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("आइस्क्रीम सँडविच"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("जेली बीन"),
        "dataTableRowLollipop": MessageLookupByLibrary.simpleMessage("लॉलिपॉप"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "टाइल संपादित करण्यासाठी टॅप करा आणि देखाव्याभोवती फिरण्यासाठी जेश्चर वापरा. पॅन करण्यासाठी ड्रॅग करा, झूम करण्यासाठी पिंच करा, दोन बोटांनी फिरवा. सुरुवातीच्या ओरिएंटेशनवर पुन्हा जाण्यासाठी रीसेट बटण दाबा."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("टाइल संपादित करा"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("रुपांतरे रीसेट करा"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("पॅन करा, झूम करा, फिरवा"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("2D रुपांतरे"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "अ‍ॅक्शन चिप पर्यायांचा एक समूह आहे जो प्राथमिक आशयाशी संबंधित असणाऱ्या कारवाईला ट्रिगर करतो. अ‍ॅक्शन चिप सतत बदलणानपसार आणि संदर्भानुसार UI मध्ये दिसल्या पाहिजेत."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ॲक्शन चिप"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "सूचना डायलॉग हा वापरकर्त्यांना कबुली आवश्यक असलेल्या गोष्टींबद्दल सूचित करतो. सूचना डायलॉगमध्ये एक पर्यायी शीर्षक आणि एक पर्यायी क्रिया सूची असते"),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("सूचना"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("शीर्षकाशी संबंधित सूचना"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "बॅनर एक महत्त्वपूर्ण, संक्षिप्त मेसेज प्रदर्शित करतो आणि वापरकर्त्यांना सांगण्यासाठी क्रिया पुरवतो (किंवा बॅनर डिसमिस करतो). ते डिसमिस करण्यासाठी वापरकर्त्याची कृती आवश्यक आहे."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "सूचीमध्ये एक बॅनर प्रदर्शित करत आहे"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("बॅनर"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "तळाशी असलेले बार तळाच्या नेव्हिगेशन ड्रॉवरचा आणि फ्लोटिंग अ‍ॅक्शन बटणाच्या समावेशासह कमाल चार अ‍ॅक्शनचा अ‍ॅक्सेस देते."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "नेव्हिगेशन आणि अ‍ॅक्शन तळाशी दाखवते"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("तळाशी ॲप बार"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "तळाचे नेव्हिगेशन बार स्क्रीनच्या तळाशी तीन ते पाच गंतव्यस्थाने दाखवतात. प्रत्येक गंतव्यस्थान आयकन आणि पर्यायी मजकूर लेबलने दर्शवलेले असते. तळाच्या नेव्हिगेशन आयकनवर टॅप केल्यावर, वापरकर्त्याला त्या आयकनशी संबद्ध असलेल्या उच्च स्तराच्या नेव्हिगेशन गंतव्यस्थानावर नेले जाते."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("सातत्यपूर्ण लेबले"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("लेबल निवडले"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "क्रॉस फेडिंग दृश्यांसह तळाचे नेव्हिगेशन"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("तळाचे नेव्हिगेशन"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("जोडा"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("तळाचे पत्रक दाखवा"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("शीर्षलेख"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "मोडल तळाचे पत्रक मेनू किंवा डायलॉगचा पर्याय आहे आणि ते वापरकर्त्याला बाकीच्या अ‍ॅपशी परस्परसंवाद साधण्यापासून रोखते."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("मोडल तळाचे पत्रक"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "सातत्यपूर्ण तळाचे पत्रक अ‍ॅपच्या प्राथमिक आशयाला पूरक असलेली माहिती दाखवते. वापरकर्ता अ‍ॅपच्या इतर भागांसोबत परस्परसंवाद साधत असतानादेखील सातत्यपूर्ण तळाचे पत्रक दृश्यमान राहते."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("सातत्यपूर्ण तळाचे पत्रक"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "सातत्यपूर्ण आणि मोडल तळाची पत्रके"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("तळाचे पत्रक"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("मजकूर भाग"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "सपाट, उंच केलेली, आउटलाइन आणि आणखी बरीच"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("बटणे"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "कार्ड म्हणजे मटेरियल ची एक शीट आहे जी काही संबंधित माहितीचे प्रतिनिधित्व करण्यासाठी वापरली जाते, उदाहरणार्थ एखादा अल्बम, भौगोलिक स्थान, जेवण, संपर्क तपशील इ."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "गोलाकार कोपरे असलेली बेसलाइन कार्डे"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("कार्डे"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("चेकलिस्ट मेनू"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "संक्षिप्त घटक इनपुट, विशेषता किंवा क्रिया सादर करतात"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("चिप"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "चॉईस चिप सेटमधून एकच निवड दाखवते. चॉइस चिपमध्ये संबंधित असणारा वर्णनात्मक मजकूर किंवा वर्गवाऱ्या असतात."),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("चॉइस चिप"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "अ‍ॅप्लिकेशन काम करत आहे हे दाखवण्यासाठी गोल फिरणारे मटेरिअल डिझाइन परिपत्रक प्रगती इंडिकेटर आहे."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("परिपत्रक प्रगती इंडिकेटर"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("डेमो कोड"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("क्लिपबोर्डवर कॉपी केला."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("सर्व कॉपी करा"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "मटेरिअल डिझाइनचे कलर पॅलेट दर्शवणारे रंग आणि कलर स्वॅच स्थिरांक."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "पूर्वानिर्धारित केलेले सर्व रंग"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("रंग"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("काँटेक्स्ट मेनू"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "क्रिया पत्रक हा सूचनेचा एक विशिष्ट प्रकार आहे जो वापरकर्त्याला सध्याच्या संदर्भाशी संबंधित दोन किंवा त्याहून जास्त निवडी देतो. एका क्रिया पत्रकामध्ये शीर्षक, एक अतिरिक्त मेसेज आणि क्रियांची सूची असते."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("क्रिया पत्रक"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "एक iOS शैलीतील घड्याळाच्या काट्याच्या दिशेने गोल फिरणारे अ‍ॅक्टिव्हिटी इंडिकेटर"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS शैलीतील अ‍ॅक्टिव्हिटी इंडिकेटर"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("अ‍ॅक्टिव्हिटी इंडिकेटर"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("फक्त सूचना बटणे"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("बटणांशी संबंधित सूचना"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "सूचना डायलॉग हा वापरकर्त्यांना कबुली आवश्यक असलेल्या गोष्टींबद्दल सूचित करतो. एका सूचना डायलॉगमध्ये एक पर्यायी शीर्षक, पर्यायी आशय आणि एक पर्यायी क्रिया सूची असते. शीर्षक हे मजकूराच्या वरती दाखवले जाते आणि क्रिया ही मजकूराच्या खाली दाखवली जाते."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("इशारा"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("शीर्षकाशी संबंधित सूचना"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS शैलीचे सूचना डायलॉग"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("सूचना"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "एक iOS शैलीतील बटण. स्पर्श केल्यावर फिका होणार्‍या आणि न होणार्‍या मजकूरचा आणि/किंवा आयकनचा यामध्ये समावेश आहे यामध्ये पर्यायी एक बॅकग्राउंड असू शकतो."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS शैली बटण"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("बटणे"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "एक iOS शैलीतील नेव्हिगेशन बार. नेव्हिगेशन बार हा असा टूलबार आहे ज्यामध्ये टूलबारच्या मधोमध किमान पेजच्या शीर्षकाचा समावेश आहे."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS शैलीतील नेव्हिगेशन बार"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("नॅव्हिगेशन बार"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("तारीख"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("तारीख आणि वेळ"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "तारीख, वेळ किंवा हे दोन्ही निवडण्यासाठी वापरले जाणारे एक iOS-शैलीतील पिकर विजेट."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-शैलीतील तारीख आणि वेळ पिकर"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("वेळ"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("टायमर"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("पिकर"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS शैलीचे रीफ्रेश करण्यासाठी ओढामधील आशय नियंत्रण याची अंमलबजावणी करणारे विजेट."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS शैलीचे रिफ्रेश करण्यासाठी ओढा नियंत्रण"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("रिफ्रेश करण्यासाठी ओढा"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "परस्पर अनन्य पर्यायांच्या दरम्यान नंबर निवडण्यासाठी वापरले जाते. विभाजित नियंत्रणामधून एक पर्याय निवडलेले असते तेव्हा विभाजित नियंत्रणातील इतर पर्याय निवडणे जाणे थांबवले जातात."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS शैलीचे विभाजित नियंत्रण"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("विभाजित नियंत्रण"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "स्लायडरचा वापर सलग किंवा भिन्न मूल्यांच्या संचामधून निवडण्यासाठी केला जाऊ शकतो."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-शैली स्लायडर"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("स्लायडर"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "एका सेटिंगची सुरू/बंद स्थिती टॉगल करण्यासाठी स्विचचा वापर केला जातो."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-शैली स्विच"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "एक iOS-शैलीतील तळाशी नेव्हिगेशन टॅब बार. एक टॅब सुरू असताना एकाहून अधिक टॅब दाखवते, पहिला टॅब बाय डीफॉल्ट असतो."),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS- शैलीतील तळाशी टॅब बार"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("टॅब बार"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "मजकूर फील्ड वापरकर्त्याला हार्डवेअर कीबोर्ड किंवा ऑनस्क्रीन कीबोर्ड वापरून मजकूर एंटर करू देते."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("पिन"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-शैलीतील मजकूर भाग"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("मजकूर भाग"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "स्लाइडर बारच्या बरोबरीने मूल्यांच्या रेंज दाखवतात, ज्यामधून वापरकर्ते एखादे मूल्य किंवा मूल्यांची रेंज निवडू शकतात. स्लाइडर थीम आणि कस्टमाइझ केली जाऊ शकतात."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("कस्टम स्लायडर"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "डेटा सारण्या पंक्ती आणि स्तंभांच्या ग्रिड सारख्या फॉरमॅटमध्ये माहिती प्रदर्शित करतात. स्कॅन करणे सोपे असेल अशाप्रकारे ते माहिती व्यवस्थापित करतात जेणेकरुन वापरकर्ते नमुने आणि इनसाइट शोधू शकतील."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "माहिती असलेल्या पंक्ती आणि स्तंभ"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("डेटा सारण्या"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "मटेरियल डिझाइन ची तारीख पिकर असलेला डायलॉग दाखवतो."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("तारीख पिकर"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("साधा, सूचना आणि फुलस्क्रीन"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("डायलॉग"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API दस्तऐवजीकरण"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "फिल्टर चिप टॅग किंवा वर्णनात्मक शब्दांचा वापर आशय फिल्टर करण्याचा एक मार्ग म्हणून करतात."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("फिल्टर चिप"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "एक चपटे बटण दाबल्यावर ते शाई उडवताना दाखवते पण ते उचलत नाही. टूलबारवर, डायलॉगमध्ये आणि पॅडिंगसह इनलाइनमध्ये चपटी बटणे वापरा"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("चपटे बटण"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ॲप्लिकेशनमध्ये प्राथमिक क्रिया करण्याचे सूचित करण्यासाठी आशयावर फिरणारे फ्लोटिंग ॲक्शन बटण हे गोलाकार आयकन बटण आहे."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("फ्लोटिंग ॲक्शन बटण"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog प्रॉपर्टी ही येणारे पेज फुलस्क्रीन मोडाल डायलॉग आहे की नाही ते नमूद करते"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("फुलस्क्रीन"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("फुल-स्क्रीन"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "एकसारखा डेटा खासकरून इमेज सादर करण्यासाठी ग्रिड सूची अधिक योग्य आहेत. ग्रिड सूचीमधील प्रत्येक आयटमला टाइल म्हणतात."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("फूटरसह"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("हेडरसह"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("फक्त इमेज"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("पंक्ती आणि स्तंभाचा लेआउट"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("ग्रिड सूची"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("माहिती"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "इनपुट चिप या व्यक्ती/संस्था (व्यक्ती, जागा किंवा गोष्टी) किंवा संभाषणाचा एसएमएस यांसारखी क्लिष्ट माहिती संक्षिप्त स्वरुपात सादर करतात."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("इनपुट चिप"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL प्रदर्शित करू शकलो नाही:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "प्रगती बारला मटेरिअल डिझाइन लिनिअर प्रगती इंडिकेटर म्हणूनदेखील ओळखले जाते."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("लिनिअर प्रगती इंडिकेटर"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "एका निश्चित केलेल्या उंच पंक्तीमध्ये सामान्यतः थोड्या मजकुराचा तसेच एखादा लीडिंग किंवा ट्रेलिंग आयकनचा समावेश असतो."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("दुय्यम मजकूर"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("सूची स्क्रोल करण्याचा लेआउट"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("सूची"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("मेनू आयटम बंद केला"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "चेकलिस्ट मेनू असलेला एक आयटम"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "कॉंटेक्स्ट मेनू असलेला एक आयटम"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "विभागाचा मेनू असलेला एक आयटम"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("सोपा मेनू असलेला एक आयटम"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("कॉंटेक्स्ट मेनू आयटम एक"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("कॉंटेक्स्ट मेनू आयटम तीन"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "मेनू तात्पुरत्या पृष्ठभागावर निवडींची एक सूची दाखवतो. वापरकर्ते बटण, कृती किंवा अन्य नियंत्रणे वापरून संवाद साधतात तेव्हा ते दिसतात."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("चार"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("लिंक मिळवा"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("पहिला मेनू आयटम"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("तिसरा मेनू आयटम"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("दुसरा मेनू आयटम"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("एक"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("पूर्वावलोकन"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("काढा"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("शेअर करा"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("मेनू बटण आणि सोपा मेनू"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("तीन"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("मेनू"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("दोन"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("एक ओळ"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "या डेमोसाठी उपलब्ध असलेले पर्याय पाहण्यासाठी येथे टॅप करा."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("पर्याय पाहा"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("पर्याय"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "आउटलाइन बटणे दाबल्यानंतर अपारदर्शक होतात आणि वर येतात. एखादी पर्यायी, दुसरी क्रिया दाखवण्यासाठी ते सहसा उंच बटणांसोबत जोडली जातात."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("आउटलाइन बटण"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("पिकर दाखवा"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("तारीख आणि वेळ निवड"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("पिकर"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("लिनिअर, परिपत्रक, अनिश्चित"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("प्रगती इंडिकेटर"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "उंच बटणे सहसा फ्लॅट लेआउटचे आकारमान निर्दिष्ट करतात. ते व्यस्त किंवा रूंद जागांवर फंक्शन लागू करतात."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("उंच बटण"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "स्लाइडर एका बारसह मूल्यांच्या रेंज दाखवतात. त्यांच्याकडे बारच्या दोन्ही टोकांवर मूल्यांच्या रेंज दाखवणारी चिन्हे असू शकतात. व्हॉल्यूम, ब्राइटनेस किंवा इमेज फिल्टर लागू करणे यांसारख्या अ‍ॅडजस्ट करणाऱ्या सेटिंग्जसाठी ते उत्तम आहेत."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("रेंज स्लायडर"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("विभागित मेनू"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "चेकबॉक्स हे संचामधून एकाहून अधिक पर्याय निवडण्याची अनुमती देतात. सामान्य चेकबॉक्सचे मूल्य खरे किंवा खोटे असते आणि ट्रायस्टेट चेकबॉक्सचे मूल्य शून्यदेखील असू शकते."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("चेकबॉक्स"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "रेडिओ बटणे वापरकर्त्याला संचामधून एक पर्याय निवडण्याची अनुमती देतात. वापरकर्त्याला त्याचवेळी सर्व उपलब्ध पर्याय पाहायचे आहेत असे तुम्हाला वाटत असल्यास, विशेष निवडीसाठी रेडिओ बटणे वापरा."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("रेडिओ"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "चेकबॉक्स, रेडिओ बटणे आणि स्विच"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "स्विच सुरू/बंद करणे हे सिंगल सेटिंग्ज पर्यायाची स्थिती टॉगल करते. स्विच नियंत्रित करतो तो पर्याय, तसेच त्यामध्ये त्याची स्थिती ही संबंधित इनलाइन लेबलनुसार स्पष्ट करावी."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("स्विच"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("निवडीची नियंत्रणे"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "एक साधा डायलॉग अनेक पर्यायांमधून निवडण्याची वापरकर्त्याला संधी देतो. साध्या डायलॉगमध्ये एक पर्यायी शीर्षक असते जे निवडींच्या वरती दाखवले जाते."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("साधा"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("सोपा मेनू"),
        "demoSlidersContinuous": MessageLookupByLibrary.simpleMessage("सतत"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "कस्टम थीमसह सतत असणारा रेंज स्लायडर"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "संपादित करण्यायोग्य सांख्यिकीय मूल्यासह सतत"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "स्लाइडर बारच्या बरोबरीने मूल्यांच्या रेंज दाखवतात, ज्यामधून वापरकर्ते एखादे मूल्य निवडू शकतात. व्हॉल्यूम, ब्राइटनेस किंवा इमेज फिल्टर लागू करणे यांसारख्या अ‍ॅडजस्ट करणाऱ्या सेटिंग्जसाठी ते उत्तम आहेत."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("वेगळे"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage("कस्टम थीमसह वेगळे स्लायडर"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("संपादित करण्यायोग्य मूल्य"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "स्वाइप करून एखादे मूल्य निवडण्यासाठी विजेट"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("स्लायडर"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "तुम्ही स्नॅकबार ॲक्शन दाबले आहे."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("अ‍ॅक्‍शन"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("स्नॅकबार दाखवा"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "स्नॅकबार प्रक्रिया वापरकर्त्यांना ॲप काम करत आहे किंवा काम करेल याची माहिती देते. ते स्क्रीनच्या तळाशी तात्पुरते दिसतात. ते वापरकर्त्याच्या अनुभवात व्यत्यय आणत नाही आणि त्यांना वापरकर्ता इनपुट अदृश्य करण्याची आवश्यकता नाही."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "स्नॅकबार स्क्रीनच्या तळाशी संदेश दाखवतात"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("हा एक स्नॅकबार आहे."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("स्नॅकबार"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "टॅब विविध स्क्रीन, डेटा सेट आणि इतर परस्‍परसंवादावर आशय व्यवस्थापित करतात."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("स्क्रोल न करणारा"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("स्क्रोल करणारा"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "स्वतंत्रपणे स्क्रोल करण्यायोग्य व्ह्यूचे टॅब"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("टॅब"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "मजकूर भाग वापरकर्त्यांना UI मध्ये मजकूर एंटर करू देतात. ते सर्वसाधारणपणे फॉर्म आणि डायलॉगमध्ये दिसतात."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ईमेल"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("कृपया पासवर्ड एंटर करा."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - यूएस फोन नंबर एंटर करा."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "सबमिट करण्यापूर्वी लाल रंगातील एरर दुरुस्त करा."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("पासवर्ड लपवा"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "ते लहान ठेवा, हा फक्त डेमो आहे."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("जीवनकथा"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("नाव*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("नाव आवश्‍यक आहे."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("८ वर्णांपेक्षा जास्त नको."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "कृपया फक्त वर्णक्रमाने वर्ण एंटर करा."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("पासवर्ड*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("पासवर्ड जुळत नाहीत"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("फोन नंबर*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* आवश्यक फील्ड सूचित करते"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("पासवर्ड पुन्हा टाइप करा*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("पगार"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("पासवर्ड दाखवा"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("सबमिट करा"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "संपादित करता येणार्‍या मजकूर आणि अंकांची एकच ओळ"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "आम्हाला तुमच्याबद्दल सांगा (उदा., तुम्ही काय करता आणि तुम्हाला कोणते छंद आहेत ते लिहा)"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("मजकूर भाग"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("लोक तुम्हाला काय म्हणतात?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "आम्ही तुमच्याशी कुठे संपर्क साधू करू शकतो?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("तुमचा ईमेल अ‍ॅड्रेस"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "मटेरियल डिझाइन ची वेळ पिकर असलेला डायलॉग दाखवतो."),
        "demoTimePickerTitle": MessageLookupByLibrary.simpleMessage("वेळ पिकर"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "संबंधित पर्यायांची गटांमध्ये विभागणी करण्यासाठी टॉगल बटणे वापरली जाऊ शकतात. संबंधित टॉगल बटणांच्या गटांवर लक्ष केंद्रीत करण्यासाठी प्रत्येक गटामध्ये एक समान घटक असणे आवश्यक आहे"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("टॉगल बटणे"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "टूलटिप्स मजकूर लेबले पुरवतात जी बटणाचे कार्य किंवा इतर वापरकर्ता इंटरफेस कृतीचे स्पष्टीकरण देण्यात मदत करतात. वापरकर्ते एखाद्या घटकावर फिरवतात, त्यावर लक्ष केंद्रित करतात किंवा दाबून ठेवतात तेव्हा टूलटिप्स माहितीपूर्ण मजकूर प्रदर्शित करतात."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "टूलटिप डिस्प्ले करण्यासाठी दाबून ठेवा किंवा फिरवा."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "दाबून ठेवल्यावर किंवा फिरवल्यावर लहान मेसेज दाखवला जाईल"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("टूलटिप"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("दोन ओळी"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "मटेरिअल डिझाइन मध्ये सापडणार्‍या विविध टायपोग्राफिकल शैलींच्या परिभाषा."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "सर्व पूर्वपरिभाषित मजकूर शैली"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("टायपोग्राफी"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("खाते जोडा"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("सहमत आहे"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("रद्द करा"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("सहमत नाही"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("काढून टाका"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("मसुदा काढून टाकायचा आहे का?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("फुल स्क्रीन डायलॉग डेमो"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("सेव्ह करा"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("फुल स्क्रीन डायलॉग"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "अ‍ॅप्सना स्थान शोधण्यात Google ला मदत करू द्या. म्हणजेच कोणतीही अ‍ॅप्स सुरू नसतानादेखील Google ला अनामित स्थान डेटा पाठवणे."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Google ची स्थान सेवा वापरायची का?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("बॅकअप खाते सेट करा"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("डायलॉग दाखवा"),
        "dismiss": MessageLookupByLibrary.simpleMessage("डिसमिस करा"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "एका आशयावर केंद्रित असलेले बातम्यांचे ॲप"),
        "fortnightlyHeadlineArmy":
            MessageLookupByLibrary.simpleMessage("ग्रीन आर्मीमधील चांगले बदल"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "शेतीसाठी उपयुक्त असणाऱ्या मधमाश्यांच्या संख्येमध्ये घट"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "सर्वोत्तम कपडे बनवण्यासाठी डिझाइनर घेतात तंत्रज्ञानाची मदत"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "पक्षपाताविरूद्ध महिलांचा दृष्टिकोन"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("गॅसोलीनचे भविष्य"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "आरोग्य क्षेत्रामधील छोटे पण महत्त्वपूर्ण बदल"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "शेअर मार्केटचा विकास थांबल्यावर अनेकजण चलन बाजारावर आशा ठेवतात"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "युद्धाच्या वेळी विभाजित झालेल्या अमेरिकन लोकांचे जीवन"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("नवीनतम अपडेट"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("व्यवसाय"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("संस्कृती"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("मुख्य पेज"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("राजकारण"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("विज्ञान"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("क्रीडा"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("तंत्रज्ञान"),
        "fortnightlyMenuTravel": MessageLookupByLibrary.simpleMessage("प्रवास"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("यूएस"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("विश्व"),
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
            MessageLookupByLibrary.simpleMessage("शैली आणि इतर"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("वर्गवाऱ्या"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("गॅलरी"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("समुद्रकिनारा"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("काशासंबंधित काम"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("चेन्नई"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("चेट्टीनाड"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("कोळी"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("फुल मार्केट"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("जेवणासाठी खाद्यपदार्थ"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("मार्केट"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("पाँडिचेरी"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("मीठागर"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("स्कूटर"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("सिल्क मेकर"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("तंजोर"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("तंजावर मंदिर"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("कार बचत"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("चेकिंग"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("घर बचत"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("सुट्टी"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("खाते मालक"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("वार्षिक टक्केवारी उत्‍पन्न"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("मागील वर्षी दिलेले व्याज"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("व्याज दर"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("व्‍याज YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("पुढील विवरण"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("एकूण"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("खाती"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("इशारे"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("भरायची असलेली रक्कम"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("भरलेली रक्कम"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("एकूण रक्कम"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("बिले"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("शेवटची तारीख"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("कपडे"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("कॉफीची दुकाने"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("किराणा माल"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("रेस्टॉरंट"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("शिल्लक रक्कम"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("वापरलेली रक्कम"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("खर्चावरील एकूण मर्यादा"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("शिल्लक"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("बजेट"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("वैयक्तिक अर्थसहाय्य अ‍ॅप"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("शिल्लक"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("लॉग इन करा"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("लॉग इन करा"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally साठी लॉग इन करा"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("तुमच्याकडे खाते नाही?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("पासवर्ड"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("मला लक्षात ठेवा"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("साइन अप करा"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("वापरकर्ता नाव"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("सर्व पहा"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("सर्व खाती पाहा"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("सर्व बिल पाहा"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("सर्व बजेट पाहा"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ATM शोधा"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("मदत"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("खाती व्यवस्थापित करा"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("सूचना"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("पेपरलेस सेटिंग्ज"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("पासकोड आणि स्पर्श आयडी"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("वैयक्तिक माहिती"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("साइन आउट करा"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("कर दस्तऐवज"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("खाती"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("बिले"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("बजेट"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("अवलोकन"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("सेटिंग्ज"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery बद्दल"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "लंडनच्या TOASTER यांनी डिझाइन केलेले"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("सेटिंग्ज बंद करा"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("सेटिंग्ज"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("गडद"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("फीडबॅक पाठवा"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("फिकट"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("लोकॅल"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("प्लॅटफॉर्म यांत्रिकी"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("स्लो मोशन"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("सिस्टम"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("मजकूर दिशा"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("लोकॅलवर आधारित"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("मजकूर मापन"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("प्रचंड"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("मोठे"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("सामान्य"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("लहान"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("थीम"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("सेटिंग्ज"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("रद्द करा"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("कार्ट साफ करा"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("कार्ट"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("शिपिंग:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("उपबेरीज:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("कर:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("एकूण"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("अ‍ॅक्सेसरी"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("सर्व"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("कपडे"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("घर"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("फॅशनेबल रिटेल अ‍ॅप"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("पासवर्ड"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("वापरकर्ता नाव"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("लॉग आउट करा"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("मेनू"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("पुढील"),
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
            MessageLookupByLibrary.simpleMessage("कार्टमध्ये जोडा"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("कार्ट बंद करा"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("मेनू बंद करा"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("मेनू उघडा"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("आयटम काढून टाका"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("शोधा"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("सेटिंग्ज"),
        "signIn": MessageLookupByLibrary.simpleMessage("साइन इन करा"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "प्रतिसादात्मक स्टार्टर लेआउट"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("मुख्य मजकूर"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("बटण"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("ठळक शीर्षक"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("उपशीर्षक"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("शीर्षक"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("स्टार्टर अ‍ॅप"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("जोडा"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("आवडते"),
        "starterAppTooltipSearch": MessageLookupByLibrary.simpleMessage("शोधा"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("शेअर करा")
      };
}
