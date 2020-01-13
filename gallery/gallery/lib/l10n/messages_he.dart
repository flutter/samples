// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a he locale. All the
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
  String get localeName => 'he';

  static m0(value) =>
      "כדי לראות את קוד המקור של האפליקציה הזו, יש להיכנס אל ${value}.";

  static m1(title) => "Placeholder לכרטיסייה ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'אין מסעדות', one: 'מסעדה אחת', two: '${totalRestaurants} מסעדות', many: '${totalRestaurants} מסעדות', other: '${totalRestaurants} מסעדות')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'ישירה', one: 'עצירת ביניים אחת', two: '${numberOfStops} עצירות', many: '${numberOfStops} עצירות', other: '${numberOfStops} עצירות')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'אין נכסים זמינים', one: 'נכס אחד זמין', two: '${totalProperties} נכסים זמינים', many: '${totalProperties} נכסים זמינים', other: '${totalProperties} נכסים זמינים')}";

  static m5(value) => "פריט ${value}";

  static m6(error) => "ניסיון ההעתקה ללוח נכשל: ${error}";

  static m7(value) => "רציף: ${value}";

  static m8(value) => "בדיד: ${value}";

  static m9(name, phoneNumber) => "מספר הטלפון של ${name} הוא ${phoneNumber}";

  static m10(value) => "בחרת: \"${value}\"";

  static m11(accountName, accountNumber, amount) =>
      "בחשבון ${accountName} עם המספר ${accountNumber} יש ${amount}.";

  static m12(amount) => "הוצאת ${amount} על עמלות כספומטים החודש";

  static m13(percent) =>
      "כל הכבוד! הסכום בחשבון העו\"ש שלך גבוה ב-${percent} בהשוואה לחודש הקודם.";

  static m14(percent) =>
      "לתשומת לבך, ניצלת ${percent} מתקציב הקניות שלך לחודש זה.";

  static m15(amount) => "הוצאת ${amount} על ארוחות במסעדות החודש.";

  static m16(count) =>
      "${Intl.plural(count, one: 'רוצה להגדיל את ההנחה הפוטנציאלית שלך במס? יש להקצות קטגוריות לעסקה אחת שלא הוקצתה.', two: 'רוצה להגדיל את ההנחה הפוטנציאלית שלך במס? יש להקצות קטגוריות ל-${count} עסקאות שלא הוקצו.', many: 'רוצה להגדיל את ההנחה הפוטנציאלית שלך במס? יש להקצות קטגוריות ל-${count} עסקאות שלא הוקצו.', other: 'רוצה להגדיל את ההנחה הפוטנציאלית שלך במס? יש להקצות קטגוריות ל-${count} עסקאות שלא הוקצו.')}";

  static m17(billName, date, amount) =>
      "יש לשלם את החיוב על ${billName} בסך ${amount} בתאריך ${date}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "בתקציב ${budgetName} הייתה הוצאה של ${amountUsed} מתוך ${amountTotal} ונותר הסכום ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'אין פריטים', one: 'פריט אחד', two: '${quantity} פריטים', many: '${quantity} פריטים', other: '${quantity} פריטים')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "כמות: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'עגלת קניות, אין פריטים', one: 'עגלת קניות, פריט אחד', two: 'עגלת קניות, ${quantity} פריטים', many: 'עגלת קניות, ${quantity} פריטים', other: 'עגלת קניות, ${quantity} פריטים')}";

  static m23(product) => "הסרת ${product}";

  static m24(value) => "פריט ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "מאגר GitHub לדוגמאות Flutter"),
        "backToGallery": MessageLookupByLibrary.simpleMessage("חזרה לגלריה"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("חשבון"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("התראה"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("יומן Google"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("מצלמה"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("תגובות"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("לחצן"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("יצירה"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("רכיבת אופניים"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("מעלית"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("קמין"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("גדול"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("בינוני"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("קטן"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("הדלקת התאורה"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("מכונת כביסה"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("חום-צהבהב"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("כחול"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("כחול-אפור"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("חום"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ציאן"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("כתום כהה"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("סגול כהה"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ירוק"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("אפור"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("אינדיגו"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("תכלת"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ירוק בהיר"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ירוק ליים"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("כתום"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ורוד"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("סגול"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("אדום"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("כחול-ירקרק"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("צהוב"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "אפליקציית נסיעות מותאמת אישית"),
        "craneEat": MessageLookupByLibrary.simpleMessage("אוכל"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("נאפולי, איטליה"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("פיצה בתנור עצים"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("דאלאס, ארצות הברית"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("ליסבון, פורטוגל"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "אישה שמחזיקה כריך פסטרמה ענק"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "בר ריק עם שרפרפים בסגנון דיינר"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("קורדובה, ארגנטינה"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("המבורגר"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("פורטלנד, ארצות הברית"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("טאקו בסגנון קוריאני"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("פריז, צרפת"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("קינוח משוקולד"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("סיאול, דרום קוריאה"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("אזור ישיבה במסעדה אומנותית"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("סיאטל, ארצות הברית"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("מנת שרימפס"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("נאשוויל, ארצות הברית"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("כניסה למאפייה"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("אטלנטה, ארצות הברית"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("צלחת של סרטני נהרות"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("מדריד, ספרד"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("מאפים על דלפק בבית קפה"),
        "craneEatRestaurants": m2,
        "craneEatSubhead":
            MessageLookupByLibrary.simpleMessage("עיון במסעדות לפי יעד"),
        "craneFly": MessageLookupByLibrary.simpleMessage("טיסות"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("אספן, ארצות הברית"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "בקתה בנוף מושלג עם עצים ירוקי-עד"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("ביג סר, ארצות הברית"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("קהיר, מצרים"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "המגדלים של מסגד אל-אזהר בשקיעה"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("ליסבון, פורטוגל"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("מגדלור שבנוי מלבנים בים"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("נאפה, ארצות הברית"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("עצי דקל לצד בריכה"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("באלי, אינדונזיה"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("בריכה לחוף הים עם עצי דקל"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("אוהל בשדה"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("עמק קומבו, נפאל"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "דגלי תפילה טיבטיים על רקע הר מושלג"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("מאצ\'ו פיצ\'ו, פרו"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("המבצר במאצ\'ו פיצ\'ו"),
        "craneFly4":
            MessageLookupByLibrary.simpleMessage("מאלה, האיים המלדיביים"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("בקתות מעל המים"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("ויצנאו, שווייץ"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("מלון לחוף אגם על רקע הרים"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("מקסיקו סיטי, מקסיקו"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "נוף ממבט אווירי של ארמון האומנויות היפות"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("הר ראשמור, ארצות הברית"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("הר ראשמור"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("סינגפור"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("גן Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("הוואנה, קובה"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "אדם שנשען על מכונית כחולה עתיקה"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("עיון בטיסות לפי יעד"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("בחירת תאריך"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("בחירת תאריכים"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("בחירת יעד"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("דיינרים"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("בחירת מיקום"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("בחירת מוצא"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("בחירת שעה"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("נוסעים"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("שינה"),
        "craneSleep0":
            MessageLookupByLibrary.simpleMessage("מאלה, האיים המלדיביים"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("בקתות מעל המים"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("אספן, ארצות הברית"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("קהיר, מצרים"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "המגדלים של מסגד אל-אזהר בשקיעה"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("טאיפיי, טייוואן"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("גורד השחקים טאיפיי 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "בקתה בנוף מושלג עם עצים ירוקי-עד"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("מאצ\'ו פיצ\'ו, פרו"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("המבצר במאצ\'ו פיצ\'ו"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("הוואנה, קובה"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "אדם שנשען על מכונית כחולה עתיקה"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("ויצנאו, שווייץ"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("מלון לחוף אגם על רקע הרים"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("ביג סר, ארצות הברית"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("אוהל בשדה"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("נאפה, ארצות הברית"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("עצי דקל לצד בריכה"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("פורטו, פורטוגל"),
        "craneSleep7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("דירות צבעוניות בכיכר ריברה"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("טולום, מקסיקו"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "הריסות מבנים של בני המאיה על צוק מעל חוף ים"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("ליסבון, פורטוגל"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("מגדלור שבנוי מלבנים בים"),
        "craneSleepProperties": m4,
        "craneSleepSubhead":
            MessageLookupByLibrary.simpleMessage("עיון בנכסים לפי יעד"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("אישור"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("ביטול"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("עוגת גבינה"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("בראוניס שוקולד"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "יש לבחור את סוג הקינוח המועדף עליך מהרשימה שלמטה. בחירתך תשמש להתאמה אישית של רשימת המסעדות המוצעת באזור שלך."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("סגירה"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("אין לאפשר"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("בחירת הקינוח המועדף"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "המיקום הנוכחי שלך יוצג במפה וישמש להצגת מסלול, תוצאות חיפוש למקומות בסביבה וזמני נסיעות משוערים."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "האם לתת למפות Google גישה למיקום שלך בעת שימוש באפליקציה?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("טירמיסו"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("לחצן"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("עם רקע"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("הצגת התראה"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("צ\'אט"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("כרטיסיית הבית"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("פרופיל"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "צ\'יפים של פעולה הם קבוצת אפשרויות שמפעילה פעולה כלשהי שקשורה לתוכן עיקרי. צ\'יפים של פעולה צריכים להופיע באופן דינמי ולפי הקשר בממשק המשתמש."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("צ\'יפ של פעולה"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "תיבת דו-שיח של התראה נועדה ליידע את המשתמש לגבי מצבים שדורשים אישור. לתיבת דו-שיח של התראה יש כותרת אופציונלית ורשימה אופציונלית של פעולות."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("התראה"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("התראה עם כותרת"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "סרגלי ניווט תחתונים מציגים שלושה עד חמישה יעדים בחלק התחתון של מסך כלשהו. כל יעד מיוצג על ידי סמל ותווית טקסט אופציונלית. כשמשתמש מקיש על סמל ניווט תחתון, המשתמש מועבר ליעד הניווט ברמה העליונה שמשויך לסמל הזה."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("תוויות קבועות"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("תווית שנבחרה"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "ניווט בחלק התחתון עם תצוגות במידת שקיפות משתנה"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("ניווט בחלק התחתון"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("הוספה"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("הצגת גיליון תחתון"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("כותרת"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "גיליון תחתון מודלי הוא חלופה לתפריט או לתיבת דו-שיח, והוא מונע מהמשתמש לבצע אינטראקציה עם שאר האפליקציה."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("גיליון תחתון מודלי"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "גיליון תחתון קבוע מציג מידע שמשלים את התוכן הראשי באפליקציה. גיליון תחתון קבוע נשאר גלוי גם כשהמשתמש מבצע אינטראקציה עם חלקים אחרים באפליקציה."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("גיליון תחתון קבוע"),
        "demoBottomSheetSubtitle":
            MessageLookupByLibrary.simpleMessage("גיליון תחתון מודלי וקבוע"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("גיליון תחתון"),
        "demoButtonSubtitle":
            MessageLookupByLibrary.simpleMessage("שטוח, בולט, קווי מתאר ועוד"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("לחצנים"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "רכיבים קומפקטיים שמייצגים קלט, מאפיין או פעולה"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("צ\'יפים"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "צ\'יפים של בחירה מייצגים בחירה יחידה מתוך קבוצה. צ\'יפים של בחירה מכילים קטגוריות או טקסט תיאורי קשורים."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("צ\'יפ של בחירה"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("קוד לדוגמה"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("התוכן הועתק ללוח."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("העתקת הכול"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "קבועים של דוגמיות צבע וצבעים שמייצגים את לוח הצבעים של עיצוב חדשני תלת-ממדי."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("כל הצבעים שמוגדרים מראש"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("צבעים"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "גיליון פעולות הוא סגנון ספציפי של התראה, שבה מוצגות למשתמש שתי אפשרויות או יותר בהקשר הנוכחי. גיליון פעולות יכול לכלול כותרת, הודעה נוספת ורשימת פעולות."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("גיליון פעולות"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("לחצני התראות בלבד"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("התראה עם לחצנים"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "תיבת דו-שיח של התראה נועדה ליידע את המשתמש לגבי מצבים שדורשים אישור. לתיבת דו-שיח של התראה יש כותרת ותוכן אופציונליים ורשימה אופציונלית של פעולות. הכותרת מוצגת מעל התוכן, והפעולות מוצגות מתחת לתוכן."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("התראה"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("התראה עם כותרת"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "תיבות דו-שיח של התראות בסגנון iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("התראות"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "לחצן בסגנון iOS. הוא מקבל טקסט ו/או סמל שמתעמעמים ומתחדדים בעת נגיעה בלחצן. יכול להיות לו גם רקע."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("לחצנים בסגנון iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("לחצנים"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "משמשת לבחירה באפשרות אחת בלבד מתוך מספר אפשרויות. לאחר הבחירה באפשרות אחת בבקרה המחולקת, תתבטל הבחירה בשאר האפשרויות בבקרה המחולקת."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("בקרה מחולקת בסגנון iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("בקרה מחולקת"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "ניתן להשתמש במחוון כדי לבחור מתוך קבוצת ערכים רציפים או בדידים."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("מחוון בסגנון iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("מחוון"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "מתג שמשמש להחלפת מצב בין הפעלה לכיבוי של הגדרה בודדת."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("מתג בסגנון iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "שורת כרטיסיות תחתונה לניווט בסגנון iOS. מציגה כרטיסיות מרובות כשכרטיסייה אחת פעילה, הכרטיסייה הראשונה כברירת מחדל."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "שורת כרטיסיות תחתונה בסגנון iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("שורת כרטיסיות"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("פשוטה, עם התראה ובמסך מלא"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("תיבות דו-שיח"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("תיעוד API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "צ\'יפים של סינון משתמשים בתגים או במילות תיאור כדרך לסינון תוכן."),
        "demoFilterChipTitle": MessageLookupByLibrary.simpleMessage("סמל מסנן"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "לחצן שטוח מציג התזת דיו כשלוחצים עליו, אבל הוא לא מובלט. יש להשתמש בלחצנים שטוחים בסרגלי כלים, בתיבות דו-שיח ובתוך שורות עם מרווח פנימי."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("לחצן שטוח"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "לחצן פעולה צף הוא לחצן סמל מעגלי שמוצג מעל תוכן, כדי לקדם פעולה ראשית באפליקציה."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("לחצן פעולה צף"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "המאפיין fullscreenDialog מציין אם הדף המתקבל הוא תיבת דו-שיח מודאלית במסך מלא"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("מסך מלא"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("מסך מלא"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("מידע"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "צ\'יפים של קלט מייצגים פרט חשוב, כמו ישות (אדם, מקום או דבר) או טקסט דיבורי, בפורמט קומפקטי."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("צ\'יפ קלט"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("לא ניתן להציג כתובת URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "שורה יחידה בגובה קבוע, שלרוב מכילה טקסט כלשהו וכן סמל בתחילתה או בסופה."),
        "demoListsSecondary": MessageLookupByLibrary.simpleMessage("טקסט משני"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("פריסות של רשימת גלילה"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("רשימות"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("שורה אחת"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "יש להקיש כאן כדי להציג אפשרויות זמינות להדגמה זו."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("הצגת אפשרויות"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("אפשרויות"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "לחצני קווי מתאר הופכים לאטומים ובולטים כשלוחצים עליהם. בדרך כלל, מבוצעת להם התאמה עם לחצנים בולטים כדי לציין פעולה חלופית משנית."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("לחצן קווי מתאר"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "לחצנים בולטים מוסיפים ממד לפריסות ששטוחות ברובן. הם מדגישים פונקציות בסביבות תצוגה עמוסות או רחבות."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("לחצן בולט"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "תיבות סימון מאפשרות למשתמש לבחור אפשרויות מרובות מתוך מבחר אפשרויות. ערך רגיל של תיבת סימון הוא \'נכון\' או \'לא נכון\' וערך שלישי בתיבת סימון יכול להיות גם \'חסר תוקף\'."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("תיבת סימון"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "לחצני בחירה מאפשרים למשתמש לבחור אפשרות אחת מתוך מבחר אפשרויות. יש להשתמש בלחצני בחירה לצורך בחירה בלעדית אם לדעתך המשתמש צריך לראות את כל האפשרויות הזמינות זו לצד זו."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("לחצני בחירה"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "תיבות סימון, לחצני בחירה ומתגים"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "מתגי הפעלה וכיבוי מחליפים את המצב של אפשרות הגדרות אחת. האפשרות שהמתג שולט בה, וגם המצב שבו הוא נמצא, אמורים להיות ברורים מהתווית המתאימה שבתוך השורה."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("מתגים"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("בקרות לבחירה"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "תיבת דו-שיח פשוטה מציעה למשתמש בחירה מבין מספר אפשרויות. לתיבת דו-שיח יש כותרת אופציונלית שמוצגת מעל אפשרויות הבחירה."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("פשוטה"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "לחצת על פעולה בסרגל האינטראקטיבי."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("פעולה"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("הצגת סרגל אינטראקטיבי"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "סרגלים אינטראקטיביים מיידעים את המשתמשים לגבי תהליך שאפליקציה מבצעת או עומדת לבצע. הם מוצגים באופן זמני, בקרבת החלק התחתון של המסך. הם לא אמורים להפריע לחוויית המשתמש ולא נדרש מהמשתמש להזין קלט כלשהו כדי שהם ייעלמו."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "סרגלים אינטראקטיביים מציגים הודעות בתחתית המסך"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("זהו סרגל אינטראקטיבי."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("סרגלים אינטראקטיביים"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "כרטיסיות שמארגנות תוכן במספר מסכים נפרדים, קבוצות נתונים שונות ואינטראקציות נוספות."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "כרטיסיות עם תצוגות שניתן לגלול בהן בנפרד"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("כרטיסיות"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "שדות טקסט מאפשרים למשתמשים להזין טקסט לממשק משתמש. לרוב הם מופיעים בטפסים ובתיבות דו-שיח."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("אימייל"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("יש להזין סיסמה."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - יש להזין מספר טלפון בארה\"ב."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "יש לתקן את השגיאות באדום לפני השליחה."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("הסתרת הסיסמה"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "הטקסט צריך להיות קצר, זו רק הדגמה."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("סיפור החיים"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("שם*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("יש להזין שם."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("עד 8 תווים."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "יש להזין רק תווים אלפביתיים."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("סיסמה*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("הסיסמאות לא תואמות"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("מספר טלפון*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("הסימן * מציין שדה חובה"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("יש להקליד מחדש את הסיסמה*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("שכר"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("הצגת סיסמה"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("שליחה"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "שורה יחידה של מספרים וטקסט שניתן לערוך"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "יש לספר על עצמך (לדוגמה: עליך לכתוב מה המקצוע שלך או מה התחביבים שלך)"),
        "demoTextFieldTitle": MessageLookupByLibrary.simpleMessage("שדות טקסט"),
        "demoTextFieldUSD":
            MessageLookupByLibrary.simpleMessage("דולר ארה\"ב (USD)"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("איך אנשים קוראים לך?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("איך נוכל ליצור איתך קשר?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("כתובת האימייל שלך"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "אפשר להשתמש בלחצני החלפת מצב לקיבוץ של אפשרויות קשורות. כדי להדגיש קבוצות של לחצני החלפת מצב קשורים, לקבוצה צריך להיות מאגר משותף"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("לחצני החלפת מצב"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("שתי שורות"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "הגדרות לסגנונות הטיפוגרפיים השונים שבעיצוב חדשני תלת-ממדי."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "כל סגנונות הטקסט שהוגדרו מראש"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("טיפוגרפיה"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("הוספת חשבון"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("מסכים/ה"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ביטול"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("לא מסכים/ה"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("סגירה"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("האם למחוק את הטיוטה?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "הדגמה של תיבת דו-שיח במסך מלא"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("שמירה"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("תיבת דו-שיח במסך מלא"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google תוכל לעזור לאפליקציות לזהות מיקום: כלומר, נתוני מיקום אנונימיים נשלחים אל Google, גם כאשר לא פועלות אפליקציות."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "האם להשתמש בשירות המיקום של Google?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("הגדרת חשבון לגיבוי"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("הצגה של תיבת דו-שיח"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("סימוכין לסגנונות ומדיה"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("קטגוריות"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("גלריה"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("חסכונות למכונית"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("עובר ושב"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("חסכונות לבית"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("חופשה"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("בעלים של החשבון"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("תשואה שנתית באחוזים"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("ריבית ששולמה בשנה שעברה"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("שיעור ריבית"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("ריבית שנתית עד ליום הנוכחי"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("דוח התנועות הבא"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("סה\"כ"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("חשבונות"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("התראות"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("חיובים"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("לתשלום"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("הלבשה"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("בתי קפה"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("מצרכים"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("מסעדות"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("סכום שנותר"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("תקציבים"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "אפליקציה אישית לניהול פיננסי"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("נותר/ו"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("התחברות"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("התחברות"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("התחברות אל Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("אין לך חשבון?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("סיסמה"),
        "rallyLoginRememberMe": MessageLookupByLibrary.simpleMessage(
            "אני רוצה לשמור את פרטי ההתחברות שלי"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("הרשמה"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("שם משתמש"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("הצגת הכול"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("הצגת כל החשבונות"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("הצגת כל החיובים"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("הצגת כל התקציבים"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("חיפוש כספומטים"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("עזרה"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("ניהול חשבונות"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("התראות"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("הגדרות ללא נייר"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("קוד סיסמה ומזהה מגע"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("מידע אישי"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("יציאה"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("מסמכי מסים"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("חשבונות"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("חיובים"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("תקציבים"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("סקירה כללית"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("הגדרות"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("מידע על Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("בעיצוב של TOASTER בלונדון"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("סגירת ההגדרות"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("הגדרות"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("כהה"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("שליחת משוב"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("בהיר"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("לוקאל"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("מכניקה של פלטפורמה"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("הילוך איטי"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("מערכת"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("כיוון טקסט"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("משמאל לימין"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("על סמך לוקאל"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("מימין לשמאל"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("שינוי גודל טקסט"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("ענק"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("גדול"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("רגיל"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("קטן"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("עיצוב"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("הגדרות"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ביטול"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ניקוי עגלת הקניות"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("עגלת קניות"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("משלוח:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("סכום ביניים:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("מס:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("סה\"כ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("אביזרים"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("הכול"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("הלבשה"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("בית"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("אפליקציה קמעונאית לאופנה"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("סיסמה"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("שם משתמש"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("התנתקות"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("תפריט"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("הבא"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("ספל אבן כחול"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("חולצת וי"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("מפיות שמבריי"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("חולצת שמבריי"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("חולצת כפתורים קלאסית לבנה"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("סוודר Clay"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("מדף מנחושת"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("חולצת פסים דקים"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("סיבי גינה"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("כובע גטסבי"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ז\'קט יוקרתי"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("שלישיית שולחנות צד"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("צעיף חום"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("גופייה אפורה רחבה"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("סט כלי תה של Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("מכנסיים בכחול כהה"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("טוניקה"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("שולחן לארבעה"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("פתח ניקוז"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("טוניקה לים"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("סוודר בסגנון ימי"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("חולצה עם כתפיים חשופות"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("תיק עם רצועה ארוכה"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("סט Soothe מקרמיקה"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("משקפי שמש של Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("עגילי Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("צמחים סוקולנטים"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("שמלה קצרה לחוף הים"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("חולצה בסגנון גלישה"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("תיק קטן"),
        "shrineProductVarsitySocks": MessageLookupByLibrary.simpleMessage(
            "גרביים לקבוצת ספורט במוסד לימודים"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (לבן)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("צמיד עם מחזיק מפתחות"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("חולצת פסים לבנה"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("חגורת Whitney"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("הוספה לעגלת הקניות"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("סגירת העגלה"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("סגירת התפריט"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("פתיחת תפריט"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("הסרת פריט"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("חיפוש"),
        "shrineTooltipSettings": MessageLookupByLibrary.simpleMessage("הגדרות"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("פריסה התחלתית רספונסיבית"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("גוף הטקסט"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("לחצן"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("כותרת"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("כתובית"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("כותרת"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("אפליקציה למתחילים"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("הוספה"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("פריט מועדף"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("חיפוש"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("שיתוף")
      };
}
