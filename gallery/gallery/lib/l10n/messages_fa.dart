// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fa locale. All the
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
  String get localeName => 'fa';

  static m0(value) =>
      "برای دیدن کد منبع این برنامه ، لطفاً ${value} را ببینید.";

  static m1(title) => "جای‌بان برای برگه ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'رستورانی وجود ندارد', one: '۱ رستوران', other: '${totalRestaurants} رستوران')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'بی‌وقفه', one: '۱ توقف', other: '${numberOfStops} توقف')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'ملکی در دسترس نیست', one: '۱ ملک در دسترس است', other: '${totalProperties} ملک در دسترس است')}";

  static m5(value) => "مورد ${value}";

  static m6(error) => "در بریده‌دان کپی نشد: ${error}";

  static m7(value) => "پیوسته: ${value}";

  static m8(value) => "گسسته: ${value}";

  static m9(value) => "علامت‌گذاری‌شده: ${value}";

  static m10(value) => "انتخاب‌شده: ${value}";

  static m11(name, phoneNumber) => "شماره تلفن ${name} ‏${phoneNumber} است";

  static m12(value) => "«${value}» را انتخاب کردید";

  static m13(accountName, accountNumber, amount) =>
      "حساب ${accountName} به شماره ${accountNumber} با موجودی ${amount}.";

  static m14(amount) =>
      "این ماه ${amount} بابت کارمزد خودپرداز پرداخت کرده‌اید";

  static m15(percent) =>
      "آفرین! حساب جاری‌تان ${percent} بالاتر از ماه گذشته است.";

  static m16(percent) =>
      "هشدار، شما ${percent} از بودجه خرید این ماه را مصرف کرده‌اید.";

  static m17(amount) => "شما این هفته ${amount} برای رستوران پرداخت کرده‌اید.";

  static m18(count) =>
      "${Intl.plural(count, one: 'کاهش مالیات احتمالی را افزایش دهید! دسته‌ها را به ۱ تراکنش اختصاص‌داده‌نشده اختصاص دهید.', other: 'کاهش مالیات احتمالی را افزایش دهید! دسته‌ها را به ${count} تراکنش اختصاص‌داده‌نشده اختصاص دهید.')}";

  static m19(billName, date, amount) =>
      "صورت‌حساب ${billName} با موعد پرداخت ${date} به‌مبلغ ${amount}.";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "بودجه ${budgetName} با مبلغ کلی ${amountTotal} که ${amountUsed} از آن مصرف‌شده و ${amountLeft} باقی‌مانده است";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'موردی وجود ندارد', one: '۱ مورد', other: '${quantity} مورد')}";

  static m22(price) => "×‏${price}";

  static m23(quantity) => "کمیت: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'سبد خرید، بدون مورد', one: 'سبد خرید، ۱ مورد', other: 'سبد خرید، ${quantity} مورد')}";

  static m25(product) => "برداشتن ${product}";

  static m26(value) => "مورد ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("مخزن جی‌تاب نمونه‌های فلاتر"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("بازگشت به گالری"),
        "bottomAppBarNotch":
            MessageLookupByLibrary.simpleMessage("حاشیه بالای نمایشگر"),
        "bottomAppBarPosition":
            MessageLookupByLibrary.simpleMessage("موقعیت «دکمه عمل» شناور"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("متصل - مرکز"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("متصل - انتها"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("متصل - مرکز"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("شناور - انتها"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("حساب"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("هشدار"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("تقویم"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("دوربین"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("نظرات"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("دکمه"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("ایجاد"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("دوچرخه‌سواری"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("آسانسور"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("شومینه"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("بزرگ"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("متوسط"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("کوچک"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("روشن کردن چراغ‌ها"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("دستگاه شوینده"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("کهربایی"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("آبی"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("آبی خاکستری"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("قهوه‌ای"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("فیروزه‌ای"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("نارنجی پررنگ"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("بنفش پررنگ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("سبز"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("خاکستری"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("نیلی"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("آبی روشن"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("سبز روشن"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("سبز لیمویی"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("نارنجی"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("صورتی"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("بنفش"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("قرمز"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("سبز دودی"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("زرد"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("برنامه سفر شخصی‌سازی‌شده"),
        "craneEat": MessageLookupByLibrary.simpleMessage("غذا خوردن"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("ناپل، ایتالیا"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("پیتزا در تنور هیزمی"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("دالاس، ایالات متحده"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("لیسبون، پرتغال"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "زن ساندویچ بزرگ گوشت دودی را در دست گرفته است"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "میخانه خالی با چارپایه‌های غذاخوری"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("کوردوبا، آرژانتین"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("همبرگر"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("پورتلند، ایالات متحده"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("تاکوی کره‌ای"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("پاریس، فرانسه"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("دسر شکلاتی"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("سئول، کره جنوبی"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("محل نشستن در رستوران آرتسی"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("سیاتل، ایالات متحده"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("خوراک میگو"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("نشویل، ایالات متحده"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ورودی نانوایی"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("آتلانتا، ایالات متحده"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("بشقاب شاه‌میگو"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("مادرید، اسپانیا"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("پیشخوان قهوه و شیرینی"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "رستوران‌ها را براساس مقصد کاوش کنید"),
        "craneFly": MessageLookupByLibrary.simpleMessage("پرواز"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("آسپن، ایالات متحده"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "کلبه‌ای در منظره برفی با درختان همیشه‌سبز"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("بیگ سور، ایالات متحده"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("قاهره، مصر"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "مناره‌های مسجد الازهر در غروب"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("لیسبون، پرتغال"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("فانوس دریایی آجری کنار دریا"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("ناپا، ایالات متحده"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("استخر با درختان نخل"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("بالی، اندونزی"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("استخر ساحلی با درختان نخل"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("چادری در مزرعه"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("دره خومبو، نپال"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "پرچم‌های دعا درمقابل کوهستان برفی"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("ماچوپیچو، پرو"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("قلعه ماچو پیچو"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("ماله، مالدیو"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("خانه‌های ییلاقی روی آب"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("ویتسناو، سوئیس"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("هتل ساحلی رو به کوهستان"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("مکزیکو سیتی، مکزیک"),
        "craneFly6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("نمای هوایی کاخ هنرهای زیبا"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("مونت راشمور، ایالات متحده"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("کوه راشمور"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("سنگاپور"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("پارک سوپرتری گراو"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("هاوانا، کوبا"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "مرد تکیه‌داده به ماشین آبی عتیقه"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "پروازها را براساس مقصد کاوش کنید"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("انتخاب تاریخ"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("انتخاب تاریخ‌ها"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("انتخاب مقصد"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("غذاخوری‌ها"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("انتخاب موقعیت مکانی"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("انتخاب مبدأ"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("انتخاب زمان"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("مسافران"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("خواب"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("ماله، مالدیو"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("خانه‌های ییلاقی روی آب"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("آسپن، ایالات متحده"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("قاهره، مصر"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "مناره‌های مسجد الازهر در غروب"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("تایپه، تایوان"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("آسمان‌خراش ۱۰۱ تایپه"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "کلبه‌ای در منظره برفی با درختان همیشه‌سبز"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("ماچوپیچو، پرو"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("قلعه ماچو پیچو"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("هاوانا، کوبا"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "مرد تکیه‌داده به ماشین آبی عتیقه"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("ویتسناو، سوئیس"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("هتل ساحلی رو به کوهستان"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("بیگ سور، ایالات متحده"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("چادری در مزرعه"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("ناپا، ایالات متحده"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("استخر با درختان نخل"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("پورتو، پرتغال"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "آپارتمان‌های رنگی در میدان ریبریا"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("تولوم، مکزیک"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "خرابه‌های تمدن مایا بر صخره‌ای بالای ساحل"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("لیسبون، پرتغال"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("فانوس دریایی آجری کنار دریا"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "ویژگی‌ها را براساس مقصد کاوش کنید"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("مجاز"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("لغو"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("کیک پنیر"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("براونی شکلاتی"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "لطفاً نوع دسر موردعلاقه‌تان را از فهرست زیر انتخاب کنید. از انتخاب شما برای سفارشی کردن فهرست پیشنهادی رستوران‌های منطقه‌تان استفاده می‌شود."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("صرف‌نظر کردن"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("مجاز نیست"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("انتخاب دسر موردعلاقه"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "مکان فعلی‌تان روی نقشه نشان داده می‌شود و از آن برای تعیین مسیرها، نتایج جستجوی اطراف، و زمان‌های سفر تخمینی استفاده می‌شود."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "به «Maps» اجازه داده شود هنگامی که از برنامه موردنظر استفاده می‌کنید به مکان شما دسترسی پیدا کند؟"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("تیرامیسو"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("دکمه"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("دارای پس‌زمینه"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("نمایش هشدار"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("گپ"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("صفحه اصلی"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("نمایه"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "تراشه‌های کنش مجموعه‌ای از گزینه‌ها هستند که کنشی مرتبط با محتوای اصلی را راه‌اندازی می‌کنند. تراشه‌های کنش باید به‌صورت پویا و مرتبط با محتوا در رابط کاربری نشان داده شوند."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("تراشه کنش"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "کادر گفتگوی هشدار، کاربر را از موقعیت‌هایی که نیاز به تصدیق دارند مطلع می‌کند. کادر گفتگوی هشدار، عنوانی اختیاری و فهرستی اختیاری از کنش‌ها دارد."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("هشدار"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("هشدار دارای عنوان"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "نوارهای برنامه پایین صفحه دسترسی به کشوی پیمایش پایین صفحه و تا چهار کنش (ازجمله دکمه عمل شناور) را امکان‌پذیر می‌کنند."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "پیمایش و کنش‌ها را در پایین صفحه نمایش می‌دهد"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("نوار برنامه پایین صفحه"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "نوارهای پیمایش پایینی، سه تا پنج مقصد را در پایین صفحه‌نمایش نشان می‌دهند. هر مقصد با یک نماد و یک برچسب نوشتاری اختیاری نمایش داده می شود. هنگامی که روی نماد پیمایش پایانی ضربه می‌زنید، کاربر به مقصد پیمایش سطح بالایی که با آن نماد مرتبط است منتقل می‌شود."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("برچسب‌های پایدار"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("برچسب انتخاب شد"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "پیمایش پایانی با نماهای محوشونده از حاشیه"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("پیمایش پایین صفحه"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("افزودن"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("نشان دادن برگه پایانی"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("عنوان"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "«برگه پایانی مودال»، جایگزینی برای منو یا کادرگفتگو است و مانع تعامل کاربر با قسمت‌های دیگر برنامه می‌شود."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("برگه پایانی مودال"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "«برگه پایانی پایدار»، اطلاعاتی را نشان می‌دهد که محتوای اولیه برنامه را تکمیل می‌کند. حتی اگر کاربر با قسمت‌های دیگر برنامه کار کند، این برگه همچنان قابل‌مشاهده خواهد بود."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("برگه پایانی پایدار"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "برگه‌های پایانی مودال و پایدار"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("برگه پایانی"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("فیلدهای نوشتاری"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "مسطح، برجسته، برون‌نما، و موارد دیگر"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("دکمه‌ها"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("منوی بازبینه‌ای"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "عناصر فشرده که ورودی، ویژگی، یا کنشی را نمایش می‌دهد"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("تراشه‌ها"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "تراشه‌های انتخاب، تک انتخابی از یک مجموعه را نمایش می‌دهند. تراشه‌های انتخاب، نوشتار توصیفی یا دسته‌بندی‌های مرتبط را شامل می‌شوند."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("انتخاب تراشه"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "نشانگر پیشرفت مدور با طراحی سه بعدی که می‌چرخد تا نشان دهد که برنامه مشغول است."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("نشانگر پیشرفت مدور"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("نمونه کد"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("در بریده‌دان کپی شد."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("کپی همه موارد"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "ثابت‌های رنگ و تغییر رنگ که پالت رنگ «طراحی سه بعدی» را نمایش می‌دهند."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("همه رنگ‌های ازپیش تعیین‌شده"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("رنگ‌ها"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("منوی بافت"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "«برگ کنش»، سبک خاصی از هشدار است که مجموعه‌ای از دو یا چند انتخاب مرتبط با محتوای کنونی را به کاربر ارائه می‌دهد. «برگ کنش» می‌تواند عنوان، پیامی اضافی، و فهرستی از کنش‌ها را داشته باشد."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("برگ کنش"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "نشانگر فعالیت سبک iOS که ساعت‌گرد می‌چرخد."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("نشانگر فعالیت سبک iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("نشانگر فعالیت"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("فقط دکمه‌های هشدار"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("هشدار با دکمه‌ها"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "کادر گفتگوی هشدار، کاربر را از موقعیت‌هایی که نیاز به تصدیق دارند مطلع می‌کند. کادر گفتگوی هشدار دارای عنوان، محتوا، و فهرست کنش‌های اختیاری است. عنوان موردنظر در بالای محتوا و کنش‌ها در زیر محتوا نمایش داده می‌شوند."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("هشدار"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("هشدار دارای عنوان"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "کادرهای گفتگوی هشدار سبک iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("هشدارها"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "دکمه‌ای به سبک iOS. نوشتار و/یا نمادی را دربر می‌گیرد که با لمس کردن ظاهر یا محو می‌شود. ممکن است به‌صورت اختیاری پس‌زمینه داشته باشد."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("دکمه‌های سبک iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("دکمه‌ها"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "نوار پیمایش سبک iOS نوار پیمایش، نوارابزاری است که به‌صورتی ساده حاوی عنوان صفحه در وسط نوارابزار است."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("نوار پیمایش سبک iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("نوار پیمایش"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "ابزارکی که از کنترل محتوای «کشیدن برای بازخوانی» به سبک iOS استفاده می‌کند"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "کنترل «کشیدن برای بازخوانی» به سبک iOS"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("برای بازخوانی بکشید"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "برای انتخاب بین تعدادی از گزینه‌های انحصاری دوطرفه استفاده شد. وقتی یک گزینه در کنترل تقسیم‌بندی‌شده انتخاب می‌شود، گزینه‌های دیگر در کنترل تقسیم‌بندی‌شده لغو انتخاب می‌شود."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "کنترل تقسیم‌بندی‌شده سبک iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("کنترل تقسیم‌بندی‌شده"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "از لغزنده می‌توان برای انتخاب مجموعه‌ای از مقادیر پیوسته یا گسسته استفاده کرد."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("لغزنده سبک iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("لغزنده"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "از کلید برای تغییر وضعیت خاموش/روشن یک تنظیم استفاده می‌شود."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("کلید سبک iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "نوار برگه پیمایش پایین سبک iOS این نوار برگه چندین برگه را نمایش می‌دهد که یک برگه از آن (نوار اول به‌طور پیش‌فرض) فعال خواهد بود."),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("نوار برگه پایین سبک iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("نوار برگه"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "لغزنده‌ها گستره‌ای از مقادیر را در امتداد نواری نشان می‌دهند که کاربران می‌توانند یک مقدار یا گستره‌ای از مقادیر را از آن انتخاب کنند. لغزنده‌ها می‌توانند طرح زمینه داشته باشند یا سفارشی شوند."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("لغزنده سفارشی"),
        "demoDialogSubtitle":
            MessageLookupByLibrary.simpleMessage("ساده، هشدار، و تمام‌صفحه"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("کادرهای گفتگو"),
        "demoDocumentationTooltip": MessageLookupByLibrary.simpleMessage(
            "اسناد میانای برنامه‌سازی کاربردی"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "تراشه‌های فیلتر از برچسب‌ها یا واژه‌های توصیفی برای فیلتر کردن محتوا استفاده می‌کنند."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("تراشه فیلتر"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "دکمه مسطحی، با فشار دادن، پاشمان جوهری را نمایش می‌دهد، اما بالا نمی‌رود. از دکمه‌های مسطح در نوارابزار، کادر گفتگو، و هم‌تراز با فاصله‌گذاری استفاده کنید."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("دکمه مسطح"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "دکمه عمل شناور، دکمه نمادی مدور است که روی محتوا نگه‌داشته می‌شود تا کنش ابتدایی را در برنامه موردنظر ارتقا دهد."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("دکمه عمل شناور"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ویژگی fullscreenDialog مشخص می‌کند آیا صفحه ورودی، کادر گفتگوی مودال تمام‌صفحه است یا نه."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("تمام‌صفحه"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("تمام صفحه"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "«فهرست‌های جدولی» برای ارائه داده‌های همگن (معمولاً تصاویر) بسیار مناسب هستند. هر مورد در فهرست جدولی، کاشی نامیده می‌شود."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("با پانویس"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("با عنوان"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("فقط تصویر"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("طرح‌بندی ردیفی و ستونی"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("فهرست‌های جدولی"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("اطلاعات"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "تراشه‌های ورودی پاره‌ای از اطلاعات پیچیده مانند نهاد (شخص، مکان، یا شیء) یا متن مکالمه‌ای را به‌صورت فشرده نمایش می‌هند."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("تراشه ورودی"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("نشانی وب نشان داده نشد:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "نشانگر پیشرفت خطی با طراحی سه بعدی که با عنوان نوار پیشرفت نیز شناخته شده است."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("نشانگر پیشرفت خطی"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "یک ردیف واحد با ارتفاع ثابت که معمولاً حاوی مقداری نوشتار و نمادی در ابتدا یا انتها است."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("متن ثانویه"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("طرح‌بندی‌های فهرست پیمایشی"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("فهرست‌ها"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("گزینه منوی غیرفعال"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("مورد با منوی بازبینه‌ای"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("مورد با منوی بافتی"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("مورد با منوی بخش‌بندی‌شده"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("مورد با منوی ساده"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("گزینه یک منوی بافتی"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("گزینه سه منوی بافتی"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "منو، فهرستی از چند انتخاب را در نمایی موقت نمایش می‌دهد. وقتی کاربران با دکمه، کنش، یا کنترل دیگری تعامل داشته باشند، منو ظاهر می‌شود."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("چهار"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("دریافت پیوند"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("گزینه یک منو"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("گزینه سه منو"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("گزینه دو منو"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("یک"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("پیش‌نمایش"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("حذف"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("هم‌رسانی"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("دکمه‌های منو و منوهای ساده"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("سه"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("منو"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("دو"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("یک خط"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "برای مشاهده گزینه‌های در دسترس برای این نسخه نمایشی، اینجا ضربه بزنید."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("مشاهده گزینه‌ها"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("گزینه‌ها"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "دکمه‌های برون‌نما مات می‌شوند و هنگامی که فشار داده شوند بالا می‌آیند. این دکمه‌ها معمولاً با دکمه‌های برجسته مرتبط می‌شوند تا کنشی فرعی و جایگزین را نشان دهند."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("دکمه برون‌نما"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("خطی، مدور، نامعین"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("نشانگر پیشرفت"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "دکمه‌های برجسته به نماهایی که تا حد زیادی مسطح هستند بعد اضافه می‌کند. این دکمه‌ها در فضاهای پهن یا شلوغ، عملکردها را برجسته می‌کنند."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("دکمه برجسته"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "لغزنده‌ها گستره‌ای از مقادیر را در امتداد نواری نشان می‌دهند. آن‌ها ممکن است در هر دو سر نوار نمادی داشته باشند که گستره‌ای از مقادیر را نشان دهد. لغزنده‌ها برای تغییر تنظیماتی مثل صدا، روشنایی یا اعمال فیلتر روی تصاویر ایده‌آل هستند."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("لغزنده گستره‌ای"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("منوی بخش‌بندی‌شده"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "کادر تأیید به کاربر اجازه می‌دهد چندین گزینه را از یک مجموعه انتخاب کند. ارزش عادی کادر تأیید درست یا نادرست است و ممکن است کادر تأیید سه‌حالته فاقد ارزش باشد."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("کادر تأیید"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "دکمه رادیو به کاربر اجازه می‌دهد یک گزینه‌ از یک مجموعه را انتخاب کند. اگر فکر می‌کنید کاربر نیاز دارد همه گزینه‌های دردسترس را پهلو‌به‌پهلو ببیند، از دکمه رادیو برای انتخاب منحصربه‌فرد استفاده کنید."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("رادیو"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "کادرهای تأیید، دکمه‌های رادیو، و کلیدها"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "کلیدهای روشن/خاموش وضعیت یک گزینه تنظیمات را تغییر می‌دهد گزینه‌ای که کلید کنترل می‌کند و وضعیتی که در آن است باید از‌طریق برچسب متغیر مربوطه معلوم شود."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("کلید"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("کنترل‌های انتخاب"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "کادر گفتگو ساده، انتخاب بین گزینه‌های متفاوت را به کاربر ارائه می‌دهد. کادر گفتگو ساده، عنوانی اختیاری دارد که در بالای گزینه‌ها نمایش داده می‌شود."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("ساده"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("منوی ساده"),
        "demoSlidersContinuous": MessageLookupByLibrary.simpleMessage("پیوسته"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "لغزنده گستره‌ای پیوسته با طرح زمینه سفارشی"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "پیوسته با مقدار عددی قابل ویرایش"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "لغزنده‌ها گستره‌ای از مقادیر را در امتداد نواری نشان می‌دهند که کاربران می‌توانند یک مقدار را در آن انتخاب کنند. لغزنده‌ها برای تغییر تنظیماتی مثل صدا، روشنایی یا اعمال فیلتر روی تصاویر ایده‌آل هستند."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("گسسته"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "لغزنده گسسته با طرح زمینه سفارشی"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("مقدار عددی قابل ویرایش"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "ابزارک‌هایی برای انتخاب مقدار با تند کشیدن صفحه"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("لغزنده"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "دکمه کنش روی نوار توضیحات را فشار دادید."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("کنش"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("نمایش نوار توضیحات"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "نوارهای توضیحات فرایندی را که یک برنامه انجام داده است یا انجام خواهد داد، به کاربران اعلام می‌کنند. این نوارها در پایین صفحه موقتاً ظاهر می‌شوند. این نوارها نباید تجربه کاربر را مختل کنند و برای ناپدید شدن نیازی به ورودی کاربر ندارند."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "نوارهای توضیحات پیام‌ها را در پایین صفحه نمایش می‌دهند"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("این نوار توضیحات است."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("نوارهای توضیحات"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "برگه‌ها محتوا در صفحه‌نمایش‌ها، مجموعه‌های داده و تراکنش‌های دیگر سازماندهی می‌کنند."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "برگه‌هایی با نماهای قابل‌پیمایش مستقل"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("برگه‌ها"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "فیلدهای نوشتاری به کاربران امکان می‌دهد نوشتار را در رابط کاربری وارد کنند. معمولاً به‌صورت فرم‌ها و کادرهای گفتگو ظاهر می‌شوند."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ایمیل"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("گذرواژه‌ای وارد کنید."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - شماره‌ای مربوط به ایالات متحده وارد کنید."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "لطفاً خطاهای قرمزرنگ را قبل از ارسال برطرف کنید."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("پنهان کردن گذرواژه"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "خلاصه‌اش کنید، این فقط یک نسخه نمایشی است."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("داستان زندگی"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("نام*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("نام لازم است."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("بیش از ۸ نویسه مجاز نیست."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "لطفاً فقط نویسه‌های الفبایی را وارد کنید."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("گذرواژه*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("گذرواژه مطابقت ندارد"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("شماره تلفن*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* نشانگر به فیلد نیاز دارد"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "گذرواژه را دوباره تایپ کنید*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("حقوق"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("نمایش گذرواژه"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ارسال"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "یک خط نوشتار و ارقام قابل‌ویرایش"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "درباره خودتان بگویید (مثلاً بنویسید چکار می‌کنید یا سرگرمی‌های موردعلاقه‌تان چیست)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("فیلدهای نوشتاری"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("دلار آمریکا"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("به چه نامی خطابتان می‌کنند؟"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "از کجا می‌توانیم به شما دسترسی داشته‌باشیم؟"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("نشانی ایمیل شما"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "از دکمه‌های تغییر وضعیت می‌توان برای گروه‌بندی گزینه‌های مرتبط استفاده کرد. برای برجسته کردن گروه‌هایی از دکمه‌های تغییر وضعیت مرتبط، گروهی باید محتوی مشترکی را هم‌رسانی کند"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("دکمه‌های تغییر وضعیت"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "نکته‌ابزارها برچسبی نوشتاری نشان می‌دهد که عملکرد دکمه‌ها یا کنش‌های دیگر رابط کاربری را توضیح می‌دهد. وقتی کاربران نشانگر را روی عنصری نگه می‌دارند، روی آن تمرکز می‌کنند، یا فشار طولانی می‌دهند، نکته‌ابزار نوشتار مفیدی نمایش می‌دهد."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "برای نمایش نکته‌ابزار، فشار طولانی دهید یا نشانگر را روی آن نگه دارید."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "پیام کوتاهی که هنگام فشار طولانی یا نگه داشتن نشانگر نمایش داده می‌شود"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("نکته‌ابزارها"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("دو خط"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "تعریف‌هایی برای سبک‌های تایپوگرافی مختلف در «طراحی سه‌بعدی» یافت شد."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "همه سبک‌های نوشتاری ازپیش‌تعریف‌شده"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("تایپوگرافی"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("افزودن حساب"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("موافق"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("لغو"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("موافق نیستم"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("صرف‌نظر کردن"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("از پیش‌نویس صرف‌نظر شود؟"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "پخش نمایشی کادر گفتگویی تمام‌صفحه"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ذخیره"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("کادر گفتگوی تمام‌صفحه"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "به Google اجازه دهید به برنامه‌ها کمک کند مکان را تعیین کنند. با این کار، داده‌های مکانی به‌صورت ناشناس به Google ارسال می‌شوند، حتی وقتی هیچ برنامه‌ای اجرا نمی‌شود."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "از «خدمات مکان Google» استفاده شود؟"),
        "dialogSelectedOption": m12,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("تنظیم حساب پشتیبان"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("نمایش کادر گفتگو"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("سبک‌های مرجع و رسانه"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("دسته‌ها"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("گالری"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("ساحل"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("کارهای برنزی"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("چنی"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("چتیناد"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("ماهی‌گیر"),
        "placeFlowerMarket": MessageLookupByLibrary.simpleMessage("بازار گل"),
        "placeLunchPrep": MessageLookupByLibrary.simpleMessage("تهیه ناهار"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("بازار"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("پوندیچری"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("مزرعه نمک"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("اسکوتر"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("ابریشم‌باف"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("تانجاوور"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("معبد تانجاوور"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("پس‌انداز خودرو"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("درحال بررسی"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("پس‌اندازهای منزل"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("تعطیلات"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("صاحب حساب"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("درصد سالانه بازگشت سرمایه"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("سود پرداخت‌شده در سال گذشته"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("نرخ بهره"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("بهره از ابتدای امسال تاکنون"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("بخش بعدی"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("مجموع"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("حساب‌ها"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("هشدارها"),
        "rallyAlertsMessageATMFees": m14,
        "rallyAlertsMessageCheckingAccount": m15,
        "rallyAlertsMessageHeadsUpShopping": m16,
        "rallyAlertsMessageSpentOnRestaurants": m17,
        "rallyAlertsMessageUnassignedTransactions": m18,
        "rallyBillAmount": m19,
        "rallyBills": MessageLookupByLibrary.simpleMessage("صورت‌حساب‌ها"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("سررسید"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("پوشاک"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("کافه‌ها"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("خواربار"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("رستوران‌ها"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("چپ"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("بودجه"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("یک برنامه مالی شخصی"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("چپ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ورود به سیستم"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("ورود به سیستم"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("ورود به سیستم Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("حساب ندارید؟"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("گذرواژه"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("مرا به‌خاطر بسپار"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("ثبت‌نام"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("نام کاربری"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("مشاهده همه"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("دیدن همه حساب‌ها"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("دیدن همه صورت‌حساب‌ها"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("دیدن کل بودجه"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("یافتن خودپردازها"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("راهنما"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("مدیریت حساب‌ها"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("اعلان‌ها"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("تنظیمات بدون‌کاغذ"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("گذرنویسه و شناسه لمسی"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("اطلاعات شخصی"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("خروج از سیستم"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("اسناد مالیاتی"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("حساب‌ها"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("صورت‌حساب‌ها"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("بودجه"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("نمای کلی"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("تنظیمات"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("درباره گالری فلاتر"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("طراحی توسط تُستر لندن"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("بستن تنظیمات"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("تنظیمات"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("تیره"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("ارسال بازخورد"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("روشن"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("محلی"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("مکانیک پلتفورم"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("حرکت آهسته"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("سیستم"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("جهت نوشتار"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("چپ به راست"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("براساس منطقه زبانی"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("راست به چپ"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("مقیاس‌بندی نوشتار"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("بسیار بزرگ"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("بزرگ"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("عادی"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("کوچک"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("طرح زمینه"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("تنظیمات"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("لغو"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("پاک‌کردن سبد خرید"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("سبد خرید"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("ارسال کالا:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("زیرجمع:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("مالیات:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("مجموع"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("لوازم جانبی"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("همه"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("پوشاک"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("خانه"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("یک برنامه خرده‌فروشی مدرن"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("گذرواژه"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("نام کاربری"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("خروج از سیستم"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("منو"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("بعدی"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("لیوان دسته‌دار بلواِستون"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("تی‌شرت پایین دالبر کریس"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("دستمال‌سفره چمبری"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("پیراهن چمبری"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("یقه سفید کلاسیک"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("ژاکت کلِی"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("قفسه سیمی کاپر"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("تی‌شرت فاین‌لاینز"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("کلاف گاردن"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("کلاه گتس‌بی"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ژاکت جنتری"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("میز سه‌تایی گیلت"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("شال‌گردن جینجر"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("بلوز دوبندی گِری"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("ست چایخوری هوراهس"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("شلوار سورمه‌ای"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("نیم‌تنه پلاستر"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("میز کوارتت"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("سینی رینواتر"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("پیراهن یقه ضربدری رامونا"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("تونیک ساحلی"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("پلیور سی‌بریز"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("بلوز یقه‌افتاده"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("کیف کیسه‌ای"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("مجموعه سرامیکی سوت"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("عینک آفتابی اِستلا"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("گوشواره‌های استرات"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("گلدان‌های تزیینی ساکلنت"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("پیراهن سان‌شرت"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("پیراهن سرف‌اندپرف"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("کیف واگابوند"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("جوراب وارسیتی"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("والتر هنلی (سفید)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("حلقه‌کلید بافتی"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("پیراهن راه‌راه سفید"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("کمربند ویتنی"),
        "shrineScreenReaderCart": m24,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("افزودن به سبد خرید"),
        "shrineScreenReaderRemoveProductButton": m25,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("بستن سبد خرید"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("بستن منو"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("بازکردن منو"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("برداشتن مورد"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("جستجو"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("تنظیمات"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("طرح‌بندی راه‌انداز سازگار"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("متن اصلی"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("دکمه"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("عنوان"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("زیرنویس"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("عنوان"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("برنامه راه‌انداز"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("افزودن"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("دلخواه"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("جستجو"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("هم‌رسانی")
      };
}
