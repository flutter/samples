// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ka locale. All the
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
  String get localeName => 'ka';

  static m0(value) =>
      "ამ აპის საწყისი კოდის სანახავად, გთხოვთ, მოინახულოთ ${value}.";

  static m1(title) => "ჩანაცვლების ველი ჩანართისთვის „${title}“";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'რესტორნები არ არის', one: '1 რესტორანი', other: '${totalRestaurants} რესტორნები')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'პირდაპირი', one: '1 გადაჯდომა', other: '${numberOfStops} გადაჯდომა')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'ხელმისაწვდომი საკუთრება არ არის', one: '1 ხელმისაწვდომი საკუთრება', other: '${totalProperties} ხელმისაწვდომი საკუთრება')}";

  static m5(value) => "ერთეული ${value}";

  static m6(error) => "გაცვლის ბუფერში კოპირება ვერ მოხერხდა: ${error}";

  static m7(value) => "უწყვეტი: ${value}";

  static m8(value) => "დისკრეტული: ${value}";

  static m9(name, phoneNumber) => "${name} ტელეფონის ნომერია ${phoneNumber}";

  static m10(value) => "თქვენ აირჩიეთ: „${value}“";

  static m11(accountName, accountNumber, amount) =>
      "${accountName} ანგარიში ${accountNumber}, თანხა ${amount}.";

  static m12(amount) =>
      "ამ თვეში ბანკომატების გადასახადებში დახარჯული გაქვთ ${amount}";

  static m13(percent) =>
      "კარგია! თქვენს მიმდინარე ანგარიშზე ნაშთი გასულ თვესთან შედარებით ${percent}-ით მეტია.";

  static m14(percent) =>
      "გატყობინებთ, რომ ამ თვეში უკვე დახარჯული გაქვთ საყიდლებისთვის განკუთვნილი ბიუჯეტის ${percent}.";

  static m15(amount) => "რესტორნებში ამ კვირაში დახარჯული გაქვთ ${amount}.";

  static m16(count) =>
      "${Intl.plural(count, one: 'გაზარდეთ თქვენი პოტენციური საგადასახადო გამოქვითვა! მიანიჭეთ კატეგორია 1 მიუმაგრებელ ტრანსაქციას.', other: 'გაზარდეთ თქვენი პოტენციური საგადასახადო გამოქვითვა! მიანიჭეთ კატეგორია ${count} მიუმაგრებელ ტრანსაქციას.')}";

  static m17(billName, date, amount) =>
      "${billName} ანგარიშის გასწორების ვადაა ${date}, თანხა: ${amount}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} ბიუჯეტი, დახარჯული თანხა: ${amountUsed} / ${amountTotal}-დან, დარჩენილი თანხა: ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'ერთეულები არ არის', one: '1 ერთეული', other: '${quantity} ერთეული')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "რაოდენობა: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'საყიდლების კალათა, ერთეულები არ არის', one: 'საყიდლების კალათა, 1 ერთეული', other: 'საყიდლების კალათა, ${quantity} ერთეული')}";

  static m23(product) => "ამოიშალოს ${product}";

  static m24(value) => "ერთეული ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Flutter-ის ნიმუშების საცავი GitHub-ზე"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("გალერეაში დაბრუნება"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("ანგარიში"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("მაღვიძარა"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("კალენდარი"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("კამერა"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("კომენტარები"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ღილაკი"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("შექმნა"),
        "chipBiking":
            MessageLookupByLibrary.simpleMessage("ველოსიპედით სეირნობა"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("ლიფტი"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("ბუხარი"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("დიდი"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("საშუალო"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("პატარა"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("შუქის ჩართვა"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("სარეცხი მანქანა"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ქარვისფერი"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ლურჯი"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("მოლურჯო ნაცრისფერი"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ყავისფერი"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ციანი"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("მუქი ნარინჯისფერი"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("მუქი მეწამული"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("მწვანე"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ნაცრისფერი"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("მუქი ლურჯი"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ცისფერი"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ღია მწვანე"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ლაიმისფერი"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ნარინჯისფერი"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ვარდისფერი"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("მეწამული"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("წითელი"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ზურმუხტისფერი"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ყვითელი"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "პერსონალიზებული სამოგზაურო აპი"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ჭამა24"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("ნეაპოლი, იტალია"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("პიცა შეშის ღუმელში"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("დალასი, შეერთებული შტატები"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("ლისაბონი, პორტუგალია"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ქალს უჭირავს უზარმაზარი პასტრომის სენდვიჩი"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ცარიელი ბარი სასადილოს სტილის სკამებით"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("კორდობა, არგენტინა"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ბურგერი"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "პორტლენდი, შეერთებული შტატები"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("კორეული ტაკო"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("პარიზი, საფრანგეთი"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("შოკოლადის დესერტი"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("სეული, სამხრეთ კორეა"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "მხატვრულად გაფორმებული რესტორნის სტუმრების დასაჯდომი სივრცე"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("სიეტლი, შეერთებული შტატები"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("კრევეტის კერძი"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("ნეშვილი, შეერთებული შტატები"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("საფუნთუშის შესასვლელი"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("ატლანტა, შეერთებული შტატები"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("თეფში ლანგუსტებით"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("მადრიდი, ესპანეთი"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "კაფეს დახლი საკონდიტრო ნაწარმით"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "აღმოაჩინეთ რესტორნები დანიშნულების ადგილის მიხედვით"),
        "craneFly": MessageLookupByLibrary.simpleMessage("ფრენა"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("ასპენი, შეერთებული შტატები"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "შალე თოვლიან ლანდშაფტზე მარადმწვანე ხეებით"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "ბიგ სური, შეერთებული შტატები"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("კაირო, ეგვიპტე"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ალ-აზჰარის მეჩეთის კოშკები მზის ჩასვლისას"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("ლისაბონი, პორტუგალია"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("აგურის შუქურა ზღვაზე"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("ნაპა, შეერთებული შტატები"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("აუზი პალმის ხეებით"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("ბალი, ინდონეზია"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ზღვისპირა აუზი პალმის ხეებით"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("კარავი ველზე"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("კუმბუს მინდორი, ნეპალი"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "სალოცავი ალმები თოვლიანი მთის ფონზე"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("მაჩუ-პიკჩუ, პერუ"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("მაჩუ-პიქჩუს ციტადელი"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("მალე, მალდივები"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("წყალზე მდგომი ბუნგალოები"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("ვიცნაუ, შვეიცარია"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ტბისპირა სასტუმრო მთების ფონზე"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("მეხიკო, მექსიკა"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ნატიფი ხელოვნების სასახლის ზედხედი"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "რუშმორის მთა, შეერთებული შტატები"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("მთა რაშმორი"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("სინგაპური"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("სუპერხეების კორომი"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ჰავანა, კუბა"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "მამაკაცი ეყრდნობა ძველებურ ლურჯ მანქანას"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "აღმოაჩინეთ ფრენები დანიშნულების ადგილის მიხედვით"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("აირჩიეთ თარიღი"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("თარიღების არჩევა"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("აირჩიეთ დანიშნულების ადგილი"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("სასასდილოები"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("მდებარეობის არჩევა"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage(
            "აირჩიეთ მგზავრობის დაწყების ადგილი"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("აირჩიეთ დრო"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("მოგზაურები"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ძილი"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("მალე, მალდივები"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("წყალზე მდგომი ბუნგალოები"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("ასპენი, შეერთებული შტატები"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("კაირო, ეგვიპტე"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ალ-აზჰარის მეჩეთის კოშკები მზის ჩასვლისას"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("ტაიპეი, ტაივანი"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ცათამბჯენი ტაიბეი 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "შალე თოვლიან ლანდშაფტზე მარადმწვანე ხეებით"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("მაჩუ-პიკჩუ, პერუ"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("მაჩუ-პიქჩუს ციტადელი"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ჰავანა, კუბა"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "მამაკაცი ეყრდნობა ძველებურ ლურჯ მანქანას"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("ვიცნაუ, შვეიცარია"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ტბისპირა სასტუმრო მთების ფონზე"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "ბიგ სური, შეერთებული შტატები"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("კარავი ველზე"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("ნაპა, შეერთებული შტატები"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("აუზი პალმის ხეებით"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("პორტო, პორტუგალია"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ფერადი საცხოვრებელი სახლები რიბეირას მოედანზე"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("ტულუმი, მექსიკა"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "მაიას ნანგრევები ზღვისპირა კლიფზე"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("ლისაბონი, პორტუგალია"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("აგურის შუქურა ზღვაზე"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "აღმოაჩინეთ უძრავი ქონება დანიშნულების ადგილის მიხედვით"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("დაშვება"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("ვაშლის ღვეზელი"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("გაუქმება"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("ჩიზქეიქი"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("შოკოლადის ბრაუნი"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "ქვემოთ მოცემული სიიდან აირჩიეთ თქვენი საყვარელი დესერტი. თქვენი არჩევანის მეშვეობით მოხდება თქვენს ტერიტორიაზე შემოთავაზებული სიის მორგება."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("გაუქმება"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("აკრძალვა"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("აირჩიეთ საყვარელი დესერტი"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "რუკაზე გამოჩნდება თქვენი ამჟამინდელი მდებარეობა, რომელიც გამოყენებული იქნება მითითებებისთვის, ახლომდებარე ტერიტორიაზე ძიების შედეგებისთვის და მგზავრობის სავარაუდო დროის გამოსათვლელად."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "გსურთ, Maps-ს ჰქონდეს წვდომა თქვენს მდებარეობაზე ამ აპის გამოყენებისას?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("ტირამისუ"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ღილაკი"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("თეთრი ფონი"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("გაფრთხილების ჩვენება"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("ჩეთი"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("მთავარი"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("პროფილი"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "მოქმედების ჩიპები ოფციების ნაკრებია, რომელიც უშვებს ქმედებასთან დაკავშირებულ პირველად შემცველობას. მოქმედების ჩიპები დინამიურად და კონტექსტუალურად უნდა გამოჩნდეს UI-ს სახით."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("მოქმედების ჩიპი"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "გამაფრთხილებელი დიალოგი აცნობებს მომხმარებელს ისეთი სიტუაციების შესახებ, რომლებიც ყურადღების მიქცევას საჭიროებს. სურვილისამებრ, გამაფრთხილებელ დიალოგს შეიძლება ჰქონდეს სათაური და ქმედებათა სია."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("გაფრთხილება"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("გაფრთხილება სათაურით"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "ნავიგაციის ქვედა ზოლები ეკრანის ქვედა ნაწილში აჩვენებს სამიდან ხუთ დანიშნულების ადგილამდე. დანიშნულების თითოეული ადგილი წარმოდგენილია ხატულათი და არასვალდებულო ტექსტური ლეიბლით. ქვედა ნავიგაციის ხატულაზე შეხებისას მომხმარებელი გადადის ხატულასთან დაკავშირებულ ზედა დონის სამიზნე ნავიგაციაზე."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("მუდმივი წარწერები"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("არჩეული ლეიბლი"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "ქვედა ნავიგაცია ჯვარედინად გაბუნდოვანებული ხედებით"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("ნავიგაცია ქვედა ნაწილში"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("დამატება"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ქვედა ფურცლის ჩვენება"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("ზედა კოლონტიტული"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "მოდალური ქვედა ფურცელი არის მენიუს ან დიალოგის ალტერნატივა და მომხმარებელს უზღუდავს აპის დანარჩენ ნაწილთან ინტერაქციას."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("მოდალური ქვედა ფურცელი"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "მუდმივი ქვედა ფურცელი აჩვენებს ინფორმაციას, რომელიც ავსებს აპის ძირითად კონტენტს. მუდმივი ქვედა ფურცელი ხილვადია მომხმარებლის მიერ აპის სხვა ნაწილებთან ინტერაქციის დროსაც."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("მუდმივი ქვედა ფურცელი"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "მუდმივი და მოდალური ქვედა ფურცლები"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("ქვედა ფურცელი"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("ტექსტური ველები"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "ბრტყელი, ამოწეული, კონტურული და სხვა"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ღილაკები"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "კომპაქტური ელემენტები, რომლებიც წარმოადგენენ შენატანს, ატრიბუტს ან ქმედებას"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ჩიპები"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "არჩევანის ჩიპები წარმოადგენს ნაკრებიდან ერთ არჩევანს. არჩევანის ჩიპები შეიცავს დაკავშირებულ აღმნიშვნელ ტექსტს ან კატეგორიას."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Choice Chip"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("კოდის ნიმუში"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "კოპირებულია გაცვლის ბუფერში."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ყველას კოპირება"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "კონსტანტები ფერებისა და გრადიენტებისთვის, რომლებიც წარმოადგენს Material Design-ის ფერთა პალიტრას."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "წინასწარ განსაზღვრული ყველა ფერი"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("ფერები"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "ქმედებათა ფურცელი არის გაფრთხილების კონკრეტული სტილი, რომელიც მომხმარებელს სთავაზობს მიმდინარე კონტექსტთან დაკავშირებულ ორ ან მეტ არჩევანს. ქმედებათა ფურცელს შეიძლება ჰქონდეს სათაური, დამატებითი შეტყობინება და ქმედებათა სია."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("ქმედებათა ფურცელი"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "მხოლოდ გამაფრთხილებელი ღილაკები"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("გაფრთხილება ღილაკებით"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "გამაფრთხილებელი დიალოგი აცნობებს მომხმარებელს ისეთი სიტუაციების შესახებ, რომლებიც ყურადღების მიქცევას საჭიროებს. სურვილისამებრ, გამაფრთხილებელ დიალოგს შეიძლება ჰქონდეს სათაური, კონტენტი და ქმედებათა სია. სათაური ნაჩვენებია კონტენტის თავზე, ხოლო ქმედებები — კონტენტის ქვემოთ."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("გაფრთხილება"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("გაფრთხილება სათაურით"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-ის სტილის გამაფრთხილებელი დიალოგები"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("გაფრთხილებები"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-ის სტილის ღილაკი. შეიცავს ტექსტს და/ან ხატულას, რომელიც ქრება ან ჩნდება შეხებისას. სურვილისამებრ, შეიძლება ჰქონდეს ფონი."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-ის სტილის ღილაკები"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ღილაკები"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "გამოიყენება რამდენიმე ურთიერთგამომრიცხავ ვარიანტს შორის არჩევისთვის. როდესაც სეგმენტირებულ მართვაში ერთ ვარიანტს ირჩევთ, სხვა ვარიანტების არჩევა უქმდება."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-სტილის სეგმენტირებული მართვა"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("სეგმენტირებული მართვა"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "სლაიდერის გამოყენება შესაძლებელია მნიშვნელობათა უწყვეტი ან დისკრეტული სიმრავლიდან ასარჩევად."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-სტილის სლაიდერი"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("სლაიდერი"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "გადამრთველი გამოიყენება ცალკეული პარამეტრის ჩართვა/გამორთვისთვის."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-სტილის გადამრთველი"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "iOS-სტილის ქვედა ნავიგაციის ჩანართების ზოლი. ეკრანზე აჩვენებს რამდენიმე ჩანართს, რომელთაგან აქტიურია ერთი, ნაგულისხმევად, პირველი."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-სტილის ქვედა ჩანართების ზოლი"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("ჩანართების ზოლი"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "მარტივი, გამაფრთხილებელი და სრულეკრანიანი"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("დიალოგები"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API დოკუმენტაცია"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ფილტრის ჩიპები იყენებს თეფებს ან აღმნიშვნელ სიტყვებს, შემცველობის დასაფილტრად."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ფილტრის ჩიპი"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "დაჭერისას ბრტყელი ღილაკი აჩვენებს მელნის შხეფებს, მაგრამ არ იწევა. გამოიყენეთ ბრტყელი ღილაკები ხელსაწყოთა ზოლებში, დიალოგებში და ჩართული სახით დაშორებით"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ბრტყელი ღილაკი"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "მოქმედების მოლივლივე ღილაკი არის ღილაკი წრიული ხატულით, რომელიც მდებარეობს კონტენტის ზემოდან და აპლიკაციაში ყველაზე მნიშვნელოვანი ქმედების გამოყოფის საშუალებას იძლევა."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("მოქმედების მოლივლივე ღილაკი"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "fullscreenDialog თვისება განსაზღვრავს, არის თუ არა შემომავალი გვერდი სრულეკრანიანი მოდალური დიალოგი"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("სრულ ეკრანზე"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("სრულ ეკრანზე"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("ინფორმაცია"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ჩიპის შეუყვანა წარმოადგენს ინფორმაციის კომპლექსურ ნაწილს, როგორიც არის ერთეული (პიროვნება, ადგილი ან საგანი) ან საუბრის ტექსტი კომპაქტურ ფორმაში."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("შეყვანის ჩიპი"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "URL-ის ჩვენება ვერ მოხერხდა:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "ფიქსირებული სიმაღლის ერთი მწკრივი, რომელიც, ჩვეულებრივ, შეიცავს ტექსტს, ასევე ხატულას თავში ან ბოლოში."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("მეორადი ტექსტი"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "განლაგებების სიაში გადაადგილება"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("სიები"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("ერთი ხაზი"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "შეეხეთ აქ ამ დემოს ხელმისაწვდომი ვარიანტების სანახავად."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("პარამეტრების ნახვა"),
        "demoOptionsTooltip":
            MessageLookupByLibrary.simpleMessage("ვარიანტები"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "კონტურულ ღილაკებზე დაჭერისას ისინი ხდება გაუმჭვირვალე და იწევა. ისინი ხშირად წყვილდება ამოწეულ ღილაკებთან ალტერნატიული, მეორეული ქმედების მისანიშნებლად."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("კონტურული ღილაკი"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ამოწეული ღილაკები ბრტყელ განლაგებების უფრო მოცულობითს ხდის. გადატვირთულ ან ფართო სივრცეებზე ფუნქციებს კი — უფრო შესამჩნევს."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("ამოწეული ღილაკი"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "მოსანიშნი ველები მომხმარებელს საშუალებას აძლევს, აირჩიოს რამდენიმე ვარიანტი ნაკრებიდან. ჩვეულებრივი მოსანიშნი ველის მნიშვნელობებია სწორი ან არასწორი, ხოლო სამმდგომარეობიანი მოსანიშნი ველის მნიშვნელობა შეიძლება იყოს ნულიც."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("მოსანიშნი ველი"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "არჩევანის ღილაკები მომხმარებელს საშუალებას აძლევს, აირჩიოს ერთი ვარიანტი ნაკრებიდან. ისარგებლეთ არჩევანის ღილაკებით გამომრიცხავი არჩევისთვის, თუ ფიქრობთ, რომ მომხმარებელს ყველა ხელმისაწვდომი ვარიანტის გვერდიგვერდ ნახვა სჭირდება."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("რადიო"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "მოსანიშნი ველები, არჩევანის ღილაკები და გადამრთველები"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ჩართვა/გამორთვა გადართავს პარამეტრების ცალკეულ ვარიანტებს. ვარიანტი, რომელსაც გადამრთველი მართავს, ასევე მდგომარეობა, რომელშიც ის იმყოფება, ნათელი უნდა იყოს შესაბამისი ჩართული ლეიბლიდან."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("გადამრთველი"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("არჩევის მართვის საშუალებები"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "მარტივი დიალოგი მომხმარებელს რამდენიმე ვარიანტს შორის არჩევანის გაკეთების საშუალებას აძლევს. სურვილისამებრ, მარტივ დიალოგს შეიძლება ჰქონდეს სათაური, რომელიც გამოჩნდება არჩევანის ზემოთ."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("მარტივი"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "თქვენ დააჭირეთ სნეკ-ზოლის მოქმედებას."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("მოქმედება"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("სნეკ-ზოლის ჩვენება"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "სნეკ-ზოლები მომხმარებლებს აწვდის ინფორმაციას იმ პროცესის შესახებ, რომელიც აპმა შეასრულა ან რომელსაც შეასრულებს. ისინი ჩნდება დროებით, ეკრანის ქვედა ნაწილში. ისინი არ უნდა უშლიდნენ ხელს მომხმარებელს და გასაქრობად მომხმარებლისგან რამის გაკეთება არ სჭირდებათ."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "სნეკ-ზოლები აჩვენებს შეტყობინებებს ეკრანის ქვედა ნაწილში"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("ეს არის სნეკ-ზოლი."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("სნეკ-ზოლები"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "ჩანართების მეშვეობით ხდება კონტენტის ორგანიზება სხვადასხვა ეკრანის, მონაცემთა ნაკრების და სხვა ინტერაქციების ფარგლებში."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ჩანართები ცალ-ცალკე გადაადგილებადი ხედებით"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ჩანართები"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "ტექსტური ველები მომხმარებლებს UI-ში ტექსტის შეყვანის საშუალებას აძლევს. როგორც წესი, ისინი ჩნდება ფორმებსა და დიალოგებში."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ელფოსტა"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("გთხოვთ, შეიყვანოთ პაროლი."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###—#### — შეიყვანეთ აშშ-ს ტელეფონის ნომერი."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "გთხოვთ, გადაგზავნამდე გაასწოროთ შეცდომები."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("პაროლის დამალვა"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "ეცადეთ მოკლე იყოს, ეს მხოლოდ დემოა."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("ცხოვრებისეული ამბავი"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("სახელი*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("საჭიროა სახელი."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("მაქსიმუმ 8 სიმბოლო."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "გთხოვთ, შეიყვანოთ მხოლოდ ანბანური სიმბოლოები."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("პაროლი*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("პაროლები არ ემთხვევა"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ტელეფონის ნომერი*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* აღნიშნავს აუცილებელ ველს"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("ხელახლა აკრიფეთ პაროლი*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("ხელფასი"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("პაროლის გამოჩენა"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("გაგზავნა"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "რედაქტირებადი ტექსტისა და რიცხვების ერთი ხაზი"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "გვიამბეთ თქვენ შესახებ (მაგ., დაწერეთ, რას საქმიანობთ ან რა ჰობი გაქვთ)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("ტექსტური ველები"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "როგორ მოგმართავენ ადამიანები?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("სად დაგიკავშირდეთ?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("თქვენი ელფოსტის მისამართი"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "გადართვის ღილაკების მეშვეობით შესაძლებელია მსგავსი ვარიანტების დაჯგუფება. გადართვის ღილაკების დაკავშირებული ჯგუფებს უნდა ჰქონდეს საერთო კონტეინერი."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("გადართვის ღილაკები"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("ორი ხაზი"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "განსაზღვრებები Material Design-ში არსებული სხვადასხვა ტიპოგრაფიული სტილისთვის."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "ტექსტის ყველა წინასწარ განასაზღვრული სტილი"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("ტიპოგრაფია"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("ანგარიშის დამატება"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ვეთანხმები"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("გაუქმება"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("არ ვეთანხმები"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("გაუქმება"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("გსურთ მონახაზის გაუქმება?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "სრულეკრანიან დიალოგის დემონსტრაცია"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("შენახვა"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("სრულეკრანიანი დიალოგი"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google-ისთვის ნების დართვა, რომ აპებს მდებარეობის ამოცნობაში დაეხმაროს. ეს ნიშნავს, რომ Google-ში გადაიგზავნება მდებარეობის ანონიმური მონაცემები მაშინაც კი, როდესაც აპები გაშვებული არ არის."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "გსურთ Google-ის მდებარეობის სერვისის გამოყენება?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "სარეზერვო ანგარიშის დაყენება"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("დიალოგის ჩვენება"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("მიმართვის სტილები და მედია"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("კატეგორიები"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("გალერეა"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("დანაზოგები მანქანისთვის"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("მიმდინარე"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("სახლის დანაზოგები"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("დასვენება"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("ანგარიშის მფლობელი"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("წლიური პროცენტული სარგებელი"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "გასულ წელს გადახდილი პროცენტი"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("საპროცენტო განაკვეთი"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "პროცენტრი წლის დასაწყისიდან დღევანდელ თარიღამდე"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("შემდეგი ამონაწერი"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("სულ"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("ანგარიშები"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("გაფრთხილებები"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("გადასახადები"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("გადასახდელია"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("ტანსაცმელი"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("ყავახანები"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("სურსათი"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("რესტორნები"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("დარჩენილია"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("ბიუჯეტები"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("პირადი ფინანსების აპი"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("დარჩა"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("შესვლა"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("შესვლა"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Rally-ში შესვლა"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("არ გაქვთ ანგარიში?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("პაროლი"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("დამიმახსოვრე"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("რეგისტრაცია"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("მომხმარებლის სახელი"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ყველას ნახვა"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("ყველა ანგარიშის ნახვა"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage(
            "ყველა გადასახდელი ანგარიშის ნახვა"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("ყველა ბიუჯეტის ნახვა"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ბანკომატების პოვნა"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("დახმარება"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("ანგარიშების მართვა"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("შეტყობინებები"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Paperless-ის პარამეტრები"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("საიდუმლო კოდი და Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("პერსონალური ინფორმაცია"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("გასვლა"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("საგადასახადო დოკუმენტები"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("ანგარიშები"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("გადასახადები"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ბიუჯეტები"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("მიმოხილვა"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("პარამეტრები"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Flutter Gallery-ს შესახებ"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "შექმნილია TOASTER-ის მიერ ლონდონში"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("პარამეტრების დახურვა"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("პარამეტრები"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("მუქი"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("გამოხმაურების გაგზავნა"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("ღია"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("ლოკალი"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("პლატფორმის მექანიკა"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("შენელებული მოძრაობა"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("სისტემა"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("ტექსტის მიმართულება"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage(
            "მარცხნიდან მარჯვნივ დამწერლობებისათვის"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("ლოკალის მიხედვით"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage(
            "მარჯვნიდან მარცხნივ დამწერლობებისათვის"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("ტექსტის სკალირება"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("უზარმაზარი"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("დიდი"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("ჩვეულებრივი"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("მცირე"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("თემა"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("პარამეტრები"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("გაუქმება"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("კალათის გასუფთავება"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("კალათა"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("მიწოდება:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("სულ:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("გადასახადი:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("სულ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("აქსესუარები"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ყველა"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ტანსაცმელი"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("მთავარი"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "მოდური აპი საცალო მოვაჭრეებისთვის"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("პაროლი"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("მომხმარებლის სახელი"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("გამოსვლა"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("მენიუ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("შემდეგი"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Blue Stone-ის ფინჯანი"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "მრგვალი ფორმის ალუბლისფერი მაისური"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("შამბრის ხელსახოცები"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("შამბრის მაისური"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("კლასიკური თეთრსაყელოიანი"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Clay-ს სვიტერი"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("სპილენძის მავთულის საკიდი"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("ზოლებიანი მაისური"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Gatsby-ს ქუდი"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ჟენტრის ჟაკეტი"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "სამი მოოქრული სამუშაო მაგიდა"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("ჯანჯაფილისფერი შარფი"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("ნაცრისფერი უსახელო პერანგი"),
        "shrineProductHurrahsTeaSet": MessageLookupByLibrary.simpleMessage(
            "Hurrahs-ის ჩაის ფინჯნების ნაკრები"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("სამზარეულოს კვატრო"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("მუქი ლურჯი შარვალი"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("თაბაშირისფერი ტუნიკა"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Quartet-ის მაგიდა"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("წვიმის წყლის ლანგარი"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona-ს გადასაკიდი ჩანთა"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("ზღვის ტუნიკა"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Seabreeze-ის სვიტერი"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Shoulder rolls მაისური"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("მხარზე გადასაკიდი ჩანთა"),
        "shrineProductSootheCeramicSet": MessageLookupByLibrary.simpleMessage(
            "Soothe-ის კერამიკული ნაკრები"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Stella-ს მზის სათვალე"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut-ის საყურეები"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("სუკულენტის ქოთნები"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("საზაფხულო კაბა-მაისური"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surf and perf მაისური"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vagabond-ის ტომარა"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Varsity-ს წინდები"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (თეთრი)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Weave -ს გასაღებების ასხმა"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("თეთრი ზოლებიანი მაისური"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Whitney-ს ქამარი"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("კალათაში დამატება"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("კალათის დახურვა"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("მენიუს დახურვა"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("მენიუს გახსნა"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("ერთეულის ამოშლა"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("ძიება"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("პარამეტრები"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "ადაპტირებადი საწყისი განლაგება"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("ძირითადი ტექსტი"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ღილაკი"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("სათაური"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("სუბტიტრი"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("სათაური"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("საწყისი აპი"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("დამატება"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("რჩეული"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ძიება"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("გაზიარება")
      };
}
