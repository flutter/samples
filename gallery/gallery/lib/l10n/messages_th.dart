// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a th locale. All the
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
  String get localeName => 'th';

  static m0(value) => "โปรดไปที่ ${value} เพื่อดูซอร์สโค้ดของแอปนี้";

  static m1(title) => "ตัวยึดตำแหน่งของแท็บ ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'ไม่มีร้านอาหาร', one: 'มีร้านอาหาร 1 แห่ง', other: 'มีร้านอาหาร ${totalRestaurants} แห่ง')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'บินตรง', one: '1 จุดพัก', other: '${numberOfStops} จุดพัก')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'ไม่มีตัวเลือกที่พัก', one: 'มีตัวเลือกที่พัก 1 แห่ง', other: 'มีตัวเลือกที่พัก ${totalProperties} แห่ง')}";

  static m5(value) => "รายการ ${value}";

  static m6(error) => "คัดลอกไปยังคลิปบอร์ดไม่สำเร็จ: ${error}";

  static m7(name, phoneNumber) =>
      "หมายเลขโทรศัพท์ของ ${name} คือ ${phoneNumber}";

  static m8(value) => "คุณเลือก \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "บัญชี${accountName} เลขที่ ${accountNumber} จำนวน ${amount}";

  static m10(amount) => "เดือนนี้คุณจ่ายค่าธรรมเนียมการใช้ ATM จำนวน ${amount}";

  static m11(percent) => "ดีมาก คุณมีเงินฝากมากกว่าเดือนที่แล้ว ${percent}";

  static m12(percent) =>
      "โปรดทราบ คุณใช้งบประมาณสำหรับการช็อปปิ้งของเดือนนี้ไปแล้ว ${percent}";

  static m13(amount) => "สัปดาห์นี้คุณใช้จ่ายไปกับการทานอาหารในร้าน ${amount}";

  static m14(count) =>
      "${Intl.plural(count, one: 'เพิ่มโอกาสในการลดหย่อนภาษีของคุณ กำหนดหมวดหมู่ให้แก่ธุรกรรมที่ยังไม่มีหมวดหมู่ 1 รายการ', other: 'เพิ่มโอกาสในการลดหย่อนภาษีของคุณ กำหนดหมวดหมู่ให้แก่ธุรกรรมที่ยังไม่มีหมวดหมู่ ${count} รายการ')}";

  static m15(billName, date, amount) =>
      "บิล${billName}ครบกำหนดชำระในวันที่ ${date} จำนวน ${amount}";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "ใช้งบประมาณ${budgetName}ไปแล้ว ${amountUsed} จากทั้งหมด ${amountTotal} เหลืออีก ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'ไม่มีสินค้า', one: 'มีสินค้า 1 รายการ', other: 'มีสินค้า ${quantity} รายการ')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "จำนวน: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'รถเข็นช็อปปิ้งไม่มีสินค้า', one: 'รถเข็นช็อปปิ้งมีสินค้า 1 รายการ', other: 'รถเข็นช็อปปิ้งมีสินค้า ${quantity} รายการ')}";

  static m21(product) => "นำ ${product} ออก";

  static m22(value) => "รายการ ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "ที่เก็บของ GitHub สำหรับตัวอย่าง Flutter"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("บัญชี"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("การปลุก"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("ปฏิทิน"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("กล้องถ่ายรูป"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("ความคิดเห็น"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ปุ่ม"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("สร้าง"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("ขี่จักรยาน"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("ลิฟต์"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("เตาผิง"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("ขนาดใหญ่"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("ขนาดกลาง"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("ขนาดเล็ก"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("เปิดไฟ"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("เครื่องซักผ้า"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("เหลืองอำพัน"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("น้ำเงิน"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("เทาน้ำเงิน"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("น้ำตาล"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("น้ำเงินเขียว"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("ส้มแก่"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ม่วงเข้ม"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("เขียว"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("เทา"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("น้ำเงินอมม่วง"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ฟ้าอ่อน"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("เขียวอ่อน"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("เหลืองมะนาว"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ส้ม"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ชมพู"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ม่วง"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("แดง"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("น้ำเงินอมเขียว"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("เหลือง"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "แอปการเดินทางที่ปรับเปลี่ยนในแบบของคุณ"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ร้านอาหาร"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("เนเปิลส์ อิตาลี"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("พิซซ่าในเตาอบฟืนไม้"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("ดัลลาส สหรัฐอเมริกา"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("ลิสบอน โปรตุเกส"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ผู้หญิงถือแซนด์วิชเนื้อชิ้นใหญ่"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "บาร์ที่ไม่มีลูกค้าซึ่งมีม้านั่งสูงแบบไม่มีพนัก"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("คอร์โดบา อาร์เจนตินา"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("เบอร์เกอร์"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("พอร์ตแลนด์ สหรัฐอเมริกา"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ทาโก้แบบเกาหลี"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("ปารีส ฝรั่งเศส"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ของหวานที่เป็นช็อกโกแลต"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("โซล เกาหลีใต้"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "บริเวณที่นั่งในร้านอาหารซึ่งดูมีศิลปะ"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("ซีแอตเทิล สหรัฐอเมริกา"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("เมนูที่ใส่กุ้ง"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("แนชวิลล์ สหรัฐอเมริกา"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ทางเข้าร้านเบเกอรี่"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("แอตแลนตา สหรัฐอเมริกา"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("จานใส่กุ้งน้ำจืด"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("มาดริด สเปน"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "เคาน์เตอร์ในคาเฟ่ที่มีขนมอบต่างๆ"),
        "craneEatRestaurants": m2,
        "craneEatSubhead":
            MessageLookupByLibrary.simpleMessage("ค้นหาร้านอาหารตามจุดหมาย"),
        "craneFly": MessageLookupByLibrary.simpleMessage("เที่ยวบิน"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("แอสเพน สหรัฐอเมริกา"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "กระท่อมหลังเล็กท่ามกลางทิวทัศน์ที่มีหิมะและต้นไม้เขียวชอุ่ม"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("บิ๊กเซอร์ สหรัฐอเมริกา"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("ไคโร อียิปต์"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "มัสยิดอัลอัซฮัรช่วงพระอาทิตย์ตก"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("ลิสบอน โปรตุเกส"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ประภาคารอิฐกลางทะเล"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("นาปา สหรัฐอเมริกา"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("สระว่ายน้ำที่มีต้นปาล์ม"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("บาหลี อินโดนีเซีย"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "สระว่ายน้ำริมทะเลซึ่งมีต้นปาล์ม"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("เต็นท์ในทุ่ง"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("หุบเขาคุมบู เนปาล"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ธงมนตราหน้าภูเขาที่ปกคลุมด้วยหิมะ"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("มาชูปิกชู เปรู"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ป้อมมาชูปิกชู"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("มาเล มัลดีฟส์"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("บังกะโลที่ตั้งอยู่เหนือน้ำ"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("วิทซ์นาว สวิตเซอร์แลนด์"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "โรงแรมริมทะเลสาบที่อยู่หน้าภูเขา"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("เม็กซิโกซิตี้ เม็กซิโก"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "มุมมองทางอากาศของพระราชวัง Bellas Artes"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("ภูเขารัชมอร์ สหรัฐอเมริกา"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ภูเขารัชมอร์"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("สิงคโปร์"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ซูเปอร์ทรี โกรฟ"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ฮาวานา คิวบา"),
        "craneFly9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ผู้ชายพิงรถโบราณสีน้ำเงิน"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("ค้นหาเที่ยวบินตามจุดหมาย"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("เลือกวันที่"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("เลือกวันที่"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("เลือกจุดหมาย"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("ร้านอาหาร"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("เลือกสถานที่ตั้ง"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("เลือกต้นทาง"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("เลือกเวลา"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("นักเดินทาง"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("ที่พัก"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("มาเล มัลดีฟส์"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("บังกะโลที่ตั้งอยู่เหนือน้ำ"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("แอสเพน สหรัฐอเมริกา"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("ไคโร อียิปต์"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "มัสยิดอัลอัซฮัรช่วงพระอาทิตย์ตก"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("ไทเป ไต้หวัน"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ตึกระฟ้าไทเป 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "กระท่อมหลังเล็กท่ามกลางทิวทัศน์ที่มีหิมะและต้นไม้เขียวชอุ่ม"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("มาชูปิกชู เปรู"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ป้อมมาชูปิกชู"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ฮาวานา คิวบา"),
        "craneSleep3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ผู้ชายพิงรถโบราณสีน้ำเงิน"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("วิทซ์นาว สวิตเซอร์แลนด์"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "โรงแรมริมทะเลสาบที่อยู่หน้าภูเขา"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("บิ๊กเซอร์ สหรัฐอเมริกา"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("เต็นท์ในทุ่ง"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("นาปา สหรัฐอเมริกา"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("สระว่ายน้ำที่มีต้นปาล์ม"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("ปอร์โต โปรตุเกส"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "อพาร์ตเมนต์สีสันสดใสที่จัตุรัส Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("ตูลุม เม็กซิโก"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ซากปรักหักพังของอารยธรรมมายันบนหน้าผาเหนือชายหาด"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("ลิสบอน โปรตุเกส"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ประภาคารอิฐกลางทะเล"),
        "craneSleepProperties": m4,
        "craneSleepSubhead":
            MessageLookupByLibrary.simpleMessage("ค้นหาที่พักตามจุดหมาย"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("อนุญาต"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("พายแอปเปิล"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("ยกเลิก"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("ชีสเค้ก"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("บราวนี่ช็อกโกแลต"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "โปรดเลือกชนิดของหวานที่คุณชอบจากรายการด้านล่าง ตัวเลือกของคุณจะใช้เพื่อปรับแต่งรายการร้านอาหารแนะนำในพื้นที่ของคุณ"),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("ทิ้ง"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("ไม่อนุญาต"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("เลือกของหวานที่คุณชอบ"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ตำแหน่งปัจจุบันของคุณจะแสดงในแผนที่และใช้เพื่อแสดงคำแนะนำ ผลการค้นหาใกล้เคียง และเวลาเดินทางโดยประมาณ"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "อนุญาตให้ Maps เข้าถึงตำแหน่งของคุณขณะที่ใช้แอปหรือไม่"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("ทิรามิสุ"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ปุ่ม"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("มีพื้นหลัง"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("แสดงการแจ้งเตือน"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "ชิปการทำงานคือชุดตัวเลือกที่จะเรียกใช้การทำงานที่เกี่ยวกับเนื้อหาหลัก ชิปการทำงานควรจะแสดงแบบไดนามิกและตามบริบทใน UI"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ชิปการทำงาน"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "กล่องโต้ตอบการแจ้งเตือนจะแจ้งผู้ใช้เกี่ยวกับสถานการณ์ที่ต้องการการตอบรับ กล่องโต้ตอบการแจ้งเตือนมีชื่อที่ไม่บังคับและรายการที่ไม่บังคับของการดำเนินการ"),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือน"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือนที่มีชื่อ"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "แถบ Bottom Navigation จะแสดงปลายทาง 3-5 แห่งที่ด้านล่างของหน้าจอ ปลายทางแต่ละแห่งจะแสดงด้วยไอคอนและป้ายกำกับแบบข้อความที่ไม่บังคับ เมื่อผู้ใช้แตะไอคอน Bottom Navigation ระบบจะนำไปที่ปลายทางของการนำทางระดับบนสุดที่เชื่อมโยงกับไอคอนนั้น"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("ป้ายกำกับที่แสดงเสมอ"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("ป้ายกำกับที่เลือก"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bottom Navigation ที่มีมุมมองแบบค่อยๆ ปรากฏ"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Bottom Navigation"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("เพิ่ม"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("แสดง Bottom Sheet"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("ส่วนหัว"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modal Bottom Sheet เป็นทางเลือกที่ใช้แทนเมนูหรือกล่องโต้ตอบและป้องกันไม่ให้ผู้ใช้โต้ตอบกับส่วนที่เหลือของแอป"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modal Bottom Sheet"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Persistent Bottom Sheet แสดงข้อมูลที่เสริมเนื้อหาหลักของแอป ผู้ใช้จะยังมองเห็นองค์ประกอบนี้ได้แม้จะโต้ตอบอยู่กับส่วนอื่นๆ ของแอป"),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Persistent Bottom Sheet"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Persistent และ Modal Bottom Sheet"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Bottom Sheet"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("ช่องข้อความ"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "แบนราบ ยกขึ้น เติมขอบ และอื่นๆ"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ปุ่ม"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "องค์ประกอบขนาดกะทัดรัดที่แสดงอินพุต แอตทริบิวต์ หรือการทำงาน"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ชิป"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "ชิปตัวเลือกแสดงตัวเลือกเดียวจากชุดตัวเลือก ชิปตัวเลือกมีข้อความคำอธิบายหรือการจัดหมวดหมู่ที่เกี่ยวข้อง"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("ชิปตัวเลือก"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("ตัวอย่างโค้ด"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("คัดลอกไปยังคลิปบอร์ดแล้ว"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("คัดลอกทั้งหมด"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "สีหรือแผงสีคงที่ซึ่งเป็นตัวแทนชุดสีของดีไซน์ Material"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "สีที่กำหนดไว้ล่วงหน้าทั้งหมด"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("สี"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "แผ่นงานการดำเนินการเป็นการแจ้งเตือนรูปแบบหนึ่งที่นำเสนอชุดทางเลือกตั้งแต่ 2 รายการขึ้นไปเกี่ยวกับบริบทปัจจุบันให้แก่ผู้ใช้ แผ่นงานการดำเนินการอาจมีชื่อ ข้อความเพิ่มเติม และรายการของการดำเนินการ"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("แผ่นงานการดำเนินการ"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มการแจ้งเตือนเท่านั้น"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือนแบบมีปุ่ม"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "กล่องโต้ตอบการแจ้งเตือนจะแจ้งผู้ใช้เกี่ยวกับสถานการณ์ที่ต้องการการตอบรับ กล่องโต้ตอบการแจ้งเตือนมีชื่อที่ไม่บังคับ เนื้อหาที่ไม่บังคับ และรายการที่ไม่บังคับของการดำเนินการ ชื่อจะแสดงเหนือเนื้อหาและการดำเนินการจะแสดงใต้เนื้อหา"),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือน"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือนที่มีชื่อ"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "กล่องโต้ตอบการแจ้งเตือนแบบ iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือน"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "ปุ่มแบบ iOS จะใส่ข้อความและ/หรือไอคอนที่ค่อยๆ ปรากฏขึ้นและค่อยๆ จางลงเมื่อแตะ อาจมีหรือไม่มีพื้นหลังก็ได้"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มแบบ iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่ม"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "ใช้เพื่อเลือกระหว่างตัวเลือกที่เฉพาะตัวเหมือนกัน การเลือกตัวเลือกหนึ่งในส่วนควบคุมที่แบ่งกลุ่มจะเป็นการยกเลิกการเลือกตัวเลือกอื่นๆ ในส่วนควบคุมที่แบ่งกลุ่มนั้น"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "ส่วนควบคุมที่แบ่งกลุ่มแบบ iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("ส่วนควบคุมที่แบ่งกลุ่ม"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "แบบง่าย การแจ้งเตือน และเต็มหน้าจอ"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("กล่องโต้ตอบ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("เอกสารประกอบของ API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ชิปตัวกรองใช้แท็กหรือคำอธิบายรายละเอียดเป็นวิธีกรองเนื้อหา"),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ชิปตัวกรอง"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ปุ่มแบบแบนราบจะแสดงการไฮไลต์เมื่อกดแต่จะไม่ยกขึ้น ใช้ปุ่มแบบแบนราบกับแถบเครื่องมือ ในกล่องโต้ตอบ และแทรกในบรรทัดแบบมีระยะห่างจากขอบ"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มแบบแบนราบ"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ปุ่มการทำงานแบบลอยเป็นปุ่มไอคอนรูปวงกลมที่ลอยเหนือเนื้อหาเพื่อโปรโมตการดำเนินการหลักในแอปพลิเคชัน"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มการทำงานแบบลอย"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "พร็อพเพอร์ตี้ fullscreenDialog จะระบุว่าหน้าที่เข้ามาใหม่เป็นกล่องโต้ตอบในโหมดเต็มหน้าจอหรือไม่"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("เต็มหน้าจอ"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("เต็มหน้าจอ"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("ข้อมูล"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ชิปอินพุตที่แสดงข้อมูลที่ซับซ้อนในรูปแบบกะทัดรัด เช่น ข้อมูลเอนทิตี (บุคคล สถานที่ หรือสิ่งของ) หรือข้อความของบทสนทนา"),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("ชิปอินพุต"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("แสดง URL ไม่ได้:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "แถวเดี่ยวความสูงคงที่ซึ่งมักจะมีข้อความบางอย่างรวมถึงไอคอนนำหน้าหรือต่อท้าย"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("ข้อความรอง"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("เลย์เอาต์รายการแบบเลื่อน"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("รายการ"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("หนึ่งบรรทัด"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "แตะที่นี่เพื่อดูตัวเลือกสำหรับการสาธิตนี้"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("ดูตัวเลือก"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("ตัวเลือก"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ปุ่มที่เติมขอบจะเปลี่ยนเป็นสีทึบและยกขึ้นเมื่อกด มักจับคู่กับปุ่มแบบยกขึ้นเพื่อระบุว่ามีการดำเนินการสำรองอย่างอื่น"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มแบบเติมขอบ"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ปุ่มแบบยกขึ้นช่วยเพิ่มมิติให้แก่เลย์เอาต์แบบแบนราบเป็นส่วนใหญ่ โดยจะช่วยเน้นฟังก์ชันในพื้นที่ที่มีการใช้งานมากหรือกว้างขวาง"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มแบบยกขึ้น"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "ช่องทำเครื่องหมายให้ผู้ใช้เลือกตัวเลือกจากชุดตัวเลือกได้หลายรายการ ค่าปกติของช่องทำเครื่องหมายคือ \"จริง\" หรือ \"เท็จ\" และค่า 3 สถานะของช่องทำเครื่องหมายอาจเป็น \"ว่าง\" ได้ด้วย"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("ช่องทำเครื่องหมาย"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ปุ่มตัวเลือกให้ผู้ใช้เลือก 1 ตัวเลือกจากชุดตัวเลือก ใช้ปุ่มตัวเลือกสำหรับการเลือกพิเศษในกรณีที่คุณคิดว่าผู้ใช้จำเป็นต้องเห็นตัวเลือกที่มีอยู่ทั้งหมดแสดงข้างกัน"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มตัวเลือก"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ช่องทำเครื่องหมาย ปุ่มตัวเลือก และสวิตช์"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "สวิตช์เปิด/ปิดสลับสถานะของตัวเลือกการตั้งค่า 1 รายการ ตัวเลือกที่สวิตช์ควบคุมและสถานะของตัวเลือกควรแตกต่างอย่างชัดเจนจากป้ายกำกับในบรรทัดที่เกี่ยวข้อง"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("สวิตช์"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("การควบคุมการเลือก"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "กล่องโต้ตอบแบบง่ายจะนำเสนอทางเลือกระหว่างตัวเลือกหลายๆ อย่าง โดยกล่องโต้ตอบแบบง่ายจะมีชื่อที่ไม่บังคับซึ่งจะแสดงเหนือทางเลือกต่างๆ"),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("แบบง่าย"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "แท็บช่วยจัดระเบียบเนื้อหาในหน้าจอต่างๆ ชุดข้อมูล และการโต้ตอบอื่นๆ"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "แท็บซึ่งมีมุมมองที่เลื่อนได้แบบอิสระ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("แท็บ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "ช่องข้อความให้ผู้ใช้ป้อนข้อความใน UI ซึ่งมักปรากฏอยู่ในฟอร์มและกล่องโต้ตอบ"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("อีเมล"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("โปรดป้อนรหัสผ่าน"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - ป้อนหมายเลขโทรศัพท์ในสหรัฐอเมริกา"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "โปรดแก้ไขข้อผิดพลาดที่แสดงเป็นสีแดงก่อนส่ง"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("ซ่อนรหัสผ่าน"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "เขียนสั้นๆ เพราะนี่เป็นเพียงการสาธิต"),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("เรื่องราวชีวิต"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("ชื่อ*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("ต้องระบุชื่อ"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("ไม่เกิน 8 อักขระ"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "โปรดป้อนอักขระที่เป็นตัวอักษรเท่านั้น"),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("รหัสผ่าน*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("รหัสผ่านไม่ตรงกัน"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("หมายเลขโทรศัพท์*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* เป็นช่องที่ต้องกรอก"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("พิมพ์รหัสผ่านอีกครั้ง*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("รายได้ต่อปี"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("แสดงรหัสผ่าน"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ส่ง"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "บรรทัดข้อความและตัวเลขที่แก้ไขได้"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "แนะนำตัวให้เรารู้จัก (เช่น เขียนว่าคุณทำงานอะไรหรือมีงานอดิเรกอะไรบ้าง)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("ช่องข้อความ"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("ชื่อของคุณ"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("หมายเลขโทรศัพท์ของคุณ"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("อีเมลของคุณ"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ปุ่มเปิด-ปิดอาจใช้เพื่อจับกลุ่มตัวเลือกที่เกี่ยวข้องกัน กลุ่มของปุ่มเปิด-ปิดที่เกี่ยวข้องกันควรใช้คอนเทนเนอร์ร่วมกันเพื่อเป็นการเน้นกลุ่มเหล่านั้น"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ปุ่มเปิด-ปิด"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("สองบรรทัด"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "คำจำกัดความของตัวอักษรรูปแบบต่างๆ ที่พบในดีไซน์ Material"),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "รูปแบบข้อความทั้งหมดที่กำหนดไว้ล่วงหน้า"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("ตัวอย่างการพิมพ์"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("เพิ่มบัญชี"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ยอมรับ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ยกเลิก"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ไม่ยอมรับ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ทิ้ง"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("ทิ้งฉบับร่างไหม"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "การสาธิตกล่องโต้ตอบแบบเต็มหน้าจอ"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("บันทึก"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("กล่องโต้ตอบแบบเต็มหน้าจอ"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ให้ Google ช่วยแอประบุตำแหน่ง ซึ่งหมายถึงการส่งข้อมูลตำแหน่งแบบไม่เปิดเผยชื่อไปยัง Google แม้ว่าจะไม่มีแอปทำงานอยู่"),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "ใช้บริการตำแหน่งของ Google ไหม"),
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("ตั้งค่าบัญชีสำรอง"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("แสดงกล่องโต้ตอบ"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("รูปแบบการอ้างอิงและสื่อ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("หมวดหมู่"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("แกลเลอรี"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("เงินเก็บสำหรับซื้อรถ"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("กระแสรายวัน"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("เงินเก็บสำหรับซื้อบ้าน"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("วันหยุดพักผ่อน"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("เจ้าของบัญชี"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "ผลตอบแทนรายปีเป็นเปอร์เซ็นต์"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "ดอกเบี้ยที่จ่ายเมื่อปีที่แล้ว"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("อัตราดอกเบี้ย"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "ดอกเบี้ยตั้งแต่ต้นปีจนถึงปัจจุบัน"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage(
                "รายการเคลื่อนไหวของบัญชีรอบถัดไป"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("รวม"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("บัญชี"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("การแจ้งเตือน"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("ใบเรียกเก็บเงิน"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("ครบกำหนด"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("เสื้อผ้า"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("ร้านกาแฟ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("ของชำ"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("ร้านอาหาร"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("ที่เหลือ"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("งบประมาณ"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("แอปการเงินส่วนบุคคล"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ที่เหลือ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบ"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบ"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("เข้าสู่ระบบของ Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("หากยังไม่มีบัญชี"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("รหัสผ่าน"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("จดจำข้อมูลของฉัน"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ลงชื่อสมัครใช้"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ดูทั้งหมด"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("ดูบัญชีทั้งหมด"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("ดูบิลทั้งหมด"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("ดูงบประมาณทั้งหมด"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ค้นหา ATM"),
        "rallySettingsHelp":
            MessageLookupByLibrary.simpleMessage("ความช่วยเหลือ"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("จัดการบัญชี"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("การแจ้งเตือน"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "การตั้งค่าสำหรับเอกสารที่ไม่ใช้กระดาษ"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("รหัสผ่านและ Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("ข้อมูลส่วนบุคคล"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("ออกจากระบบ"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("เอกสารเกี่ยวกับภาษี"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("บัญชี"),
        "rallyTitleBills":
            MessageLookupByLibrary.simpleMessage("ใบเรียกเก็บเงิน"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("งบประมาณ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ภาพรวม"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("การตั้งค่า"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("เกี่ยวกับ Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("ออกแบบโดย TOASTER ในลอนดอน"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("ปิดการตั้งค่า"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("การตั้งค่า"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("สีเข้ม"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("ส่งความคิดเห็น"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("สีสว่าง"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("ภาษา"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("กลไกการทำงานของแพลตฟอร์ม"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Slow Motion"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("ระบบ"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("ทิศทางข้อความ"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("อิงตามภาษา"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("อัตราส่วนข้อความ"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("ใหญ่มาก"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("ใหญ่"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("ปกติ"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("เล็ก"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("ธีม"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("การตั้งค่า"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ยกเลิก"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ล้างรถเข็น"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("รถเข็น"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("การจัดส่ง:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("ยอดรวมย่อย:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("ภาษี:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("รวม"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("อุปกรณ์เสริม"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("ทั้งหมด"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("เสื้อผ้า"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("บ้าน"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("แอปค้าปลีกด้านแฟชั่น"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("รหัสผ่าน"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ชื่อผู้ใช้"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ออกจากระบบ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("เมนู"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ถัดไป"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("แก้วกาแฟสีบลูสโตน"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("เสื้อยืดชายโค้งสีแดงอมชมพู"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("ผ้าเช็ดปากแชมเบรย์"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("เสื้อแชมเบรย์"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("เสื้อเชิ้ตสีขาวแบบคลาสสิก"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("สเวตเตอร์สีดินเหนียว"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("ตะแกรงสีทองแดง"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("เสื้อยืดลายขวางแบบถี่"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("เชือกทำสวน"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("หมวก Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("แจ็กเก็ต Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("โต๊ะขอบทอง 3 ตัว"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("ผ้าพันคอสีเหลืองอมน้ำตาลแดง"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("เสื้อกล้ามทรงย้วยสีเทา"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("ชุดน้ำชา Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen Quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("กางเกงขายาวสีน้ำเงินเข้ม"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("เสื้อคลุมสีปูนปลาสเตอร์"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("โต๊ะสำหรับ 4 คน"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("รางน้ำฝน"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona ครอสโอเวอร์"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("ชุดกระโปรงเดินชายหาด"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("สเวตเตอร์ถักแบบห่าง"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("เสื้อยืด Shoulder Rolls"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("กระเป๋าทรงย้วย"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("ชุดเครื่องเคลือบสีละมุน"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("แว่นกันแดด Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("ต่างหู Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("กระถางสำหรับพืชอวบน้ำ"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("ชุดกระโปรง Sunshirt"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("เสื้อ Surf and Perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("ถุงย่าม"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("ถุงเท้าทีมกีฬามหาวิทยาลัย"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("เสื้อเฮนลีย์ Walter (ขาว)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("พวงกุญแจถัก"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage(
                "เสื้อเชิ้ตสีขาวลายทางแนวตั้ง"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("เข็มขัด Whitney"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("เพิ่มในรถเข็น"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("ปิดหน้ารถเข็น"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("ปิดเมนู"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("เปิดเมนู"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("นำสินค้าออก"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("ค้นหา"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("การตั้งค่า"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "เลย์เอาต์เริ่มต้นที่มีการตอบสนอง"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("เนื้อความ"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("ปุ่ม"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("บรรทัดแรก"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("คำบรรยาย"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("ชื่อ"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("แอปเริ่มต้น"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("เพิ่ม"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("รายการโปรด"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ค้นหา"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("แชร์")
      };
}
