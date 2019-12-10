// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pl locale. All the
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
  String get localeName => 'pl';

  static m0(value) =>
      "Aby zobaczyć kod źródłowy tej aplikacji, odwiedź ${value}.";

  static m1(title) => "Obiekt zastępczy karty ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Brak restauracji', one: '1 restauracja', few: '${totalRestaurants} restauracje', many: '${totalRestaurants} restauracji', other: '${totalRestaurants} restauracji')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Bez przesiadek', one: '1 przesiadka', few: '${numberOfStops} przesiadki', many: '${numberOfStops} przesiadek', other: '${numberOfStops} przesiadki')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Brak dostępnych miejsc zakwaterowania', one: '1 dostępne miejsce zakwaterowania', few: '${totalProperties} dostępne miejsca zakwaterowania', many: '${totalProperties} dostępnych miejsc zakwaterowania', other: '${totalProperties} dostępnego miejsca zakwaterowania')}";

  static m5(value) => "Element ${value}";

  static m6(error) => "Nie udało się skopiować do schowka: ${error}";

  static m7(name, phoneNumber) =>
      "${name} ma następujący numer telefonu: ${phoneNumber}";

  static m8(value) => "Wybrano: „${value}”";

  static m9(accountName, accountNumber, amount) =>
      "Nazwa konta: ${accountName}, nr konta ${accountNumber}, kwota ${amount}.";

  static m10(amount) =>
      "Opłaty pobrane za wypłaty w bankomatach w tym miesiącu wyniosły ${amount}";

  static m11(percent) =>
      "Dobra robota. Saldo na Twoim koncie rozliczeniowym jest o ${percent} wyższe niż w zeszłym miesiącu.";

  static m12(percent) =>
      "Uwaga – budżet zakupowy na ten miesiąc został już wykorzystany w ${percent}.";

  static m13(amount) =>
      "Kwota wydana w restauracjach w tym tygodniu to ${amount}.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Możesz zwiększyć potencjalną kwotę możliwą do odliczenia od podatku. Przydziel kategorie do 1 nieprzypisanej transakcji.', few: 'Możesz zwiększyć potencjalną kwotę możliwą do odliczenia od podatku. Przydziel kategorie do ${count} nieprzypisanych transakcji.', many: 'Możesz zwiększyć potencjalną kwotę możliwą do odliczenia od podatku. Przydziel kategorie do ${count} nieprzypisanych transakcji.', other: 'Możesz zwiększyć potencjalną kwotę możliwą do odliczenia od podatku. Przydziel kategorie do ${count} nieprzypisanej transakcji.')}";

  static m15(billName, date, amount) =>
      "${billName} ma termin: ${date}, kwota: ${amount}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budżet ${budgetName}: wykorzystano ${amountUsed} z ${amountTotal}, pozostało: ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'Brak elementów', one: '1 ELEMENT', few: '${quantity} ELEMENTY', many: '${quantity} ELEMENTÓW', other: '${quantity} ELEMENTU')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Ilość: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Koszyk, pusty', one: 'Koszyk, 1 produkt', few: 'Koszyk, ${quantity} produkty', many: 'Koszyk, ${quantity} produktów', other: 'Koszyk, ${quantity} produktu')}";

  static m21(product) => "Usuń ${product}";

  static m22(value) => "Element ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Repozytorium z przykładami Flutter w serwisie Github"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Konto"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarm"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendarz"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Aparat"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komentarze"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("PRZYCISK"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Utwórz"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Jazda na rowerze"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Winda"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kominek"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Duże"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Średnie"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Małe"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Włącz światła"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Pralka"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("BURSZTYNOWY"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("NIEBIESKI"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("NIEBIESKOSZARY"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRĄZOWY"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYJAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("GŁĘBOKI POMARAŃCZOWY"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("GŁĘBOKI FIOLETOWY"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ZIELONY"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("SZARY"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDYGO"),
        "colorsLightBlue":
            MessageLookupByLibrary.simpleMessage("JASNONIEBIESKI"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("JASNOZIELONY"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIMONKOWY"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("POMARAŃCZOWY"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("RÓŻOWY"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("FIOLETOWY"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("CZERWONY"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("MORSKI"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ŻÓŁTY"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Spersonalizowana aplikacja dla podróżujących"),
        "craneEat": MessageLookupByLibrary.simpleMessage("JEDZENIE"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Neapol, Włochy"),
        "craneEat0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pizza w piecu opalanym drewnem"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Stany Zjednoczone"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lizbona, Portugalia"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kobieta trzymająca dużą kanapkę z pastrami"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pusty bar ze stołkami barowymi"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentyna"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Burger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Stany Zjednoczone"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Koreańskie taco"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paryż, Francja"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Deser czekoladowy"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seul, Korea Południowa"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Miejsca do siedzenia w artystycznej restauracji"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Stany Zjednoczone"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Talerz pełen krewetek"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Nashville, Stany Zjednoczone"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Wejście do piekarni"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Stany Zjednoczone"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Talerz pełen raków"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madryt, Hiszpania"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kawiarniana lada z wypiekami"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Przeglądaj restauracje według celu podróży"),
        "craneFly": MessageLookupByLibrary.simpleMessage("LOTY"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Stany Zjednoczone"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Zimowa chatka wśród zielonych drzew"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Stany Zjednoczone"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kair, Egipt"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Wieże meczetu Al-Azhar w promieniach zachodzącego słońca"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lizbona, Portugalia"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ceglana latarnia na tle morza"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Stany Zjednoczone"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Basen z palmami"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonezja"),
        "craneFly13SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Nadmorski basen z palmami"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Namiot w polu"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Flagi modlitewne na tle zaśnieżonej góry"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cytadela Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Malediwy"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalowy na wodzie"),
        "craneFly5":
            MessageLookupByLibrary.simpleMessage("Vitznau, Szwajcaria"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel nad jeziorem z górami w tle"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Meksyk (miasto), Meksyk"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Palacio de Bellas Artes z lotu ptaka"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Mount Rushmore, Stany Zjednoczone"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Hawana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mężczyzna opierający się o zabytkowy niebieski samochód"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Przeglądaj loty według celu podróży"),
        "craneFormDate": MessageLookupByLibrary.simpleMessage("Wybierz datę"),
        "craneFormDates": MessageLookupByLibrary.simpleMessage("Wybierz daty"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Wybierz cel podróży"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Stołówki"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Wybierz lokalizację"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Wybierz miejsce wylotu"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Wybierz godzinę"),
        "craneFormTravelers":
            MessageLookupByLibrary.simpleMessage("Podróżujący"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("SEN"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Malediwy"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalowy na wodzie"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Stany Zjednoczone"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kair, Egipt"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Wieże meczetu Al-Azhar w promieniach zachodzącego słońca"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Tajpej, Tajwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Wieżowiec Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Zimowa chatka wśród zielonych drzew"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cytadela Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Hawana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mężczyzna opierający się o zabytkowy niebieski samochód"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vitznau, Szwajcaria"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel nad jeziorem z górami w tle"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Stany Zjednoczone"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Namiot w polu"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Stany Zjednoczone"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Basen z palmami"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugalia"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Kolorowe domy na placu Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksyk"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruiny budowli Majów na klifie przy plaży"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lizbona, Portugalia"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ceglana latarnia na tle morza"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Przeglądaj miejsca zakwaterowania według celu podróży"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Zezwól"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Szarlotka"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Anuluj"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Sernik"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie czekoladowe"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Wybierz z poniższej listy swój ulubiony rodzaj deseru. Na tej podstawie dostosujemy listę sugerowanych punktów gastronomicznych w Twojej okolicy."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Odrzuć"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Nie zezwalaj"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Wybierz ulubiony deser"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Twoja bieżąca lokalizacja będzie wyświetlana na mapie i używana do pokazywania trasy, wyników wyszukiwania w pobliżu oraz szacunkowych czasów podróży."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Zezwolić „Mapom” na dostęp do Twojej lokalizacji, gdy używasz aplikacji?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Przycisk"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Z tłem"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Pokaż alert"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Elementy działań to zestawy opcji, które wywołują określone akcje związane z treścią główną. Wyświetlanie tych elementów w interfejsie powinno następować dynamicznie i zależeć od kontekstu."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Ikona działania"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Okno alertu informuje użytkownika o sytuacjach wymagających potwierdzenia. Okno alertu ma opcjonalny tytuł i opcjonalną listę działań."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alert"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alert z tytułem"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Na paskach dolnej nawigacji u dołu ekranu może wyświetlać się od trzech do pięciu miejsc docelowych. Każde miejsce docelowe jest oznaczone ikoną i opcjonalną etykietą tekstową. Po kliknięciu ikony w dolnej nawigacji użytkownik jest przenoszony do związanego z tą ikoną miejsca docelowego w nawigacji głównego poziomu."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Trwałe etykiety"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Wybrana etykieta"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dolna nawigacja z zanikaniem"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Dolna nawigacja"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Dodaj"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("POKAŻ PLANSZĘ DOLNĄ"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Nagłówek"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modalna plansza dolna to alternatywa dla menu lub okna. Uniemożliwia użytkownikowi interakcję z resztą aplikacji."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modalna plansza dolna"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Trwała plansza dolna zawiera informacje, które dopełniają podstawową zawartość aplikacji. Plansza ta jest widoczna nawet wtedy, gdy użytkownik korzysta z innych elementów aplikacji."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Trwała plansza dolna"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Trwałe i modalne plansze dolne"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Plansza dolna"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Pola tekstowe"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Płaski, podniesiony, z konturem i inne"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Przyciski"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Drobne elementy reprezentujące atrybut, działanie lub tekst do wpisania"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Elementy"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Elementy wyboru reprezentują poszczególne opcje z grupy. Elementy te zawierają powiązany z nimi opis lub kategorię."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Element wyboru"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Przykładowy kod"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage("Skopiowano do schowka."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPIUJ WSZYSTKO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Stałe kolorów i próbek kolorów, które reprezentują paletę interfejsu Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Wszystkie predefiniowane kolory"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Kolory"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Arkusz działań to styl alertu, który prezentuje użytkownikowi co najmniej dwie opcje związane z bieżącym kontekstem. Arkusz działań może mieć tytuł, dodatkowy komunikat i listę działań."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Arkusz działań"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Tylko przyciski alertu"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alert z przyciskami"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Okno alertu informuje użytkownika o sytuacjach wymagających potwierdzenia. Okno alertu ma opcjonalny tytuł, opcjonalną treść i opcjonalną listę działań. Tytuł jest wyświetlany nad treścią, a działania pod treścią."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alert"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alert z tytułem"),
        "demoCupertinoAlertsSubtitle":
            MessageLookupByLibrary.simpleMessage("Okna alertów w stylu iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alerty"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Przycisk w stylu iOS. Przyjmuje tekst lub ikonę, które zanikają i powracają po naciśnięciu. Opcjonalnie może mieć tło."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Przyciski w stylu iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Przyciski"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Służy do wyboru opcji, które się wzajemnie wykluczają. Po wyborze jednej z opcji w sterowaniu segmentowym wybór pozostałych opcji jest anulowany."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Sterowanie segmentowe w stylu iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Sterowanie segmentowe"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Proste, alertu i pełnoekranowe"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Okna"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Dokumentacja interfejsu API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Ikony filtrów korzystają z tagów lub słów opisowych do filtrowania treści."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Ikona filtra"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Płaski przycisk wyświetla plamę po naciśnięciu, ale nie podnosi się. Płaskich przycisków należy używać na paskach narzędzi, w oknach dialogowych oraz w tekście z dopełnieniem."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Płaski przycisk"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Pływający przycisk polecenia to okrągły przycisk z ikoną wyświetlany nad treścią, by promować główne działanie w aplikacji."),
        "demoFloatingButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Pływający przycisk polecenia"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Właściwość fullscreenDialog określa, czy następna strona jest pełnoekranowym oknem modalnym"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Pełny ekran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Pełny ekran"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informacje"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Elementy wprowadzania tekstu reprezentują skrócony opis złożonych informacji (na przykład na temat osób, miejsc czy przedmiotów) oraz wyrażeń używanych podczas rozmów."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Element wprowadzania tekstu"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Nie udało się wyświetlić adresu URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Jeden wiersz o stałej wysokości, który zwykle zawiera tekst i ikonę na początku lub na końcu."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Tekst dodatkowy"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Przewijanie układów list"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listy"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Jeden wiersz"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Kliknij tutaj, by zobaczyć opcje dostępne w tej wersji demonstracyjnej."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Wyświetl opcje"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opcje"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Przyciski z konturem stają się nieprzezroczyste i podnoszą się po naciśnięciu. Często występują w parze z przyciskami podniesionymi, by wskazać działanie alternatywne."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Przycisk z konturem"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Przyciski podniesione dodają głębi układom, które są w znacznej mierze płaskie. Zwracają uwagę na funkcje w mocno wypełnionych lub dużych obszarach."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Uniesiony przycisk"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Pola wyboru pozwalają użytkownikowi na wybranie jednej lub kilku opcji z wielu dostępnych. Zazwyczaj pole wyboru ma wartość „prawda” i „fałsz”. Pole trójstanowe może mieć też wartość zerową (null)."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Pole wyboru"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Przyciski opcji pozwalają na wybranie jednej z kilku dostępnych opcji. Należy ich używać, by użytkownik wybrał tylko jedną opcję, ale mógł zobaczyć wszystkie pozostałe."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Przycisk opcji"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pola wyboru, przyciski opcji i przełączniki"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Przełączniki służą do włączania i wyłączania opcji w ustawieniach. Opcja związana z przełącznikiem oraz jej stan powinny być w jasny sposób opisane za pomocą etykiety tekstowej."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Przełącznik"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Elementy wyboru"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Proste okno dające użytkownikowi kilka opcji do wyboru. Proste okno z opcjonalnym tytułem wyświetlanym nad opcjami."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Proste"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Karty pozwalają na porządkowanie treści z wielu ekranów, ze zbiorów danych oraz interakcji."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Karty, które można przewijać niezależnie"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Karty"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Pola tekstowe w interfejsie pozwalają użytkownikom wpisywać tekst. Zazwyczaj używa się ich w formularzach i oknach."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Adres e-mail"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Wpisz hasło."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – wpisz numer telefonu w USA."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Zanim ponownie prześlesz formularz, popraw błędy oznaczone na czerwono."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ukryj hasło"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Nie rozpisuj się – to tylko wersja demonstracyjna."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Historia mojego życia"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Nazwa*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired": MessageLookupByLibrary.simpleMessage(
            "Imię i nazwisko są wymagane."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "Nie może mieć więcej niż osiem znaków."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage("Użyj tylko znaków alfabetu."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Hasło*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Hasła nie pasują do siebie"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Numer telefonu*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* pole wymagane"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Wpisz ponownie hasło*"),
        "demoTextFieldSalary":
            MessageLookupByLibrary.simpleMessage("Wynagrodzenie"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Pokaż hasło"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("PRZEŚLIJ"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pojedynczy, edytowalny wiersz tekstowo-liczbowy"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Opowiedz nam o sobie (np. napisz, czym się zajmujesz lub jakie masz hobby)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Pola tekstowe"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Jak się nazywasz?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Jak możemy się z Tobą skontaktować?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Twój adres e-mail"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Za pomocą przycisków przełączania można grupować powiązane opcje. Aby uwyraźnić grupę powiązanych przycisków przełączania, grupa powinna znajdować się we wspólnej sekcji."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Przyciski przełączania"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dwa wiersze"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definicje różnych stylów typograficznych dostępnych w Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Wszystkie predefiniowane style tekstu"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Typografia"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Dodaj konto"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ZGADZAM SIĘ"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ANULUJ"),
        "dialogDisagree":
            MessageLookupByLibrary.simpleMessage("NIE ZGADZAM SIĘ"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ODRZUĆ"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Odrzucić wersję roboczą?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Prezentacja okna pełnoekranowego"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("ZAPISZ"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Okno pełnoekranowe"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Google może ułatwiać aplikacjom określanie lokalizacji. Wymaga to wysyłania do Google anonimowych informacji o lokalizacji, nawet gdy nie są uruchomione żadne aplikacje."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Użyć usługi lokalizacyjnej Google?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Ustaw konto kopii zapasowej"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("WYŚWIETL OKNO"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "REFERENCYJNE STYLE I MULTIMEDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorie"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Oszczędności na samochód"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Rozliczeniowe"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Oszczędności na dom"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Urlop"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Właściciel konta"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Roczny zysk procentowo"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Odsetki wypłacone w ubiegłym roku"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Stopa procentowa"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Odsetki od początku roku"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Następne zestawienie"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Łącznie"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Konta"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alerty"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Rachunki"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Termin"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Odzież"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kawiarnie"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Produkty spożywcze"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restauracje"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Pozostało"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budżety"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Aplikacja do zarządzania finansami osobistymi"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("POZOSTAŁO"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ZALOGUJ SIĘ"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Zaloguj się"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Zaloguj się w Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Nie masz konta?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Hasło"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Zapamiętaj mnie"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("ZAREJESTRUJ SIĘ"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nazwa użytkownika"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("ZOBACZ WSZYSTKO"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Wyświetl wszystkie konta"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Wyświetl wszystkie rachunki"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Wyświetl wszystkie budżety"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Znajdź bankomaty"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Pomoc"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Zarządzaj kontami"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Powiadomienia"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Ustawienia rezygnacji z wersji papierowych"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Hasło i Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Dane osobowe"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Wyloguj się"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Dokumenty podatkowe"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("KONTA"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("RACHUNKI"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDŻETY"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("PRZEGLĄD"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("USTAWIENIA"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Flutter Gallery – informacje"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Zaprojektowane przez TOASTER w Londynie"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Zamknij ustawienia"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Ciemny"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Prześlij opinię"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Jasny"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Region"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mechanika platformy"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Zwolnione tempo"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Systemowy"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Kierunek tekstu"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Od lewej do prawej"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Na podstawie regionu"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Od prawej do lewej"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Skalowanie tekstu"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Wielki"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Duży"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normalny"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Mały"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Motyw"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ANULUJ"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("WYCZYŚĆ KOSZYK"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KOSZYK"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Dostawa:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Suma częściowa:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Podatek:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("ŁĄCZNIE"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("DODATKI"),
        "shrineCategoryNameAll":
            MessageLookupByLibrary.simpleMessage("WSZYSTKIE"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ODZIEŻ"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("AGD"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Aplikacja dla sklepów z modą"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Hasło"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nazwa użytkownika"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("WYLOGUJ SIĘ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("DALEJ"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Niebieski kubek z kamionki"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Koszulka Cerise z lamówkami"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Batystowe chusteczki"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Koszula batystowa"),
        "shrineProductClassicWhiteCollar": MessageLookupByLibrary.simpleMessage(
            "Klasyczna z białym kołnierzykiem"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Sweter dziergany"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Półka z drutu miedzianego"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Koszulka w prążki"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Ogród"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Kaszkiet"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Kurtka męska"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Potrójny stolik z pozłacanymi elementami"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Rudy szalik"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Szara bluzka na ramiączkach"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Zestaw do herbaty Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kuchenne quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Granatowe spodnie"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tunika"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Kwadratowy stół"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Pojemnik na deszczówkę"),
        "shrineProductRamonaCrossover": MessageLookupByLibrary.simpleMessage(
            "Torebka na ramię Ramona Crossover"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Tunika kąpielowa"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Sweter z oczkami"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Bluzka z odsłoniętymi ramionami"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("Torba"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Zestaw ceramiczny Soothe"),
        "shrineProductStellaSunglasses": MessageLookupByLibrary.simpleMessage(
            "Okulary przeciwsłoneczne Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Kolczyki"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Doniczki na sukulenty"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Sukienka plażowa"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Sportowa bluza do surfingu"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Worek podróżny"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Długie skarpety sportowe"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Koszulka Walter Henley (biała)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Pleciony brelok"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Biała koszula w paski"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Pasek Whitney"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Dodaj do koszyka"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Zamknij koszyk"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Zamknij menu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Otwórz menu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Usuń element"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Szukaj"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Ustawienia"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Elastyczny układ początkowy"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Treść"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("PRZYCISK"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Nagłówek"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Podtytuł"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Tytuł"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplikacja wyjściowa"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Dodaj"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Ulubione"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Szukaj"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Udostępnij")
      };
}
