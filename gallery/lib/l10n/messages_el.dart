// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a el locale. All the
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
  String get localeName => 'el';

  static m0(value) =>
      "Για να δείτε τον πηγαίο κώδικα για αυτήν την εφαρμογή, επισκεφτείτε το ${value}.";

  static m1(title) => "Placeholder για την καρτέλα ${title}";

  static m2(destinationName) => "Εξερεύνηση ${destinationName}";

  static m3(destinationName) => "Κοινοποίηση ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Κανένα εστιατόριο', one: '1 εστιατόριο', other: '${totalRestaurants} εστιατόρια')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Απευθείας', one: '1 στάση', other: '${numberOfStops} στάσεις')}";

  static m7(hours) => "${Intl.plural(hours, one: '1 ώ.', other: '${hours}ώ.')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 λ.', other: '${minutes}λ.')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Καμία διαθέσιμη ιδιοκτησία', one: '1 διαθέσιμη ιδιοκτησία', other: '${totalProperties} διαθέσιμες ιδιότητες')}";

  static m10(value) => "${value} με μέλι";

  static m11(value) => "${value} με ζάχαρη";

  static m12(value) => "Στοιχείο ${value}";

  static m13(error) => "Η αντιγραφή στο πρόχειρο απέτυχε: ${error}";

  static m14(value) => "Συνεχές: ${value}";

  static m15(value) => "Διακριτό: ${value}";

  static m16(value) => "Ελέγχθηκε: ${value}";

  static m17(value) => "Επιλέχθηκε: ${value}";

  static m18(name, phoneNumber) =>
      "Ο αριθμός τηλεφώνου του χρήστη ${name} είναι ${phoneNumber}";

  static m19(value) => "Επιλέξατε \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Λογαριασμός ${accountName} με αριθμό ${accountNumber} και ποσό ${amount}.";

  static m21(amount) =>
      "Δαπανήσατε ${amount} σε προμήθειες ATM αυτόν τον μήνα.";

  static m22(percent) =>
      "Συγχαρητήρια! Ο τρεχούμενος λογαριασμός σας παρουσιάζει αύξηση ${percent} συγκριτικά με τον προηγούμενο μήνα.";

  static m23(percent) =>
      "Έχετε υπόψη ότι χρησιμοποιήσατε το ${percent} του προϋπολογισμού αγορών σας γι\' αυτόν τον μήνα.";

  static m24(amount) =>
      "Δαπανήσατε ${amount} σε εστιατόρια αυτήν την εβδομάδα.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Αυξήστε την πιθανή έκπτωση φόρου! Εκχωρήστε κατηγορίες σε 1 μη εκχωρημένη συναλλαγή.', other: 'Αυξήστε την πιθανή έκπτωση φόρου! Εκχωρήστε κατηγορίες σε ${count} μη εκχωρημένες συναλλαγές.')}";

  static m26(billName, date, amount) =>
      "Λογαριασμός ${billName} με προθεσμία στις ${date} και ποσό ${amount}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Προϋπολογισμός ${budgetName} από τον οποίο έχουν χρησιμοποιηθεί ${amountUsed} από το συνολικό ποσό των ${amountTotal}, απομένουν ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'ΚΑΝΕΝΑ ΣΤΟΙΧΕΙΟ', one: '1 ΣΤΟΙΧΕΙΟ', other: '${quantity} ΣΤΟΙΧΕΙΑ')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Ποσότητα: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Καλάθι αγορών, κανένα στοιχείο', one: 'Καλάθι αγορών, 1 στοιχείο', other: 'Καλάθι αγορών, ${quantity} στοιχεία')}";

  static m32(product) => "Κατάργηση ${product}";

  static m33(value) => "Στοιχείο ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Χώρος φύλαξης GitHub δειγμάτων Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Πίσω στη Συλλογή"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Εικονίδιο αρχής"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Πολλές ενέργειες"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Επαναφορά του banner"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Ο κωδικός πρόσβασής σας ενημερώθηκε στην άλλη συσκευή σας. Συνδεθείτε ξανά."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Εγκοπή"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Θέση κινούμενου κουμπιού ενεργειών"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Προσδεδεμένο - Κέντρο"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Προσδεδεμένο - Τέλος"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Κινούμενο - Κέντρο"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Κινούμενο - Τέλος"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Λογαριασμός"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Ξυπνητήρι"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Ημερολόγιο"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Κάμερα"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Σχόλια"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("ΚΟΥΜΠΙ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Δημιουργία"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Εξερεύνηση"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Με δυνατότητα επιλογής (παρατεταμένο πάτημα)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Με δυνατότητα πατήματος"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Τανχαβούρ"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Τσέτιναντ"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Αριθμός 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Παραγωγοί μεταξιού"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Ναοί"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Τανχαβούρ, Ταμίλ Ναντού"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Σιβαγκάνγκα, Ταμίλ Ναντού"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Κορυφαίες 10 πόλεις για επίσκεψη στην πολιτεία Ταμίλ Ναντού"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Τεχνίτες της Νότιας Ινδίας"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Ναός Μπριχαντισβάρα"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Ποδηλασία"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ανελκυστήρας"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Τζάκι"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Μεγάλο"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Μέτριο"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Μικρό"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Ενεργοποίηση φωτισμού"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Πλυντήριο"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ΚΕΧΡΙΜΠΑΡΙ"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("ΜΠΛΕ"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("ΜΠΛΕ ΓΚΡΙ"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("ΚΑΦΕ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("ΚΥΑΝΟ"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ΒΑΘΥ ΠΟΡΤΟΚΑΛΙ"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ΒΑΘΥ ΜΟΒ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ΠΡΑΣΙΝΟ"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("ΓΚΡΙ"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ΛΟΥΛΑΚΙ"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("ΑΝΟΙΧΤΟ ΜΠΛΕ"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("ΑΝΟΙΧΤΟ ΠΡΑΣΙΝΟ"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ΚΙΤΡΙΝΟ"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ΠΟΡΤΟΚΑΛΙ"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ΡΟΖ"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ΜΟΒ"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ΚΟΚΚΙΝΟ"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("ΓΑΛΑΖΟΠΡΑΣΙΝΟ"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ΚΙΤΡΙΝΟ"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Μια εξατομικευμένη εφαρμογή για ταξίδια"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ΦΑΓΗΤΟ"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Νάπολη, Ιταλία"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Πίτσα σε ξυλόφουρνο"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Ντάλας, Ηνωμένες Πολιτείες"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Λισαβόνα, Πορτογαλία"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Γυναίκα που κρατάει ένα τεράστιο σάντουιτς παστράμι"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Άδειο μπαρ με σκαμπό εστιατορίου"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Κόρδοβα, Αργεντινή"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Μπέργκερ"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Πόρτλαντ, Ηνωμένες Πολιτείες"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Κορεατικό τάκο"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Παρίσι, Γαλλία"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Επιδόρπιο σοκολάτας"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Σεούλ, Νότια Κορέα"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Χώρος καθήμενων καλλιτεχνικού εστιατορίου"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Σιάτλ, Ηνωμένες Πολιτείες"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Πιάτο με γαρίδες"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Νάσβιλ, Ηνωμένες Πολιτείες"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Είσοδος φούρνου"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Ατλάντα, Ηνωμένες Πολιτείες"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Πιάτο με καραβίδες"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Μαδρίτη, Ισπανία"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Πάγκος καφετέριας με αρτοσκευάσματα"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Αναζήτηση εστιατορίων κατά προορισμό"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("ΠΤΗΣΗ"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Άσπεν, Ηνωμένες Πολιτείες"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Σαλέ σε χιονισμένο τοπίο με αειθαλή δέντρα"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Μπιγκ Σερ, Ηνωμένες Πολιτείες"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Κάιρο, Αίγυπτος"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Οι πύργοι του τεμένους Αλ-Αζχάρ στο ηλιοβασίλεμα"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Λισαβόνα, Πορτογαλία"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Φάρος από τούβλα στη θάλασσα"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Νάπα, Ηνωμένες Πολιτείες"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Λιμνούλα με φοινικόδεντρα"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Μπαλί, Ινδονησία"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Πισίνα δίπλα στη θάλασσα με φοινικόδεντρα"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Μια σκηνή σε ένα λιβάδι"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Κοιλάδα Κούμπου, Νεπάλ"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Σημαίες προσευχής μπροστά από ένα χιονισμένο βουνό"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("Μάτσου Πίτσου, Περού"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Φρούριο Μάτσου Πίτσου"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Μαλέ, Μαλδίβες"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Μπανγκαλόου πάνω στο νερό"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Βιτζνάου, Ελβετία"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ξενοδοχείο δίπλα στη λίμνη μπροστά από βουνά"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Πόλη του Μεξικού, Μεξικό"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Αεροφωτογραφία του Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Όρος Ράσμορ, Ηνωμένες Πολιτείες"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Όρος Ράσμορ"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Σιγκαπούρη"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Αβάνα, Κούβα"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Άνδρας που ακουμπάει σε αυτοκίνητο αντίκα"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Αναζητήστε πτήσεις κατά προορισμό"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Επιλογή ημερομηνίας"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Επιλογή ημερομηνιών"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Επιλογή προορισμού"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Εστιατόρια"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Επιλογή τοποθεσίας"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Επιλογή προέλευσης"),
        "craneFormTime": MessageLookupByLibrary.simpleMessage("Επιλογή ώρας"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Ταξιδιώτες"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("ΥΠΝΟΣ"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Μαλέ, Μαλδίβες"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Μπανγκαλόου πάνω στο νερό"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Άσπεν, Ηνωμένες Πολιτείες"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Κάιρο, Αίγυπτος"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Οι πύργοι του τεμένους Αλ-Αζχάρ στο ηλιοβασίλεμα"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Ταϊπέι, Ταϊβάν"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ουρανοξύστης Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Σαλέ σε χιονισμένο τοπίο με αειθαλή δέντρα"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Μάτσου Πίτσου, Περού"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Φρούριο Μάτσου Πίτσου"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Αβάνα, Κούβα"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Άνδρας που ακουμπάει σε αυτοκίνητο αντίκα"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Βιτζνάου, Ελβετία"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ξενοδοχείο δίπλα στη λίμνη μπροστά από βουνά"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Μπιγκ Σερ, Ηνωμένες Πολιτείες"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Μια σκηνή σε ένα λιβάδι"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Νάπα, Ηνωμένες Πολιτείες"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Λιμνούλα με φοινικόδεντρα"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Πόρτο, Πορτογαλία"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Πολύχρωμα διαμερίσματα στην πλατεία Riberia"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Τουλούμ, Μεξικό"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ερείπια των Μάγια σε έναν γκρεμό πάνω από μια παραλία"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Λισαβόνα, Πορτογαλία"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Φάρος από τούβλα στη θάλασσα"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Αναζήτηση ιδιοκτησιών κατά προορισμό"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Να επιτραπεί"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Μηλόπιτα"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Ακύρωση"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Τσίζκεϊκ"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Σοκολατένιο μπράουνι"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε το αγαπημένο σας επιδόρπιο από την παρακάτω λίστα. Η επιλογή σας θα χρησιμοποιηθεί για την προσαρμογή της προτεινόμενης λίστας εστιατορίων στην περιοχή σας."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Απόρριψη"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Δεν επιτρέπεται"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Επιλέξτε αγαπημένο επιδόρπιο"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Η τρέχουσα τοποθεσία σας θα εμφανίζεται στον χάρτη και θα χρησιμοποιείται για εμφάνιση οδηγιών, κοντινών αποτελεσμάτων αναζήτησης και εκτιμώμενη διάρκεια διαδρομής."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Να επιτρέπεται στους Χάρτες να έχουν πρόσβαση στην τοποθεσία σας, ενώ χρησιμοποιείτε την εφαρμογή;"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Τιραμισού"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Κουμπί"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Με φόντο"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Εμφάνιση ειδοποίησης"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Συζήτηση"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Αρχική σελίδα"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Προφίλ"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Ασβέστιο (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Θερμίδες"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Υδατάνθρακες (γρ.)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Επιδόρπιο (1 μερίδα)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Λίπος (γρ.)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Σίδηρος (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Πρωτεΐνη (γρ.)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Νάτριο (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Διατροφή"),
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
            MessageLookupByLibrary.simpleMessage("Ice Cream Sandwich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Jelly bean"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Lollipop"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Πατήστε για να επεξεργαστείτε πλακίδια και χρησιμοποιήστε κινήσεις για να μετακινηθείτε σε μια σκηνή. Σύρετε για μετακίνηση, πλησιάστε τα δάχτυλά σας για εστίαση, περιστρέψτε με δύο δάχτυλα. Πατήστε το κουμπί επαναφοράς για να επιστρέψετε στον αρχικό προσανατολισμό."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Επεξεργασία πλακιδίου"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Επαναφορά μετασχηματισμών"),
        "demo2dTransformationsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Μετακίνηση, εστίαση, περιστροφή"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("Μετασχηματισμοί 2D"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Τα τσιπ δράσης είναι ένα σύνολο επιλογών που ενεργοποιούν μια δράση που σχετίζεται με το αρχικό περιεχόμενο. Τα τσιπ δράσης θα πρέπει να εμφανίζονται δυναμικά και με βάση τα συμφραζόμενα στη διεπαφή χρήστη."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Τσιπ δράσης"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα παράθυρο διαλόγου ειδοποίησης που ενημερώνει τον χρήστη για καταστάσεις που απαιτούν επιβεβαίωση. Ένα παράθυρο διαλόγου ειδοποίησης με προαιρετικό τίτλο και προαιρετική λίστα ενεργειών."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ειδοποίηση"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ειδοποίηση με τίτλο"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα banner εμφανίζει ένα σημαντικό, συνοπτικό μήνυμα και παρέχει ενέργειες που μπορούν να εκτελέσουν οι χρήστες (ή δυνατότητα παράβλεψης του banner). Απαιτείται ενέργεια χρήστη για την παράβλεψή του."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Εμφάνιση banner μέσα σε μια λίστα"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Οι γραμμές εφαρμογών στο κάτω μέρος παρέχουν πρόσβαση σε ένα συρτάρι πλοήγησης στο κάτω μέρος και έως τέσσερις ενέργειες, συμπεριλαμβανομένου του κινούμενου κουμπιού ενεργειών."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Προβάλλει πλοήγηση και ενέργειες στο κάτω μέρος"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Γραμμή εφαρμογής στο κάτω μέρος"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Οι γραμμές πλοήγησης κάτω μέρους εμφανίζουν από τρεις έως πέντε προορισμούς στο κάτω μέρος μιας οθόνης. Κάθε προορισμός αντιπροσωπεύεται από ένα εικονίδιο και μια προαιρετική ετικέτα κειμένου. Με το πάτημα ενός εικονιδίου πλοήγησης στο κάτω μέρος, ο χρήστης μεταφέρεται στον προορισμό της πλοήγησης ανώτερου επιπέδου που συσχετίζεται με αυτό το εικονίδιο."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Μόνιμες ετικέτες"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Επιλεγμένη ετικέτα"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Πλοήγηση κάτω μέρους με προβολές σταδιακής μετάβασης"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Πλοήγηση κάτω μέρους"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Προσθήκη"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("ΕΜΦΑΝΙΣΗ ΦΥΛΛΟΥ ΚΑΤΩ ΜΕΡΟΥΣ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Κεφαλίδα"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα αποκλειστικό φύλλο στο κάτω μέρος αποτελεί εναλλακτική λύση συγκριτικά με ένα μενού ή παράθυρο διαλόγου και αποτρέπει την αλληλεπίδραση του χρήστη με την υπόλοιπη εφαρμογή."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Αποκλειστικό φύλλο κάτω μέρους"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ένα μόνιμο φύλλο στο κάτω μέρος εμφανίζει πληροφορίες που συμπληρώνουν το κύριο περιεχόμενο της εφαρμογής. Ένα μόνιμο φύλλο στο κάτω μέρος παραμένει ορατό ακόμη και όταν ο χρήστης αλληλεπιδρά με άλλα μέρη της εφαρμογής."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Μόνιμο φύλλο στο κάτω μέρος"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Μόνιμα και αποκλειστικά φύλλα κάτω μέρους"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Φύλλο κάτω μέρους"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Πεδία κειμένου"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Επίπεδο, ανασηκωμένο, με περίγραμμα και περισσότερα"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Κουμπιά"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Μια κάρτα είναι ένα φύλλο υλικού που χρησιμοποιείται για την αναπαράσταση ορισμένων σχετικών πληροφοριών, για παράδειγμα ενός άλμπουμ, μιας γεωγραφικής τοποθεσίας, ενός γεύματος, στοιχείων επικοινωνίας κ.λπ."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Κάρτες γραμμής βάσης με στρογγυλεμένες γωνίες"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Κάρτες"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Μενού λίστας ελέγχου"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Συμπαγή στοιχεία που αντιπροσωπεύουν μια εισαγωγή, ένα χαρακτηριστικό ή μια δράση"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Τσιπ"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Τα τσιπ επιλογής αντιπροσωπεύουν μία επιλογή από ένα σύνολο. Τα τσιπ επιλογής περιέχουν σχετικό περιγραφικό κείμενο ή κατηγορίες."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Τσιπ επιλογής"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Μια κυκλική ένδειξη προόδου του Material Design, που περιστρέφεται για να υποδείξει ότι η εφαρμογή είναι απασχολημένη."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Κυκλική ένδειξη προόδου"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Κωδικός επίδειξης"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Αντιγράφηκε στο πρόχειρο."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("ΑΝΤΙΓΡΑΦΗ ΟΛΩΝ"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Χρώματα και δείγματα χρώματος που αντιπροσωπεύουν τη χρωματική παλέτα του material design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Όλα τα προκαθορισμένα χρώματα"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Χρώματα"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Μενού περιβάλλοντος"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα φύλλο ενεργειών είναι ένα συγκεκριμένο στιλ ειδοποίησης που παρουσιάζει στον χρήστη ένα σύνολο δύο ή περισσότερων επιλογών που σχετίζονται με το τρέχον περιβάλλον. Ένα φύλλο ενεργειών μπορεί να έχει τίτλο, επιπλέον μήνυμα και μια λίστα ενεργειών."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Φύλλο ενεργειών"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ένδειξη δραστηριότητας σε στιλ iOS που περιστρέφεται δεξιόστροφα."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Ενδείξεις δραστηριότητας σε στιλ iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Ένδειξη δραστηριότητας"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Μόνο κουμπιά ειδοποίησης"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Ειδοποίηση με κουμπιά"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα παράθυρο διαλόγου ειδοποίησης που ενημερώνει τον χρήστη για καταστάσεις που απαιτούν επιβεβαίωση. Ένα παράθυρο διαλόγου ειδοποίησης με προαιρετικό τίτλο, προαιρετικό περιεχόμενο και προαιρετική λίστα ενεργειών. Ο τίτλος εμφανίζεται πάνω από το περιεχόμενο και οι ενέργειες εμφανίζονται κάτω από το περιεχόμενο."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Ειδοποίηση"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Ειδοποίηση με τίτλο"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Παράθυρα διαλόγου ειδοποίησης σε στιλ iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Ειδοποιήσεις"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα κουμπί σε στιλ iOS. Εμφανίζει κείμενο ή/και ένα εικονίδιο που εξαφανίζεται και εμφανίζεται σταδιακά με το άγγιγμα. Μπορεί να έχει φόντο προαιρετικά."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Κουμπιά σε στιλ iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Κουμπιά"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Μια γραμμή πλοήγησης τύπου iOS. Η γραμμή πλοήγησης είναι μια γραμμή εργαλείων που αποτελείται, κατά το ελάχιστο, από έναν τίτλο σελίδας στο μέσο της γραμμής εργαλείων."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage("Γραμμή πλοήγησης τύπου iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Γραμμή πλοήγησης"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Ημερομηνία"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Ημερομηνία και ώρα"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα γραφικό στοιχείο εργαλείου επιλογής τύπου iOS μπορεί να χρησιμοποιηθεί για την επιλογή ημερομηνίας, ώρας ή και ημερομηνίας και ώρας."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Εργαλεία επιλογής ημερομηνίας και ώρας τύπου iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Ώρα"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Χρονόμετρο"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Εργαλεία επιλογής"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Ένα γραφικό στοιχείο που χρησιμοποιεί το στοιχείο ελέγχου περιεχομένου τύπου iOS για ανανέωση με σύρσιμο προς τα κάτω."),
        "demoCupertinoPullToRefreshSubtitle": MessageLookupByLibrary.simpleMessage(
            "Στοιχείο ελέγχου τύπου iOS για ανανέωση με σύρσιμο προς τα κάτω"),
        "demoCupertinoPullToRefreshTitle": MessageLookupByLibrary.simpleMessage(
            "Σύρετε προς τα κάτω για ανανέωση"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Χρησιμοποιείται για τον ορισμό μιας επιλογής μέσα από έναν αριθμό επιλογών που αποκλείουν η μία την άλλη. Όταν ορίζεται μία επιλογή στον τμηματοποιημένο έλεγχο, καταργείται ο ορισμός των άλλων επιλογών στον τμηματοποιημένο έλεγχο."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Τμηματοποιημένος έλεγχος σε στιλ iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Τμηματοποιημένος έλεγχος"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα ρυθμιστικό που μπορεί να χρησιμοποιηθεί για την επιλογή ανάμεσα σε ένα συνεχές ή διακριτό σύνολο τιμών."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Ρυθμιστικό σε στιλ iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Ρυθμιστικό"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Ένας διακόπτης που χρησιμοποιείται για την εναλλαγή της κατάστασης ενεργοποίησης/απενεργοποίησης μιας μεμονωμένης ρύθμισης."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Διακόπτης σε στιλ iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Μια κάτω γραμμή πλοήγησης καρτελών σε στιλ iOS. Εμφανίζει πολλές καρτέλες, από τις οποίες μία είναι ενεργή, από προεπιλογή η πρώτη."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Κάτω γραμμή καρτελών σε στιλ iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Γραμμή καρτελών"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα πεδίο κειμένου που επιτρέπει στον χρήστη να εισάγει κείμενο, είτε με ένα πληκτρολόγιο υλικού είτε με ένα πληκτρολόγιο οθόνης."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("Πεδία κειμένου τύπου iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Πεδία κειμένου"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Τα ρυθμιστικά αντικατοπτρίζουν ένα εύρος τιμών κατά μήκος μιας γραμμής, μέσω της οποίας οι χρήστες μπορούν να επιλέξουν μία τιμή ή ένα εύρος τιμών. Μπορείτε να προσαρμόσετε ή να προσθέσετε θέμα στα ρυθμιστικά."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Προσαρμοσμένα ρυθμιστικά"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Οι πίνακες δεδομένων εμφανίζουν πληροφορίες σε μορφή πλέγματος με σειρές και στήλες. Οργανώνουν τις πληροφορίες με εποπτικό τρόπο, έτσι ώστε οι χρήστες να μπορούν να αναζητούν εύκολα μοτίβα και insight."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Σειρές και στήλες πληροφοριών"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Πίνακες δεδομένων"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Εμφανίζει ένα παράθυρο διαλόγου που περιέχει ένα εργαλείο επιλογής ημερομηνίας material design."),
        "demoDatePickerTitle": MessageLookupByLibrary.simpleMessage(
            "Εργαλείο επιλογής ημερομηνίας"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Απλό, ειδοποίηση και σε πλήρη οθόνη"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Παράθυρα διαλόγου"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Τεκμηρίωση API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Τα τσιπ φίλτρου χρησιμοποιούν ετικέτες ή περιγραφικές λέξεις για το φιλτράρισμα περιεχομένου."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Τσιπ φίλτρου"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα επίπεδο κουμπί εμφανίζει μια πιτσιλιά μελανιού κατά το πάτημα, χωρίς ανασήκωμα. Χρησιμοποιήστε επίπεδα κουμπιά στις γραμμές εργαλείων, σε παράθυρα διαλόγου και ενσωματωμένα με την αναπλήρωση."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Επίπεδο κουμπί"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα κινούμενο κουμπί ενεργειών είναι ένα κουμπί με κυκλικό εικονίδιο που κινείται πάνω από το περιεχόμενο για να προωθήσει μια κύρια ενέργεια στην εφαρμογή."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Κινούμενο κουμπί ενεργειών"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Η ιδιότητα fullscreenDialog καθορίζει εάν η εισερχόμενη σελίδα αποτελεί ένα παράθυρο διαλόγου σε πλήρη οθόνη."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Πλήρης οθόνη"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Πλήρης οθόνη"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Οι λίστες πλέγματος είναι κατάλληλες για παρουσίαση ομοιογενών δεδομένων, συνήθως εικόνων. Κάθε στοιχείο σε μια λίστα πλέγματος ονομάζεται πλακίδιο."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Με υποσέλιδο"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Με κεφαλίδα"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Μόνο εικόνα"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Διάταξη σειράς και στήλης"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Λίστες πλέγματος"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Πληροφορίες"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Τα τσιπ εισαγωγής αντιπροσωπεύουν ένα περίπλοκο τμήμα πληροφοριών, όπως μια οντότητα (άτομο, μέρος ή πράγμα) ή κείμενο συνομιλίας, σε συμπαγή μορφή."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Τσιπ εισαγωγής"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Δεν ήταν δυνατή η προβολή του URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Μια γραμμική ένδειξη προόδου του Material Design, η οποία είναι επίσης γνωστή ως γραμμή προόδου."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Γραμμική ένδειξη προόδου"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Μία γραμμή σταθερού ύψους που συνήθως περιέχει κείμενο καθώς και ένα εικονίδιο στην αρχή ή στο τέλος."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Δευτερεύον κείμενο"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Διατάξεις κυλιόμενων λιστών"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Λίστες"),
        "demoMenuADisabledMenuItem": MessageLookupByLibrary.simpleMessage(
            "Απενεργοποιημένο στοιχείο μενού"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Ένα στοιχείο με μενού λίστας ελέγχου"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Ένα στοιχείο με μενού περιβάλλοντος"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Ένα στοιχείο με μενού χωρισμένο σε ενότητες"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Ένα στοιχείο με απλό μενού"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Στοιχείο μενού περιβάλλοντος ένα"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Στοιχείο μενού περιβάλλοντος τρία"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα μενού παρουσιάζει μια λίστα επιλογών σε μια προσωρινή επιφάνεια. Εμφανίζονται όταν οι χρήστες αλληλεπιδρούν με ένα κουμπί, μια ενέργεια ή άλλο στοιχείο ελέγχου."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Τέσσερα"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Λήψη συνδέσμου"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Στοιχείο μενού ένα"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Στοιχείο μενού τρία"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Στοιχείο μενού δύο"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Ένα"),
        "demoMenuPreview":
            MessageLookupByLibrary.simpleMessage("Προεπισκόπηση"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Κατάργηση"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Κοινοποίηση"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Κουμπιά μενού και απλά μενού"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Τρία"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Μενού"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Δύο"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Μία γραμμή"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Πατήστε εδώ για να δείτε διαθέσιμες επιλογές για αυτήν την επίδειξη."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Επιλογές προβολής"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Επιλογές"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Τα κουμπιά με περίγραμμα γίνονται αδιαφανή και ανυψώνονται κατά το πάτημα. Συχνά συνδυάζονται με ανυψωμένα κουμπιά για να υποδείξουν μια εναλλακτική, δευτερεύουσα ενέργεια."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Κουμπί με περίγραμμα"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("ΕΜΦΑΝΙΣΗ ΕΡΓΑΛΕΙΟΥ ΕΠΙΛΟΓΗΣ"),
        "demoPickersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Επιλογή ημερομηνίας και ώρας"),
        "demoPickersTitle":
            MessageLookupByLibrary.simpleMessage("Εργαλεία επιλογής"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Γραμμική, κυκλική, απροσδιόριστη"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Ενδείξεις προόδου"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Τα ανυψωμένα κουμπιά προσθέτουν διάσταση στις κυρίως επίπεδες διατάξεις. Δίνουν έμφαση σε λειτουργίες σε γεμάτους ή μεγάλους χώρους."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ανασηκωμένο κουμπί"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Τα ρυθμιστικά αντικατοπτρίζουν ένα εύρος τιμών κατά μήκος μιας γραμμής. Διαθέτουν εικονίδια και στα δύο άκρα της γραμμής, τα οποία αντικατοπτρίζουν ένα εύρος τιμών. Είναι ιδανικά για προσαρμογή ρυθμίσεων, όπως η ένταση ήχου, η φωτεινότητα και η εφαρμογή φίλτρων εικόνας."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Ρυθμιστικά εύρους"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Μενού με ενότητες"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Τα πλαίσια ελέγχου επιτρέπουν στον χρήστη να επιλέξει πολλές επιλογές από ένα σύνολο. Μια τιμή ενός κανονικού πλαισίου ελέγχου είναι είτε true είτε false και η τιμή ενός πλαισίου ελέγχου τριπλής κατάστασης μπορεί, επίσης, να είναι null."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Πλαίσιο ελέγχου"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Τα κουμπιά επιλογής επιτρέπουν στον χρήστη να επιλέξει μια επιλογή από ένα σύνολο. Χρησιμοποιήστε τα κουμπιά επιλογής για αποκλειστική επιλογή, εάν πιστεύετε ότι ο χρήστης πρέπει να βλέπει όλες τις διαθέσιμες επιλογές δίπλα-δίπλα."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Ραδιόφωνο"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Πλαίσια ελέγχου, κουμπιά επιλογής και διακόπτες"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Οι διακόπτες ενεργοποίησης/απενεργοποίησης εναλλάσουν την κατάσταση μιας μεμονωμένης ρύθμισης. Η επιλογή που ελέγχει ο διακόπτης, καθώς και η κατάσταση στην οποία βρίσκεται, θα πρέπει να αποσαφηνίζεται από την αντίστοιχη ενσωματωμένη ετικέτα."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Εναλλαγή"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Στοιχεία ελέγχου επιλογής"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Ένα απλό παράθυρο διαλόγου που προσφέρει στον χρήστη τη δυνατότητα επιλογής μεταξύ διαφόρων επιλογών. Ένα απλό παράθυρο διαλόγου με προαιρετικό τίτλο που εμφανίζεται πάνω από τις επιλογές."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Απλό"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Απλό μενού"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Συνεχές"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Συνεχές ρυθμιστικό εύρους με προσαρμοσμένο θέμα"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Συνεχές με αριθμητική τιμή με δυνατότητα επεξεργασίας"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Τα ρυθμιστικά αντικατοπτρίζουν ένα εύρος τιμών κατά μήκος μιας γραμμής, μέσω της οποίας οι χρήστες μπορούν να επιλέξουν μία τιμή. Είναι ιδανικά για προσαρμογή ρυθμίσεων, όπως η ένταση ήχου, η φωτεινότητα και η εφαρμογή φίλτρων εικόνας."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Διακριτό"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Διακριτό ρυθμιστικό με προσαρμοσμένο θέμα"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Αριθμητική τιμή με δυνατότητα επεξεργασίας"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Γραφικά στοιχεία για επιλογή μιας τιμής μέσω σάρωσης"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Ρυθμιστικά"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Πατήσατε την ενέργεια της αναδυόμενης ειδοποίησης χωρίς δυνατότητα παράβλεψης."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ΕΝΕΡΓΕΙΑ"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "ΕΜΦΑΝΙΣΗ ΑΝΑΔΥΟΜΕΝΗΣ ΕΙΔΟΠΟΙΗΣΗΣ ΧΩΡΙΣ ΔΥΝΑΤΟΤΗΤΑ ΠΑΡΑΒΛΕΨΗΣ"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Οι αναδυόμενες ειδοποιήσεις χωρίς δυνατότητα παράβλεψης ενημερώνουν τους χρήστες σχετικά με μια διεργασία που εκτέλεσε ή πρόκειται να εκτελέσει μια εφαρμογή. Εμφανίζονται προσωρινά, στο κάτω μέρος της οθόνης. Δεν διακόπτουν την εμπειρία του χρήστη και δεν απαιτούν κάποια ενέργεια από τον χρήστη για να εξαφανιστούν."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Οι αναδυόμενες ειδοποιήσεις χωρίς δυνατότητα παράβλεψης εμφανίζουν μηνύματα στο κάτω μέρος της οθόνης."),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage(
            "Αυτή είναι μια αναδυόμενη ειδοποίηση χωρίς δυνατότητα παράβλεψης."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage(
            "Αναδυόμενες ειδοποιήσεις χωρίς δυνατότητα παράβλεψης"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Οι καρτέλες οργανώνουν το περιεχόμενο σε διαφορετικές οθόνες, σύνολα δεδομένων και άλλες αλληλεπιδράσεις."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Χωρίς κύλιση"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Κύλιση"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Καρτέλες με προβολές ανεξάρτητης κύλισης"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Καρτέλες"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Τα πεδία κειμένου επιτρέπουν στους χρήστες να εισάγουν κείμενο σε μια διεπαφή χρήστη. Συνήθως, εμφανίζονται σε φόρμες και παράθυρα διαλόγου."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage(
            "Διεύθυνση ηλεκτρονικού ταχυδρομείου"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "Καταχωρίστε έναν κωδικό πρόσβασης."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Εισαγάγετε έναν αριθμό τηλεφώνου ΗΠΑ."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Διορθώστε τα σφάλματα που έχουν επισημανθεί με κόκκινο χρώμα πριν την υποβολή."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Απόκρυψη κωδικού πρόσβασης"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Φροντίστε να είστε σύντομοι, αυτή είναι απλώς μια επίδειξη."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Βιογραφία"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Όνομα*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Το όνομα είναι υποχρεωτικό."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "Μέγιστος αριθμός οκτώ χαρακτήρων."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Εισαγάγετε μόνο αλφαβητικούς χαρακτήρες."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Κωδικός πρόσβασης*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Οι κωδικοί πρόσβασης δεν ταιριάζουν"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Αριθμός τηλεφώνου*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "Το * υποδεικνύει απαιτούμενο πεδίο"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Επαναπληκτρολόγηση κωδικού πρόσβασης*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Μισθός"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Εμφάνιση κωδικού πρόσβασης"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ΥΠΟΒΟΛΗ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Μονή γραμμή κειμένου και αριθμών με δυνατότητα επεξεργασίας"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Πείτε μας για τον εαυτό σας (π.χ., γράψτε με τι ασχολείστε ή ποια είναι τα χόμπι σας)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Πεδία κειμένου"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Πώς σας λένε;"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Πώς μπορούμε να επικοινωνήσουμε μαζί σας;"),
        "demoTextFieldYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Η διεύθυνση ηλεκτρονικού ταχυδρομείου σας"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Εμφανίζει ένα παράθυρο διαλόγου που περιέχει ένα εργαλείο επιλογής ώρας material design."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Εργαλείο επιλογής ώρας"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Μπορείτε να χρησιμοποιήσετε κουμπιά εναλλαγής για να ομαδοποιήσετε τις σχετικές επιλογές. Για να δοθεί έμφαση σε ομάδες σχετικών κουμπιών εναλλαγής, μια ομάδα θα πρέπει να μοιράζεται ένα κοινό κοντέινερ."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Κουμπιά εναλλαγής"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Οι επεξηγήσεις εργαλείου παρέχουν ετικέτες κειμένου που βοηθούν με την επεξήγηση της λειτουργίας ενός κουμπιού ή άλλης ενέργειας της διεπαφής χρήστη. Οι επεξηγήσεις εργαλείου προβάλουν ενημερωτικό κείμενο όταν οι χρήστες τοποθετούν τον δείκτη πάνω από ένα στοιχείο, εστιάζουν ή πατούν παρατεταμένα σε ένα στοιχείο."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Παρατεταμένο πάτημα ή τοποθέτηση του δείκτη για εμφάνιση της επεξήγησης εργαλείου."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Σύντομο μήνυμα που εμφανίζεται με παρατεταμένο πάτημα ή τοποθέτηση του δείκτη"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Επεξηγήσεις εργαλείου"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Δύο γραμμές"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Ορισμοί για διάφορα τυπογραφικά στιλ που συναντώνται στο material design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Όλα τα προκαθορισμένα στιλ κειμένου"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Τυπογραφία"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Προσθήκη λογαριασμού"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ΣΥΜΦΩΝΩ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ΑΚΥΡΩΣΗ"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("ΔΙΑΦΩΝΩ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ΑΠΟΡΡΙΨΗ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Απόρριψη πρόχειρου;"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Μια επίδειξη παραθύρου διαλόγου σε πλήρη οθόνη"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ΑΠΟΘΗΚΕΥΣΗ"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Παράθυρο διαλόγου σε πλήρη οθόνη"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Επιτρέψτε στην Google να διευκολύνει τις εφαρμογές να προσδιορίζουν την τοποθεσία σας. Αυτό συνεπάγεται την αποστολή ανώνυμων δεδομένων τοποθεσίας στην Google, ακόμη και όταν δεν εκτελούνται εφαρμογές."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Χρήση της υπηρεσίας τοποθεσίας της Google;"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Ρύθμιση λογαριασμού δημιουργίας αντιγράφων ασφαλείας"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("ΕΜΦΑΝΙΣΗ ΠΑΡΑΘΥΡΟΥ ΔΙΑΛΟΓΟΥ"),
        "dismiss": MessageLookupByLibrary.simpleMessage("ΠΑΡΑΒΛΕΨΗ"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Μια εφαρμογή ειδήσεων με έμφαση στο περιεχόμενο"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Η εκ των έσω μεταρρύθμιση του Πράσινου στρατού"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Περιορισμένα αποθέματα μελισσιών"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Οι σχεδιαστές χρησιμοποιούν την τεχνολογία για να δημιουργήσουν φουτουριστικά υφάσματα"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Η στράτευση των φεμινιστριών"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("Το μέλλον της βενζίνης"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "Η αθόρυβη, αλλά ισχυρή επανάσταση στην υγειονομική περίθαλψη"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Μετοχές σε τέλμα, στροφή στο συνάλλαγμα"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Ο διχασμός στη ζωή των Αμερικανών κατά τη διάρκεια του πολέμου"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Τελευταίες ενημερώσεις"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Επιχειρήσεις"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Πολιτισμός"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Εξώφυλλο"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Πολιτική"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Επιστήμη"),
        "fortnightlyMenuSports":
            MessageLookupByLibrary.simpleMessage("Αθλητικά"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Τεχνολογία"),
        "fortnightlyMenuTravel":
            MessageLookupByLibrary.simpleMessage("Ταξίδια"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("ΗΠΑ"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("Κόσμος"),
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
            MessageLookupByLibrary.simpleMessage("ΣΤΙΛ ΚΑΙ ΑΛΛΑ"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Κατηγορίες"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Συλλογή"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Παραλία"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Χυτήριο χαλκού"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Τσενάι"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Τσέτιναντ"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Ψαράς"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Αγορά λουλουδιών"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Προετοιμασία γεύματος"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Αγορά"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Αλυκή"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Σκούτερ"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Παραγωγός μεταξιού"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Ναός Thanjavur"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Οικονομίες αυτοκινήτου"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Τρεχούμενος"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Οικονομίες σπιτιού"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Διακοπές"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Κάτοχος λογαριασμού"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Απόδοση ετήσιου ποσοστού"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Τόκοι που πληρώθηκαν το προηγούμενο έτος"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Επιτόκιο"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Επιτόκιο τρέχοντος έτους"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Επόμενη δήλωση"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Σύνολο"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Λογαριασμοί"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Ειδοποιήσεις"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Οφειλόμενο ποσό"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Ποσό που καταβλήθηκε"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Συνολικό ποσό"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Λογαριασμοί"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Προθεσμία"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Ρουχισμός"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Καφετέριες"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Είδη παντοπωλείου"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Εστιατόρια"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Ποσό που απομένει"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Ποσό που χρησιμοποιείται"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Συνολικό κεφάλαιο"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Αριστερά"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Προϋπολογισμοί"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Μια εφαρμογή για προσωπικά οικονομικά"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("ΑΡΙΣΤΕΡΑ"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ΣΥΝΔΕΣΗ"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Σύνδεση"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Σύνδεση στην εφαρμογή Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Δεν έχετε λογαριασμό;"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Κωδικός πρόσβασης"),
        "rallyLoginRememberMe": MessageLookupByLibrary.simpleMessage(
            "Απομνημόνευση των στοιχείων μου"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("ΕΓΓΡΑΦΗ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Όνομα χρήστη"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ΠΡΟΒΟΛΗ ΟΛΩΝ"),
        "rallySeeAllAccounts": MessageLookupByLibrary.simpleMessage(
            "Εμφάνιση όλων των λογαριασμών"),
        "rallySeeAllBills": MessageLookupByLibrary.simpleMessage(
            "Εμφάνιση όλων των λογαριασμών"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage(
            "Εμφάνιση όλων των προϋπολογισμών"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Εύρεση ATM"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Βοήθεια"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Διαχείριση λογαριασμών"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Ειδοποιήσεις"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Ρυθμίσεις Paperless"),
        "rallySettingsPasscodeAndTouchId": MessageLookupByLibrary.simpleMessage(
            "Κωδικός πρόσβασης και Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Προσωπικά στοιχεία"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Αποσύνδεση"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Φορολογικά έγγραφα"),
        "rallyTitleAccounts":
            MessageLookupByLibrary.simpleMessage("ΛΟΓΑΡΙΑΣΜΟΙ"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("ΛΟΓΑΡΙΑΣΜΟΙ"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("ΠΡΟΥΠΟΛΟΓΙΣΜΟΙ"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("ΕΠΙΣΚΟΠΗΣΗ"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("ΡΥΘΜΙΣΕΙΣ"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Σχετικά με το Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Σχεδίαση από TOASTER στο Λονδίνο"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Κλείσιμο ρυθμίσεων"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Ρυθμίσεις"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Σκούρο"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Αποστολή σχολίων"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Φωτεινό"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Τοπικές ρυθμίσεις"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Μηχανική πλατφόρμας"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Αργή κίνηση"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Σύστημα"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Κατεύθυνση κειμένου"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Με βάση τις τοπικές ρυθμίσεις"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Κλιμάκωση κειμένου"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Τεράστιο"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Μεγάλο"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Κανονικό"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Μικρό"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Θέμα"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Ρυθμίσεις"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ΑΚΥΡΩΣΗ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("ΑΔΕΙΑΣΜΑ ΚΑΛΑΘΙΟΥ"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("ΚΑΛΑΘΙ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Αποστολή:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Υποσύνολο:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Φόρος:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("ΣΥΝΟΛΟ"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ΑΞΕΣΟΥΑΡ"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("ΟΛΑ"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ΡΟΥΧΙΣΜΟΣ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("ΣΠΙΤΙ"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Μια μοντέρνα εφαρμογή λιανικής πώλησης"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Κωδικός πρόσβασης"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Όνομα χρήστη"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ΑΠΟΣΥΝΔΕΣΗ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("ΜΕΝΟΥ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("ΕΠΟΜΕΝΟ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Κούπα Blue stone"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Κοντομάνικο Cerise"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Πετσέτες Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Μπλούζα Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Κλασικό στιλ γραφείου"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Πουλόβερ Clay"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Συρμάτινο ράφι από χαλκό"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Μπλούζα Fine lines"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Garden strand"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Τραγιάσκα Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Μπουφάν Gentry"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Σετ τριών επιχρυσωμένων τραπεζιών"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Κασκόλ Ginger"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Γκρι αμάνικη μπλούζα"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Σερβίτσιο τσαγιού Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Τραπέζι κουζίνας quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Παντελόνια Navy"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Τουνίκ με σχέδια"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Τραπέζι Quartet"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Δοχείο νερού βροχής"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Τουνίκ θαλάσσης"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Πουλόβερ Seabreeze"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Μπλούζα με άνοιγμα στους ώμους"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Τσάντα ώμου"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Σετ κεραμικών Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Γυαλιά ηλίου Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Σκουλαρίκια Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Γλάστρες παχύφυτων"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Φόρεμα παραλίας"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Μπλούζα Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Τσάντα Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Κάλτσες Varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter henley (λευκό)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Μπρελόκ Weave"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Λευκό ριγέ πουκάμισο"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Ζώνη Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Προσθήκη στο καλάθι"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Κλείσιμο καλαθιού"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Κλείσιμο μενού"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Άνοιγμα μενού"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Κατάργηση στοιχείου"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Αναζήτηση"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Ρυθμίσεις"),
        "signIn": MessageLookupByLibrary.simpleMessage("ΣΥΝΔΕΣΗ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Μια αποκριτική διάταξη για την εφαρμογή Starter"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Σώμα"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("ΚΟΥΜΠΙ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Επικεφαλίδα"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Υπότιτλος"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Τίτλος"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Εφαρμογή Starter"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Προσθήκη"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Αγαπημένο"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Αναζήτηση"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Κοινοποίηση")
      };
}
