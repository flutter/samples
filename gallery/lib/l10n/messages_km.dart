// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a km locale. All the
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
  String get localeName => 'km';

  static m0(value) =>
      "ដើម្បីមើលកូដប្រភព​សម្រាប់​កម្មវិធីនេះ សូមចូល​ទៅកាន់ ${value}។";

  static m1(title) => "កន្លែងដាក់​សម្រាប់ផ្ទាំង ${title}";

  static m2(destinationName) => "រុករក ${destinationName}";

  static m3(destinationName) => "ចែករំលែក ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'មិនមាន​ភោជនីយដ្ឋាន​ទេ', one: 'ភោជនីយដ្ឋាន 1', other: 'ភោជនីយដ្ឋាន ${totalRestaurants}')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'មិន​ឈប់', one: 'ការឈប់ 1 លើក', other: 'ការឈប់ ${numberOfStops} លើក')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'មិនមាន​អចលនទ្រព្យ​ដែលអាចជួល​បានទេ', one: 'មាន​អចលនទ្រព្យ 1 ដែលអាចជួល​បាន', other: 'មាន​អចលនទ្រព្យ​ ${totalProperties} ដែលអាចជួល​បាន')}";

  static m10(value) => "${value} មានទឹកឃ្មុំ";

  static m11(value) => "${value} មានស្ករ";

  static m12(value) => "ធាតុទី ${value}";

  static m13(error) => "មិនអាច​ចម្លងទៅឃ្លីបបត​បានទេ៖ ${error}";

  static m14(value) => "មិនជាក់លាក់៖ ${value}";

  static m15(value) => "ជាក់លាក់៖ ${value}";

  static m16(value) => "បាន​ធីក​៖ ${value}";

  static m17(value) => "បាន​ជ្រើសរើស​៖ ${value}";

  static m18(name, phoneNumber) => "លេខទូរសព្ទ​របស់ ${name} គឺ ${phoneNumber}";

  static m19(value) => "អ្នកបាន​ជ្រើសរើស៖ \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "គណនី ${accountName} ${accountNumber} ដែលមាន​ទឹកប្រាក់ ${amount}។";

  static m21(amount) =>
      "អ្នកបានចំណាយ​អស់ ${amount} សម្រាប់ថ្លៃសេវា ATM នៅខែនេះ";

  static m22(percent) =>
      "ល្អណាស់! គណនីមូលប្បទានបត្រ​របស់អ្នកគឺ​ខ្ពស់ជាង​ខែមុន ${percent}។";

  static m23(percent) =>
      "សូមប្រុងប្រយ័ត្ន អ្នកបានប្រើអស់ ${percent} នៃថវិកាទិញ​ទំនិញរបស់អ្នក​សម្រាប់ខែនេះ។";

  static m24(amount) =>
      "អ្នកបាន​ចំណាយអស់ ${amount} លើភោជនីយដ្ឋាន​នៅសប្ដាហ៍នេះ។";

  static m25(count) =>
      "${Intl.plural(count, one: 'បង្កើន​ការកាត់ពន្ធ​របស់អ្នក​ដែលអាច​មាន! កំណត់​ប្រភេទ​ទៅ​ប្រតិបត្តិការ 1 ដែលមិនបានកំណត់។', other: 'បង្កើន​ការកាត់ពន្ធ​របស់អ្នក​ដែលអាច​មាន! កំណត់​ប្រភេទ​ទៅ​ប្រតិបត្តិការ ${count} ដែលមិនបានកំណត់។')}";

  static m26(billName, date, amount) =>
      "វិក្កយបត្រ ${billName} ដែលមានតម្លៃ ${amount} ផុតកំណត់​នៅថ្ងៃទី ${date}។";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "ថវិកា ${budgetName} ដែលចំណាយអស់ ${amountUsed} នៃទឹកប្រាក់សរុប ${amountTotal} ហើយនៅសល់ ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'មិនមាន​ទំនិញ​ទេ', one: 'ទំនិញ 1', other: 'ទំនិញ ${quantity}')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "បរិមាណ៖ ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'រទេះទិញទំនិញ គ្មានទំនិញ', one: 'រទេះទិញទំនិញ ទំនិញ 1', other: 'រទេះទិញទំនិញ ទំនិញ ${quantity}')}";

  static m32(product) => "ដក ${product} ចេញ";

  static m33(value) => "ធាតុទី ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "ឃ្លាំង GitHub នៃគំរូ Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("ត្រឡប់​ទៅ Gallery"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("រូបតំណាងនៅពីមុខ"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("សកម្មភាព​ច្រើន"),
        "bannerDemoResetText": MessageLookupByLibrary.simpleMessage(
            "កំណត់​ផ្ទាំងផ្សាយ​ពាណិជ្ជកម្ម​ឡើងវិញ"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "ពាក្យសម្ងាត់​របស់អ្នក​ត្រូវបានធ្វើ​បច្ចុប្បន្នភាព​នៅលើឧបករណ៍​ផ្សេងទៀតរបស់អ្នក។ សូម​ចូល​ម្ដងទៀត​។"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("ក្បាលឆក"),
        "bottomAppBarPosition":
            MessageLookupByLibrary.simpleMessage("ទីតាំងប៊ូតុងសកម្មភាពអណ្ដែត"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("ភ្ជាប់ - កណ្ដាល"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("ភ្ជាប់ - ចុង"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("អណ្ដែត - កណ្ដាល"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("អណ្ដែត - ចុង"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("គណនី"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("ម៉ោងរោទ៍"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("ប្រតិទិន"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("កាមេរ៉ា"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("មតិ"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ប៊ូតុង"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("បង្កើត"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("រុករក"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("អាចជ្រើសរើសបាន (ចុចឱ្យយូរ)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage("អាចចុចបាន"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("ថាន់ចាវួរ"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("ចិត្តធីណាដ"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("លេខ 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("សត្វរាយ​សំណាញ់​សូត្រ"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("ប្រាសាទ"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("ថាន់ចាវួរ​នៅរដ្ឋតាមីល​ណាឌូ"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage(
                "ស៊ីវវ៉ាហ្កានហ្កា​នៅរដ្ឋ​តាមីល​ណាឌូ"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "ទីក្រុង​ពេញនិយម​ចំនួន 10 សម្រាប់​ទៅលេងនៅរដ្ឋតាមីល​ណាឌូ"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "សិល្បករ​មកពីឥណ្ឌា​ភាគខាងត្បូង"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("ប្រសាទ​ប្រីហាឌីស្វារ៉ា"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("ការ​ជិះ​កង់"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("ជណ្ដើរ​យន្ត"),
        "chipFireplace":
            MessageLookupByLibrary.simpleMessage("ជើងក្រាន​កម្ដៅ​បន្ទប់"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("ធំ"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("មធ្យម"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("តូច"),
        "chipTurnOnLights": MessageLookupByLibrary.simpleMessage("បើក​ភ្លើង"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("ម៉ាស៊ីន​បោកគក់"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("លឿងទុំ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ខៀវ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ប្រផេះ​ខៀវ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ត្នោត"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ស៊ីលៀប"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ទឹកក្រូច​ចាស់"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ស្វាយចាស់"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("បៃតង"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ប្រផេះ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ខៀវជាំ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ខៀវ​ស្រាល"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("បៃតង​ស្រាល"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("បៃតងខ្ចី"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ទឹកក្រូច"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ផ្កាឈូក"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ស្វាយ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ក្រហម"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("បៃតងចាស់"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("លឿង"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "កម្មវិធីធ្វើដំណើរ​ដែលកំណត់ឱ្យស្រប​នឹងបុគ្គល"),
        "craneEat": MessageLookupByLibrary.simpleMessage("អាហារដ្ឋាន"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("នេផលស៍ អ៊ីតាលី"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ភីហ្សា​នៅក្នុង​ឡដុតអុស"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("ដាឡាស សហរដ្ឋ​អាមេរិក"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("លីសបោន ព័រទុយហ្គាល់"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ស្រ្តីកាន់​សាំងវិច​សាច់គោ​ដ៏ធំ"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "បារគ្មាន​មនុស្ស ដែលមាន​ជើងម៉ា​សម្រាប់អង្គុយទទួលទាន​អាហារ"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("ខរដូបា អាហ្សង់ទីន"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ប៊ឺហ្គឺ"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("ផតឡែន សហរដ្ឋ​អាមេរិក"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("តាកូ​កូរ៉េ"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("ប៉ារីស បារាំង"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("បង្អែម​សូកូឡា"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("សេអ៊ូល កូរ៉េ​ខាងត្បូង"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "កន្លែងអង្គុយ​នៅ​ភោជនីយដ្ឋាន​បែបសិល្បៈ"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("ស៊ីអាថល សហរដ្ឋ​អាមេរិក"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ម្ហូបដែល​ធ្វើពី​បង្គា"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("ណាសវីល សហរដ្ឋ​អាមេរិក"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ទ្វារចូល​ហាងនំប៉័ង"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("អាត្លង់តា សហរដ្ឋ​អាមេរិក"),
        "craneEat8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "បង្កង​ទឹកសាប​ដែលមាន​ទំហំតូច​មួយចាន"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("ម៉ាឌ្រីដ អេស្ប៉ាញ"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "តុគិតលុយ​នៅ​ហាងកាហ្វេដែល​មានលក់​នំធ្វើពីម្សៅ"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "ស្វែងរក​ភោជនីយ​ដ្ឋាន​តាម​គោលដៅ"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("ជើង​ហោះ​ហើរ"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("អាស្ប៉ិន សហរដ្ឋ​អាមេរិក"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ផ្ទះឈើ​នៅលើភ្នំ​ដែលស្ថិត​នៅក្នុង​ទេសភាព​មានព្រិលធ្លាក់​ជាមួយនឹង​ដើមឈើ​ដែលមាន​ស្លឹក​ពេញមួយឆ្នាំ"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("ប៊ីកសឺ សហរដ្ឋ​អាមេរិក"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("គែរ អេហ្ស៊ីប"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ប៉មវិហារ​អ៊ិស្លាម Al-Azhar អំឡុងពេល​ថ្ងៃលិច"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("លីសបោន ព័រទុយហ្គាល់"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ប៉មភ្លើង​នាំផ្លូវ​ធ្វើពី​ឥដ្ឋ​នៅសមុទ្រ"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("ណាប៉ា សហរដ្ឋ​អាមេរិក"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("អាងហែលទឹក​ដែលមាន​ដើមត្នោត"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("បាលី ឥណ្ឌូណេស៊ី"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "អាងហែលទឹក​ជាប់​មាត់សមុទ្រ​ដែលមាន​ដើមត្នោត"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("តង់​នៅវាល"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("ជ្រលង​ខាំប៊្យូ នេប៉ាល់"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ទង់ដែលមាន​សរសេរការបន់ស្រន់​នៅពីមុខ​ភ្នំដែល​មានព្រិលធ្លាក់"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("ម៉ាឈូភីឈូ ប៉េរូ"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ប្រាសាទ​នៅ​ម៉ាឈូភីឈូ"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("ម៉ាល ម៉ាល់ឌីវ"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("បឹងហ្គាឡូ​លើ​ទឹក"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("វីតស្នោវ ស្វ៊ីស"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "សណ្ឋាគារ​ជាប់មាត់បឹង​នៅពី​មុខភ្នំ"),
        "craneFly6": MessageLookupByLibrary.simpleMessage(
            "ទីក្រុង​ម៉ិកស៊ិក ប្រទេស​ម៉ិកស៊ិក"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ទិដ្ឋភាពនៃ Palacio de Bellas Artes ពីលើ​អាកាស"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "ភ្នំ​រ៉ាស្សម៉រ សហរដ្ឋ​អាមេរិក"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ភ្នំ​រ៉ាស្សម៉រ"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("សិង្ហបុរី"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("ហាវ៉ាណា គុយបា"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "បុរសផ្អែកលើ​រថយន្ត​ស៊េរីចាស់​ពណ៌ខៀវ"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "ស្វែងរក​ជើង​ហោះហើរ​តាម​គោលដៅ"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើស​កាល​បរិច្ឆេទ"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើស​កាល​បរិច្ឆេទ"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើស​គោលដៅ"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("អ្នក​ទទួលទាន​អាហារ​ពេលល្ងាច"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("ជ្រើស​រើសទីតាំង"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើស​ប្រភពដើម"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើស​ពេលវេលា"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("អ្នក​ធ្វើ​ដំណើរ"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("កន្លែង​គេង"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("ម៉ាល ម៉ាល់ឌីវ"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("បឹងហ្គាឡូ​លើ​ទឹក"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("អាស្ប៉ិន សហរដ្ឋ​អាមេរិក"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("គែរ អេហ្ស៊ីប"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ប៉មវិហារ​អ៊ិស្លាម Al-Azhar អំឡុងពេល​ថ្ងៃលិច"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("តៃប៉ិ តៃវ៉ាន់"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("អគារ​កប់ពពក Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ផ្ទះឈើ​នៅលើភ្នំ​ដែលស្ថិត​នៅក្នុង​ទេសភាព​មានព្រិលធ្លាក់​ជាមួយនឹង​ដើមឈើ​ដែលមាន​ស្លឹក​ពេញមួយឆ្នាំ"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("ម៉ាឈូភីឈូ ប៉េរូ"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("ប្រាសាទ​នៅ​ម៉ាឈូភីឈូ"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("ហាវ៉ាណា គុយបា"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "បុរសផ្អែកលើ​រថយន្ត​ស៊េរីចាស់​ពណ៌ខៀវ"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("វីតស្នោវ ស្វ៊ីស"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "សណ្ឋាគារ​ជាប់មាត់បឹង​នៅពី​មុខភ្នំ"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("ប៊ីកសឺ សហរដ្ឋ​អាមេរិក"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("តង់​នៅវាល"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("ណាប៉ា សហរដ្ឋ​អាមេរិក"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("អាងហែលទឹក​ដែលមាន​ដើមត្នោត"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("ព័រតូ ព័រទុយហ្គាល់"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ផ្ទះល្វែង​ចម្រុះពណ៌​នៅ Ribeira Square"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("ទូលូម ម៉ិកស៊ិក"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "សំណង់​បាក់បែក​នៃទីក្រុងម៉ាយ៉ាន​នៅលើ​ចំណោតច្រាំង​ពីលើឆ្នេរខ្សាច់"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("លីសបោន ព័រទុយហ្គាល់"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "ប៉មភ្លើង​នាំផ្លូវ​ធ្វើពី​ឥដ្ឋ​នៅសមុទ្រ"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "ស្វែងរក​អចលន​ទ្រព្យ​តាម​គោលដៅ"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("អនុញ្ញាត"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("នំ​ប៉ោម"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("បោះបង់"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("នំខេកឈីស"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("នំសូកូឡា"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "សូមជ្រើសរើស​ប្រភេទបង្អែម​ដែលអ្នក​ចូលចិត្តពី​បញ្ជីខាងក្រោម។ ការជ្រើសរើស​របស់អ្នក​នឹងត្រូវបាន​ប្រើ ដើម្បីប្ដូរ​បញ្ជីអាហារដ្ឋាន​ដែលបានណែនាំ​តាមបំណង នៅក្នុង​តំបន់​របស់អ្នក។"),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("លុបចោល"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("កុំ​អនុញ្ញាត"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("ជ្រើសរើស​បង្អែមដែល​ចូលចិត្ត"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ទីតាំង​បច្ចុប្បន្ន​របស់អ្នកនឹង​បង្ហាញ​នៅលើផែនទី និង​ត្រូវបានប្រើសម្រាប់​ទិសដៅ លទ្ធផលស្វែងរក​ដែលនៅជិត និង​រយៈពេល​ធ្វើដំណើរដែល​បាន​ប៉ាន់ស្មាន។"),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "អនុញ្ញាតឱ្យ \"ផែនទី\" ចូលប្រើ​ទីតាំង​របស់អ្នក នៅពេល​អ្នកកំពុង​ប្រើកម្មវិធីនេះ​ឬ?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("បង្អែម​អ៊ីតាលី"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("ប៊ូតុង"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("មាន​ផ្ទៃខាងក្រោយ"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("បង្ហាញ​ការជូនដំណឹង"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("ការជជែក"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("ទំព័រដើម"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("កម្រងព័ត៌មាន"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("កាល់ស្យូម (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("កាឡូរី"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("កាបូអ៊ីដ្រាត (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("បង្អែម (1 ចាន)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("ខ្លាញ់ (g)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("ដែក (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("ប្រូតេអ៊ីន (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("សូដ្យូម (mg)"),
        "dataTableHeader":
            MessageLookupByLibrary.simpleMessage("អាហារូបត្ថម្ភ"),
        "dataTableRowApplePie": MessageLookupByLibrary.simpleMessage("នំ​ប៉ោម"),
        "dataTableRowCupcake":
            MessageLookupByLibrary.simpleMessage("នំខាប់ខេក"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("នំដូណាត់"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("នំអ៊ីក្លែ"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("យ៉ាអួកក"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("នំរសជាតិខ្ញី"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("សំបុកឃ្មុំ"),
        "dataTableRowIceCreamSandwich": MessageLookupByLibrary.simpleMessage(
            "នំប៊ីស្គីត​មានការ៉េម​នៅកណ្ដាល"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("ស្ករគ្រាប់រាងគ្រាប់សណ្ដែក"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("ស្ករគ្រាប់​ដោតឈើ"),
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
            "ឈីប​សកម្មភាព​គឺជា​បណ្ដុំ​ជម្រើស ដែល​ជំរុញ​សកម្មភាព​ពាក់ព័ន្ធ​នឹង​ខ្លឹមសារ​ចម្បង​។ ឈីប​សកម្មភាព​គួរតែ​បង្ហាញ​ជា​បន្តបន្ទាប់ និង​តាម​បរិបទ​នៅក្នុង UI​។"),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("ឈីប​សកម្មភាព"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ប្រអប់​ជូនដំណឹង​ជូនដំណឹង​ដល់អ្នកប្រើប្រាស់​អំពី​ស្ថានភាព ដែលតម្រូវឱ្យមាន​ការទទួលស្គាល់។ ប្រអប់​ជូនដំណឹង​មានចំណងជើង និង​បញ្ជី​សកម្មភាព​ដែលជាជម្រើស។"),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("ការជូនដំណឹង"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("ជូនដំណឹង​រួមជាមួយ​ចំណងជើង"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "ផ្ទាំងផ្សាយ​ពាណិជ្ជកម្ម​បង្ហាញ​សារសំខាន់ ច្បាស់លាស់ និងផ្ដល់​សកម្មភាព​ឱ្យ​អ្នកប្រើប្រាស់ឆ្លើយតប (ឬច្រានចោល​ផ្ទាំងផ្សាយពាណិជ្ជកម្ម)។ តម្រូវឱ្យមាន​សកម្មភាព​របស់អ្នក​ប្រើប្រាស់ ដើម្បី​ច្រានចោល​ផ្ទាំងផ្សាយពាណិជ្ជកម្ម។"),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "កំពុងបង្ហាញ​ផ្ទាំងផ្សាយពាណិជ្ជកម្ម​នៅក្នុងបញ្ជី"),
        "demoBannerTitle":
            MessageLookupByLibrary.simpleMessage("ផ្ទាំងផ្សាយពាណិជ្ជកម្ម"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "របារកម្មវិធី​ផ្នែកខាងក្រោមផ្ដល់​សិទ្ធិចូលប្រើ​ថត​​រុករក​នៅផ្នែកខាងក្រោម និងសកម្មភាព​រហូតដល់បួន រួមទាំងប៊ូតុងសកម្មភាពអណ្ដែត​ផងដែរ។"),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "បង្ហាញ​ការរុករក និងសកម្មភាព​នៅផ្នែកខាងក្រោម"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("របារកម្មវិធី​ផ្នែកខាងក្រោម"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "របាររុករក​ខាងក្រោម​បង្ហាញគោលដៅបីទៅប្រាំ​នៅខាងក្រោម​អេក្រង់។ គោលដៅនីមួយៗ​ត្រូវបានតំណាង​ដោយរូបតំណាង និងស្លាកអក្សរ​ជាជម្រើស។ នៅពេលចុច​រូបរុករកខាងក្រោម អ្នកប្រើប្រាស់ត្រូវបាន​នាំទៅគោលដៅ​រុករកផ្នែកខាងលើ ដែលពាក់ព័ន្ធ​នឹងរូបតំណាងនោះ។"),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("ស្លាក​ជាអចិន្ត្រៃយ៍"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("ស្លាកដែល​បានជ្រើសរើស"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "ការរុករក​ខាងក្រោម​ដោយប្រើទិដ្ឋភាពរលុបឆ្នូត"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("ការរុករក​ខាងក្រោម"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("បន្ថែម"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("បង្ហាញ​សន្លឹកខាងក្រោម"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("ក្បាលទំព័រ"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "សន្លឹកខាងក្រោម​លក្ខណៈម៉ូដលគឺ​ជាជម្រើស​ផ្សេងក្រៅពី​ម៉ឺនុយ ឬប្រអប់ និងទប់ស្កាត់​អ្នកប្រើប្រាស់មិនឱ្យធ្វើ​អន្តរកម្មជាមួយ​កម្មវិធីដែលនៅសល់។"),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("សន្លឹកខាងក្រោម​លក្ខណៈម៉ូដល"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "សន្លឹកខាងក្រោម​លក្ខណៈភើស៊ីស្ទើន​បង្ហាញព័ត៌មាន​ដែលបន្ថែមលើ​ខ្លឹមសារចម្បងនៃកម្មវិធី។ សន្លឹកខាងក្រោម​លក្ខណៈភើស៊ីស្ទើននៅតែអាចមើលឃើញ​ដដែល ទោះបីជានៅពេលអ្នកប្រើប្រាស់​ធ្វើអន្តរកម្ម​ជាមួយផ្នែកផ្សេងទៀតនៃ​កម្មវិធីក៏ដោយ។"),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "សន្លឹកខាងក្រោម​លក្ខណៈភើស៊ីស្ទើន"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "សន្លឹកខាងក្រោម​លក្ខណៈម៉ូដល និងភើស៊ីស្ទើន"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("សន្លឹក​ខាងក្រោម"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("កន្លែងបញ្ចូលអក្សរ"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​រាបស្មើ ប៊ូតុង​ផុសឡើង ប៊ូតុង​មានបន្ទាត់ជុំវិញ និង​ច្រើនទៀត"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("ប៊ូតុង"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "កាតគឺជាសន្លឹក​ខ្លឹមសារមួយ​ដែលប្រើ ដើម្បីតំណាងឱ្យ​ព័ត៌មាន​ពាក់ព័ន្ធ​មួយចំនួន ឧទាហរណ៍ អាល់ប៊ុម ទីតាំង​ភូមិសាស្ត្រ អាហារ ព័ត៌មានទំនាក់ទំនង ។ល។"),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "កាតខ្សែបន្ទាត់គោល​ដែលមាន​ជ្រុងរាងមូល"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("កាត"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("ម៉ឺនុយ​បញ្ជី​ត្រួតពិនិត្យ"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "ធាតុ​ចង្អៀតដែល​តំណាងឱ្យ​ធាតុ​បញ្ចូល លក្ខណៈ ឬ​សកម្មភាព"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("ឈីប"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "ឈីប​ជម្រើស​តំណាងឱ្យ​ជម្រើស​តែមួយ​ពី​បណ្ដុំ​មួយ​។ ឈីប​ជម្រើស​មាន​ប្រភេទ ឬ​អត្ថបទ​បែប​ពណ៌នា​ដែល​ពាក់ព័ន្ធ​។"),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("ឈីប​ជម្រើស"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "សូចនាករដំណើរការរាងរង្វង់នៃរចនាប័ទ្មសម្ភារ ដែលវិលដើម្បី​បង្ហាញថា​កម្មវិធី​កំពុងជាប់រវល់។"),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("សូចនាករដំណើរការរាងរង្វង់"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("កូដ​សាកល្បង"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("បានចម្លង​ទៅ​ឃ្លីបបត។"),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ចម្លង​ទាំងអស់"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "តម្លៃថេរនៃ​គំរូពណ៌ និងពណ៌​ដែលតំណាងឱ្យ​ក្ដារលាយពណ៌​របស់​រចនាប័ទ្ម​សម្ភារ។"),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ពណ៌ដែល​បានកំណត់​ជាមុន​ទាំងអស់"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("ពណ៌"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("ម៉ឺនុយ​បរិបទ"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "បញ្ជីសកម្មភាព​គឺជា​រចនាប័ទ្មនៃ​ការជូនដំណឹង​ជាក់លាក់ ដែល​បង្ហាញ​អ្នកប្រើប្រាស់​នូវបណ្ដុំ​ជម្រើសពីរ ឬច្រើនដែល​ពាក់ព័ន្ធនឹង​បរិបទ​បច្ចុប្បន្ន។ បញ្ជី​សកម្មភាព​អាចមាន​ចំណងជើង សារបន្ថែម និង​បញ្ជី​សកម្មភាព។"),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("បញ្ជី​សកម្មភាព"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "សូចនាករសកម្មភាពរចនាប័ទ្ម iOS ដែលវិលស្របទ្រនិចនាឡិកា។"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "សូចនាករសកម្មភាពរចនាប័ទ្ម iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង​ជូនដំណឹង​តែប៉ុណ្ណោះ"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ការជូនដំណឹង​ដែលមាន​ប៊ូតុង"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "ប្រអប់​ជូនដំណឹង​ជូនដំណឹង​ដល់អ្នកប្រើប្រាស់​អំពី​ស្ថានភាព ដែលតម្រូវឱ្យមាន​ការទទួលស្គាល់។ ប្រអប់​ជូនដំណឹង​មានចំណងជើង ខ្លឹមសារ និងបញ្ជី​សកម្មភាព​ដែលជាជម្រើស។ ចំណងជើង​បង្ហាញ​នៅលើ​ខ្លឹមសារ ហើយ​សកម្មភាព​បង្ហាញនៅក្រោម​ខ្លឹមសារ។"),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("ការជូនដំណឹង"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("ជូនដំណឹង​រួមជាមួយ​ចំណងជើង"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ប្រអប់​ជូនដំណឹង​ដែលមាន​រចនាប័ទ្ម iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("ការជូនដំណឹង"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​ដែលមាន​រចនាប័ទ្ម iOS។ វាស្រូប​អក្សរ និង/ឬរូបតំណាង​ដែលរលាយបាត់ និង​លេចឡើងវិញ​បន្តិចម្ដងៗ នៅពេលចុច។ ប្រហែលជា​មានផ្ទៃខាងក្រោយ​តាមការ​ជ្រើសរើស។"),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង​ដែលមាន​រចនាប័ទ្ម iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "របារ​រុករក​ដែលមាន​រចនាប័ទ្ម iOS​។ របារ​រុករក​គឺជា​របារ​ឧបករណ៍​ដែល​យ៉ាងហោចណាស់មាន​ចំណងជើង​ទំព័រ នៅផ្នែក​កណ្ដាលនៃ​របារ​ឧបករណ៍​។"),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("របារ​រុករក​រចនាប័ទ្ម iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("កាលបរិច្ឆេទ"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("កាលបរិច្ឆេទ និងម៉ោង"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "ធាតុក្រាហ្វិកនៃ​ផ្ទាំងជ្រើសរើស​ដែលមានរចនាប័ទ្ម iOS ដែលអាច​ត្រូវបានប្រើ ដើម្បីជ្រើសរើស​កាលបរិច្ឆេទ ម៉ោង ឬទាំង​កាលបរិច្ឆេទ និងម៉ោង។"),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "ផ្ទាំងជ្រើសរើស​ម៉ោង និងកាលបរិច្ឆេទ​ដែលមានរចនាប័ទ្ម iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("ម៉ោង"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("កម្មវិធីកំណត់ម៉ោង"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("ផ្ទាំងជ្រើសរើស"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "ធាតុ​ក្រាហ្វិក​ដែល​ប្រើ​ការគ្រប់គ្រងខ្លឹមសារ​តាមរយៈ​ការទាញ​ដើម្បី​ផ្ទុក​ឡើងវិញ​​រចនាប័ទ្ម iOS​។"),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "ការគ្រប់គ្រង​ការទាញ​ដើម្បី​ផ្ទុក​ឡើងវិញ​​រចនាប័ទ្ម iOS"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "ប្រើ​ដើម្បី​ជ្រើសរើស​រវាង​ជម្រើស​ដាច់ដោយឡែក​ផ្សេងៗគ្នា​មួយចំនួន។ នៅពេល​ជម្រើស​មួយ​នៅក្នុង​ការគ្រប់គ្រង​ដែលបែងចែក​ជាផ្នែក​ត្រូវបានជ្រើសរើស ជម្រើស​ផ្សេងទៀត​នៅក្នុង​ការគ្រប់គ្រង​ដែលបែងចែក​ជាផ្នែក​មិនត្រូវបានជ្រើសរើស​ទៀតទេ។"),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "ការគ្រប់គ្រង​ដែលបែងចែក​ជាផ្នែក​តាមរចនាប័ទ្ម iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "របាររំកិល​អាច​ត្រូវបានប្រើ​ដើម្បី​ជ្រើសរើសពី​សំណុំ​តម្លៃ​ជាក់លាក់ ឬ​មិនជាក់លាក់។"),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "របាររំកិល​ដែលមាន​រចនាប័ទ្ម iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("របាររំកិល"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​បិទបើក​ត្រូវបានប្រើ​ដើម្បី​បិទ/បើក​ស្ថានភាព​នៃការកំណត់​តែមួយ។"),
        "demoCupertinoSwitchSubtitle": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​បិទបើក​ដែលមាន​រចនាប័ទ្ម iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "របារផ្ទាំង​រុករក​នៅផ្នែក​ខាងក្រោម​ដែលមាន​រចនាប័ទ្ម iOS។ បង្ហាញ​ផ្ទាំងច្រើន​ដែលមានផ្ទាំង​មួយកំពុងបើក ដែល​តាមលំនាំដើម​គឺជា​ផ្ទាំងទីមួយ។"),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "របារផ្ទាំង​នៅផ្នែក​ខាងក្រោម​ដែលមាន​រចនាប័ទ្ម iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "កន្លែងបញ្ចូល​អក្សរអនុញ្ញាត​ឱ្យអ្នកប្រើប្រាស់បញ្ចូល​អក្សរ តាមរយៈក្ដារចុច​ហាតវែរ ឬក្ដារចុច​លើអេក្រង់។"),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("កូដ PIN"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "កន្លែងបញ្ចូល​អក្សរដែលមាន​រចនាប័ទ្ម iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "របាររំកិល​បង្ហាញ​ចន្លោះតម្លៃ​នៅលើរបារ ដែលអ្នកប្រើប្រាស់​អាចជ្រើសរើសតម្លៃមួយ ឬចន្លោះតម្លៃ។ អ្នកអាចកំណត់រចនាប័ទ្ម និងប្ដូរ​របាររំកិល​តាមបំណង។"),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("របាររំកិលផ្ទាល់ខ្លួន"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "តារាងទិន្នន័យ​បង្ហាញអំពី​ព័ត៌មានជា​ទម្រង់ដូចក្រឡា​នៃជួរដេក និងជួរឈរ។ តារាង​ទាំងនេះ​រៀបចំព័ត៌មាន​តាមរបៀប​ដែលងាយស្រួល​ស្កេន ដើម្បីឱ្យ​អ្នកប្រើប្រាស់​អាច​រកមើល​លំនាំ និងស្ថិតិបាន។"),
        "demoDataTableSubtitle":
            MessageLookupByLibrary.simpleMessage("ជួរដេក និងជួរឈរ​នៃព័ត៌មាន"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("តារាងទិន្នន័យ"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "បង្ហាញ​ប្រអប់ ដែលមាន​ផ្ទាំងជ្រើសរើស​កាលបរិច្ឆេទ​ដែលមានការរចនាគ្រប់ជ្រុងជ្រោយ។"),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("ផ្ទាំង​ជ្រើសរើស​កាលបរិច្ឆេទ"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "ធម្មតា ការជូនដំណឹង និងពេញ​អេក្រង់"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("ប្រអប់"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("ឯកសារ API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "ឈីប​តម្រង​ប្រើ​ស្លាក ឬ​ពាក្យ​បែប​ពណ៌នា​ជា​វិធី​ក្នុងការ​ត្រង​ខ្លឹមសារ​។"),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("ឈីប​តម្រង"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​រាបស្មើ​បង្ហាញការសាចពណ៌​នៅពេលចុច ប៉ុន្តែ​មិនផុសឡើង​ទេ។ ប្រើប៊ូតុង​រាបស្មើ​នៅលើ​របារឧបករណ៍ នៅក្នុង​ប្រអប់ និង​ក្នុងជួរ​ជាមួយ​ចន្លោះ"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង​រាបស្មើ"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​សកម្មភាព​អណ្តែត​គឺជា​ប៊ូតុងរូបរង្វង់ដែលស្ថិត​នៅលើ​ខ្លឹមសារ ដើម្បីរំលេច​សកម្មភាពចម្បង​នៅក្នុង​កម្មវិធី។"),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុងសកម្មភាពអណែ្តត"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "លក្ខណៈ​របស់​ប្រអប់ពេញអេក្រង់​បញ្ជាក់ថាតើ​ទំព័របន្ទាប់​គឺជា​ប្រអប់ម៉ូដល​ពេញអេក្រង់​ឬអត់"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("ពេញ​អេក្រង់"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("អេក្រង់ពេញ"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "បញ្ជី​ក្រឡា​មានភាព​ស័ក្តិសម​បំផុត​សម្រាប់​បង្ហាញ​ទិន្នន័យ​ដែលមាន​លក្ខណៈ​ដូចៗគ្នា ដោយ​ជាធម្មតា​គឺជា​រូបភាព​។ គេ​ហៅ​ធាតុ​នីមួយៗ​នៅក្នុង​បញ្ជី​ក្រឡា​ថា​ប្រអប់។"),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("មាន​ជើងទំព័រ"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("មាន​ក្បាលទំព័រ"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("រូបភាព​តែប៉ុណ្ណោះ"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("ប្លង់​ជួរដេក និង​ជួរឈរ"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("បញ្ជី​ក្រឡា"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("ព័ត៌មាន"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "ឈីប​ធាតុបញ្ចូល​តំណាងឱ្យ​ព័ត៌មានដ៏ស្មុគស្មាញ ដូចជា​ធាតុ (មនុស្ស ទីកន្លែង ឬ​វត្ថុ) ឬ​អត្ថបទ​សន្ទនា ជា​ទម្រង់​ចង្អៀត។"),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("ឈីប​ធាតុ​បញ្ចូល"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("មិនអាច​បង្ហាញ URL បានទេ៖"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "សូចនាករដំណើរការរាងបន្ទាត់ត្រង់នៃរចនាប័ទ្មសម្ភារ ដែលអាចហៅម្យ៉ាងទៀតថារបារ​ដំណើរការ។"),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "សូចនាករដំណើរការរាងបន្ទាត់ត្រង់"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "ជួរដេកតែមួយដែលមានកម្ពស់ថេរ ដែលជាទូទៅមានអក្សរមួយចំនួន ក៏ដូចជារូបតំណាងនៅពីមុខ ឬពីក្រោយ។"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("អក្សរនៅ​ជួរទីពីរ"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("ប្លង់​បញ្ជី​រំកិល"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("បញ្ជី"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("ធាតុ​ម៉ឺនុយ​ដែលបានបិទ"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "ធាតុ​ដែលមាន​ម៉ឺនុយ​បញ្ជី​ត្រួតពិនិត្យ"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("ធាតុ​ដែលមាន​ម៉ឺនុយ​បរិបទ"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage("ធាតុ​ដែលមាន​ម៉ឺនុយ​តាមផ្នែក"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("ធាតុ​ដែលមាន​ម៉ឺនុយ​ធម្មតា"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "ធាតុ​ទីមួយ​ក្នុង​ម៉ឺនុយ​បរិបទ"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "ធាតុ​ទីបី​ក្នុង​ម៉ឺនុយ​បរិបទ"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "ម៉ឺនុយ​បង្ហាញ​បញ្ជី​ជម្រើស​នៅលើ​ផ្ទៃ​បណ្ដោះ​អាសន្ន​។ ជម្រើស​ទាំងនោះ​បង្ហាញ នៅពេល​អ្នកប្រើប្រាស់​ធ្វើអន្តរកម្ម​ជាមួយ​ប៊ូតុង សកម្មភាព ឬ​ការគ្រប់គ្រង​ផ្សេងទៀត​។"),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("បួន"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("យក​តំណ"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("ធាតុម៉ឺនុយទីមួយ"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("ធាតុម៉ឺនុយទីបី"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("ធាតុម៉ឺនុយទីពីរ"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("មួយ"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("មើលសាកល្បង"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("លុប"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("ចែករំលែក"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​ម៉ឺនុយ និង​ម៉ឺនុយ​ធម្មតា"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("បី"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("ម៉ឺនុយ"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("ពីរ"),
        "demoOneLineListsTitle": MessageLookupByLibrary.simpleMessage("មួយជួរ"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "សូមចុច​ត្រង់នេះ ដើម្បីមើល​ជម្រើសដែលមាន​សម្រាប់​ការសាកល្បង​នេះ។"),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("មើល​ជម្រើស"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("ជម្រើស"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​មានបន្ទាត់ជុំវិញ​ប្រែជា​ស្រអាប់ និង​ផុសឡើង​នៅពេលចុច។ ជាញឹកញាប់ ប៊ូតុងទាំងនេះត្រូវបានដាក់ជាគូជាមួយប៊ូតុងផុសឡើង ដើម្បីរំលេចសកម្មភាពបន្ទាប់បន្សំផ្សេង។"),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុងមាន​បន្ទាត់ជុំវិញ"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("បង្ហាញ​ផ្ទាំងជ្រើសរើស"),
        "demoPickersSubtitle": MessageLookupByLibrary.simpleMessage(
            "ការជ្រើសរើស​កាលបរិច្ឆេទ និងម៉ោង"),
        "demoPickersTitle":
            MessageLookupByLibrary.simpleMessage("ផ្ទាំងជ្រើសរើស"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "បន្ទាត់ត្រង់ រង្វង់ មិនកំណត់"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("សូចនាករដំណើរការ"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "ប៊ូតុង​ផុសឡើង​បន្ថែមវិមាត្រ​ទៅប្លង់​ដែលរាបស្មើភាគច្រើន។ ប៊ូតុង​ទាំងនេះ​រំលេច​មុខងារ​នៅកន្លែង​ដែលមមាញឹក ឬទូលាយ។"),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង​ផុសឡើង"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "របាររំកិល​បង្ហាញ​ចន្លោះតម្លៃ​នៅលើរបារ។ របាររំកិល​ទាំងនេះ​អាចមាន​រូបតំណាងនៅចុងទាំងពីរនៃរបារ ដែលបង្ហាញចន្លោះតម្លៃ។ របាររំកិលទាំងនេះស័ក្តិសមសម្រាប់​ការកែតម្រូវការកំណត់​ផ្សេងៗដូចជា កម្រិតសំឡេង ពន្លឺ ឬការអនុវត្តតម្រងរូបភាពជាដើម។"),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("របាររំកិលចន្លោះតម្លៃ"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("ម៉ឺនុយ​តាមផ្នែក"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "ប្រអប់​ធីក​អនុញ្ញាតឱ្យ​អ្នកប្រើប្រាស់​ជ្រើសរើស​ជម្រើសច្រើន​ពីបណ្ដុំ​មួយ។ តម្លៃរបស់​ប្រអប់​ធីកធម្មតា​គឺពិត ឬមិនពិត ហើយតម្លៃ​របស់ប្រអប់ធីក​ដែលមាន​បីស្ថានភាពក៏អាច​ទទេ​បានផងដែរ។"),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("ប្រអប់​ធីក"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "ប៊ូតុងមូល​អនុញ្ញាតឱ្យ​អ្នកប្រើប្រាស់​ជ្រើសរើស​ជម្រើសមួយ​ពី​បណ្ដុំមួយ។ ប្រើ​ប៊ូតុងមូល​សម្រាប់​ការជ្រើសរើស​ផ្ដាច់មុខ ប្រសិនបើ​អ្នកគិតថា​អ្នកប្រើប្រាស់​ត្រូវការមើល​ជម្រើស​ដែលមាន​ទាំងអស់​ទន្ទឹមគ្នា។"),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង​មូល"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ប្រអប់​ធីក ប៊ូតុង​មូល និង​ប៊ូតុង​បិទបើក"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "ប៊ូតុង​បិទបើក​សម្រាប់​បិទ/បើក​ស្ថានភាព​ជម្រើស​នៃការកំណត់​តែមួយ។ ជម្រើសដែល​ប៊ូតុង​បិទបើក​គ្រប់គ្រង ក៏ដូចជា​ស្ថានភាព​ដែលវាស្ថិតនៅ គួរតែ​កំណត់​ឱ្យបាន​ច្បាស់លាស់ពី​ស្លាក​ក្នុងជួរ​ដែលពាក់ព័ន្ធ។"),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង​បិទបើក"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("ការគ្រប់គ្រង​ការជ្រើសរើស"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "ប្រអប់ធម្មតា​ផ្ដល់ជូន​អ្នកប្រើប្រាស់​នូវជម្រើសមួយ​រវាង​ជម្រើស​មួយចំនួន។ ប្រអប់ធម្មតា​មាន​ចំណងជើង​ដែលជាជម្រើស ដែល​បង្ហាញនៅលើ​ជម្រើស។"),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("ធម្មតា"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("ម៉ឺនុយ​ធម្មតា"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("គ្មានចំណុចតម្លៃ"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "របាររំកិល​គ្មានចំណុចតម្លៃ រួមជាមួយរចនាប័ទ្មផ្ទាល់ខ្លួន"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "គ្មានចំណុចតម្លៃ រួមជាមួយតម្លៃលេខដែលអាចកែបាន"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "របាររំកិលបង្ហាញចន្លោះតម្លៃ​នៅលើរបារ ដែលអ្នកប្រើប្រាស់​អាចជ្រើសរើសតម្លៃមួយ។ របាររំកិលទាំងនេះស័ក្តិសមសម្រាប់​ការកែតម្រូវការកំណត់​ផ្សេងៗដូចជា កម្រិតសំឡេង ពន្លឺ ឬការអនុវត្តតម្រងរូបភាពជាដើម។"),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("ជាក់លាក់"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "របាររំកិលតម្លៃជាក់លាក់ រួម​ជាមួយរចនាប័ទ្ម​ផ្ទាល់ខ្លួន"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("តម្លៃលេខដែលអាចកែបាន"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "ធាតុ​ក្រាហ្វិកសម្រាប់ជ្រើសរើស​តម្លៃដោយការអូស"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("របាររំកិល"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "អ្នកបានចុច​សកម្មភាពរបស់​របារសារខ្លីៗ។"),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("សកម្មភាព"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("បង្ហាញ​របារសារខ្លីៗ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "របារទាំងនេះ​ប្រាប់អ្នកប្រើប្រាស់​អំពី​ដំណើរការ​ដែល​កម្មវិធី​បានធ្វើ ឬ​នឹងធ្វើ។ របារសារខ្លីៗ​បង្ហាញជា​បណ្ដោះអាសន្ន​នៅ​ផ្នែកខាងក្រោម​នៃអេក្រង់។ របារប្រភេទនេះ​មិនគួររំខានដល់​បទពិសោធន៍​អ្នកប្រើប្រាស់ និងមិនតម្រូវឱ្យ​អ្នកប្រើប្រាស់​ធ្វើអ្វី​ដើម្បី​ឱ្យវា​បាត់នោះទេ។"),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "របារសារខ្លីៗ​បង្ហាញសារ​នៅផ្នែក​ខាងក្រោម​នៃអេក្រង់"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("នេះគឺជា​របារសារខ្លីៗ។"),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("របារសារខ្លីៗ"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "ផ្ទាំង​រៀបចំ​ខ្លឹមសារ​នៅលើ​អេក្រង់ សំណុំ​ទិន្នន័យ​ផ្សេងៗគ្នា និងអន្តរកម្ម​ផ្សេងទៀត។"),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "ផ្ទាំង​មាន​ទិដ្ឋភាព​ដាច់ពីគ្នា​ដែលអាច​រំកិលបាន"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("ផ្ទាំង"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "កន្លែងបញ្ចូលអក្សរ​អាចឱ្យអ្នកប្រើប្រាស់​បញ្ចូលអក្សរ​ទៅក្នុង UI។ ជាទូទៅ វាបង្ហាញ​ជាទម្រង់បែបបទ និងប្រអប់បញ្ចូល។"),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("អ៊ីមែល"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("សូម​បញ្ចូល​ពាក្យ​សម្ងាត់​។"),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - បញ្ចូលលេខទូរសព្ទ​សហរដ្ឋអាមេរិក។"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "សូមដោះស្រាយ​បញ្ហាពណ៌ក្រហម មុនពេលដាក់​បញ្ជូន។"),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("លាក់​ពាក្យ​សម្ងាត់"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "សរសេរវាឱ្យខ្លី នេះគ្រាន់តែជា​ការសាកល្បងប៉ុណ្ណោះ។"),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("រឿងរ៉ាវជីវិត"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("ឈ្មោះ*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("តម្រូវ​ឱ្យ​មាន​ឈ្មោះ។"),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("មិនឱ្យ​លើសពី 8 តួអក្សរទេ។"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "សូមបញ្ចូលតួអក្សរ​តាមលំដាប់អក្ខរក្រម​តែប៉ុណ្ណោះ។"),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("ពាក្យសម្ងាត់*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("ពាក្យសម្ងាត់​មិនត្រូវគ្នាទេ"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("លេខទូរសព្ទ*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* បង្ហាញថាជាកន្លែងត្រូវបំពេញ"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "វាយបញ្ចូល​ពាក្យសម្ងាត់ឡើងវិញ*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("ប្រាក់បៀវត្សរ៍"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("បង្ហាញពាក្យសម្ងាត់"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("ដាក់​បញ្ជូន"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "បន្ទាត់តែមួយ​នៃអក្សរ និងលេខដែល​អាចកែបាន"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "ប្រាប់យើង​អំពីខ្លួនអ្នក (ឧ. សរសេរអំពី​អ្វីដែលអ្នកធ្វើ ឬចំណូលចិត្តអ្វី​ដែលអ្នកមាន)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("កន្លែងបញ្ចូលអក្សរ"),
        "demoTextFieldUSD":
            MessageLookupByLibrary.simpleMessage("ដុល្លារអាមេរិក"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("តើអ្នកដទៃ​ហៅអ្នកថាម៉េច?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("តើយើងអាច​ទាក់ទងអ្នក​នៅទីណា?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("អាសយដ្ឋាន​អ៊ីមែល​របស់អ្នក"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "បង្ហាញ​ប្រអប់ ដែលមាន​ផ្ទាំងជ្រើសរើសម៉ោង​ដែលមានការរចនាគ្រប់ជ្រុងជ្រោយ។"),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("ផ្ទាំងជ្រើសរើស​ម៉ោង"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "អាចប្រើ​ប៊ូតុងបិទ/បើក ដើម្បី​ដាក់ជម្រើស​ដែលពាក់ព័ន្ធ​ជាក្រុមបាន។ ដើម្បីរំលេចក្រុមប៊ូតុងបិទ/បើកដែលពាក់ព័ន្ធ ក្រុមប៊ូតុងគួរតែប្រើទម្រង់ផ្ទុកទូទៅរួមគ្នា"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុងបិទ/បើក"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "កំណត់​ពន្យល់​ផ្ដល់​ស្លាក​អត្ថបទ​ដែល​ជួយ​ពន្យល់​អំពី​មុខងារ​របស់​ប៊ូតុង ឬ​សកម្មភាព​នៃ​ផ្ទៃប៉ះ​ផ្សេងទៀត​។ កំណត់​ពន្យល់​បង្ហាញ​អត្ថបទ​ដែលផ្ដល់​ព័ត៌មាន​ជាប្រយោជន៍ នៅពេល​អ្នកប្រើប្រាស់​ដាក់ព្រួញ ផ្ដោត ឬ​ចុចលើ​ធាតុ​ឱ្យយូរ​។"),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "ចុច​ឱ្យយូរ ឬ​ដាក់ព្រួញ ដើម្បី​បង្ហាញ​កំណត់​ពន្យល់​។"),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "សារ​ខ្លី​ដែលបង្ហាញ​នៅពេល​ចុច​ឱ្យយូរ ឬ​ដាក់ព្រួញ"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("កំណត់​ពន្យល់"),
        "demoTwoLineListsTitle": MessageLookupByLibrary.simpleMessage("ពីរជួរ"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "និយមន័យសម្រាប់​រចនាប័ទ្មនៃ​ការរចនាអក្សរ ដែលបានរកឃើញ​នៅក្នុងរចនាប័ទ្មសម្ភារ។"),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "រចនាប័ទ្មអក្សរ​ដែលបានកំណត់​ជាមុនទាំងអស់"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("ការរចនា​អក្សរ"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("បញ្ចូលគណនី"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("យល់ព្រម"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("បោះបង់"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("មិនយល់ព្រម"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("លុបចោល"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("លុបចោល​សេចក្ដី​ព្រាង?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "ការបង្ហាញអំពី​ប្រអប់​ពេញអេក្រង់"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("រក្សាទុក"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("ប្រអប់​ពេញអេក្រង់"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "ឱ្យ Google ជួយ​កម្មវិធី​ក្នុងការកំណត់​ទីតាំង។ មានន័យថា​ផ្ញើទិន្នន័យ​ទីតាំង​អនាមិក​ទៅ Google ទោះបីជា​មិនមាន​កម្មវិធី​កំពុងដំណើរការ​ក៏ដោយ។"),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "ប្រើ​សេវាកម្ម​ទីតាំង​របស់ Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("កំណត់​គណនី​បម្រុង​ទុក"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("បង្ហាញ​ប្រអប់"),
        "dismiss": MessageLookupByLibrary.simpleMessage("ច្រានចោល"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories": MessageLookupByLibrary.simpleMessage("ប្រភេទ"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("សាល​រូបភាព"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("ឆ្នេរ"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("រោងចក្រ​ស្ល​សំរឹទ្ធ"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("ជិនណៃ"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("ចិត្តធីណាដ"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("អ្នក​នេសាទ"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("ផ្សារ​លក់​ផ្កា"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("ការរៀបចំ​អាហារ​ថ្ងៃត្រង់"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("ទីផ្សារ"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("ផនឌីឈ័ររី"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("ស្រែ​អំបិល"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("កង់រុញ​ដោយ​ជើង"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("ឧបករណ៍ផលិតសូត្រ"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("ថាន់ចរ"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("ប្រាសាទ​ថាន់ចាវួរ"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("គណនី​សន្សំទិញរថយន្ត"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("គណនីមូលប្បទានបត្រ"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("គណនីសន្សំទិញផ្ទះ"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("វិស្សមកាល"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("ម្ចាស់​គណនី"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("ផល​ជាភាគរយ​ប្រចាំឆ្នាំ"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "ការប្រាក់ដែល​បានបង់ពីឆ្នាំមុន"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("អត្រា​ការប្រាក់"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("ការប្រាក់ YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("របាយការណ៍​បន្ទាប់"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("សរុប"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("គណនី"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("ការជូនដំណឹង"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("វិក្កយបត្រ"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("ចំនួនត្រូវបង់"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("សម្លៀក​បំពាក់"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("ហាង​កាហ្វេ"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("គ្រឿងទេស"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("ភោជនីយដ្ឋាន"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("នៅសល់"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("ថវិកា"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "កម្មវិធីហិរញ្ញវត្ថុ​ផ្ទាល់ខ្លួន"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("នៅសល់"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("ចូល"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("ចូល"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("ចូលទៅ Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("មិន​មាន​គណនី​មែន​ទេ?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("ពាក្យសម្ងាត់"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("ចងចាំខ្ញុំ"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("ចុះឈ្មោះ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("ឈ្មោះអ្នក​ប្រើប្រាស់"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("មើល​ទាំងអស់​"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("មើល​គណនី​ទាំងអស់"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("មើល​វិក្កយបត្រ​ទាំងអស់"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("មើល​ថវិកា​ទាំងអស់"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("ស្វែងរក ATM"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("ជំនួយ"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("គ្រប់គ្រង​គណនី"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("ការជូនដំណឹង"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("ការកំណត់​មិនប្រើក្រដាស"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("លេខកូដសម្ងាត់ និង Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("ព័ត៌មាន​ផ្ទាល់​ខ្លួន"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("ចេញ"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("ឯកសារពន្ធ"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("គណនី"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("វិក្កយបត្រ"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ថវិកា"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("ទិដ្ឋភាពរួម"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ការ​កំណត់"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("អំពី Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "រចនាដោយ TOASTER នៅក្នុង​ទីក្រុងឡុងដ៍"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("បិទ​ការ​កំណត់"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("ការកំណត់"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("ងងឹត"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("ផ្ញើមតិកែលម្អ"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("ភ្លឺ"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("ភាសា"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("មេកានិច​ប្រព័ន្ធ"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("ចលនា​យឺត"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("ប្រព័ន្ធ"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("ទិស​អត្ថបទ"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("ពីឆ្វេង​ទៅស្ដាំ"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("ផ្អែកលើ​ភាសា"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("ពីស្ដាំ​ទៅឆ្វេង"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("ការធ្វើមាត្រដ្ឋានអក្សរ"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("ធំសម្បើម"),
        "settingsTextScalingLarge": MessageLookupByLibrary.simpleMessage("ធំ"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("ធម្មតា"),
        "settingsTextScalingSmall": MessageLookupByLibrary.simpleMessage("តូច"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("រចនាប័ទ្ម"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("ការកំណត់"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("បោះបង់"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("សម្អាត​រទេះ"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("រទេះ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("ការ​ដឹកជញ្ជូន៖"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("សរុប​រង៖"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("ពន្ធ៖"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("សរុប"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("គ្រឿង​តុបតែង"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("ទាំង​អស់"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("សម្លៀក​បំពាក់"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ផ្ទះ"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("កម្មវិធី​លក់រាយ​ទាន់សម័យ"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("ពាក្យសម្ងាត់"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("ឈ្មោះអ្នក​ប្រើប្រាស់"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ចេញ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("ម៉ឺនុយ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("បន្ទាប់"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("ពែងថ្ម​ពណ៌ខៀវ"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("អាវយឺត​ពណ៌ក្រហមព្រឿងៗ"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("កន្សែង Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("អាវ Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("អាវ​ពណ៌សចាស់"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("អាវយឺត​ដៃវែង Clay"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("ធ្នើរស្ពាន់"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("អាវយឺត​ឆ្នូតៗ"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("ខ្សែ Garden"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("មួក Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("អាវក្រៅ Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("តុបីតាមទំហំ"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("កន្សែងបង់ក Ginger"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("អាវវាលក្លៀក​ពណ៌ប្រផេះ"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("ឈុតពែងតែ Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("quattro ផ្ទះបាយ"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("ខោជើងវែង Navy"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Plaster tunic"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("តុ Quartet"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("ទត្រងទឹក"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Sea tunic"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("អាវយឺតដៃវែង Seabreeze"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("អាវយឺត​កធ្លាក់ពីស្មា"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("កាបូប Shrug"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("ឈុតសេរ៉ាមិច Soothe"),
        "shrineProductStellaSunglasses": MessageLookupByLibrary.simpleMessage(
            "វ៉ែនតាការពារ​ពន្លឺថ្ងៃ Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("ក្រវិល Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("រុក្ខជាតិ Succulent"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("សម្លៀកបំពាក់​ស្ដើងៗ"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("អាវ Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("កាបូប Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("ស្រោមជើង Varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (ស)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("បន្តោង​សោក្រង"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("អាវឆ្នូតពណ៌ស"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("ខ្សែក្រវ៉ាត់ Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("បញ្ចូលទៅរទេះ"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("បិទ​ទំព័រ​រទេះ"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("បិទ​ម៉ឺនុយ"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("បើកម៉ឺនុយ"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("ដក​ទំនិញ​ចេញ"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("ស្វែងរក"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("ការកំណត់"),
        "signIn": MessageLookupByLibrary.simpleMessage("ចូល"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "ស្រទាប់​ចាប់ផ្ដើមដែល​ឆ្លើយតបរហ័ស"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("តួ​អត្ថបទ"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ប៊ូតុង"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("ចំណង​ជើង"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("ចំណងជើង​រង"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("ចំណង​ជើង"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("កម្មវិធី​ចាប់ផ្ដើម"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("បន្ថែម"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("សំណព្វ"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("ស្វែងរក"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("ចែករំលែក")
      };
}
