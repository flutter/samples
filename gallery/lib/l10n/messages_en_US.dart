// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en_US locale. All the
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
  String get localeName => 'en_US';

  static m0(value) =>
      "To see the source code for this app, please visit the ${value}.";

  static m1(title) => "Placeholder for ${title} tab";

  static m2(destinationName) => "Explore ${destinationName}";

  static m3(destinationName) => "Share ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'No Restaurants', one: '1 Restaurant', other: '${totalRestaurants} Restaurants')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Nonstop', one: '1 stop', other: '${numberOfStops} stops')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'No Available Properties', one: '1 Available Properties', other: '${totalProperties} Available Properties')}";

  static m10(value) => "${value} with honey";

  static m11(value) => "${value} with sugar";

  static m12(value) => "Item ${value}";

  static m13(error) => "Failed to copy to clipboard: ${error}";

  static m14(value) => "Continuous: ${value}";

  static m15(value) => "Discrete: ${value}";

  static m16(value) => "Checked: ${value}";

  static m17(value) => "Selected: ${value}";

  static m18(name, phoneNumber) => "${name} phone number is ${phoneNumber}";

  static m19(value) => "You selected: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "${accountName} account ${accountNumber} with ${amount}.";

  static m21(amount) => "You’ve spent ${amount} in ATM fees this month";

  static m22(percent) =>
      "Good work! Your checking account is ${percent} higher than last month.";

  static m23(percent) =>
      "Heads up, you’ve used up ${percent} of your Shopping budget for this month.";

  static m24(amount) => "You’ve spent ${amount} on Restaurants this week.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Increase your potential tax deduction! Assign categories to 1 unassigned transaction.', other: 'Increase your potential tax deduction! Assign categories to ${count} unassigned transactions.')}";

  static m26(billName, date, amount) =>
      "${billName} bill due ${date} for ${amount}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "${budgetName} budget with ${amountUsed} used of ${amountTotal}, ${amountLeft} left";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'NO ITEMS', one: '1 ITEM', other: '${quantity} ITEMS')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Quantity: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Shopping cart, no items', one: 'Shopping cart, 1 item', other: 'Shopping cart, ${quantity} items')}";

  static m32(product) => "Remove ${product}";

  static m33(value) => "Item ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo":
            MessageLookupByLibrary.simpleMessage("Flutter samples Github repo"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Back to Gallery"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Leading Icon"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Multiple actions"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Reset the banner"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Your password was updated on your other device. Please sign in again."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Notch"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Floating Action Button Position"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Docked - Center"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Docked - End"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Floating - Center"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Floating - End"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Account"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarm"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Calendar"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Camera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Comments"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BUTTON"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Create"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Explore"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable":
            MessageLookupByLibrary.simpleMessage("Selectable (long press)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage("Tappable"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Number 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Silk Spinners"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Temples"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Top 10 Cities to Visit in Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Artisans of Southern India"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Brihadisvara Temple"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Biking"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Elevator"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Fireplace"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Large"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Medium"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Small"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Turn on lights"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Washer"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("AMBER"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLUE"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("BLUE GREY"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BROWN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYAN"),
        "colorsDeepOrange": MessageLookupByLibrary.simpleMessage("DEEP ORANGE"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("DEEP PURPLE"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("GREEN"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GREY"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("LIGHT BLUE"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("LIGHT GREEN"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIME"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANGE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("PINK"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("PURPLE"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("RED"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TEAL"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("YELLOW"),
        "craneDescription":
            MessageLookupByLibrary.simpleMessage("A personalized travel app"),
        "craneEat": MessageLookupByLibrary.simpleMessage("EAT"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Naples, Italy"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza in a wood-fired oven"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, United States"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Woman holding huge pastrami sandwich"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Empty bar with diner-style stools"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, United States"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Korean taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, France"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Chocolate dessert"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Seoul, South Korea"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Artsy restaurant seating area"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, United States"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Shrimp dish"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, United States"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bakery entrance"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, United States"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plate of crawfish"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Spain"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cafe counter with pastries"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explore Restaurants by Destination"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("FLY"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, United States"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in a snowy landscape with evergreen trees"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, United States"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Cairo, Egypt"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar Mosque towers during sunset"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Brick lighthouse at sea"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, United States"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pool with palm trees"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sea-side pool with palm trees"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tent in a field"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Khumbu Valley, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Prayer flags in front of snowy mountain"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu citadel"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Overwater bungalows"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("Vitznau, Switzerland"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Lake-side hotel in front of mountains"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Mexico City, Mexico"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Aerial view of Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Mount Rushmore, United States"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapore"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Man leaning on an antique blue car"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Explore Flights by Destination"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Select Date"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Select Dates"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Choose Destination"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Diners"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Select Location"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Choose Origin"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Select Time"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Travelers"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("SLEEP"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Overwater bungalows"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, United States"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Cairo, Egypt"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Al-Azhar Mosque towers during sunset"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taipei 101 skyscraper"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet in a snowy landscape with evergreen trees"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Machu Picchu citadel"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Man leaning on an antique blue car"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitznau, Switzerland"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Lake-side hotel in front of mountains"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, United States"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tent in a field"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, United States"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pool with palm trees"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Colorful apartments at Riberia Square"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexico"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mayan ruins on a cliff above a beach"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisbon, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Brick lighthouse at sea"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explore Properties by Destination"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Allow"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Cancel"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Chocolate Brownie"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Please select your favorite type of dessert from the list below. Your selection will be used to customize the suggested list of eateries in your area."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Discard"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Don\'t Allow"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Select Favorite Dessert"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Your current location will be displayed on the map and used for directions, nearby search results, and estimated travel times."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Allow \"Maps\" to access your location while you are using the app?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Button"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("With Background"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Show Alert"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Home"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profile"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Calcium (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Calories"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Carbs (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Dessert (1 serving)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Fat (g)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("Iron (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Protein (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodium (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Nutrition"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Apple pie"),
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
            MessageLookupByLibrary.simpleMessage("Ice cream sandwich"),
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
            "Action chips are a set of options which trigger an action related to primary content. Action chips should appear dynamically and contextually in a UI."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Action Chip"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title and an optional list of actions."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alert"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alert With Title"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "A banner displays an important, succinct message, and provides actions for users to address (or dismiss the banner). A user action is required for it to be dismissed."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Displaying a banner within a list"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Bottom app bars provide access to a bottom navigation drawer and up to four actions, including the floating action button."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Displays navigation and actions at the bottom"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Bottom app bar"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Bottom navigation bars display three to five destinations at the bottom of a screen. Each destination is represented by an icon and an optional text label. When a bottom navigation icon is tapped, the user is taken to the top-level navigation destination associated with that icon."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Persistent labels"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Selected label"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Bottom navigation with cross-fading views"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Bottom navigation"),
        "demoBottomSheetAddLabel": MessageLookupByLibrary.simpleMessage("Add"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("SHOW BOTTOM SHEET"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("Header"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "A modal bottom sheet is an alternative to a menu or a dialog and prevents the user from interacting with the rest of the app."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modal bottom sheet"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "A persistent bottom sheet shows information that supplements the primary content of the app. A persistent bottom sheet remains visible even when the user interacts with other parts of the app."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Persistent bottom sheet"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Persistent and modal bottom sheets"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Bottom sheet"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Flat, raised, outline, and more"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Buttons"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "A card is a sheet of Material used to represent some related information, for example an album, a geographical location, a meal, contact details, etc."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Baseline cards with rounded corners"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Cards"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Checklist menu"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Compact elements that represent an input, attribute, or action"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Choice chips represent a single choice from a set. Choice chips contain related descriptive text or categories."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Choice Chip"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "A Material Design circular progress indicator, which spins to indicate that the application is busy."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Circular Progress Indicator"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Demo Code"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Copied to clipboard."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPY ALL"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Color and color swatch constants which represent Material Design\'s color palette."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "All of the predefined colors"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Colors"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Context menu"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "An action sheet is a specific style of alert that presents the user with a set of two or more choices related to the current context. An action sheet can have a title, an additional message, and a list of actions."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Action Sheet"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "An iOS-style activity indicator that spins clockwise."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-style activity indicators"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Alert Buttons Only"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alert With Buttons"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "An alert dialog informs the user about situations that require acknowledgement. An alert dialog has an optional title, optional content, and an optional list of actions. The title is displayed above the content and the actions are displayed below the content."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alert"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alert With Title"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style alert dialogs"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alerts"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "An iOS-style button. It takes in text and/or an icon that fades out and in on touch. May optionally have a background."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style buttons"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Buttons"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "An iOS-styled navigation bar. The navigation bar is a toolbar that minimally consists of a page title, in the middle of the toolbar."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style navigation bar"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Date"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Date and Time"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "An iOS-style picker widget that can be used to select dates, times, or both date and time."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "iOS-style date and time pickers"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Time"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Timer"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Pickers"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "A widget implementing the iOS-style pull to refresh content control."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "iOS-style pull to refresh control"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Used to select between a number of mutually exclusive options. When one option in the segmented control is selected, the other options in the segmented control cease to be selected."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style segmented control"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "A slider can be used to select from either a continuous or a discrete set of values."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style slider"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Slider"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "A switch is used to toggle the on/off state of a single setting."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style switch"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "An iOS-style bottom navigation tab bar. Displays multiple tabs with one tab being active, the first tab by default."),
        "demoCupertinoTabBarSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style bottom tab bar"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "A text field lets the user enter text, either with a hardware keyboard or with an onscreen keyboard."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("iOS-style text fields"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Sliders reflect a range of values along a bar, from which users may select a single value or range of values. The sliders can be themed and customized."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Custom Sliders"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Data tables display information in a grid-like format of rows and columns. They organize information in a way that’s easy to scan, so that users can look for patterns and insights."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Rows and columns of information"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Data Tables"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Shows a dialog containing a Material Design date picker."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Date Picker"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, alert, and fullscreen"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dialogs"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("API Documentation"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Filter chips use tags or descriptive words as a way to filter content."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Filter Chip"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A flat button displays an ink splash on press but does not lift. Use flat buttons on toolbars, in dialogs and inline with padding"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Flat Button"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "A floating action button is a circular icon button that hovers over content to promote a primary action in the application."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Floating Action Button"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "The fullscreenDialog property specifies whether the incoming page is a fullscreen modal dialog"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Fullscreen"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Full Screen"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Grid Lists are best suited for presenting homogeneous data, typically images. Each item in a grid list is called a tile."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("With footer"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("With header"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Image only"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Row and column layout"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Grid Lists"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Info"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Input chips represent a complex piece of information, such as an entity (person, place, or thing) or conversational text, in a compact form."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Input Chip"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Couldn\'t display URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "A Material Design linear progress indicator, also known as a progress bar."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Linear Progress Indicator"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "A single fixed-height row that typically contains some text as well as a leading or trailing icon."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Secondary text"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Scrolling list layouts"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Lists"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Disabled menu item"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "An item with a checklist menu"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage("An item with a context menu"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "An item with a sectioned menu"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("An item with a simple menu"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("Context menu item one"),
        "demoMenuContextMenuItemThree":
            MessageLookupByLibrary.simpleMessage("Context menu item three"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "A menu displays a list of choices on a temporary surface. They appear when users interact with a button, action, or other control."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Four"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Get link"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Menu item one"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Menu item three"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Menu item two"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("One"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Preview"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Remove"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Share"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Menu buttons and simple menus"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Three"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Two"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("One Line"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Tap here to view available options for this demo."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("View options"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Options"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Outline buttons become opaque and elevate when pressed. They are often paired with raised buttons to indicate an alternative, secondary action."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Outline Button"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("SHOW PICKER"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Date and time selection"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Pickers"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Linear, circular, indeterminate"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Progress indicators"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Raised buttons add dimension to mostly flat layouts. They emphasize functions on busy or wide spaces."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Raised Button"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Sliders reflect a range of values along a bar. They can have icons on both ends of the bar that reflect a range of values. They are ideal for adjusting settings such as volume, brightness, or applying image filters."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Range Sliders"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Sectioned menu"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Checkboxes allow the user to select multiple options from a set. A normal checkbox\'s value is true or false and a tristate checkbox\'s value can also be null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Checkbox"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Radio buttons allow the user to select one option from a set. Use radio buttons for exclusive selection if you think that the user needs to see all available options side-by-side."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Checkboxes, radio buttons, and switches"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "On/off switches toggle the state of a single settings option. The option that the switch controls, as well as the state it’s in, should be made clear from the corresponding inline label."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Switch"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Selection controls"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "A simple dialog offers the user a choice between several options. A simple dialog has an optional title that is displayed above the choices."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Simple"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Simple menu"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Continuous"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Continuous Range Slider with Custom Theme"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Continuous with Editable Numerical Value"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Sliders reflect a range of values along a bar, from which users may select a single value. They are ideal for adjusting settings such as volume, brightness, or applying image filters."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Discrete"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Discrete Slider with Custom Theme"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Editable numerical value"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets for selecting a value by swiping"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Sliders"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "You pressed the snackbar action."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ACTION"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("SHOW A SNACKBAR"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Snackbars inform users of a process that an app has performed or will perform. They appear temporarily, towards the bottom of the screen. They shouldn’t interrupt the user experience, and they don’t require user input to disappear."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Snackbars show messages at the bottom of the screen"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("This is a snackbar."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Snackbars"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Tabs organize content across different screens, data sets, and other interactions."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tabs with independently scrollable views"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Tabs"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Text fields allow users to enter text into a UI. They typically appear in forms and dialogs."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Please enter a password."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Enter a US phone number."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Please fix the errors in red before submitting."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Hide password"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Keep it short, this is just a demo."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Life story"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Name*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Name is required."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("No more than 8 characters."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Please enter only alphabetical characters."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Password*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("The passwords don\'t match"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Phone number*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* indicates required field"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Re-type password*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salary"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Show password"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("SUBMIT"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Single line of editable text and numbers"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Tell us about yourself (e.g., write down what you do or what hobbies you have)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("What do people call you?"),
        "demoTextFieldWhereCanWeReachYou":
            MessageLookupByLibrary.simpleMessage("Where can we reach you?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Your email address"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Shows a dialog containing a Material Design time picker."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Time Picker"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Toggle buttons can be used to group related options. To emphasize groups of related toggle buttons, a group should share a common container"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Toggle Buttons"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Tooltips provide text labels that help explain the function of a button or other user interface action. Tooltips display informative text when users hover over, focus on, or long press an element."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Long press or hover to display the tooltip."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Short message displayed on long press or hover"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Tooltips"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Two Lines"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definitions for the various typographical styles found in Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "All of the predefined text styles"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Typography"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Add account"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("AGREE"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCEL"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("DISAGREE"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("DISCARD"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Discard draft?"),
        "dialogFullscreenDescription":
            MessageLookupByLibrary.simpleMessage("A full screen dialog demo"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SAVE"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Full Screen Dialog"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Let Google help apps determine location. This means sending anonymous location data to Google, even when no apps are running."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Use Google\'s location service?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Set backup account"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("SHOW DIALOG"),
        "dismiss": MessageLookupByLibrary.simpleMessage("DISMISS"),
        "fortnightlyDescription":
            MessageLookupByLibrary.simpleMessage("A content-focused news app"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Reforming The Green Army From Within"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Farmland Bees In Short Supply"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Designers Use Tech To Make Futuristic Fabrics"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Feminists Take On Partisanship"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("The Future of Gasoline"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "The Quiet, Yet Powerful Healthcare Revolution"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "As Stocks Stagnate, Many Look To Currency"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Divided American Lives During War"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Latest Updates"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Business"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Culture"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Front Page"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Politics"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Science"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Sports"),
        "fortnightlyMenuTech": MessageLookupByLibrary.simpleMessage("Tech"),
        "fortnightlyMenuTravel": MessageLookupByLibrary.simpleMessage("Travel"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("US"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("World"),
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
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categories"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Gallery"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Beach"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Bronze Works"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Fisherman"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Flower Market"),
        "placeLunchPrep": MessageLookupByLibrary.simpleMessage("Lunch Prep"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Market"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Salt Farm"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scooters"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("Silk Maker"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Thanjavur Temple"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Car Savings"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Checking"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Home Savings"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacation"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Account Owner"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Annual Percentage Yield"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Interest Paid Last Year"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Interest Rate"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Interest YTD"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Next Statement"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Accounts"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alerts"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Amount Due"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Amount Paid"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Total Amount"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Bills"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Due"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Clothing"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Coffee Shops"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Groceries"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurants"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Amount Left"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Amount Used"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Total Cap"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Left"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budgets"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("A personal finance app"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage(" LEFT"),
        "rallyLoginButtonLogin": MessageLookupByLibrary.simpleMessage("LOGIN"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Login"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Login to Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Don\'t have an account?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Password"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Remember Me"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("SIGN UP"),
        "rallyLoginUsername": MessageLookupByLibrary.simpleMessage("Username"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("SEE ALL"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("See all accounts"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("See all bills"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("See all budgets"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Find ATMs"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Help"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Manage Accounts"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Paperless Settings"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Passcode and Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Personal Information"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Sign out"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Tax Documents"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("ACCOUNTS"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("BILLS"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDGETS"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("OVERVIEW"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("SETTINGS"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("About Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Designed by TOASTER in London"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Close settings"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Settings"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Dark"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Send feedback"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Light"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Locale"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Platform mechanics"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Slow motion"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("System"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Text direction"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Based on locale"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Text scaling"),
        "settingsTextScalingHuge": MessageLookupByLibrary.simpleMessage("Huge"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Large"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Small"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Theme"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Settings"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("CANCEL"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("CLEAR CART"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("CART"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Shipping:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Tax:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESSORIES"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ALL"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("CLOTHING"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("HOME"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("A fashionable retail app"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Password"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Username"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("LOGOUT"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption": MessageLookupByLibrary.simpleMessage("NEXT"),
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
            MessageLookupByLibrary.simpleMessage("Add to cart"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Close cart"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Close menu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Open menu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Remove item"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Search"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Settings"),
        "signIn": MessageLookupByLibrary.simpleMessage("SIGN IN"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("A responsive starter layout"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Body"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BUTTON"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Headline"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtitle"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Title"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("Starter app"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Add"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favorite"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Search"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Share")
      };
}
