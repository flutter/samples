// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a sr_Latn locale. All the
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
  String get localeName => 'sr_Latn';

  static m0(value) =>
      "Da biste videli izvorni kôd za ovu aplikaciju, posetite: ${value}.";

  static m1(title) => "Čuvar mesta za karticu ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Nema restorana', one: '1 restoran', few: '${totalRestaurants} restorana', other: '${totalRestaurants} restorana')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Direktan', one: '1 zaustavljanje', few: '${numberOfStops} zaustavljanja', other: '${numberOfStops} zaustavljanja')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nema dostupnih objekata', one: '1 dostupan objekat', few: '${totalProperties} dostupna objekta', other: '${totalProperties} dostupnih objekata')}";

  static m5(value) => "Stavka: ${value}";

  static m6(error) => "Kopiranje u privremenu memoriju nije uspelo: ${error}";

  static m7(value) => "Neprekidno: ${value}";

  static m8(value) => "Diskretno: ${value}";

  static m9(name, phoneNumber) => "${name} ima broj telefona ${phoneNumber}";

  static m10(value) => "Izabrali ste: „${value}“";

  static m11(accountName, accountNumber, amount) =>
      "${accountName} račun ${accountNumber} sa ${amount}.";

  static m12(amount) =>
      "Ovog meseca ste potrošili ${amount} na naknade za bankomate";

  static m13(percent) =>
      "Odlično! Na tekućem računu imate ${percent} više nego prošlog meseca.";

  static m14(percent) =>
      "Pažnja! Iskoristili ste ${percent} budžeta za kupovinu za ovaj mesec.";

  static m15(amount) => "Ove nedelje ste potrošili ${amount} na restorane.";

  static m16(count) =>
      "${Intl.plural(count, one: 'Povećajte mogući odbitak poreza! Dodelite kategorije 1 nedodeljenoj transakciji.', few: 'Povećajte mogući odbitak poreza! Dodelite kategorije za ${count} nedodeljene transakcije.', other: 'Povećajte mogući odbitak poreza! Dodelite kategorije za ${count} nedodeljenih transakcija.')}";

  static m17(billName, date, amount) =>
      "Račun (${billName}) od ${amount} dospeva ${date}.";

  static m18(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budžet za ${budgetName}, potrošeno je ${amountUsed} od ${amountTotal}, preostalo je ${amountLeft}";

  static m19(quantity) =>
      "${Intl.plural(quantity, zero: 'NEMA STAVKI', one: '1 STAVKA', few: '${quantity} STAVKE', other: '${quantity} STAVKI')}";

  static m20(price) => "x ${price}";

  static m21(quantity) => "Količina: ${quantity}";

  static m22(quantity) =>
      "${Intl.plural(quantity, zero: 'Korpa za kupovinu, nema artikala', one: 'Korpa za kupovinu, 1 artikal', few: 'Korpa za kupovinu, ${quantity} artikla', other: 'Korpa za kupovinu, ${quantity} artikala')}";

  static m23(product) => "Ukloni proizvod ${product}";

  static m24(value) => "Stavka: ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "GitHub skladište za Flutter uzorke"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Nazad u galeriju"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Nalog"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarm"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Kalendar"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Kamera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Komentari"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("DUGME"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Napravite"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Vožnja bicikla"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Lift"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Kamin"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Velika"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Srednja"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Mala"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Uključi svetla"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Mašina za pranje veša"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ŽUTOBRAON"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("PLAVA"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("PLAVOSIVA"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRAON"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("TIRKIZNA"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TAMNONARANDŽASTA"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("TAMNOLJUBIČASTA"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("ZELENO"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("SIVA"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("TAMNOPLAVA"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("SVETLOPLAVO"),
        "colorsLightGreen":
            MessageLookupByLibrary.simpleMessage("SVETLOZELENA"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("ZELENOŽUTA"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("NARANDŽASTA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROZE"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("LJUBIČASTA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("CRVENA"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TIRKIZNA"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("ŽUTA"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Personalizovana aplikacija za putovanja"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ISHRANA"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Napulj, Italija"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pica u peći na drva"),
        "craneEat1": MessageLookupByLibrary.simpleMessage(
            "Dalas, Sjedinjene Američke Države"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalija"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Žena drži veliki sendvič sa pastrmom"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Prazan bar sa visokim barskim stolicama"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Kordoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pljeskavica"),
        "craneEat3": MessageLookupByLibrary.simpleMessage(
            "Portland, Sjedinjene Američke Države"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Korejski takos"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Pariz, Francuska"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Čokoladni desert"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Seul, Južna Koreja"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Deo za sedenje u restoranu sa umetničkom atmosferom"),
        "craneEat6": MessageLookupByLibrary.simpleMessage(
            "Sijetl, Sjedinjene Američke Države"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Jelo sa škampima"),
        "craneEat7": MessageLookupByLibrary.simpleMessage(
            "Nešvil, Sjedinjene Američke Države"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ulaz u pekaru"),
        "craneEat8": MessageLookupByLibrary.simpleMessage(
            "Atlanta, Sjedinjene Američke Države"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tanjir sa rečnim rakovima"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Španija"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Šank u kafeu sa pecivom"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Istražujte restorane prema odredištu"),
        "craneFly": MessageLookupByLibrary.simpleMessage("LET"),
        "craneFly0": MessageLookupByLibrary.simpleMessage(
            "Aspen, Sjedinjene Američke Države"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Planinska koliba u snežnom pejzažu sa zimzelenim drvećem"),
        "craneFly1": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Sjedinjene Američke Države"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Kairo, Egipat"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minareti džamije Al-Adžar u sumrak"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalija"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Svetionik od cigala na moru"),
        "craneFly12": MessageLookupByLibrary.simpleMessage(
            "Napa, Sjedinjene Američke Države"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazen sa palmama"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonezija"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bazen na obali mora sa palmama"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Šator u polju"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Dolina Kumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Molitvene zastavice ispred snegom prekrivene planine"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Maču Pikču, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tvrđava u Maču Pikčuu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Male, Maldivi"),
        "craneFly4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bungalovi koji se nadvijaju nad vodom"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vicnau, Švajcarska"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel na obali jezera ispred planina"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Meksiko Siti, Meksiko"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Pogled na Palatu lepih umetnosti iz vazduha"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Maunt Rašmor, Sjedinjene Američke Države"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Maunt Rašmor"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Čovek se naslanja na stari plavi automobil"),
        "craneFlyStops": m3,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Istražujte letove prema destinaciji"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Izaberite datum"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Izaberite datume"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Odaberite odredište"),
        "craneFormDiners":
            MessageLookupByLibrary.simpleMessage("Ekspres restorani"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Izaberite lokaciju"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Odaberite mesto polaska"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Izaberite vreme"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Putnici"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("NOĆENJE"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Male, Maldivi"),
        "craneSleep0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bungalovi koji se nadvijaju nad vodom"),
        "craneSleep1": MessageLookupByLibrary.simpleMessage(
            "Aspen, Sjedinjene Američke Države"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Kairo, Egipat"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minareti džamije Al-Adžar u sumrak"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Tajpej, Tajvan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Neboder Tajpej 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Planinska koliba u snežnom pejzažu sa zimzelenim drvećem"),
        "craneSleep2": MessageLookupByLibrary.simpleMessage("Maču Pikču, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tvrđava u Maču Pikčuu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Kuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Čovek se naslanja na stari plavi automobil"),
        "craneSleep4":
            MessageLookupByLibrary.simpleMessage("Vicnau, Švajcarska"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel na obali jezera ispred planina"),
        "craneSleep5": MessageLookupByLibrary.simpleMessage(
            "Big Sur, Sjedinjene Američke Države"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Šator u polju"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage(
            "Napa, Sjedinjene Američke Države"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bazen sa palmama"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Porto, Portugalija"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Šareni stanovi na trgu Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Meksiko"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Majanske ruševine na litici iznad plaže"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisabon, Portugalija"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Svetionik od cigala na moru"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Istražujte smeštajne objekte prema odredištu"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Dozvoli"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Pita od jabuka"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Otkaži"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Čizkejk"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Čokoladni brauni"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Na listi u nastavku izaberite omiljeni tip poslastice. Vaš izbor će se koristiti za prilagođavanje liste predloga za restorane u vašoj oblasti."),
        "cupertinoAlertDiscard": MessageLookupByLibrary.simpleMessage("Odbaci"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Ne dozvoli"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Izaberite omiljenu poslasticu"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Aktuelna lokacija će se prikazivati na mapama i koristi se za putanje, rezultate pretrage za stvari u blizini i procenjeno trajanje putovanja."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Želite li da dozvolite da Mape pristupaju vašoj lokaciji dok koristite tu aplikaciju?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Dugme"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Sa pozadinom"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Prikaži obaveštenje"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Ćaskanje"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Početna"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Čipovi radnji su skup opcija koje pokreću radnju povezanu sa primarnim sadržajem. Čipovi radnji treba da se pojavljuju dinamički i kontekstualno u korisničkom interfejsu."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Čip radnji"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Dijalog obaveštenja informiše korisnike o situacijama koje zahtevaju njihovu pažnju. Dijalog obaveštenja ima opcionalni naslov i opcionalnu listu radnji."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Obaveštenje"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Obaveštenje sa naslovom"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Donja traka za navigaciju prikazuje tri do pet odredišta u dnu ekrana. Svako odredište predstavljaju ikona i opcionalna tekstualna oznaka. Kada korisnik dodirne donju ikonu za navigaciju, otvara se odredište za destinaciju najvišeg nivoa koje je povezano sa tom ikonom."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Trajne oznake"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Izabrana oznaka"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Donja navigacija koja se postepeno prikazuje i nestaje"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Donja navigacija"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Dodajte"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("PRIKAŽI DONJU TABELU"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Zaglavlje"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Modalna donja tabela je alternativa meniju ili dijalogu i onemogućava interakciju korisnika sa ostatkom aplikacije."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Modalna donja tabela"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Trajna donja tabela prikazuje informacije koje dopunjuju primarni sadržaj aplikacije. Trajna donja tabela ostaje vidljiva i pri interakciji korisnika sa drugim delovima aplikacije."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Trajna donja tabela"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Trajne i modalne donje tabele"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Donja tabela"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Ravna, izdignuta, oivičena i druga"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Dugmad"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kompaktni elementi koji predstavljaju unos, atribut ili radnju"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Čipovi"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Čipovi izbora predstavljaju pojedinačnu izabranu stavku iz skupa. Čipovi izbora sadrže povezani opisni tekst ili kategorije."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Čip izbora"),
        "demoCodeTooltip": MessageLookupByLibrary.simpleMessage("Uzorak koda"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Kopirano je u privremenu memoriju."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("KOPIRAJ SVE"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Boje i šema boja koje predstavljaju paletu boja materijalnog dizajna."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Sve unapred određene boje"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Boje"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Tabela radnji je poseban stil obaveštenja kojim se korisnicima nude dva ili više izbora u vezi sa aktuelnim kontekstom. Tabela radnji može da ima naslov, dodatnu poruku i listu radnji."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Tabela radnji"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Samo dugmad sa obaveštenjem"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Obaveštenje sa dugmadi"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Dijalog obaveštenja informiše korisnike o situacijama koje zahtevaju njihovu pažnju. Dijalog obaveštenja ima opcionalni naslov, opcionalni sadržaj i opcionalnu listu radnji. Naslov se prikazuje iznad sadržaja, a radnje se prikazuju ispod sadržaja."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Obaveštenje"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Obaveštenje sa naslovom"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dijalozi obaveštenja u iOS stilu"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Obaveštenja"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Dugme u iOS stilu. Sadrži tekst i/ili ikonu koji postepeno nestaju ili se prikazuju kada se dugme dodirne. Opcionalno može da ima pozadinu."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Dugmad u iOS stilu"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Dugmad"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Koristi se za biranje jedne od međusobno isključivih opcija. Kada je izabrana jedna opcija u segmentiranoj kontroli, opoziva se izbor ostalih opcija u toj segmentiranoj kontroli."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Segmentirana kontrola u iOS stilu"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmentirana kontrola"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Klizač može da se koristi da biste izabrali neprekidan ili diskretan skup vrednosti."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Klizač u iOS stilu"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Klizač"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Prekidač se koristi za uključivanje/isključivanje pojedinačnih podešavanja."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Prekidač u iOS stilu"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Donja traka sa karticama za navigaciju u iOS stilu. Prikazuje više kartica, pri čemu je samo jedna aktivna, a prema podrazumevanim podešavanjima to je prva kartica."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Donja traka sa karticama u iOS stilu"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Traka sa karticama"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jednostavan, sa obaveštenjem i preko celog ekrana"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Dijalozi"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Dokumentacija o API-jima"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Čipovi filtera koriste oznake ili opisne reči kao način da filtriraju sadržaj."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Čip filtera"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Kada se pritisne, ravno dugme prikazuje mrlju boje, ali se ne podiže. Ravnu dugmad koristite na trakama s alatkama, u dijalozima i u tekstu sa razmakom"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Ravno dugme"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Plutajuće dugme za radnju je kružna ikona dugmeta koje se prikazuje iznad sadržaja radi isticanja primarne radnje u aplikaciji."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Plutajuće dugme za radnju"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Proizvod fullscreenDialog određuje da li se sledeća stranica otvara u modalnom dijalogu preko celog ekrana"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ceo ekran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Ceo ekran"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informacije"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Čipovi unosa predstavljaju složene informacije, poput entiteta (osobe, mesta ili stvari) ili teksta iz govornog jezika, u kompaktnom obliku."),
        "demoInputChipTitle": MessageLookupByLibrary.simpleMessage("Čip unosa"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Prikazivanje URL-a nije uspelo:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Jedan red fiksne visine koji obično sadrži neki tekst, kao i ikonu na početku ili na kraju."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Sekundarni tekst"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Izgledi pokretnih lista"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Liste"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Jedan red"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Dodirnite ovde da biste videli dostupne opcije za ovu demonstraciju."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Pregledajte opcije"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opcije"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Oivičena dugmad postaje neprozirna i podiže se kada se pritisne. Obično se uparuje zajedno sa izdignutom dugmadi da bi označila alternativnu, sekundarnu radnju."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Oivičeno dugme"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Izdignuta dugmad pruža trodimenzionalni izgled na ravnom prikazu. Ona naglašava funkcije u širokim prostorima ili onima sa puno elemenata."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Izdignuto dugme"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Polja za potvrdu omogućavaju korisniku da izabere više opcija iz skupa. Vrednost uobičajenog polja za potvrdu je Tačno ili Netačno, a vrednost trostrukog polja za potvrdu može da bude i Ništa."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Polje za potvrdu"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Dugmad za izbor omogućavaju korisniku da izabere jednu opciju iz skupa. Koristite dugmad za izbor da biste omogućili ekskluzivni izbor ako smatrate da korisnik treba da vidi sve dostupne opcije jednu pored druge."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Dugme za izbor"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Polja za potvrdu, dugmad za izbor i prekidači"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Prekidači za uključivanje/isključivanje menjaju status pojedinačnih opcija podešavanja. Na osnovu odgovarajuće oznake u tekstu korisnicima treba da bude jasno koju opciju prekidač kontroliše i koji je njen status."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Prekidač"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Kontrole izbora"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Jednostavan dijalog korisniku nudi izbor između nekoliko opcija. Jednostavan dijalog ima opcionalni naslov koji se prikazuje iznad tih izbora."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Jednostavan"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Pritisnuli ste radnju trake za obaveštenja."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("RADNJA"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "PRIKAZUJ TRAKU ZA OBAVEŠTENJA"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Trake za obaveštenja obaveštavaju korisnike o procesu koji je neka aplikacija obavila ili će obaviti. Privremeno se prikazuju u dnu ekrana. Ne bi trebalo da ometaju korisnički doživljaj i ne zahtevaju aktivnost korisnika da bi nestale."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Trake za obaveštenja prikazuju poruke u dnu ekrana"),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage(
            "Ovo je traka za obaveštenja."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Trake za obaveštenja"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Kartice organizuju sadržaj na različitim ekranima, u skupovima podataka i drugim interakcijama."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Kartice sa prikazima koji mogu zasebno da se pomeraju"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Kartice"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Polja za unos teksta omogućavaju korisnicima da unesu tekst u korisnički interfejs. Obično se prikazuju u obliku obrazaca i dijaloga."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Imejl adresa"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Unesite lozinku."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – unesite broj telefona u Sjedinjenim Američkim Državama"),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Pre slanja ispravite greške označene crvenom bojom."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Sakrij lozinku"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Neka bude kratko, ovo je samo demonstracija."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biografija"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Ime*"),
        "demoTextFieldNameHasPhoneNumber": m9,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Ime je obavezno."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Ne više od 8 znakova."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Unosite samo abecedne znakove."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Lozinka*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("Lozinke se ne podudaraju"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Broj telefona*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* označava obavezno polje"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Ponovo unesite lozinku*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Plata"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Prikaži lozinku"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("POŠALJI"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Jedan red teksta i brojeva koji mogu da se izmene"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Recite nam nešto o sebi (npr. napišite čime se bavite ili koje hobije imate)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Polja za unos teksta"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Kako vas ljudi zovu?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Gde možemo da vas kontaktiramo?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Vaša imejl adresa"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Dugmad za uključivanje/isključivanje može da se koristi za grupisanje srodnih opcija. Da biste naglasili grupe srodne dugmadi za uključivanje/isključivanje, grupa treba da ima zajednički kontejner"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Dugmad za uključivanje/isključivanje"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dva reda"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definicije raznih tipografskih stilova u materijalnom dizajnu."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Svi unapred definisani stilovi teksta"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografija"),
        "dialogAddAccount": MessageLookupByLibrary.simpleMessage("Dodaj nalog"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("PRIHVATAM"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("OTKAŽI"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NE PRIHVATAM"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("ODBACI"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "Želite li da odbacite radnu verziju?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Demonstracija dijaloga na celom ekranu"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SAČUVAJ"),
        "dialogFullscreenTitle":
            MessageLookupByLibrary.simpleMessage("Dijalog preko celog ekrana"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Dozvolite da Google pomaže aplikacijama u određivanju lokacije. To znači da se Google-u šalju anonimni podaci o lokaciji, čak i kada nijedna aplikacija nije pokrenuta."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Želite li da koristite Google usluge lokacije?"),
        "dialogSelectedOption": m10,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Podesite rezervni nalog"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("PRIKAŽI DIJALOG"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("REFERENTNI STILOVI I MEDIJI"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Kategorije"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerija"),
        "rallyAccountAmount": m11,
        "rallyAccountDataCarSavings": MessageLookupByLibrary.simpleMessage(
            "Štednja za kupovinu automobila"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Tekući"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Štednja za kupovinu doma"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Odmor"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Vlasnik naloga"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Godišnji procenat dobiti"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Kamata plaćena prošle godine"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Kamatna stopa"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Kamata od početka godine do danas"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Sledeći izvod"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Ukupno"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Nalozi"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Obaveštenja"),
        "rallyAlertsMessageATMFees": m12,
        "rallyAlertsMessageCheckingAccount": m13,
        "rallyAlertsMessageHeadsUpShopping": m14,
        "rallyAlertsMessageSpentOnRestaurants": m15,
        "rallyAlertsMessageUnassignedTransactions": m16,
        "rallyBillAmount": m17,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Obračuni"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Dospeva na naplatu"),
        "rallyBudgetAmount": m18,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Odeća"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Kafići"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Bakalnice"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restorani"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Preostaje"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budžeti"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Aplikacija za lične finansije"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("PREOSTAJE"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("PRIJAVI ME"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Prijavi me"),
        "rallyLoginLoginToRally": MessageLookupByLibrary.simpleMessage(
            "Prijavite se u aplikaciju Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Nemate nalog?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Lozinka"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Zapamti me"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("REGISTRUJ ME"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Korisničko ime"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("PRIKAŽI SVE"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Prikaži sve račune"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Prikaži sve račune"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Prikaži sve budžete"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Pronađite bankomate"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Pomoć"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Upravljajte nalozima"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Obaveštenja"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Podešavanja bez papira"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Šifra i ID za dodir"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Lični podaci"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Odjavite se"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Poreski dokumenti"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("NALOZI"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("OBRAČUNI"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDŽETI"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("PREGLED"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("PODEŠAVANJA"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("O usluzi Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Dizajnirala agencija TOASTER iz Londona"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Zatvorite podešavanja"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Podešavanja"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Tamna"),
        "settingsFeedback": MessageLookupByLibrary.simpleMessage(
            "Pošalji povratne informacije"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Svetla"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Lokalitet"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mehanika platforme"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Usporeni snimak"),
        "settingsSystemDefault": MessageLookupByLibrary.simpleMessage("Sistem"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Smer teksta"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Sleva nadesno"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Na osnovu lokaliteta"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Zdesna nalevo"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Promena veličine teksta"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Ogroman"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Veliki"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Uobičajen"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Mali"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Podešavanja"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("OTKAŽI"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("OBRIŠI SVE IZ KORPE"),
        "shrineCartItemCount": m19,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("KORPA"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Isporuka:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Međuzbir:"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Porez:"),
        "shrineCartTotalCaption":
            MessageLookupByLibrary.simpleMessage("UKUPNO"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("DODACI"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("SVE"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ODEĆA"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("KUĆA"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Moderna aplikacija za maloprodaju"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Lozinka"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Korisničko ime"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("ODJAVI ME"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENI"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("DALJE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Plava kamena šolja"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Tamnoružičasta majica sa talasastim rubom"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Platnene salvete"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Platnena majica"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Klasična bela košulja"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Džemper boje gline"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Bakarna vešalica"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Majica sa tankim crtama"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Baštenski konopac"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Kačket"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Gentry jakna"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Trio pozlaćenih stočića"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Crveni šal"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Siva majica bez rukava"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Čajni set Hurrahs"),
        "shrineProductKitchenQuattro": MessageLookupByLibrary.simpleMessage(
            "Kuhinjski set iz četiri dela"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Tamnoplave pantalone"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tunika boje gipsa"),
        "shrineProductPrice": m20,
        "shrineProductQuantity": m21,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Sto za četiri osobe"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Posuda za kišnicu"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ženska bluza Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Tamnoplava tunika"),
        "shrineProductSeabreezeSweater": MessageLookupByLibrary.simpleMessage(
            "Džemper sa šablonom morskih talasa"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Majica sa zavrnutim rukavima"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage(
            "Torba sa ručkom za nošenje na ramenu"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Keramički set Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Naočare za sunce Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Strut minđuše"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Saksije za sočnice"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Haljina za zaštitu od sunca"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Surferska majica"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Vrećasta torba"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Čarape sa prugama"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Majica sa izrezom u obliku slova v (bele boje)"),
        "shrineProductWeaveKeyring": MessageLookupByLibrary.simpleMessage(
            "Pleteni privezak za ključeve"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Bela košulja sa prugama"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Kaiš Whitney"),
        "shrineScreenReaderCart": m22,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Dodaj u korpu"),
        "shrineScreenReaderRemoveProductButton": m23,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Zatvorite korpu"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Zatvorite meni"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Otvorite meni"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Uklonite stavku"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Pretražite"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Podešavanja"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Izgled aplikacije za pokretanje koja reaguje"),
        "starterAppDrawerItem": m24,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Glavni tekst"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("DUGME"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Naslov"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Titl"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Naslov"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplikacija za pokretanje"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Dodajte"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Omiljeno"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Pretraga"),
        "starterAppTooltipShare": MessageLookupByLibrary.simpleMessage("Delite")
      };
}
