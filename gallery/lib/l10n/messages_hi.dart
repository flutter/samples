// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a hi locale. All the
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
  String get localeName => 'hi';

  static m0(value) =>
      "इस ऐप्लिकेशन का सोर्स कोड देखने के लिए, कृपया ${value} पर जाएं.";

  static m1(title) => "${title} टैब के लिए प्लेसहोल्डर टैब";

  static m2(destinationName) => "${destinationName} के बारे में ज़्यादा जानें";

  static m3(destinationName) => "${destinationName} की जानकारी शेयर करें";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'कोई रेस्टोरेंट नहीं है', one: '1 रेस्टोरेंट', other: '${totalRestaurants} रेस्टोरेंट')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'नॉनस्टॉप', one: '1 स्टॉप', other: '${numberOfStops} स्टॉप')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'किराये पर लेने के लिए जगह उपलब्ध नहीं है', one: 'किराये पर लेने के लिए एक जगह उपलब्ध है', other: 'किराये पर लेने के लिए ${totalProperties} जगह उपलब्ध हैं')}";

  static m10(value) => "${value} शहद के साथ";

  static m11(value) => "${value} चीनी के साथ";

  static m12(value) => "आइटम ${value}";

  static m13(error) => "क्लिपबोर्ड पर कॉपी नहीं किया जा सका: ${error}";

  static m14(value) => "कोई भी संख्या: ${value}";

  static m15(value) => "कोई तय संख्या: ${value}";

  static m16(value) => "सही का निशान लगाकर इसे चुना गया: ${value}";

  static m17(value) => "इसे चुना गया: ${value}";

  static m18(name, phoneNumber) => "${name} का फ़ोन नंबर ${phoneNumber} है";

  static m19(value) => "आपने चुना है: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "${accountName} खाता संख्या ${accountNumber} में ${amount} की रकम जमा की गई.";

  static m21(amount) => "आपने इस महीने ${amount} का एटीएम शुल्क दिया है";

  static m22(percent) =>
      "बहुत बढ़िया! आपके चेकिंग खाते की रकम पिछले महीने की तुलना में ${percent} ज़्यादा है.";

  static m23(percent) =>
      "ध्यान दें, आपने इस महीने के अपने खरीदारी बजट का ${percent} बजट इस्तेमाल कर लिया है.";

  static m24(amount) => "आपने इस हफ़्ते रेस्टोरेंट में ${amount} खर्च किए.";

  static m25(count) =>
      "${Intl.plural(count, one: 'अपने टैक्स में संभावित छूट को बढ़ाएं! असाइन नहीं किए गए 1 लेन-देन के लिए श्रेणियां असाइन करें.', other: 'अपने टैक्स में संभावित छूट को बढ़ाएं! असाइन नहीं किए गए ${count} लेन-देन के लिए श्रेणियां असाइन करें.')}";

  static m26(billName, date, amount) =>
      "${billName} के बिल के ${amount} चुकाने की आखिरी तारीख ${date} है.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} के ${amountTotal} के बजट में से ${amountUsed} इस्तेमाल किए गए और ${amountLeft} बचे हैं";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'कोई आइटम नहीं है', one: '1 आइटम', other: '${quantity} आइटम')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "मात्रा: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'शॉपिंग कार्ट, इसमें कोई आइटम नहीं है', one: 'शॉपिंग कार्ट, इसमें 1 आइटम है', other: 'शॉपिंग कार्ट, इसमें ${quantity} आइटम हैं')}";

  static m32(product) => "${product} हटाएं";

  static m33(value) => "आइटम ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter नमूने GitHub संग्रह"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Gallery पर वापस जाएं"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("लीडिंग आइकॉन"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("कई कार्रवाइयां"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("बैनर रीसेट करें"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "पासवर्ड आपके दूसरे डिवाइस पर अपडेट किया गया था. कृपया फिर से साइन इन करें."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("नॉच"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "बॉटम ऐप्लिकेशन बार में, फ़्लोट करने वाले कार्रवाई बटन की जगह"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage(
                "फ़्लोट करने वाले कार्रवाई बटन को बीच में डॉक किया गया"),
        "bottomAppBarPositionDockedEnd": MessageLookupByLibrary.simpleMessage(
            "फ़्लोट करने वाले कार्रवाई बटन को नीचे दाईं तरफ़ डॉक किया गया"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage(
                "फ़्लोट करने वाले कार्रवाई बटन को बीच में लगाया गया"),
        "bottomAppBarPositionFloatingEnd": MessageLookupByLibrary.simpleMessage(
            "फ़्लोट करने वाले कार्रवाई बटन को नीचे दाईं तरफ़ लगाया गया"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("खाता"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("अलार्म"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("कैलेंडर"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("कैमरा"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("टिप्पणियां"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("बटन"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("बनाएं"),
        "cardsDemoExplore":
            MessageLookupByLibrary.simpleMessage("ज़्यादा जानें"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "चुना जा सकने वाला कार्ड (देर तक दबाने पर)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("टैप किया जा सकने वाला बटन"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("तंजावुर"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("चेट्टीनाड"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("नंबर 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("सिल्क बनाने वाले"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("मंदिर"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("तंजावुर, तमिलनाडु"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("शिवगंगा, तमिलनाडु"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "तमिलनाडु में घूमने के लिए 10 सबसे अच्छे शहर"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("दक्षिण भारत के कलाकार"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("बृहदेश्वर मंदिर"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("बाइकिंग"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("एलिवेटर"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("फ़ायरप्लेस"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("बड़ा"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("मध्यम"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("छोटा"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("लाइट चालू करें"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("वॉशिंग मशीन"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ऐंबर"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("नीला"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("नीला-स्लेटी"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("भूरा"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("सियान"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("गहरा नारंगी"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("गहरा बैंगनी"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("हरा"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("स्लेटी"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("गहरा नीला"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("हल्का नीला"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("हल्का हरा"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("हल्का पीला"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("नारंगी"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("गुलाबी"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("बैंगनी"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("लाल"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("नीला-हरा"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("पीला"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "आपके मनमुताबिक तैयार किया गया यात्रा ऐप्लिकेशन"),
        "craneEat": MessageLookupByLibrary.simpleMessage("खाने की जगहें"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("नेपल्स, इटली"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "लकड़ी जलाने से गर्म होने वाले अवन में पिज़्ज़ा"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("डलास, अमेरिका"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("लिस्बन, पुर्तगाल"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "हाथ में बड़ा पस्ट्रामी सैंडविच पकड़े महिला"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "डाइनर-स्टाइल स्टूल वाला खाली बार"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("कोर्डोबा, अर्जेंटीना"),
        "craneEat2SemanticLabel": MessageLookupByLibrary.simpleMessage("बर्गर"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("पोर्टलैंड, अमेरिका"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("कोरियन टाको"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("पेरिस, फ़्रांस"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("चॉकलेट से बनी मिठाई"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("सियोल, दक्षिण कोरिया"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "कलात्मक रूप से बने रेस्टोरेंट में बैठने की जगह"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("सिएटल, अमेरिका"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("झींगे से बना पकवान"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("नैशविल, अमेरिका"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("बेकरी में जाने का रास्ता"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("अटलांटा, अमेरिका"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("प्लेट में रखी झींगा मछली"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("मैड्रिड, स्पेन"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("पेस्ट्री रखी कैफ़े काउंटर"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "मंज़िल के हिसाब से रेस्टोरेंट ढूंढें"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("उड़ानें"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("ऐस्पन, अमेरिका"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सदाबहार पेड़ों के बीच बर्फ़ीले लैंडस्केप में बना शैले"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("बिग सर, अमेरिका"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("काहिरा, मिस्र"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सूर्यास्त के दौरान अल-अज़हर मस्ज़िद के टावर"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("लिस्बन, पुर्तगाल"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "समुद्र तट पर ईंट से बना लाइटहाउस"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("नापा, अमेरिका"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ताड़ के पेड़ों के साथ पूल"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("बाली, इंडोनेशिया"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "समुद्र किनारे ताड़ के पेड़ों के साथ बना पूल"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("मैदान में टेंट"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("खुम्बु वैली, नेपाल"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "बर्फ़ीले पहाड़ के सामने लगे प्रार्थना के लिए इस्तेमाल होने वाले झंडे"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("माचू पिच्चू, पेरू"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माचू पिच्चू सिटडल"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("माले, मालदीव"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("पानी पर बने बंगले"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("वित्ज़नेउ, स्विट्ज़रलैंड"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पहाड़ों के सामने, झील के किनारे बना होटल"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("मेक्सिको सिटी, मेक्सिको"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पैलासियो दे बेलास आर्तिस की ऊपर से ली गई इमेज"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("माउंट रशमोर, अमेरिका"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माउंट रशमोर"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("सिंगापुर"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("सुपरट्री ग्रोव"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("हवाना, क्यूबा"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "नीले रंग की विटेंज कार से टेक लगाकर खड़ा व्यक्ति"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "मंज़िल के हिसाब से उड़ानें ढूंढें"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("तारीख चुनें"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("तारीख चुनें"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("मंज़िल चुनें"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("रेस्टोरेंट"),
        "craneFormLocation": MessageLookupByLibrary.simpleMessage("जगह चुनें"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("शुरुआत की जगह चुनें"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("समय चुनें"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("यात्रियों की संख्या"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep":
            MessageLookupByLibrary.simpleMessage("नींद मोड (कम बैटरी मोड)"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("माले, मालदीव"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("पानी पर बने बंगले"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("ऐस्पन, अमेरिका"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("काहिरा, मिस्र"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सूर्यास्त के दौरान अल-अज़हर मस्ज़िद के टावर"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("ताइपेई, ताइवान"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ताइपेई 101 स्काइस्क्रेपर"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "सदाबहार पेड़ों के बीच बर्फ़ीले लैंडस्केप में बना शैले"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("माचू पिच्चू, पेरू"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("माचू पिच्चू सिटडल"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("हवाना, क्यूबा"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "नीले रंग की विटेंज कार से टेक लगाकर खड़ा व्यक्ति"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("वित्ज़नेउ, स्विट्ज़रलैंड"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "पहाड़ों के सामने, झील के किनारे बना होटल"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("बिग सर, अमेरिका"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("मैदान में टेंट"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("नापा, अमेरिका"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ताड़ के पेड़ों के साथ पूल"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("पोर्तो, पुर्तगाल"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "राईबेरिया स्क्वायर में रंगीन अपार्टमेंट"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("टुलूम, मेक्सिको"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "समुद्र तट पर स्थित एक चट्टान पर माया सभ्यता के खंडहर"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("लिस्बन, पुर्तगाल"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "समुद्र तट पर ईंट से बना लाइटहाउस"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "मंज़िल के हिसाब से प्रॉपर्टी ढूंढें"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("अनुमति दें"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("एपल पाई"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("रद्द करें"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("चीज़केक"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("चॉकलेट ब्राउनी"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "कृपया नीचे दी गई सूची से अपनी पसंदीदा मिठाई चुनें. आपके चुने गए विकल्प का इस्तेमाल, आपके इलाके में मौजूद खाने की जगहों के सुझावों को पसंद के मुताबिक बनाने के लिए किया जाएगा."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("खारिज करें"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("अनुमति न दें"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("पसंदीदा मिठाई चुनें"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "मैप पर आपकी मौजूदा जगह की जानकारी दिखाई जाएगी. इसका इस्तेमाल रास्ते दिखाने, आस-पास खोज के नतीजे दिखाने, और किसी जगह जाने में लगने वाले कुल समय के लिए किया जाएगा."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "क्या आप ऐप्लिकेशन का इस्तेमाल करते समय \"Maps\" को अपनी जगह की जानकारी ऐक्सेस करने की अनुमति देना चाहते हैं?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("तीरामीसु"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("बटन"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("बैकग्राउंड के साथ"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("सूचना दिखाएं"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("चैट"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("होम"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("प्रोफ़ाइल"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("कैल्शियम (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("कैलोरी"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("कार्बोहाइड्रेट (ग्रा.)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("मीठा पकवान (1 प्लेट)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("फ़ैट (ग्रा.)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("आयरन (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("प्रोटीन (ग्रा.)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("सोडियम (मि.ग्रा.)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("पोषण"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Donut"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Eclair"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Frozen yogurt"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Gingerbread"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Honeycomb"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Ice Cream Sandwich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Jelly bean"),
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
            "ऐक्शन चिप ऐसे विकल्पों का सेट होता है जो मुख्य सामग्री से संबंधित किसी कार्रवाई को ट्रिगर करता है. ऐक्शन चिप किसी यूज़र इंटरफ़ेस (यूआई) में डाइनैमिक तरीके से दिखना चाहिए और मुख्य सामग्री से संबंधित होना चाहिए."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ऐक्शन चिप"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "सूचना वाला डायलॉग उपयोगकर्ताओं को ऐसी स्थितियों के बारे में जानकारी देता है जिनके लिए अनुमति की ज़रूरत होती है. सूचना वाले डायलॉग में दूसरा शीर्षक और कार्रवाइयों की दूसरी सूची होती है."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("सूचना"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("शीर्षक की सुविधा वाली सूचना"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "बैनर में किसी ज़रूरी मैसेज को कम शब्दों में दिखाया जाता है. साथ ही, उपयोगकर्ता आगे क्या कर सकते हैं, उससे जुड़े विकल्प दिखाए जाते हैं (या बैनर खारिज करने का भी विकल्प हाेता है). बैनर खारिज करने के लिए, उपयोगकर्ता काे कार्रवाई करनी हाेती है."),
        "demoBannerSubtitle":
            MessageLookupByLibrary.simpleMessage("किसी सूची में बैनर दिखाना"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("बैनर"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "स्क्रीन के सबसे नीचे मौजूद ऐप्लिकेशन बार (बॉटम ऐप्लिकेशन बार), नीचे की ओर खुलने वाले नेविगेशन पैनल (बॉटम नेविगेशन पैनल) और ज़्यादा से ज़्यादा चार कार्रवाइयों के लिए ऐक्सेस देते हैं. इन कार्रवाइयों में फ़्लोट करने वाला कार्रवाई बटन भी शामिल है."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "स्क्रीन पर सबसे नीचे मौजूद नेविगेशन और कार्रवाइयों को दिखाता है"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("बॉटम ऐप्लिकेशन बार"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "बॉटम नेविगेशन बार, ऐप्लिकेशन की तीन से पांच सुविधाओं के लिए स्क्रीन के निचले हिस्से पर शॉर्टकट दिखाता है. हर सुविधा को एक आइकॉन से दिखाया जाता है. इसके साथ टेक्स्ट लेबल भी हो सकता है. बॉटम नेविगेशन आइकॉन पर टैप करने से, उपयोगकर्ता उस आइकॉन की टॉप-लेवल नेविगेशन सुविधा पर पहुंच जाता है."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("हमेशा दिखने वाले लेबल"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("चुना गया लेबल"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "क्रॉस-फ़ेडिंग व्यू के साथ बॉटम नेविगेशन"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("बॉटम नेविगेशन"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("जोड़ें"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("बॉटम शीट दिखाएं"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("हेडर"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "मॉडल बॉटम शीट, किसी मेन्यू या डायलॉग के एक विकल्प के तौर पर इस्तेमाल की जाती है. साथ ही, इसकी वजह से उपयोगकर्ता को बाकी दूसरे ऐप्लिकेशन से इंटरैक्ट करने की ज़रूरत नहीं हाेती."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("मॉडल बॉटम शीट"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "हमेशा दिखने वाली बॉटम शीट, ऐप्लिकेशन की मुख्य सामग्री से जुड़ी दूसरी जानकारी दिखाती है. हमेशा दिखने वाली बॉटम शीट, स्क्रीन पर तब भी दिखाई देती है, जब उपयोगकर्ता ऐप्लिकेशन में दूसरी चीज़ें देख रहा होता है."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("हमेशा दिखने वाली बॉटम शीट"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "हमेशा दिखने वाली और मॉडल बॉटम शीट"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("बॉटम शीट"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("टेक्स्ट फ़ील्ड"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "सादे, उभरे हुए, आउटलाइट, और दूसरे तरह के बटन"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("बटन"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "कार्ड, मटीरियल डिज़ाइन की एक शीट होती है. इसका इस्तेमाल किसी खाेज से मिलती-जुलती जानकारी दिखाने के लिए किया जाता है. उदाहरण के लिए, कोई जगह, किसी तरह का खाना, संपर्क की जानकारी, वगैरह."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "बेसलाइन कार्ड, जिनके किनारे गोल होते हैं"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("कार्ड"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("चेकलिस्ट मेन्यू"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "ऐसे कॉम्पैक्ट एलिमेंट जाे किसी इनपुट, विशेषता या कार्रवाई काे दिखाते हैं"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("चिप"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "चॉइस चिप किसी सेट में से पसंद किए गए चिप होते हैं. चॉइस चिप में मुख्य सामग्री से संबंधित जानकारी देने वाला टेक्स्ट या कोई श्रेणी शामिल होती है."),
        "demoChoiceChipTitle": MessageLookupByLibrary.simpleMessage("चॉइस चिप"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "मटीरियल डिज़ाइन सर्कुलर फ़ॉर्मैट में किसी गतिविधि की स्थिति दिखाने वाले इंडिकेटर से यह पता चलता है कि ऐप्लिकेशन पर कोई प्रोसेसिंग चल रही है."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "गतिविधि की स्थिति सर्कुलर फ़ॉर्मैट में दिखाने वाला इंडिकेटर"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("डेमो कोड"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "क्लिपबोर्ड पर कॉपी किया गया."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("सभी को कॉपी करें"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "रंग और एक जैसे बने रहने वाले मिलते-जुलते रंगों की छोटी टेबल जो \'मटीरियल डिज़ाइन\' के रंग पटल को दिखाती है."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("पहले से तय किए गए सभी रंग"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("रंग"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("संदर्भ मेन्यू"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "कार्रवाई शीट, सूचनाओं की एक खास शैली है जिसमें उपयोगकर्ता को मौजूदा संदर्भ से जुड़े दो या उससे ज़्यादा विकल्पों वाले सेट की सुविधा मिलती है. किसी कार्रवाई शीट में एक शीर्षक, अन्य मैसेज, और कार्रवाइयों की सूची हो सकती है."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("कार्रवाई शीट"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS की शैली में गतिविधि दिखाने वाला इंडिकेटर जो घड़ी की दिशा में चलता है."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS की शैली में गतिविधि दिखाने वाले इंडिकेटर"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("सिर्फ़ सूचना देने वाले बटन"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("बटन की सुविधा वाली सूचना"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "सूचना वाला डायलॉग उपयोगकर्ताओं को ऐसी स्थितियों के बारे में जानकारी देता है जिनके लिए अनुमति की ज़रूरत होती है. किसी सूचना वाले डायलॉग में दूसरा शीर्षक, सामग्री, और कार्रवाइयों की दूसरी सूची होती है. इसमें शीर्षक, सामग्री के ऊपर की तरफ़ होता है. इसके अलावा, सामग्री के नीचे कार्रवाइयां दी गई होती हैं."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("सूचना"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("शीर्षक की सुविधा वाली सूचना"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS की शैली वाले सूचना डायलॉग"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("सूचना"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS की शैली वाला बटन. इसमें टेक्स्ट और/या आइकॉन छूने पर फ़ेड होना शामिल है. इसमें विकल्प के तौर पर एक बैकग्राउंड की सुविधा हो सकती है."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS की शैली वाला बटन"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("बटन"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS स्टाइल वाला नेविगेशन बार. नेविगेशन बार एक ऐसा टूलबार है जिसमें कम से कम एक पेज शीर्षक होता है. यह टूलबार के बीच में होता है."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS स्टाइल वाला नेविगेशन बार"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("तारीख"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("तारीख और समय"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "iOS स्टाइल के \'तारीख और समय चुनने वाले टूल\' का विजेट. इसका इस्तेमाल तारीख, समय या दोनों चुनने के लिए किया जा सकता है."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS स्टाइल के \'तारीख और समय चुनने वाले टूल\'"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("समय"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("टाइमर"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("तारीख और समय चुनने वाले टूल"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "iOS स्टाइल वाले सामग्री नियंत्रण काे लागू करने से जुड़ा विजेट. इसमें रीफ़्रेश करने के लिए स्क्रीन काे खींचा जाता है."),
        "demoCupertinoPullToRefreshSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS स्टाइल वाला नियंत्रण जिसमें रीफ़्रेश करने के लिए स्क्रीन काे खींचा जाता है"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "इसका इस्तेमाल कई खास विकल्पों में से चुनने के लिए किया जाता है. अगर सेगमेंट में दिए नियंत्रण में किसी एक विकल्प को चुना गया है, तो उसी नियंत्रण में से दूसरे विकल्प नहीं चुने जा सकते."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS की शैली वाले सेगमेंट में दिया नियंत्रण"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "स्लाइडर का इस्तेमाल संख्याओं के सेट में से किसी भी संख्या या किसी तय संख्या को चुनने के लिए किया जा सकता है."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS की शैली वाला स्लाइडर"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("स्लाइडर"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "स्विच का इस्तेमाल किसी सेटिंग को चालू/बंद करने के लिए किया जाता है."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS की शैली वाला स्विच"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "सबसे नीचे मौजूद iOS की शैली वाला नेविगेशन टैब बार यह कई टैब दिखाता है जिनमें से सिर्फ़ एक चालू होता है. डिफ़ॉल्ट रूप से, सबसे पहले खुला हुआ टैब चालू होता है."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "सबसे नीचे मौजूद iOS की शैली वाला टैब बार"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "टेक्स्ट फ़ील्ड में उपयोगकर्ता, हार्डवेयर कीबोर्ड या स्क्रीन पर दिखने वाले कीबोर्ड से टेक्स्ट लिख सकते हैं."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("पिन"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS स्टाइल के टेक्स्ट फ़ील्ड"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "ये स्लाइडर किसी बार पर मौजूद मानों की सीमा दिखाते हैं. इससे उपयोगकर्ता किसी एक मान या मानों की सीमा को चुन सकते हैं. स्लाइडर के लिए थीम चुनकर उन्हें पसंद के मुताबिक बनाया जा सकता है."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "पसंद के मुताबिक बनाए गए स्लाइडर"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "डेटा टेबल, ग्रिड जैसे फ़ॉर्मैट में होती हैं. इनमें जानकारी पंक्तियों और कॉलम में दिखाई जाती है. इनमें जानकारी इस तरह दिखाई जाती है कि उसे आसानी से स्कैन किया जा सके. इससे उपयोगकर्ता, पैटर्न और अहम जानकारी खाेज पाते हैं."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "पंक्तियां और कॉलम, जिनमें जानकारी मौजूद होती है"),
        "demoDataTableTitle": MessageLookupByLibrary.simpleMessage("डेटा टेबल"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "यह ऐसा डायलॉग दिखाता है जिसमें मटीरियल डिज़ाइन वाला टूल मौजूद होता है, जिससे तारीख चुन सकते हैं."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("तारीख चुनने वाला टूल"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "सादा, सूचनाएं, और फ़ुल स्क्रीन"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("डायलॉग"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("एपीआई दस्तावेज़"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "फ़िल्टर चिप, सामग्री को फ़िल्टर करने के लिए, टैग या जानकारी देने वाले शब्दों का इस्तेमाल करते हैं."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("फ़िल्टर चिप"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "सादे बटन को दबाने पर वह फैली हुई स्याही जैसा दिखता है, लेकिन वह ऊपर की ओर उठता नहीं दिखता. टूलबार, डायलॉग, और पैडिंग (जगह) में इनलाइन के साथ सादे बटन का इस्तेमाल करें"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("सादा बटन"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "फ़्लोटिंग कार्रवाई बटन, गोल आकार वाला वह आइकॉन बटन होता है जो सामग्री के ऊपर माउस घुमाने पर ऐप्लिकेशन में प्राथमिक कार्रवाई करता है."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "फ़्लोट करने वाला कार्रवाई बटन"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "फ़ुल स्क्रीन डायलॉग से पता चलता है कि आने वाला पेज फ़ुल स्क्रीन मॉडल डायलॉग है या नहीं"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("फ़ुल-स्क्रीन"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("फ़ुल स्क्रीन"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "ग्रिड सूचियां, एक जैसा डेटा पेश करने का सबसे सही विकल्प हैं. जैसे कि इमेज दिखाने के लिए. ग्रिड सूची में मौजूद हर आइटम को टाइल कहा जाता है."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("फ़ुटर के साथ"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("हेडर के साथ"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("सिर्फ़ इमेज के लिए"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("पंक्ति और कॉलम का लेआउट"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("ग्रिड सूचियां"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("जानकारी"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "इनपुट चिप, ऐसी जानकारी को आसान तरीके से पेश करते हैं जिसे समझने में दिक्कत होती है. इस जानकरी में कोई इकाई (व्यक्ति, स्थान या चीज़) या बातचीत शामिल हो सकती है."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("इनपुट चिप"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("यूआरएल दिखाया नहीं जा सका:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "मटीरियल डिज़ाइन लीनियर फ़ॉर्मैट में किसी गतिविधि की स्थिति दिखाने वाले इंडिकेटर को प्रगति बार भी कहते हैं."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "गतिविधि की स्थिति लीनियर फ़ॉर्मैट में दिखाने वाला इंडिकेटर"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "एक ऐसी पंक्ति जिसकी लंबाई बदली नहीं जा सकती और जिसमें कुछ टेक्स्ट होता है. साथ ही, इसकी शुरुआत या आखिर में एक आइकॉन भी होता है."),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage(
            "सूची की दूसरी लाइन वाला टेक्स्ट"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ऐसी सूची के लेआउट जिसे स्क्रोल किया जा सकता है"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("सूचियां"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("बंद किया गया मेन्यू आइटम"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("चेकलिस्ट मेन्यू वाला आइटम"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("संदर्भ मेन्यू वाला आइटम"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "सेक्शन वाले मेन्यू से जुड़ा आइटम"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("सरल मेन्यू वाला आइटम"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("संदर्भ मेन्यू का पहला आइटम"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("संदर्भ मेन्यू का तीसरा आइटम"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "मेन्यू एक अस्थायी सतह पर विकल्पों की सूची दिखाता है. ये विकल्प तब दिखते हैं, जब उपयोगकर्ता किसी बटन, कार्रवाई या दूसरे नियंत्रण का इस्तेमाल करते हैं."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("चार"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("लिंक पाएं"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("मेन्यू का पहला आइटम"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("मेन्यू का तीसरा आइटम"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("मेन्यू का दूसरा आइटम"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("एक"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("झलक देखें"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("हटाएं"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("शेयर करें"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("मेन्यू बटन और सरल मेन्यू"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("तीन"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("मेन्यू"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("दो"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("एक लाइन"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "इस डेमो के लिए उपलब्ध विकल्पों को देखने के लिए यहां टैप करें."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("विकल्प देखें"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("विकल्प"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "आउटलाइन बटन दबाने पर धुंधले हो जाते हैं और ऊपर की ओर उठ जाते हैं. इन्हें विकल्प के तौर पर, दूसरी कार्रवाई के रुप में अक्सर उभरे हुए बटन के साथ जोड़ा जाता है."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("आउटलाइन बटन"),
        "demoPickersShowPicker": MessageLookupByLibrary.simpleMessage(
            "समय या तारीख चुनने वाला टूल दिखाएं"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("तारीख और समय चुनना"),
        "demoPickersTitle":
            MessageLookupByLibrary.simpleMessage("तारीख और समय चुनने वाले टूल"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "लीनियर, सर्कुलर, इंडेटरमिनेट"),
        "demoProgressIndicatorTitle": MessageLookupByLibrary.simpleMessage(
            "गतिविधि की स्थिति दिखाने वाले इंडिकेटर"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "उभरे हुए बटन सादे लेआउट को बेहतर बनाने में मदद करते हैं. ये भरी हुई और बाएं से दाएं खाली जगहों पर किए जाने वाले कामों को बेहतर तरीके से दिखाते हैं."),
        "demoRaisedButtonTitle": MessageLookupByLibrary.simpleMessage(
            "उभरा हुआ दिखाई देने वाला बटन"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "स्लाइडर किसी बार पर मौजूद मानों की सीमा दिखाते हैं. इनमें बार के दोनों तरफ़ आइकॉन मौजूद हो सकते हैं जिनमें मानों की सीमा दिखाई जाती है. ये सेटिंग में बदलाव करने के लिए बेहतर विकल्प हैं. इसमें आवाज़ कम या ज़्यादा करना, चमक घटाना-बढ़ाना या किसी इमेज में फ़िल्टर लगाने जैसे बदलाव शामिल हैं."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "मानों की सीमा दिखाने वाले स्लाइडर"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("सेक्शन वाला मेन्यू"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "चेकबॉक्स से उपयोगकर्ता किसी सेट के एक से ज़्यादा विकल्प चुन सकते हैं. सामान्य चेकबॉक्स का मान सही या गलत होता है. साथ ही, तीन स्थिति वाले चेकबॉक्स का मान खाली भी छोड़ा जा सकता है."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("चेकबॉक्स"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "रेडियो बटन, उपयोगकर्ता को किसी सेट में से एक विकल्प चुनने की सुविधा देता है. अगर आपको लगता है कि उपयोगकर्ता सभी विकल्पों को एक साथ देखना चाहते हैं, तो खास विकल्पों को चुनने के लिए रेडियो बटन का इस्तेमाल करें."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("रेडियो"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "चेकबॉक्स, रेडियो बटन, और स्विच"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "चालू/बंद करने के स्विच से सेटिंग के किसी विकल्प की स्थिति बदली जा सकती है. स्विच किस विकल्प को नियंत्रित करता है और उसकी मदद से जो स्थिति तय होती है, इसकी पूरी जानकारी देने के लिए एक इनलाइन लेबल मौजूद होना चाहिए."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("बदलें"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("चुनने के नियंत्रण"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "एक सादा डायलॉग, उपयोगकर्ता को कई विकल्पों में से किसी एक को चुनने की सुविधा देता है. एक सादे डायलॉग में दूसरा शीर्षक होता है जो दिए गए विकल्पों के ऊपर होता है."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("सरल"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("सरल मेन्यू"),
        "demoSlidersContinuous": MessageLookupByLibrary.simpleMessage(
            "तय न की गई संख्या वाला स्लाइडर"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "तय न की गई संख्या वाला स्लाइडर जिसमें पसंद के मुताबिक थीम चुनने की सुविधा मौजूद है"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "तय न की गई संख्या वाला स्लाइडर जिसके मानों में बदलाव किया जा सकता है"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "स्लाइडर किसी बार पर मौजूद मानों की सीमा दिखाते हैं. इससे लोग किसी भी मान को चुन सकते हैं. ये सेटिंग में बदलाव करने के लिए बेहतर विकल्प हैं. इसमें आवाज़ कम या ज़्यादा करना, चमक घटाना-बढ़ाना या किसी इमेज में फ़िल्टर लगाने जैसे बदलाव शामिल हैं."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("तय संख्या वाला स्लाइडर"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "तय संख्या वाला स्लाइडर जिसमें पसंद के मुताबिक थीम चुनने की सुविधा मौजूद है"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "ऐसा मान जिसमें बदलाव किया जा सकता है"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "स्वाइप करके मान चुनने के विजेट"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("स्लाइडर"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "आपने स्नैकबार वाली कार्रवाई चुनी है."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("कार्रवाई"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("स्नैकबार देखें"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "स्नैकबार, उपयोगकर्ताओं को किसी ऐप्लिकेशन की उस प्रक्रिया के बारे में जानकारी देते हैं जो हो चुकी है या होने वाली है. ये कुछ समय के लिए स्क्रीन के सबसे नीचे दिखते हैं. स्नैकबार को उपयोगकर्ता अनुभव में कोई रुकावट नहीं डालनी चाहिए. साथ ही, इन्हें स्क्रीन से हटाने के लिए उपयोगकर्ता को कुछ करने की ज़रूरत नहीं होती है."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "स्नैकबार, स्क्रीन के सबसे नीचे मैसेज दिखाते हैं"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("यह स्नैकबार है."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("स्नैकबार"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "टैब की मदद से अलग-अलग स्क्रीन, डेटा सेट, और दूसरे इंटरैक्शन पर सामग्री को व्यवस्थित किया जाता है."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "स्क्रोल करने पर अलग-अलग व्यू देने वाले टैब"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("टैब"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "टेक्स्ट फ़ील्ड, उपयोगकर्ताओं को यूज़र इंटरफ़ेस (यूआई) में टेक्स्ट डालने की सुविधा देता है. ये फ़ॉर्म या डायलॉग की तरह दिखाई देते हैं."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ईमेल"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("कृपया पासवर्ड डालें."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - कृपया यूएस का फ़ोन नंबर डालें."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "कृपया सबमिट करने से पहले लाल रंग में दिखाई गई गड़बड़ियों को ठीक करें."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("पासवर्ड छिपाएं"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "इसे संक्षिप्त रखें, यह सिर्फ़ डेमो के लिए है."),
        "demoTextFieldLifeStory": MessageLookupByLibrary.simpleMessage("जीवनी"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("नाम*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("नाम डालना ज़रूरी है."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "आठ से ज़्यादा वर्ण नहीं होने चाहिए."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "कृपया वर्णमाला वाले वर्ण ही डालें."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("पासवर्ड*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "पासवर्ड आपके पहले दिए गए पासवर्ड से अलग है"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("फ़ोन नंबर*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* बताता है कि इस फ़ील्ड को भरना ज़रूरी है"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("फिर से पासवर्ड टाइप करें*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("वेतन"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("पासवर्ड दिखाएं"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("सबमिट करें"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "बदलाव किए जा सकने वाले टेक्स्ट और संख्याओं के लिए एक पंक्ति"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "हमें अपने बारे में कुछ बताएं (जैसे कि आप क्या करते हैं या आपके क्या शौक हैं)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("टेक्स्ट फ़ील्ड"),
        "demoTextFieldUSD":
            MessageLookupByLibrary.simpleMessage("अमेरिकी डॉलर"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "लोग आपको किस नाम से बुलाते हैं?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "हम आपसे किस नंबर पर संपर्क कर सकते हैं?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("आपका ईमेल पता"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "यह ऐसा डायलॉग दिखाता है जिसमें मटीरियल डिज़ाइन वाला टूल मौजूद होता है, जिससे समय चुन सकते हैं."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("समय चुनने वाला टूल"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ग्रुप के विकल्पों के लिए टॉगल बटन इस्तेमाल किए जा सकते हैं. मिलते-जुलते टॉगल बटन के एक से ज़्यादा ग्रुप पर ज़ोर देने के लिए, ग्रुप का एक ही कंटेनर में होना ज़रूरी है"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("टॉगल बटन"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "टूलटिप में टेक्स्ट लेबल दिखाई देता है, जो बताता है कि बटन का क्या काम है या यूज़र इंटरफ़ेस के दूसरे कामों की जानकारी देता है. जब उपयोगकर्ता किसी आइटम पर माउस घुमाते हैं, फ़ोकस करते हैं या उसे दबाकर रखते हैं, तो टूलटिप उससे जुड़ी जानकारी दिखाती है."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "टूलटिप देखने के लिए आइटम को दबाकर रखें या उस पर माउस घुमाएं."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "किसी आइटम पर माउस घुमाने या उसे दबाकर रखने पर एक छोटा मैसेज दिखता है"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("टूलटिप"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("दो लाइन"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "\'मटीरियल डिज़ाइन\' में टाइपाेग्राफ़ी के कई तरह के स्टाइल की जानकारी हाेती है."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "पहले से बताए गए सभी टेक्स्ट स्टाइल"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("टाइपाेग्राफ़ी"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("खाता जोड़ें"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("सहमत"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("रद्द करें"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("असहमत"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("खारिज करें"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("ड्राफ़्ट खारिज करें?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "फ़ुल-स्क्रीन वाला डायलॉग डेमो"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("सेव करें"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("फ़ुल-स्क्रीन वाला डायलॉग"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google को ऐप्लिकेशन की मदद से जगह का पता लगाने में मदद करने दें. इसका मतलब है कि भले ही कोई ऐप्लिकेशन न चल रहा हो फिर भी Google को जगह की जानकारी का अनजान डेटा भेजा जाएगा."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "क्या आप Google की जगह की जानकारी देने वाली सेवा का इस्तेमाल करना चाहते हैं?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("बैकअप खाता सेट करें"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("डायलॉग दिखाएं"),
        "dismiss": MessageLookupByLibrary.simpleMessage("खारिज करें"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("श्रेणियां"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("गैलरी"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("समुद्र तट"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("ब्रॉन्ज़ वर्क्स"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("चेन्नई"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("चेट्टीनाड"),
        "placeFisherman":
            MessageLookupByLibrary.simpleMessage("मछली पकड़ने वाला"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("फूलों का बाज़ार"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("दोपहर के खाने की तैयारी"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("बाज़ार"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("पॉन्डिचेरी"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("सॉल्ट फ़ार्म"),
        "placeScooters":
            MessageLookupByLibrary.simpleMessage("स्कूटर चलाते लोग"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("सिल्क बनाने वाला"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("तंजोर"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("तंजावुर मंदिर"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("कार के लिए बचत"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("चेकिंग"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("घर की बचत"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("छुट्टियां"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("खाते का मालिक"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("सालाना फ़ायदे का प्रतिशत"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("पिछले साल दिया गया ब्याज"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("ब्याज दर"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("इस साल अब तक का ब्याज"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("अगला स्टेटमेंट"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("कुल"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("खाते"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("सूचनाएं"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("बिल"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("बकाया बिल"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("कपड़े"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("कॉफ़ी शॉप"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("किराने का सामान"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("रेस्टोरेंट"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("बाकी बजट"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("बजट"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "निजी तौर पर पैसाें से जुड़ी सुविधाएं देने वाला ऐप्लिकेशन"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("बाकी"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("लॉग इन करें"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("लॉग इन करें"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally में लॉग इन करें"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("कोई खाता नहीं है?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("पासवर्ड"),
        "rallyLoginRememberMe": MessageLookupByLibrary.simpleMessage(
            "मेरी दी हुई जानकारी याद रखें"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("साइन अप करें"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("उपयोगकर्ता नाम"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("सभी देखें"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("सभी खाते देखें"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("सभी बिल देखें"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("सभी बजट देखें"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("एटीएम ढूंढें"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("सहायता"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("खाते प्रबंधित करें"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("सूचनाएं"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "बिना कागज़ की सुविधा के लिए सेटिंग"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("पासकोड और टच आईडी"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("निजी जानकारी"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("साइन आउट करें"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("कर से जुड़े दस्तावेज़"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("खाते"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("बिल"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("बजट"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("खास जानकारी"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("सेटिंग"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Flutter Gallery के बारे में जानकारी"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "लंदन के TOASTER ने डिज़ाइन किया है"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("सेटिंग बंद करें"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("सेटिंग"),
        "settingsDarkTheme":
            MessageLookupByLibrary.simpleMessage("गहरे रंग की थीम"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("सुझाव भेजें"),
        "settingsLightTheme":
            MessageLookupByLibrary.simpleMessage("हल्के रंग की थीम"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("स्थान-भाषा"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("प्लैटफ़ॉर्म मैकेनिक"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("स्लो मोशन"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("सिस्टम"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("टेक्स्ट की दिशा"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("बाएं से दाएं"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("स्थानीय भाषा के हिसाब से"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("दाएं से बाएं"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("टेक्स्ट स्केलिंग"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("बहुत बड़ा"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("बड़ा"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("सामान्य"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("छोटा"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("थीम"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("सेटिंग"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("अभी नहीं"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("कार्ट में से आइटम हटाएं"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("कार्ट"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("शिपिंग:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("कुल कीमत:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("टैक्स:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("कुल"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("एक्सेसरी"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("सभी"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("कपड़े"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("होम पेज"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "एक ऐसा ऐप्लिकेशन जहां फ़ैशन से जुड़ी सारी चीज़ें खुदरा में मिलती हैं"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("पासवर्ड"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("उपयोगकर्ता नाम"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("लॉग आउट करें"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("मेन्यू"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("आगे बढ़ें"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("ब्लू स्टोन मग"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("गुलाबी कंगूरेदार टी-शर्ट"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("शैम्ब्रे नैपकिन"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("शैम्ब्रे शर्ट"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("क्लासिक सफ़ेद कॉलर"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("क्ले स्वेटर"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("कॉपर वायर रैक"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("फाइन लाइंस टी-शर्ट"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("गार्डन स्ट्रैंड"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("गैट्सबी हैट"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("जेंट्री जैकेट"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("गिल्ट डेस्क ट्रायो"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("जिंजर स्कार्फ़"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("स्लेटी रंग का स्लाउच टैंक"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("हुर्राह्स टी सेट"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("किचन क्वॉट्रो"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("नेवी ट्राउज़र"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("प्लास्टर ट्यूनिक"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("क्वॉर्टेट टेबल"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("रेनवॉटर ट्रे"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("रमोना क्रॉसओवर"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("सी ट्यूनिक"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("सीब्रीज़ स्वेटर"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("शोल्डर रोल्स टी-शर्ट"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("कंधे पर लटकाने वाले बैग"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("सूद सिरामिक सेट"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella ब्रैंड के चश्मे"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("स्ट्रट ईयर-रिंग्स"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("सक्युलेंट प्लांटर"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("सनशर्ट ड्रेस"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("सर्फ़ ऐंड पर्फ़ शर्ट"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("झाेला"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("वार्सिटी सॉक्स"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("वॉल्टर हेनली (सफ़ेद)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("वीव की-रिंग"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage(
                "सफ़ेद रंग की पिन्स्ट्राइप शर्ट"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("व्हिटनी बेल्ट"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("कार्ट में जोड़ें"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("कार्ट बंद करें"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("मेन्यू बंद करें"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("मेन्यू खोलें"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("आइटम हटाएं"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("खोजें"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("सेटिंग"),
        "signIn": MessageLookupByLibrary.simpleMessage("साइन इन करें"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "शुरू करने पर तुरंत प्रतिक्रिया देने वाला लेआउट"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("मुख्य भाग"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("बटन"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("शीर्षक"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("सबटाइटल"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("शीर्षक"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("स्टार्टर ऐप्लिकेशन"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("जोड़ें"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("पसंदीदा"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("खोजें"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("शेयर करें")
      };
}
