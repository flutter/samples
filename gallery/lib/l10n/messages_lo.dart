// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a lo locale. All the
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
  String get localeName => 'lo';

  static m0(value) => "ເພື່ອເບິ່ງຊອດໂຄດສຳລັບແອັບນີ້, ກະລຸນາໄປທີ່ ${value}.";

  static m1(title) => "ຕົວແທນບ່ອນສຳລັບແຖບ ${title}";

  static m2(destinationName) => "ສຳຫຼວດ ${destinationName}";

  static m3(destinationName) => "ແບ່ງປັນ ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'ບໍ່ມີຮ້ານອາຫານ', one: 'ຮ້ານອາຫານ 1 ຮ້ານ', other: 'ຮ້ານອາຫານ ${totalRestaurants} ຮ້ານ')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'ບໍ່ຈອດ', one: '1 ຈຸດຈອດ', other: '${numberOfStops} ຈຸດຈອດ')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'ບໍ່ມີຕົວເລືອກບ່ອນພັກ', one: 'ມີ 1 ຕົວເລືອກບ່ອນພັກ', other: 'ມີ ${totalProperties} ຕົວເລືອກບ່ອນພັກ')}";

  static m10(value) => "${value} ໃສ່ນ້ຳເຜິ້ງ";

  static m11(value) => "${value} ໃສ່ນ້ຳຕານ";

  static m12(value) => "ລາຍການ ${value}";

  static m13(error) => "ສຳເນົາໄປໃສ່ຄລິບບອດບໍ່ສຳເລັດ: ${error}";

  static m14(value) => "ຕໍ່ເນື່ອງ: ${value}";

  static m15(value) => "ບໍ່ຕໍ່ເນື່ອງ: ${value}";

  static m16(value) => "ເລືອກແລ້ວ: ${value}";

  static m17(value) => "ເລືອກແລ້ວ: ${value}";

  static m18(name, phoneNumber) => "ເບີໂທລະສັບຂອງ ${name} ແມ່ນ ${phoneNumber}";

  static m19(value) => "ທ່ານເລືອກ: \"${value}\" ແລ້ວ";

  static m20(accountName, accountNumber, amount) =>
      "ບັນຊີ ${accountName} ໝາຍເລກ ${accountNumber} ຈຳນວນ ${amount}.";

  static m21(amount) => "ທ່ານຈ່າຍຄ່າທຳນຽມ ATM ໃນເດືອນນີ້ໄປ ${amount}";

  static m22(percent) =>
      "ດີຫຼາຍ! ບັນຊີເງິນຝາກຂອງທ່ານມີເງິນຫຼາຍກວ່າເດືອນແລ້ວ ${percent}.";

  static m23(percent) =>
      "ກະລຸນາຮັບຊາບ, ຕອນນີ້ທ່ານໃຊ້ງົບປະມານຊື້ເຄື່ອງເດືອນນີ້ໄປແລ້ວ ${percent}.";

  static m24(amount) => "ທ່ານໃຊ້ເງິນຢູ່ຮ້ານອາຫານໃນອາທິດນີ້ໄປແລ້ວ ${amount}.";

  static m25(count) =>
      "${Intl.plural(count, one: 'ເພີ່ມການຫຼຸດພາສີທີ່ເປັນໄປໄດ້ຂອງທ່ານ! ມອບໝາຍໝວດໝູ່ໃຫ້ 1 ທຸລະກຳທີ່ຍັງບໍ່ໄດ້ຮັບມອບໝາຍເທື່ອ.', other: 'ເພີ່ມການຫຼຸດພາສີທີ່ເປັນໄປໄດ້ຂອງທ່ານ! ມອບໝາຍໝວດໝູ່ໃຫ້ ${count} ທຸລະກຳທີ່ຍັງບໍ່ໄດ້ຮັບມອບໝາຍເທື່ອ.')}";

  static m26(billName, date, amount) =>
      "ບິນ ${billName} ຮອດກຳນົດ ${date} ຈຳນວນ ${amount}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "ງົບປະມານ ${budgetName} ໃຊ້ໄປແລ້ວ ${amountUsed} ຈາກຈຳນວນ ${amountTotal}, ເຫຼືອ ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ບໍ່ມີລາຍການ', one: '1 ລາຍການ', other: '${quantity} ລາຍການ')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "ຈຳນວນ: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'ກະຕ່າຊື້ເຄື່ອງ, ບໍ່ມີລາຍການ', one: 'ກະຕ່າຊື້ເຄື່ອງ, 1 ລາຍການ', other: 'ກະຕ່າຊື້ເຄື່ອງ, ${quantity} ລາຍການ')}";

  static m32(product) => "ລຶບ ${product} ອອກ";

  static m33(value) => "ລາຍການ ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "ບ່ອນເກັບ GitHub ສຳລັບຕົວຢ່າງ Flutter"),
        "backToGallery": MessageLookupByLibrary.simpleMessage("ກັບໄປຄັງຮູບ"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("ໄອຄອນນຳ"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("ຄຳສັ່ງຫຼາຍອັນ"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("ຣີເຊັດແບນເນີ"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "ລະຫັດຜ່ານຂອງທ່ານຖືກອັບເດດຢູ່ອຸປະກອນອື່ນແລ້ວ. ກະລຸນາເຂົ້າສູ່ລະບົບອີກເທື່ອໜຶ່ງ."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("ຮອຍບາກ"),
        "bottomAppBarPosition":
            MessageLookupByLibrary.simpleMessage("ຕຳແໜ່ງປຸ່ມຄຳສັ່ງແບບລອຍ"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("ວາງແລ້ວ - ຈຸດທາງກາງ"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("ວາງແລ້ວ - ຈຸດສິ້ນສຸດ"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("ລອຍຢູ່ - ຈຸດທາງກາງ"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("ລອຍຢູ່ - ຈຸດສິ້ນສຸດ"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("ບັນຊີ"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("ໂມງປຸກ"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("ປະຕິທິນ"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("ກ້ອງຖ່າຍຮູບ"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("ຄຳເຫັນ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ປຸ່ມ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("ສ້າງ"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("ສຳຫຼວດ"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("ສາມາດເລືອກໄດ້ (ກົດຄ້າງໄວ້)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("ສາມາດແຕະໄດ້"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("ທານຈາວູ"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("ເຊຕິນາດ"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("ໝາຍເລກ 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("ເຄື່ອງປັ່ນໄໝ"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("ວັດ"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("ທານຈາວູ, ທະມິນນາດູ"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("ຊິວາກັນກາ, ທະມິນນາດູ"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "10 ເມືອງຕິດອັນດັບໃຫ້ໄປທ່ອງທ່ຽວໃນທະມິນນາດູ"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("ຊ່າງສີມືແຫ່ງອິນເດຍໃຕ້"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("ວັດບໍລິຫາດີສະວາຣາ"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("ຖີບລົດ"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("ລິບ"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("ເຕົາຜິງໄຟ"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("ໃຫຍ່"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("ປານກາງ"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("ນ້ອຍ"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("ເປີດໄຟ"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("ຈັກຊັກເຄື່ອງ"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ສີເຫຼືອງອຳພັນ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ສີຟ້າ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ສີຟ້າເທົາ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ສີນ້ຳຕານ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ສີຟ້າຂຽວ"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("ສີສົ້ມແກ່"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ສີມ່ວງເຂັ້ມ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ສີຂຽວ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ສີເທົາ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ສີຄາມ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ສີຟ້າອ່ອນ"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("ສີຂຽວອ່ອນ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ສີເຫຼືອງໝາກນາວ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ສີສົ້ມ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ສີບົວ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ສີມ່ວງ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ສີແດງ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ສີຟ້າອົມຂຽວ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ສີເຫຼືອງ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "ແອັບການທ່ອງທ່ຽວທີ່ປັບແຕ່ງສ່ວນຕົວ"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ກິນ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("ເນໂປ, ສະຫະລັດ"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ພິດຊ່າໃນເຕົາອົບຟືນ"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("ດາລັສ, ສະຫະລັດ"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("ລິສບອນ, ປໍຕູກອລ"),
        "craneEat10SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ຜູ້ຍິງຖືແຊນວິດພາສທຣາມີໃຫຍ່"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ບາທີ່ບໍ່ມີລູກຄ້າເຊິ່ງມີຕັ່ງນັ່ງແບບສູງແຕ່ບໍ່ມີພະນັກ"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("ຄໍໂດບາ, ອາເຈນທິນາ"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ເບີເກີ"),
        "craneEat3": MessageLookupByLibrary.simpleMessage("ພອດແລນ, ສະຫະລັດ"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ທາໂຄເກົາຫລີ"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("ປາຣີສ, ຝຣັ່ງ"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ຂອງຫວານຊັອກໂກແລັດ"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("ໂຊລ, ເກົາຫຼີໃຕ້"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ບໍລິເວນບ່ອນນັ່ງໃນຮ້ານອາຫານທີ່ມີສິລະປະ"),
        "craneEat6": MessageLookupByLibrary.simpleMessage("ຊີເອເທິນ, ສະຫະລັດ"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ເມນູໃສ່ກຸ້ງ"),
        "craneEat7": MessageLookupByLibrary.simpleMessage("ແນຊວິວ, ສະຫະລັດ"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ທາງເຂົ້າຮ້ານເບເກີຣີ"),
        "craneEat8": MessageLookupByLibrary.simpleMessage("ແອັດລັນຕາ, ສະຫະລັດ"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ຈານໃສ່ກຸ້ງນ້ຳຈືດ"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("ມາດຣິດ​, ສະເປນ"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ເຄົາເຕີໃນຄາເຟ່ທີ່ມີເຂົ້າໜົມອົບຊະນິດຕ່າງໆ"),
        "craneEatRestaurants": m4,
        "craneEatSubhead":
            MessageLookupByLibrary.simpleMessage("ສຳຫຼວດຮ້ານອາຫານຕາມປາຍທາງ"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("ບິນ"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("ແອສເພນ, ສະຫະລັດ"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ກະຕູບຫຼັງນ້ອຍຢູ່ກາງທິວທັດທີ່ມີຫິມະ ແລະ ຕົ້ນໄມ້ຂຽວ"),
        "craneFly1": MessageLookupByLibrary.simpleMessage("ບິກເຊີ, ສະຫະລັດ"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("ໄຄໂຣ, ອີ​ຢິບ"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar Mosque ໃນຕອນຕາເວັນຕົກ"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("ລິສບອນ, ປໍຕູກອລ"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ປະພາຄານດິນຈີ່ກາງທະເລ"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("ນາປາ, ສະຫະລັດ"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ສະລອຍນ້ຳທີ່ມີຕົ້ນປາມ"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("ບາຫຼີ, ອິນໂດເນເຊຍ"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ສະລອຍນ້ຳຕິດທະເລທີ່ມີຕົ້ນປາມ"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ເຕັ້ນພັກແຮມໃນທົ່ງ"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("ຫຸບເຂົາແຄມບູ, ເນປານ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ທຸງມົນຕາໜ້າພູທີ່ປົກຄຸມດ້ວຍຫິມະ"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("ມາຈູ ພິຈູ​, ເປ​ຣູ"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ປ້ອມມາຊູປິກຊູ"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("ມາເລ່​, ມັລດີຟ"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ບັງກະໂລເໜືອນ້ຳ"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("ວິຊເນົາ, ສະວິດເຊີແລນ"),
        "craneFly5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ໂຮງແຮມຮິມທະເລສາບທີ່ຢູ່ໜ້າພູ"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("ເມັກຊິກໂກ​ຊິຕີ, ເມັກ​ຊິ​ໂກ"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ພາບຖ່າຍທາງອາກາດຂອງພະລາດຊະວັງ Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage("ພູຣັຊມໍ, ສະຫະລັດ"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ພູຣັຊມໍ"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("ສິງກະໂປ"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ຮາວານາ, ຄິວບາ"),
        "craneFly9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ຜູ້ຊາຍຢືນພິງລົດບູຮານສີຟ້າ"),
        "craneFlyStops": m6,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("ສຳຫຼວດຖ້ຽວບິນຕາມປາຍທາງ"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("ເລືອກວັນທີ"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("ເລືອກວັນທີ"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("ເລືອກປາຍທາງ"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("ຮ້ານອາຫານ"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("ເລືອກສະຖານທີ່"),
        "craneFormOrigin": MessageLookupByLibrary.simpleMessage("ເລືອກຕົ້ນທາງ"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("ເລືອກເວລາ"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("ນັກທ່ອງທ່ຽວ"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("ນອນ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("ມາເລ່​, ມັລດີຟ"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ບັງກະໂລເໜືອນ້ຳ"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage("ແອສເພນ, ສະຫະລັດ"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("ໄຄໂຣ, ອີ​ຢິບ"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar Mosque ໃນຕອນຕາເວັນຕົກ"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("ໄທເປ, ໄຕ້ຫວັນ"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ຕຶກໄທເປ 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ກະຕູບຫຼັງນ້ອຍຢູ່ກາງທິວທັດທີ່ມີຫິມະ ແລະ ຕົ້ນໄມ້ຂຽວ"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("ມາຈູ ພິຈູ​, ເປ​ຣູ"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ປ້ອມມາຊູປິກຊູ"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ຮາວານາ, ຄິວບາ"),
        "craneSleep3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ຜູ້ຊາຍຢືນພິງລົດບູຮານສີຟ້າ"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("ວິຊເນົາ, ສະວິດເຊີແລນ"),
        "craneSleep4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ໂຮງແຮມຮິມທະເລສາບທີ່ຢູ່ໜ້າພູ"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage("ບິກເຊີ, ສະຫະລັດ"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ເຕັ້ນພັກແຮມໃນທົ່ງ"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("ນາປາ, ສະຫະລັດ"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ສະລອຍນ້ຳທີ່ມີຕົ້ນປາມ"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("ປໍໂຕ, ປໍຕູກອລ"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ຫ້ອງພັກທີ່ມີສີສັນສົດໃສຢູ່ຈະຕຸລັດ Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("ທູລຳ, ເມັກຊິໂກ"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ຊາກເປ່ເພຂອງສິ່ງກໍ່ສ້າງຊາວມາຢັນຢູ່ໜ້າຜາເໜືອຫາດຊາຍ"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("ລິສບອນ, ປໍຕູກອລ"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ປະພາຄານດິນຈີ່ກາງທະເລ"),
        "craneSleepProperties": m9,
        "craneSleepSubhead":
            MessageLookupByLibrary.simpleMessage("ສຳຫຼວດທີ່ພັກຕາມປາຍທາງ"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("ອະນຸຍາດ"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("ຍົກເລີກ"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("ຊີສເຄັກ"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("ຊັອກໂກແລັດບຣາວນີ"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "ກະລຸນາເລືອກປະເພດຂອງຫວານທີ່ທ່ານມັກຈາກລາຍຊື່ທາງລຸ່ມ. ການເລືອກຂອງທ່ານຈະຖືກໃຊ້ເພື່ອປັບແຕ່ງລາຍຊື່ຮ້ານອາຫານທີ່ແນະນຳໃນພື້ນທີ່ຂອງທ່ານ."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("ຍົກເລີກ"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("ບໍ່ອະນຸຍາດ"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("ເລືອກຂອງຫວານທີ່ມັກ"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ສະຖານທີ່ປັດຈຸບັນຂອງທ່ານຈະຖືກສະແດງຢູ່ແຜນທີ່ ແລະ ຖືກໃຊ້ເພື່ອເສັ້ນທາງ, ຜົນການຊອກຫາທີ່ຢູ່ໃກ້ຄຽງ ແລະ ເວລາເດີນທາງໂດຍປະມານ."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "ອະນຸຍາດໃຫ້ \"ແຜນທີ່\" ເຂົ້າເຖິງສະຖານທີ່ຂອງທ່ານໄດ້ໃນຂະນະທີ່ທ່ານກຳລັງໃຊ້ແອັບບໍ?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("ທີຣາມິສຸ"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ປຸ່ມ"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("ມີພື້ນຫຼັງ"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("ສະແດງການແຈ້ງເຕືອນ"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("ສົນທະນາ"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("ໜ້າຫຼັກ"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("ໂປຣໄຟລ໌"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("ແຄຊຽມ (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("ແຄລໍຣີ"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("ຄາໂບໄຮເດຣດ (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("ຂອງຫວານ (ສຳລັບ 1 ຄົນ)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("ໄຂມັນ (g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("ເຫຼັກ (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("ໂປຣຕີນ (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("ໂຊດຽມ (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("ໂພຊະນາການ"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("ພາຍໝາກໂປ່ມ"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("ຄັບເຄັກ"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("ໂດນັດ"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("ເອແຄ"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("ນົມສົ້ມແຊ່ແຂັງ"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("ເຂົ້າຈີ່ຂິງ"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("ຮັງເຜິ້ງ"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("ໄອສະຄຣີມແຊນວິດ"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("ເຈລີບີນ"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("ໂລລິປັອບ"),
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
            "ຊິບຄຳສັ່ງເປັນຊຸດຕົວເລືອກທີ່ຈະເອີ້ນຄຳສັ່ງວຽກທີ່ກ່ຽວກັບເນື້ອຫາຫຼັກ. ຊິບຄຳສັ່ງຄວນຈະສະແດງແບບໄດນາມິກ ແລະ ຕາມບໍລິບົດໃນສ່ວນຕິດຕໍ່ຜູ້ໃຊ້."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ຊິບຄຳສັ່ງ"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ກ່ອງໂຕ້ຕອບການແຈ້ງເຕືອນເພື່ອບອກໃຫ້ຜູ້ໃຊ້ຮູ້ກ່ຽວກັບສະຖານະການທີ່ຕ້ອງຮັບຮູ້. ກ່ອງໂຕ້ຕອບການແຈ້ງເຕືອນທີ່ມີຊື່ ແລະ ລາຍຊື່ຄຳສັ່ງແບບບໍ່ບັງຄັບ."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("ການແຈ້ງເຕືອນ"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("ການແຈ້ງເຕືອນທີ່ມີຊື່"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "ແບນເນີຈະສະແດງຂໍ້ຄວາມສຳຄັນສັ້ນໆ ແລະ ສະໜອງຄຳສັ່ງເພື່ອໃຫ້ຜູ້ໃຊ້ຈັດການ (ຫຼື ປິດແບນເນີ). ຜູ້ໃຊ້ຈະຕ້ອງດຳເນີນການໃດໜຶ່ງເພື່ອປິດມັນ."),
        "demoBannerSubtitle":
            MessageLookupByLibrary.simpleMessage("ກຳລັງສະແດງແບນເນີພາຍໃນລາຍຊື່"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("ແບນເນີ"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "ແຖບແອັບທາງລຸ່ມຈະເຮັດໃຫ້ສາມາດເຂົ້າເຖິງແຖບນຳທາງ ແລະ ຄຳສັ່ງຕ່າງໆໄດ້ສູງສຸດ 4 ຄຳສັ່ງ, ຮວມທັງປຸ່ມຄຳສັ່ງທີ່ລອຍຢູ່ໄດ້ນຳ."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "ສະແດງການນຳທາງ ແລະ ຄຳສັ່ງຢູ່ລຸ່ມສຸດ"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("ແຖບແອັບທາງລຸ່ມ"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "ແຖບນຳທາງທາງລຸ່ມສະແດງປາຍທາງ 3-5 ບ່ອນຢູ່ລຸ່ມຂອງໜ້າຈໍ. ປາຍທາງແຕ່ລະບ່ອນຈະສະແດງດ້ວຍໄອຄອນ ແລະ ປ້າຍກຳກັບແບບຂໍ້ຄວາມທີ່ບໍ່ບັງຄັບ. ເມື່ອຜູ້ໃຊ້ແຕະໃສ່ໄອຄອນນຳທາງທາງລຸ່ມແລ້ວ, ລະບົບຈະພາໄປຫາປາຍທາງຂອງການນຳທາງລະດັບເທິງສຸດທີ່ເຊື່ອມໂຍງກັບໄອຄອນນັ້ນ."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("ປ້າຍກຳກັບທີ່ສະແດງຕະຫຼອດ"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("ປ້າຍກຳກັບທີ່ເລືອກ"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "ການນຳທາງທາງລຸ່ມທີ່ມີມຸມມອງແບບຄ່ອຍໆປາກົດ"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("ການນຳທາງລຸ່ມສຸດ"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("ເພີ່ມ"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ສະແດງ BOTTOM SHEET"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("ສ່ວນຫົວ"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modal bottom sheet ເປັນທາງເລືອກທີ່ໃຊ້ແທນເມນູ ຫຼື ກ່ອງໂຕ້ຕອບ ແລະ ປ້ອງກັນບໍ່ໃຫ້ຜູ້ໃຊ້ໂຕ້ຕອບກັບສ່ວນທີ່ເຫຼືອຂອງແອັບ."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modal bottom sheet"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Persistent bottom sheet ຈະສະແດງຂໍ້ມູນທີ່ເສີມເນື້ອຫາຫຼັກຂອງແອັບ. ຜູ້ໃຊ້ຈະຍັງສາມາດເບິ່ງເຫັນອົງປະກອບນີ້ໄດ້ເຖິງແມ່ນວ່າຈະໂຕ້ຕອບກັບສ່ວນອື່ນໆຂອງແອັບຢູ່ກໍຕາມ."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Persistent bottom sheet"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Persistent ແລະ modal bottom sheets"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Bottom sheet"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("ຊ່ອງຂໍ້ຄວາມ"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "ຮາບພຽງ, ຍົກຂຶ້ນ, ມີເສັ້ນຂອບ ແລະ ອື່ນໆ"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ປຸ່ມ"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "ບັດແມ່ນແຜ່ນເອກະສານທີ່ໃຊ້ສະແດງຂໍ້ມູນທີ່ກ່ຽວຂ້ອງ ເຊັ່ນ: ອະລະບ້ຳ, ສະຖານທີ່ຕັ້ງທາງພູມສາດ, ຄາບເຂົ້າ, ຂໍ້ມູນການຕິດຕໍ່ ແລະ ອື່ນໆ."),
        "demoCardSubtitle":
            MessageLookupByLibrary.simpleMessage("ບັດພື້ນຖານແບບມີມຸມໂຄ້ງມົນ"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("ບັດ"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("ເມນູລາຍການກວດສອບ"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "ອົງປະກອບກະທັດຮັດທີ່ການປ້ອນຂໍ້ມູນ, ຄຸນສົມບັດ ຫຼື ຄຳສັ່ງໃດໜຶ່ງ"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ຊິບ"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "ຊິບຕົວເລືອກຈະສະແດງຕົວເລືອກດ່ຽວຈາກຊຸດໃດໜຶ່ງ. ຊິບຕົວເລືອກມີຂໍ້ຄວາມຄຳອະທິບາຍ ຫຼື ການຈັດໝວດໝູ່ທີ່ກ່ຽວຂ້ອງ."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("ຊິບຕົວເລືອກ"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "ຕົວຊີ້ບອກສະຖານະແບບວົງມົນ Material Design, ເຊິ່ງຈະໝຸນເພື່ອບອກວ່າແອັບພລິເຄຊັນກຳລັງເຮັດວຽກຢູ່."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວຊີ້ບອກສະຖານະແບບວົງມົນ"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("ລະຫັດສາທິດ"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("ສຳເນົາໃສ່ຄລິບບອດແລ້ວ."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ສຳເນົາທັງໝົດ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "ສີ ຫຼື ແຜງສີຄົງທີ່ເຊິ່ງເປັນຕົວແທນຊຸດສີຂອງ Material Design."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("ສີທີ່ລະບຸໄວ້ລ່ວງໜ້າທັງໝົດ"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("ສີ"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("ເມນູບໍລິບົດ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "ຊີດຄຳສັ່ງເປັນຮູບແບບການແຈ້ງເຕືອນທີ່ເຈາະຈົງເຊິ່ງນຳສະເໜີຊຸດຕົວເລືອກຢ່າງໜ້ອຍສອງຢ່າງທີ່ກ່ຽວຂ້ອງກັບບໍລິບົດປັດຈຸບັນໃຫ້ກັບຜູ້ໃຊ້. ຊີດຄຳສັ່ງສາມາດມີຊື່, ຂໍ້ຄວາມເພີ່ມເຕີມ ແລະ ລາຍຊື່ຄຳສັ່ງໄດ້."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("ຊີດຄຳສັ່ງ"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "ຕົວຊີ້ບອກການເຄື່ອນໄຫວແບບ iOS ທີ່ມຸນຕາມເຂັມໂມງ"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "ຕົວຊີ້ບອກການເຄື່ອນໄຫວແບບ iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມການແຈ້ງເຕືອນເທົ່ານັ້ນ"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ການແຈ້ງເຕືອນແບບມີປຸ່ມ"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "ກ່ອງໂຕ້ຕອບການແຈ້ງເຕືອນເພື່ອບອກໃຫ້ຜູ້ໃຊ້ຮູ້ກ່ຽວກັບສະຖານະການທີ່ຕ້ອງຮັບຮູ້. ກ່ອງໂຕ້ຕອບການແຈ້ງເຕືອນທີ່ມີຊື່, ເນື້ອຫາ ແລະ ລາຍຊື່ຄຳສັ່ງແບບບໍ່ບັງຄັບ. ຊື່ຈະສະແດງຢູ່ທາງເທິງຂອງເນື້ອຫາ ແລະ ຄຳສັ່ງແມ່ນຈະສະແດງຢູ່ທາງລຸ່ມຂອງເນື້ອຫາ."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("ການເຕືອນ"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("ການແຈ້ງເຕືອນທີ່ມີຊື່"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("ກ່ອງໂຕ້ຕອບການເຕືອນແບບ iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("ການແຈ້ງເຕືອນ"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "ປຸ່ມແບບ iOS. ມັນຈະໃສ່ຂໍ້ຄວາມ ແລະ/ຫຼື ໄອຄອນທີ່ຄ່ອຍໆປາກົດຂຶ້ນ ແລະ ຄ່ອຍໆຈາງລົງເມື່ອແຕະໃສ່. ອາດມີ ຫຼື ບໍ່ມີພື້ນຫຼັງກໍໄດ້."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມແບບ iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມ"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "ແຖບການນຳທາງແບບ iOS. ແຖບການນຳທາງແມ່ນແຖບເຄື່ອງມືທີ່ຢ່າງໜ້ອຍທີ່ສຸດຈະປະກອບມີຊື່ໜ້າ, ໃນທາງກາງຂອງແຖບເຄື່ອງມື."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("ແຖບການນຳທາງແບບ iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("ວັນທີ"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("​ວັນ​ທີ​ແລະ​ເວ​ລາ"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "ວິດເຈັດຕົວເລືອກຮູບແບບ iOS ທີ່ສາມາດໃຊ້ເພື່ອເລືອກວັນທີ, ເວລາ ຫຼື ທັງສອງໄດ້."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "ຕົວເລືອກວັນທີ ແລະ ເວລາແບບ iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("ເວລາ"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("ໂມງຈັບເວລາ"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວເລືອກ"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "ວິດເຈັດທີ່ນຳໃຊ້ການຄວບຄຸມເນື້ອຫາການໂຫຼດຂໍ້ມູນຄືນໃໝ່ແບບ iOS."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "ການຄວບຄຸມການດຶງເພື່ອໂຫຼດຂໍ້ມູນຄືນໃໝ່ iOS"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "ໃຊ້ເພື່ອເລືອກລະຫວ່າງຕົວເລືອກທີ່ສະເພາະຕົວຄືກັນ. ການເລືອກຕົວເລືອກໜຶ່ງໃນສ່ວນຄວບຄຸມທີ່ແບ່ງບກຸ່ມຈະເປັນການຍົກເລີກການເລືອກຕົວເລືອກອື່ນໆໃນສ່ວນຄວບຄຸມທີ່ແບ່ງກຸ່ມນັ້ນ."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("ການຄວບຄຸມແຍກສ່ວນແບບ iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "ແຖບເລື່ອນສາມາດໃຊ້ເພື່ອເລືອກຈາກຊຸດຄ່າຕໍ່ເນື່ອງ ຫຼື ບໍ່ຕໍ່ເນື່ອງໄດ້"),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("ແຖບເລື່ອນແບບ iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("ແຖບເລື່ອນ"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "ປຸ່ມກົດແມ່ນໃຊ້ເພື່ອສະຫຼັບສະຖານະ ເປີດ/ປິດ ຂອງການຕັ້ງຄ່າດ່ຽວໃດໜຶ່ງ."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມກົດແບບ iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "ແຖບການນຳທາງລຸ່ມສຸດແບບ iOS. ສະແດງຫຼາຍແຖບທີ່ມີແຖບນຳໃຊ້ຢູ່ແຖບດຽວ, ແຖບທຳອິດເປັນຄ່າເລີ່ມຕົ້ນ."),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("ແຖບລຸ່ມສຸດແບບ iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "ຊ່ອງຂໍ້ຄວາມທີ່ໃຫ້ຜູ້ໃຊ້ພິມຂໍ້ຄວາມຈາກແປ້ນພິມຮາດແວ ຫຼື ແປ້ນພິມຢູ່ໜ້າຈໍໄດ້."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("ຊ່ອງຂໍ້ຄວາມຮູບແບບ iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "ຕົວເລື່ອນຈະມີໄລຍະຂອງຄ່າໄປຕາມແຖບໃດໜຶ່ງ, ເຊິ່ງຜູ້ໃຊ້ສາມາດເລືອກຄ່າດຽວ ຫຼື ໄລຍະຂອງຄ່າຕ່າງໆໄດ້. ຕົວເລື່ອນສາມາດໃຊ້ຮູບແບບສີສັນ ແລະ ປັບແຕ່ງໄດ້."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວເລື່ອນແບບກຳນົດເອງ"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "ຕາຕະລາງຂໍ້ມູນຈະສະແດງຂໍ້ມູນໃນຮູບແບບຊ່ອງທີ່ປະກອບດ້ວຍແຖວ ແລະ ຖັນ. ພວກມັນຈະຈັດລະບຽບຂໍ້ມູນໃນແບບທີ່ສາມາດສະແກນໄດ້ງ່າຍ, ເພື່ອໃຫ້ຜູ້ໃຊ້ສາມາດຊອກຫາຮູບແບບ ແລະ ຂໍ້ມູນເຈາະເລິກໄດ້."),
        "demoDataTableSubtitle":
            MessageLookupByLibrary.simpleMessage("ແຖວ ແລະ ຖັນຂໍ້ມູນ"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("ຕາຕະລາງຂໍ້ມູນ"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "ສະແດງກ່ອງໂຕ້ຕອບທີ່ມີຕົວເລືອກວັນທີແບບ Material Design."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວເລືອກວັນທີ"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "ງ່າຍໆ, ການແຈ້ງເຕືອນ ແລະ ເຕັມຈໍ"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("ກ່ອງໂຕ້ຕອບ"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("ເອກະສານ API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ຊິບຕົວກັ່ນຕອງໃຊ້ແທັກ ຫຼື ຄຳອະທິບາຍລາຍລະອຽດເປັນວິທີກັ່ນຕອງເນື້ອຫາ."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ຊິບຕົວກັ່ນຕອງ"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ປຸ່ມຮາບພຽງຈະສະແດງຮອຍແຕ້ມໝຶກເມື່ອກົດແຕ່ຈະບໍ່ຍົກຂຶ້ນ. ໃຊ້ປຸ່ມຮາບພຽງຢູ່ແຖບເຄື່ອງມື, ໃນກ່ອງໂຕ້ຕອບ ແລະ ໃນແຖວທີ່ມີໄລຍະຫ່າງຈາກຂອບ."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມຮາບພຽງ"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ປຸ່ມການເຮັດວຽກແບບລອຍເປັນປຸ່ມໄອຄອນຮູບວົງມົນທີ່ລອຍຢູ່ເທິງເນື້ອຫາເພື່ອໂປຣໂໝດການດຳເນີນການຫຼັກໃນແອັບພລິເຄຊັນ."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມຄຳສັ່ງແບບລອຍ"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ຄຸນສົມບັດ fullscreenDialog ກຳນົດວ່າຈະໃຫ້ໜ້າທີ່ສົ່ງເຂົ້າມານັ້ນເປັນກ່ອງໂຕ້ຕອບແບບເຕັມຈໍຫຼືບໍ່"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("ເຕັມຈໍ"),
        "demoFullscreenTooltip": MessageLookupByLibrary.simpleMessage("ເຕັມຈໍ"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "ລາຍຊື່ຕາຕະລາງແມ່ນດີທີ່ສຸດສຳລັບການນຳສະເໜີຂໍ້ມູນທີ່ມີຄຸນລັກສະນະຄ້າຍກັນ, ໂດຍທົ່ວໄປແມ່ນຮູບພາບຕ່າງໆ. ແຕ່ລະລາຍການໃນລາຍຊື່ຕາຕະລາງແມ່ນເອີ້ນວ່າແຜ່ນ."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("ພ້ອມກັບສ່ວນທ້າຍ"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("ພ້ອມກັບສ່ວນຫົວ"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("ຮູບພາບເທົ່ານັ້ນ"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("ໂຄງຮ່າງແຖວ ແລະ ຖັນ"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("ລາຍຊື່ຕາຕະລາງ"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("ຂໍ້ມູນ"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ຊິບອິນພຸດທີ່ສະແດງຂໍ້ມູນທີ່ຊັບຊ້ອນໃນຮູບແບບກະທັດຮັດ ເຊັ່ນ: ຂໍ້ມູນເອນທິທີ (ບຸກຄົນ, ສະຖານທີ່ ຫຼື ສິ່ງຂອງ) ຫຼື ຂໍ້ຄວາມຂອງການສົນທະນາ."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("ຊິບອິນພຸດ"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("ບໍ່ສາມາດສະແດງ URL ໄດ້:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "ຕົວຊີ້ບອກສະຖານະແບບເສັ້ນຊື່ Material Design, ເອີ້ນອີກຢ່າງໜຶ່ງວ່າແຖບສະຖານະ."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວຊີ້ບອກສະຖານະແບບເສັ້ນຊື່"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "ແຖບທີ່ມີຄວາມສູງແບບຕາຍຕົວແຖວດ່ຽວທີ່ປົກກະຕິຈະມີຂໍ້ຄວາມຈຳນວນໜຶ່ງຮວມທັງໄອຄອນນຳໜ້າ ຫຼື ຕໍ່ທ້າຍ"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("ຂໍ້ຄວາມສຳຮອງ"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("ໂຄງຮ່າງລາຍຊື່ແບບເລື່ອນໄດ້"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("ລາຍຊື່"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("ລາຍການເມນູບໍລິບົດສອງ"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage("ລາຍການທີ່ມີເມນູລາຍການກວດສອບ"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("ລາຍການທີ່ມີເມນູບໍລິບົດ"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("ລາຍການທີ່ມີເມນູແບບພາກສ່ວນ"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("ລາຍການທີ່ມີເມນູແບບງ່າຍ"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("ລາຍການເມນູບໍລິບົດໜຶ່ງ"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("ລາຍການເມນູບໍລິບົດສາມ"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "ເມນູຈະສະແດງລາຍຊື່ຂອງຕົວເລືອກຢູ່ພື້ນຜິວຊົ່ວຄາວ. ພວກມັນຈະປາກົດເມື່ອຜູ້ໃຊ້ໂຕ້ຕອບກັບປຸ່ມ, ຄຳສັ່ງ ຫຼື ການຄວບຄຸມອື່ນໆ."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("ສີ່"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("ຮັບລິ້ງ"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("ລາຍການເມນູໜຶ່ງ"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("ລາຍການເມນູສາມ"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("ລາຍການເມນູສອງ"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("ໜຶ່ງ"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("ຕົວຢ່າງ"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("ລຶບ"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("ແບ່ງປັນ"),
        "demoMenuSubtitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມເມນູ ແລະ ເມນູແບບງ່າຍໆ"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("ສາມ"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("ເມນູ"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("ສອງ"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("ແຖວດຽວ"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "ແຕະບ່ອນນີ້ເພື່ອເບິ່ງຕົວເລືອກທີ່ສາມາດໃຊ້ໄດ້ສຳລັບການສາທິດນີ້."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("ເບິ່ງຕົວເລືອກ"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("ຕົວເລືອກ"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ປຸ່ມແບບມີເສັ້ນຂອບຈະເປັນສີທຶບ ແລະ ຍົກຂຶ້ນເມື່ອກົດໃສ່. ມັກຈະຈັບຄູ່ກັບປຸ່ມແບບຍົກຂຶ້ນເພື່ອລະບຸວ່າມີການດຳເນີນການສຳຮອງຢ່າງອື່ນ."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມມີເສັ້ນຂອບ"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("ສະແດງຕົວເລືອກ"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("ການເລືອກວັນທີ ແລະ ເວລາ"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("ຕົວເລືອກ"),
        "demoProgressIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage("ເສັ້ນຊື່, ວົງມົນ, ບໍ່ຊັດເຈນ"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວຊີ້ບອກການສະຖານະ"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ປຸ່ມແບບຍົກຂຶ້ນຈະເພີ່ມມິຕິໃຫ້ກັບໂຄງຮ່າງທີ່ສ່ວນໃຫຍ່ຮາບພຽງ. ພວກມັນຈະເນັ້ນຟັງຊັນຕ່າງໆທີ່ສຳຄັນໃນພື້ນທີ່ກວ້າງ ຫຼື ມີການໃຊ້ວຽກຫຼາຍ."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມແບບຍົກຂຶ້ນ"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "ຕົວເລື່ອນຈະມີໄລຍະຂອງຄ່າໄປຕາມແຖບໃດໜຶ່ງ. ພວກມັນສາມາດມີໄອຄອນຢູ່ປາຍທັງສອງຂອງແຖບທີ່ມີໄລຍະຂອງຄ່າຕ່າງໆໄດ້. ພວກມັນເໝາະສຳລັບການປັບແຕ່ງການຕັ້ງຄ່າຕ່າງໆ ເຊັ່ນ: ລະດັບສຽງ, ຄວາມສະຫວ່າງ ຫຼື ການນຳໃຊ້ຟິວເຕີຮູບພາບ."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວເລື່ອນໄລຍ"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("ເມນູແບບພາກສ່ວນ"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "ກ່ອງໝາຍຈະເຮັດໃຫ້ຜູ້ໃຊ້ສາມາດເລືອກຫຼາຍຕົວເລືອກຈາກຊຸດໃດໜຶ່ງໄດ້. ຄ່າຂອງກ່ອງໝາຍປົກກະຕິທີ່ເປັນ true ຫຼື false ແລະ ຄ່າຂອງກ່ອງໝາຍທີ່ມີສາມຄ່າສາມາດເປັນຄ່າ null ໄດ້ນຳ."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("ກ່ອງໝາຍ"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ປຸ່ມຕົວເລືອກທີ່ເຮັດໃຫ້ຜູ້ໃຊ້ສາມາດເລືອກຕົວເລືອກຈາກຊຸດໃດໜຶ່ງໄດ້. ໃຊ້ປຸ່ມຕົວເລືອກສຳລັບການເລືອກສະເພາະຫາກທ່ານຄິດວ່າຜູ້ໃຊ້ຕ້ອງການເບິ່ງຕົວເລືອກທັງໝົດທີ່ມີຂ້າງໆກັນ."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມຕົວເລືອກ"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ກ່ອງໝາຍ, ປຸ່ມຕົວເລືອກ ແລະ ປຸ່ມເປີດປິດຕ່າງໆ"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ປຸ່ມເປີດ/ປິດທີ່ຈະສະຫຼັບຕົວເລືອກການຕັ້ງຄ່າໃດໜຶ່ງ. ຕົວເລືອກທີ່ສະຫຼັບການຄວບຄຸມ, ຮວມທັງສະຖານະທີ່ມັນເປັນຢູ່, ຄວນເຮັດໃຫ້ຈະແຈ້ງຈາກປ້າຍກຳກັບໃນແຖວທີ່ສອດຄ່ອງກັນ."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມ"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("ການຄວບຄຸມການເລືອກ"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ກ່ອງໂຕ້ຕອບງ່າຍໆທີ່ສະເໜີຕົວເລືອກໃຫ້ຜູ້ໃຊ້ລະຫວ່າງຫຼາຍໆຕົວເລືອກ. ກ່ອງໂຕ້ຕອບແບບງ່າຍໆຈະມີຊື່ແບບບໍ່ບັງຄັບທີ່ສະແດງທາງເທິງຕົວເລືອກ."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("ງ່າຍໆ"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("ເມນູແບບງ່າຍ"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("ຕໍ່ເນື່ອງ"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "ຕົວເລື່ອນໄລຍະແບບຕໍ່ເນື່ອງໂດຍມີຮູບແບບສີສັນກຳນົດເອງ"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "ຕໍ່ເນື່ອງກັບຄ່າຕົວເລກທີ່ແກ້ໄຂໄດ້"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "ຕົວເລື່ອນຈະມີໄລຍະຂອງຄ່າໄປຕາມແຖບໃດໜຶ່ງ, ເຊິ່ງຜູ້ໃຊ້ສາມາດເລືອກຄ່າດຽວໄດ້. ພວກມັນເໝາະສຳລັບການປັບແຕ່ງການຕັ້ງຄ່າຕ່າງໆ ເຊັ່ນ: ລະດັບສຽງ, ຄວາມສະຫວ່າງ ຫຼື ການນຳໃຊ້ຟິວເຕີຮູບພາບ."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("ແຍກຈາກກັນ"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "ຕົວເລື່ອນແບບແຍກຈາກກັນໂດຍມີຮູບແບບສີສັນກຳນົດເອງ"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("ຄ່າຕົວເລກທີ່ແກ້ໄຂໄດ້"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "ວິດເຈັດສຳລັບການເລືອກຄ່າໂດຍການປັດ"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("ຕົວເລື່ອນ"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "ທ່ານກົດຄຳສັ່ງແຖບສະແດງຂໍ້ຄວາມແລ້ວ."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ຄຳສັ່ງ"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ສະແດງແຖບສະແດງຂໍ້ຄວາມ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "ແຖບສະແດງຂໍ້ຄວາມຈະແຈ້ງເຕືອນຜູ້ໃຊ້ກ່ຽວກັບຂັ້ນຕອນທີ່ແອັບໃດໜຶ່ງດຳເນີນໄປແລ້ວ ຫຼື ຈະດຳເນີນການ. ພວກມັນຈະປາກົດຊົ່ວຄາວ, ຢູ່ລຸ່ມສຸດຂອງໜ້າຈໍ. ພວກມັນຈະບໍ່ລົບກວນປະສົບການຂອງຜູ້ໃຊ້ ແລະ ຜູ້ໃຊ້ບໍ່ຈຳເປັນຕ້ອງກົດເພື່ອໃຫ້ຫາຍໄປ."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ແຖບສະແດງຂໍ້ຄວາມຈະສະແດງຂໍ້ຄວາມຢູ່ລຸ່ມສຸດຂອງໜ້າຈໍ"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("ນີ້ແມ່ນແຖບສະແດງຂໍ້ຄວາມ."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("ແຖບສະແດງຂໍ້ຄວາມ"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "ແຖບຕ່າງໆຈະເປັນການຈັດລະບຽບເນື້ອຫາໃນແຕ່ລະໜ້າຈໍ, ຊຸດຂໍ້ມູນ ແລະ ການໂຕ້ຕອບອື່ນໆ."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ແຖບຕ່າງໆທີ່ມີມຸມມອງແບບເລື່ອນໄດ້ຂອງຕົນເອງ"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ແຖບ"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "ຊ່ອງຂໍ້ຄວາມຈະເຮັດໃຫ້ຜູ້ໃຊ້ສາມາດພິມຂໍ້ຄວາມໄປໃສ່ສ່ວນຕິດຕໍ່ຜູ້ໃຊ້ໄດ້. ປົກກະຕິພວກມັນຈະປາກົດໃນແບບຟອມ ແລະ ກ່ອງໂຕ້ຕອບຕ່າງໆ."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("ອີເມວ"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("ກະລຸນາປ້ອນລະຫັດຜ່ານ."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - ໃສ່ເບີໂທສະຫະລັດ."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "ກະລຸນາແກ້ໄຂຂໍ້ຜິດພາດສີແດງກ່ອນການສົ່ງຂໍ້ມູນ."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("ເຊື່ອງລະຫັດຜ່ານ"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "ຂຽນສັ້ນໆເພາະນີ້ເປັນພຽງການສາທິດ."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("ເລື່ອງລາວຊີວິດ"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("ຊື່*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("ຕ້ອງລະບຸຊື່."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("ບໍ່ເກີນ 8 ຕົວອັກສອນ."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "ກະລຸນາປ້ອນຕົວອັກສອນພະຍັນຊະນະເທົ່ານັ້ນ."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("ລະຫັດຜ່ານ*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("ລະຫັດຜ່ານບໍ່ກົງກັນ"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("ເບີໂທລະສັບ*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* ເປັນຊ່ອງທີ່ຕ້ອງລະບຸຂໍ້ມູນ"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("ພິມລະຫັດຜ່ານຄືນໃໝ່*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("ເງິນເດືອນ"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("ສະແດງລະຫັດຜ່ານ"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("ສົ່ງຂໍ້ມູນ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "ຂໍ້ຄວາມ ແລະ ຕົວເລກທີ່ແກ້ໄຂໄດ້ແຖວດຽວ"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "ບອກພວກເຮົາກ່ຽວກັບຕົວທ່ານ (ຕົວຢ່າງ: ໃຫ້ຈົດສິ່ງທີ່ທ່ານເຮັດ ຫຼື ວຽກຍາມຫວ່າງຂອງທ່ານ)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("ຊ່ອງຂໍ້ຄວາມ"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("ຄົນອື່ນເອີ້ນທ່ານວ່າແນວໃດ?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "ພວກເຮົາຈະຕິດຕໍ່ຫາທ່ານຢູ່ເບີໃດ?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("ທີ່ຢູ່ອີເມວຂອງທ່ານ"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "ສະແດງກ່ອງໂຕ້ຕອບທີ່ມີຕົວເລືອກເວລາແບບ Material Design."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("ຕົວເລືອກເວລາ"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ປຸ່ມເປີດ/ປິດອາດໃຊ້ເພື່ອຈັດກຸ່ມຕົວເລືອກທີ່ກ່ຽວຂ້ອງກັນ. ກຸ່ມຂອງປຸ່ມເປີດ/ປິດທີ່ກ່ຽວຂ້ອງກັນຄວນໃຊ້ຄອນເທນເນີຮ່ວມກັນເພື່ອເປັນການເນັ້ນກຸ່ມເຫຼົ່ານັ້ນ"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ປຸ່ມເປີດ/ປິດ"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "ຄຳແນະນຳຈະສະໜອງປ້າຍກຳກັບແບບຂໍ້ຄວາມເພື່ອຊ່ວຍອະທິບາຍຟັງຊັນຂອງປຸ່ມ ຫຼື ຄຳສັ່ງສ່ວນຕິດຕໍ່ຜູ້ໃຊ້ອື່ນໆ. ຄຳແນະນຳຈະສະແດງຂໍ້ຄວາມທີ່ເປັນຂໍ້ມູນເມື່ອຜູ້ໃຊ້ເລື່ອນໄປໃສ່, ເລືອກໃສ່ ຫຼື ກົດຄ້າງໃສ່ອົງປະກອບໃດໜຶ່ງ."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "ກົດຄ້າງໄວ້ ຫຼື ເລື່ອນໄປໃສ່ເພື່ອສະແດງຄຳແນະນຳ."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "ຂໍ້ຄວາມສັ້ນໆທີ່ສະແດງເມື່ອກົດຄ້າງໄວ້ ຫຼື ເມື່ອເລື່ອນໄປໃສ່"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("ຄຳແນະນຳ"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("ສອງແຖວ"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "ຄຳຈຳກັດຄວາມຂອງຕົວອັກສອນຮູບແບບຕ່າງໆທີ່ພົບໃນ Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "ຮູບແບບຂໍ້ຄວາມທັງໝົດທີ່ກຳນົດໄວ້ລ່ວງໜ້າ"),
        "demoTypographyTitle": MessageLookupByLibrary.simpleMessage("ການພິມ"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("ເພີ່ມບັນຊີ"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ເຫັນດີ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ຍົກເລີກ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ບໍ່ຍອມຮັບ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ຍົກເລີກ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("ຍົກເລີກຮ່າງຖິ້ມບໍ?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("ເດໂມກ່ອງໂຕ້ຕອບແບບເຕັມຈໍ"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ບັນທຶກ"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("ກ່ອງໂຕ້ຕອບແບບເຕັມຈໍ"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ໃຫ້ Google ຊ່ວຍລະບຸສະຖານທີ່. ນີ້ໝາຍເຖິງການສົ່ງຂໍ້ມູນສະຖານທີ່ທີ່ບໍ່ລະບຸຕົວຕົນໄປໃຫ້ Google, ເຖິງແມ່ນວ່າຈະບໍ່ມີແອັບເປີດໃຊ້ຢູ່ກໍຕາມ."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "ໃຊ້ບໍລິການສະຖານທີ່ຂອງ Google ບໍ?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("ຕັ້ງບັນຊີສຳຮອງ"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("ສະແດງກ່ອງໂຕ້ຕອບ"),
        "dismiss": MessageLookupByLibrary.simpleMessage("ປິດໄວ້"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("ໝວດໝູ່"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("ຄັງຮູບພາບ"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("ຫາດຊາຍ"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("ໂຮງຫຼໍ່ທອງແດງ"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("ເຈນໄນ"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("ເຊຕິນາດ"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("ຊາວປະມົງ"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("ຕະຫຼາດດອກໄມ້"),
        "placeLunchPrep": MessageLookupByLibrary.simpleMessage("ກຽມອາຫານສວາຍ"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("ຕະຫຼາດ"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("ພອນດິເຊີຣີ"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("ນາເກືອ"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("ສະກູດເຕີ"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("ເຄື່ອງທໍຜ້າໄໝ"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("ທານຈໍ"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("ວັນທານຈາວູ"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("ເງິນທ້ອນສຳລັບຊື້ລົດ"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("ເງິນຝາກປະຈຳ"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("ບັນຊີເງິນຝາກເຮືອນ"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("ມື້ພັກ"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("ເຈົ້າຂອງບັນຊີ"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("ຜົນຕອບແທນລາຍປີເປັນເປີເຊັນ"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("ດອກເບ້ຍທີ່ຈ່າຍປີກາຍ"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("ອັດຕາດອກເບ້ຍ"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "ດອກເບ້ຍຕັ້ງແຕ່ຕົ້ນປີຮອດປັດຈຸບັນ"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage(
                "ລາຍການເຄື່ອນໄຫວຂອງບັນຊີຮອບຕໍ່ໄປ"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("ຮວມ"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("ບັນຊີ"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("ການແຈ້ງເຕືອນ"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("ໃບບິນ"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("ຮອດກຳນົດ"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("ເສື້ອ​ຜ້າ"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("ຮ້ານກາເຟ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("ເຄື່ອງໃຊ້ສອຍ"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("ຮ້ານອາຫານ"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("ຊ້າຍ"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("​​ງົບ​ປະ​ມານ"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("ແອັບການເງິນສ່ວນຕົວ"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ຊ້າຍ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ເຂົ້າສູ່ລະບົບ"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("ເຂົ້າສູ່ລະບົບ"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("ເຂົ້າສູ່ລະບົບ Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("ຍັງບໍ່ມີບັນຊີເທື່ອບໍ?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("ລະຫັດຜ່ານ"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("ຈື່ຂ້ອຍໄວ້"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("ລົງທະບຽນ"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("ຊື່ຜູ້ໃຊ້"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ເບິ່ງທັງໝົດ"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("ເບິ່ງບັນຊີທັງໝົດ"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("ເບິ່ງບິນທັງໝົດ"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("ເບິ່ງງົບປະມານທັງໝົດ"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ຊອກຫາຕູ້ ATM"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("ຊ່ວຍເຫຼືອ"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("​ຈັດ​ການ​ບັນ​ຊີ"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("ການແຈ້ງເຕືອນ"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "ການຕັ້ງຄ່າສຳລັບເອກະສານທີ່ບໍ່ໃຊ້ເຈ້ຍ"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("ລະຫັດ ແລະ Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("ຂໍ້ມູນສ່ວນຕົວ"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("ອອກຈາກລະບົບ"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("ເອກະສານພາສີ"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ບັນຊີ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ໃບບິນ"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("​​ງົບ​ປະ​ມານ"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("ພາບຮວມ"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("ການຕັ້ງຄ່າ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("ກ່ຽວກັບ Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("ອອກແບບໂດຍ TOASTER ໃນລອນດອນ"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("ປິດການຕັ້ງຄ່າ"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("ການຕັ້ງຄ່າ"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("ມືດ"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage("ສົ່ງຄຳຕິຊົມ"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("ແຈ້ງ"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("ພາສາ"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("ໂຄງສ້າງຂອງແພລດຟອມ"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("ສະໂລໂມຊັນ"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("ລະບົບ"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("ທິດທາງຂໍ້ຄວາມ"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("ອ້າງອີງຈາກພາສາ"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("​ການ​ຂະ​ຫຍາຍ​ຂໍ້​ຄວາມ"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("ໃຫຍ່ຫຼາຍ"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("ໃຫຍ່"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("ປົກກະຕິ"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("ນ້ອຍ"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("ຮູບແບບສີສັນ"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("ການຕັ້ງຄ່າ"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ຍົກເລີກ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ລ້າງລົດເຂັນ"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("ກະຕ່າ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("ການສົ່ງ:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("ຍອດຮວມຍ່ອຍ:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("ພາສີ:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("ຮວມ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ອຸປະກອນເສີມ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ທັງໝົດ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ເສື້ອ​ຜ້າ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ເຮືອນ"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("ແອັບຂາຍຍ່ອຍດ້ານແຟຊັນ"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("ລະຫັດຜ່ານ"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ຊື່ຜູ້ໃຊ້"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ອອກຈາກລະບົບ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("ເມນູ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("​ຕໍ່​ໄປ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("ຈອກກາເຟບລູສະໂຕນ"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "ເສື້ອຍືດຊາຍໂຄ້ງສີແດງອົມສີບົວ"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("ຜ້າເຊັດປາກແຊມເບຣ"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("ເສື້ອແຊມເບຣ"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("ເສື້ອເຊີດສີຂາວແບບຄລາດສິກ"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("ເສື້ອກັນໜາວສີຕັບໝູ"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("ຕະແກງສີທອງແດງ"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("ເສື້ອຍືດລາຍຂວາງແບບຖີ່"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("ເຊືອກເຮັດສວນ"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("ໝວກ Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("ແຈັກເກັດແບບຄົນຊັ້ນສູງ"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("ໂຕະເຄືອບຄຳ 3 ອັນ"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("ຜ້າພັນຄໍສີເຫຼືອອົມນ້ຳຕານແດງ"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("ເສື້ອກ້າມສີເທົາ"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("ຊຸດນ້ຳຊາ Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Quattro ຫ້ອງຄົວ"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("ໂສ້ງຂາຍາວສີຟ້າແກ່"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("ເສື້ອຄຸມສີພລາສເຕີ"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("ໂຕະສຳລັບ 4 ຄົນ"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("ຮາງນ້ຳຝົນ"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona ຄຣອສໂອເວີ"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("ຊຸດກະໂປງຫາດຊາຍ"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("ເສື້ອກັນໜາວແບບຖັກຫ່າງ"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("ເສື້ອຍືດ Shoulder Rolls"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("ກະເປົາສະພາຍໄຫຼ່"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("ຊຸດເຄື່ອງເຄືອບສີລະມຸນ"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("ແວ່ນຕາກັນແດດ Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("ຕຸ້ມຫູ Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("ກະຖາງສຳລັບພືດໂອບນ້ຳ"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("ຊຸດກະໂປງ Sunshirt"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("ເສື້ອ Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("ຖົງສະພາຍ"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("ຖົງຕີນທີມກິລາມະຫາວິທະຍາໄລ"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("ເສື້ອເຮນຣີ Walter (ຂາວ)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("ພວງກະແຈຖັກ"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("ເສື້ອເຊີດສີຂາວລາຍທາງລວງຕັ້ງ"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("ສາຍແອວ Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("ເພີ່ມໃສ່​ກະຕ່າ"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("ປິດກະຕ່າ"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("ປິດເມນູ"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("ເປີດເມນູ"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("ລຶບລາຍການ"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("ຊອກຫາ"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("ການຕັ້ງຄ່າ"),
        "signIn": MessageLookupByLibrary.simpleMessage("ເຂົ້າສູ່ລະບົບ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "ໂຄງຮ່າງເລີ່ມຕົ້ນທີ່ມີການຕອບສະໜອງ"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("ສ່ວນເນື້ອຫາ"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("ປຸ່ມ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("​ຫົວ​ຂໍ້"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("ຄຳແປ"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("ຊື່"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("ແອັບເລີ່ມຕົ້ນ"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("ເພີ່ມ"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("ລາຍການທີ່ມັກ"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ຊອກຫາ"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("ແບ່ງປັນ")
      };
}
