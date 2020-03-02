// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ca locale. All the
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
  String get localeName => 'ca';

  static m0(value) =>
      "Per consultar el codi font d\'aquesta aplicació, ves a ${value}.";

  static m1(title) => "Espai reservat per a la pestanya ${title}";

  static m2(destinationName) => "Explora ${destinationName}";

  static m3(destinationName) => "Comparteix ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Cap restaurant', one: '1 restaurant', other: '${totalRestaurants} restaurants')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Sense escales', one: '1 escala', other: '${numberOfStops} escales')}";

  static m7(hours) => "${Intl.plural(hours, one: '1 h', other: '${hours} h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 min', other: '${minutes} min')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Cap propietat disponible', one: '1 propietat disponible', other: '${totalProperties} propietats disponibles')}";

  static m10(value) => "${value} amb mel";

  static m11(value) => "${value} amb sucre";

  static m12(value) => "Article ${value}";

  static m13(error) => "No s\'ha pogut copiar al porta-retalls: ${error}";

  static m14(value) => "Continu: ${value}";

  static m15(value) => "Discret: ${value}";

  static m16(value) => "Marcat: ${value}";

  static m17(value) => "Seleccionat: ${value}";

  static m18(name, phoneNumber) =>
      "El número de telèfon de ${name} és ${phoneNumber}";

  static m19(value) => "Has seleccionat: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Import al compte ${accountName} amb el número ${accountNumber}: ${amount}.";

  static m21(amount) =>
      "Has gastat ${amount} en comissions de caixers automàtics aquest mes";

  static m22(percent) =>
      "Ben fet. El teu compte corrent és un ${percent} superior al mes passat.";

  static m23(percent) =>
      "Atenció! Has fet servir un ${percent} del teu pressupost per a compres d\'aquest mes.";

  static m24(amount) => "Has gastat ${amount} en restaurants aquesta setmana.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Augmenta la teva possible deducció fiscal. Assigna categories a 1 transacció sense assignar.', other: 'Augmenta la teva possible deducció fiscal. Assigna categories a ${count} transaccions sense assignar.')}";

  static m26(billName, date, amount) =>
      "Data de venciment de la factura ${billName} (${amount}): ${date}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Has gastat ${amountUsed} de ${amountTotal} del pressupost ${budgetName}; import restant: ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'CAP ARTICLE', one: '1 ARTICLE', other: '${quantity} ARTICLES')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Quantitat: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Carretó, cap article', one: 'Carretó, 1 article', other: 'Carretó, ${quantity} articles')}";

  static m32(product) => "Suprimeix ${product}";

  static m33(value) => "Article ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Repositori GitHub de mostres Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Torna a la galeria"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Icona inicial"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Diverses accions"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Restableix el bàner"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "La contrasenya s\'ha actualitzat al teu altre dispositiu. Torna a iniciar la sessió."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Retall"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Posició del botó d\'acció flotant"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Acoblat: al centre"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Acoblat: al final"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Flotant: al centre"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Flotant: al final"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Compte"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarma"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Calendari"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Càmera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Comentaris"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BOTÓ"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Crea"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Explora"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Es pot seleccionar (en mantenir premut)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Es pot tocar"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Número 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Filadors de seda"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Temples"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Les 10 ciutats de Tamil Nadu que has de visitar"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage(
                "Artesans del sud de l\'Índia"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Temple de Brihadisvara"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Ciclisme"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ascensor"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Llar de foc"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Gran"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Mitjana"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Petita"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Encén els llums"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Rentadora"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("AMBRE"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLAU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRIS BLAVÓS"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARRÓ"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CIAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("TARONJA INTENS"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("PORPRA INTENS"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERD"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRIS"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ANYIL"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("BLAU CLAR"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERD CLAR"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERD LLIMA"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("TARONJA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSA"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("PORPRA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("VERMELL"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("VERD BLAVÓS"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("GROC"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Una aplicació de viatges personalitzada"),
        "craneEat": MessageLookupByLibrary.simpleMessage("MENJAR"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Nàpols, Itàlia"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza al forn de llenya"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Estats Units"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Dona amb un entrepà de pastrami enorme"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar buit amb tamborets d\'estil americà"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburguesa"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Estats Units"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coreà"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("París, França"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Postres de xocolata"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seül, Corea del Sud"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Taules d\'un restaurant artístic"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Estats Units"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plat de gambes"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Estats Units"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrada d\'una fleca"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Estats Units"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plat de cranc de riu"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Espanya"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mostrador d\'una cafeteria amb pastes"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explora restaurants per destinació"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("VOLAR"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Estats Units"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Xalet en un paisatge nevat amb arbres de fulla perenne"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estats Units"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("El Caire, Egipte"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres de la mesquita d\'Al-Azhar durant la posta de sol"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Far de maons al mar"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Estats Units"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina amb palmeres"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonèsia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscina vora el mar amb palmeres"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda de campanya al camp"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Vall del Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Banderes de pregària amb una muntanya nevada en segon pla"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ciutadella de Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Male, Maldives"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalous flotants"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Suïssa"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel vora un llac i davant d\'unes muntanyes"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Ciutat de Mèxic, Mèxic"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vista aèria del Palau de Belles Arts"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mont Rushmore, Estats Units"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mont Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("L\'Havana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Home recolzat en un cotxe blau antic"),
        "craneFlyStops": m6,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Explora vols per destinació"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Selecciona la data"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Selecciona les dates"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Tria una destinació"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Comensals"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Selecciona la ubicació"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Tria l\'origen"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Selecciona l\'hora"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Viatgers"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("DORMIR"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Male, Maldives"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalous flotants"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Estats Units"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("El Caire, Egipte"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres de la mesquita d\'Al-Azhar durant la posta de sol"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Gratacel Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Xalet en un paisatge nevat amb arbres de fulla perenne"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ciutadella de Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("L\'Havana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Home recolzat en un cotxe blau antic"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Suïssa"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel vora un llac i davant d\'unes muntanyes"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estats Units"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda de campanya al camp"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Estats Units"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina amb palmeres"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Apartaments acolorits a la Praça da Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mèxic"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruïnes maies en un cingle a la platja"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Far de maons al mar"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explora propietats per destinació"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Permet"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Pastís de poma"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Cancel·la"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Pastís de formatge"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie de xocolata"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Selecciona el teu tipus de postres preferides de la llista que hi ha més avall. La teva selecció s\'utilitzarà per personalitzar la llista de suggeriments de restaurants de la teva zona."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Descarta"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("No permetis"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Selecciona les teves postres preferides"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "La teva ubicació actual es mostrarà al mapa i s\'utilitzarà per donar indicacions, oferir resultats propers de cerca i indicar la durada estimada dels trajectes."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Vols permetre que Maps accedeixi a la teva ubicació quan utilitzis l\'aplicació?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisú"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Botó"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Amb fons"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Mostra l\'alerta"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Xat"),
        "cupertinoTabBarHomeTab": MessageLookupByLibrary.simpleMessage("Inici"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Perfil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Calci (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Calories"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Carbohidrats (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Postres (1 ració)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Matèria grassa (g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Ferro (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Proteïnes (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodi (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Nutrició"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Pastís de poma"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Dònut"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Éclair"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Iogurt gelat"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Pa de gingebre"),
        "dataTableRowHoneycomb": MessageLookupByLibrary.simpleMessage("Bresca"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Sandvitx de gelat"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Mongetes de gelea"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Piruleta"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Toca per editar mosaics i fes servir gestos per moure\'t per l\'escena. Arrossega per obtenir una panoràmica, pinça per fer zoom i gira amb dos dits. Prem el botó de restabliment per tornar a l\'orientació inicial."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Edita el mosaic"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage(
                "Restableix les transformacions"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Panoràmica, zoom i rotació"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("Transformacions 2D"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les etiquetes d\'acció són un conjunt d\'opcions que activen una acció relacionada amb el contingut principal. Es mostren de manera dinàmica i contextual a les interfícies d\'usuari."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Etiqueta d\'acció"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un quadre de diàleg d\'alerta informa l\'usuari sobre situacions que requereixen la seva aprovació. Inclou un títol i una llista opcional d\'accions."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerta amb el títol"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Un bàner mostra un missatge breu important i proporciona als usuaris accions per dur a terme (o per ignorar el bàner). Per poder-lo ignorar, l\'usuari ha de fer una acció."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Es mostra un bàner en una llista"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Bàner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Les barres d\'aplicacions de la part inferior permeten accedir a un tauler de navegació de la part inferior i a un màxim de quatre accions, inclosa la del botó d\'acció flotant."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mostra la navegació i les accions a la part inferior"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Barra de l\'aplicació de la part inferior"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "A les barres de navegació inferior es mostren entre tres i cinc destinacions. Cada destinació es representa amb una icona i una etiqueta de text opcional. En tocar una icona de la navegació inferior, es redirigirà l\'usuari a la destinació de navegació de nivell superior associada amb la icona."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etiquetes persistents"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etiqueta seleccionada"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navegació inferior amb visualitzacions d\'esvaïment encreuat"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navegació inferior"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Afegeix"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("MOSTRA LA PÀGINA INFERIOR"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Capçalera"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Una pàgina modal inferior és una alternativa al menú o al diàleg i evita que l\'usuari interaccioni amb la resta de l\'aplicació."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Pàgina modal inferior"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Una pàgina persistent inferior mostra informació que complementa el contingut principal de l\'aplicació. A més, continua visible quan l\'usuari interacciona amb altres parts de l\'aplicació."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Pàgina persistent inferior"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pàgines modal i persistent inferiors"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Pàgina inferior"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Camps de text"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pla, amb relleu, perfilat i més"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Botons"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Una targeta és un full de Material Design que s\'utilitza per representar informació relacionada, com ara un àlbum, una ubicació geogràfica, un àpat, dades de contacte, etc."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Targetes de referència amb les cantonades arrodonides"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Targetes"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Menú amb llista de comprovació"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elements compactes que representen una entrada, un atribut o una acció"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Etiquetes"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les etiquetes de selecció representen una opció única d\'entre les d\'un conjunt i contenen text descriptiu relacionat o categories."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Etiqueta de selecció"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progrés circular de Material Design; gira per indicar que l\'aplicació està ocupada."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progrés circular"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Codi de demostració"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "S\'ha copiat al porta-retalls."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIA-HO TOT"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Constants de mostres i colors que representen la paleta de colors de Material Design."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Tots els colors predefinits"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Colors"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú contextual"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Un full d\'accions és un estil específic d\'alertes que ofereix a l\'usuari dues o més opcions relacionades amb el context actual. Pot incloure un títol, un missatge addicional i una llista d\'accions."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Full d\'accions"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Indicador d\'activitat d\'estil iOS que gira en sentit horari."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador d\'activitat d\'estil iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicador d\'activitat"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Només botons d\'alerta"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerta amb botons"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Un quadre de diàleg d\'alerta informa l\'usuari sobre situacions que requereixen la seva aprovació. Inclou un títol, una llista d\'accions i contingut opcionals. El títol es mostra a sobre del contingut i les accions, a sota."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerta amb el títol"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Quadres de diàleg d\'alerta d\'estil iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertes"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Botó d\'estil iOS. Té forma de text o d\'icona que s\'atenuen o apareixen en tocar-los. Opcionalment pot tenir fons."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Botons d\'estil iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Botons"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Una barra de navegació d\'estil iOS. La barra de navegació és una barra d\'eines que consisteix com a mínim en un títol de pàgina al mig de la barra."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Barra de navegació d\'estil iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de navegació"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Data"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Data i hora"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Un widget selector d\'estil iOS que es pot utilitzar per seleccionar dates, hores o totes dues coses."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Selectors de data i hora d\'estil iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Hora"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Temporitzador"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Selectors"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un widget que implementa el control de contingut amb la funció \"Llisca cap avall per actualitzar\" d\'estil iOS."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Control \"Llisca cap avall per actualitzar\" d\'estil iOS"),
        "demoCupertinoPullToRefreshTitle": MessageLookupByLibrary.simpleMessage(
            "Llisca cap avall per actualitzar"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "S\'utilitza per triar una opció d\'entre diverses que són excloents entre si. Quan se selecciona una opció al control segmentat, les altres deixen d\'estar disponibles."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Control segmentat d\'estil iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Control segmentat"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Pots utilitzar el control lliscant per fer seleccions en conjunts de valors tant discrets com continus."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "Control lliscant d\'estil iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Control lliscant"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Els interruptors s\'utilitzen per commutar una única opció de configuració a activada o desactivada."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Interruptor d\'estil iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Una barra de pestanyes de navegació d\'estil iOS situada a la part inferior. Mostra diverses pestanyes quan n\'hi ha una d\'activada, la primera de manera predeterminada."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barra de pestanyes d\'estil iOS a la part inferior"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de pestanyes"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Un camp de text permet que l\'usuari introdueixi text, tant des del teclat del maquinari com del teclat en pantalla."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle":
            MessageLookupByLibrary.simpleMessage("Camps de text d\'estil iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Camps de text"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Els controls lliscants mostren un interval de valors al llarg d\'una barra i els usuaris poden seleccionar-ne un o un interval. Pots personalitzar els controls lliscants i aplicar-hi temes."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controls lliscants personalitzats"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Les taules de dades mostren informació en un format de quadrícula estructurat en files i columnes. Organitzen la informació de manera que sigui fàcil d\'analitzar, perquè els usuaris puguin cercar patrons i estadístiques."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Files i columnes d\'informació"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Taules de dades"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Mostra un quadre de diàleg que conté un selector de data de Material Design."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selector de data"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, alerta i pantalla completa"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Quadres de diàleg"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentació de l\'API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les etiquetes de filtre utilitzen etiquetes o paraules descriptives per filtrar contingut."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Etiqueta de filtre"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un botó pla mostra un esquitx de tinta en prémer-lo, però no s\'eleva. Utilitza els botons plans en barres d\'eines, en quadres de diàleg i entre línies amb farciment"),
        "demoFlatButtonTitle": MessageLookupByLibrary.simpleMessage("Botó pla"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un botó d\'acció flotant és un botó d\'icona circular que passa per sobre de contingut per promoure una acció principal a l\'aplicació."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botó d\'acció flotant"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "La propietat fullscreenDialog indica si la pàgina entrant és un quadre de diàleg modal de pantalla completa"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Pantalla completa"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Pantalla completa"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Les llistes amb quadrícula són les més adequades per presentar dades homogènies, normalment imatges. Cada element d\'una llista amb quadrícula s\'anomena \"mosaic\"."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Amb peu de pàgina"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Amb capçalera"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Només imatge"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Disseny de fila i columna"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Llistes amb quadrícula"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informació"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les etiquetes d\'entrada representen una informació complexa, com ara una entitat (persona, lloc o cosa) o un text de conversa, en format compacte."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Etiqueta d\'entrada"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "No s\'ha pogut mostrar l\'URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progrés lineal de Material Design; també es coneix com a barra de progrés."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicador de progrés lineal"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Una fila d\'alçada fixa que normalment conté text i una icona al principi o al final."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Text secundari"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Desplaçar-se per dissenys de llistes"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Llistes"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Element de menú desactivat"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un element amb un menú amb llista de comprovació"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Un element amb un menú contextual"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un element amb un menú amb seccions"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Un element amb un menú senzill"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Element de menú contextual u"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Element de menú contextual tres"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Un menú mostra una llista d\'opcions sobre una superfície temporal. Es mostren quan els usuaris fan determinades accions o interaccionen amb un botó o un altre control."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Quatre"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Obtén l\'enllaç"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Element de menú u"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Element de menú tres"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Element de menú dos"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("U"),
        "demoMenuPreview":
            MessageLookupByLibrary.simpleMessage("Previsualitza"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Suprimeix"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Comparteix"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Botons de menú i menús senzills"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Tres"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menú"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Dos"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Una línia"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Toca aquí per veure les opcions disponibles per a aquesta demostració."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Mostra les opcions"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opcions"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Els botons perfilats es tornen opacs i s\'eleven en prémer-los. Normalment estan vinculats amb botons amb relleu per indicar una acció secundaria o alternativa."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botó perfilat"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("MOSTRA EL SELECTOR"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Selecció de data i hora"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Selectors"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lineals, circulars, indeterminats"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicadors de progrés"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Els botons amb relleu aporten dimensió als dissenys plans. Destacar les funcions en espais amplis o amb molts elements."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botó amb relleu"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Els controls lliscants mostren un interval de valors al llarg d\'una barra, que pot tenir icones als dos extrems. Són ideals per ajustar opcions de configuració com el volum o la brillantor, o bé per aplicar filtres d\'imatge."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controls lliscants d\'intervals"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú amb seccions"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Les caselles de selecció permeten que l\'usuari seleccioni diverses opcions d\'un conjunt. Normalment, el valor d\'una casella de selecció és vertader o fals; en cas d\'una casella de selecció amb tres estats, el tercer valor també pot ser nul."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Casella de selecció"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Els botons d\'opció permeten que l\'usuari seleccioni una opció d\'un conjunt. Fes-los servir si vols que l\'usuari pugui veure totes les opcions disponibles, però només en pugui triar una."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Opció"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Caselles de selecció, botons d\'opció i interruptors"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Els interruptors commuten l\'estat d\'una única opció de configuració. L\'etiqueta inserida corresponent ha de descriure l\'opció que controla l\'interruptor i l\'estat en què es troba."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Interruptor"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Controls de selecció"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un quadre de diàleg simple ofereix a l\'usuari diverses opcions per triar-ne una. Pot tenir un títol opcional que es mostra a sobre dels resultats."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Senzill"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú senzill"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Valors continus"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Control lliscant d\'interval amb valors continus i un tema personalitzat"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Valors continus amb un valor numèric editable"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Els controls lliscants mostren un interval de valors al llarg d\'una barra i els usuaris poden seleccionar-ne un. Són ideals per ajustar opcions de configuració com el volum o la brillantor, o bé per aplicar filtres d\'imatge."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Valors discrets"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Control lliscant de valors discrets amb un tema personalitzat"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Valor numèric editable"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets per seleccionar un valor fent lliscar el dit"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Controls lliscants"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Has premut l\'acció de la barra de notificacions."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ACCIÓ"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "MOSTRA UNA BARRA DE NOTIFICACIONS"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Les barres de notificacions informen els usuaris dels processos que han dut o duran a terme les aplicacions i es mostren temporalment a la part inferior de la pantalla. No interrompen l\'experiència d\'usuari ni cal cap acció perquè deixin de mostrar-se."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Les barres de notificacions mostren missatges a la part inferior de la pantalla"),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage(
            "Això és una barra de notificacions."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Barres de notificacions"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Les pestanyes organitzen el contingut en diferents pantalles, conjunts de dades i altres interaccions."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("No desplaçable"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Desplaçable"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pestanyes amb visualitzacions desplaçables de manera independent"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Pestanyes"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Els camps de text permeten als usuaris introduir text en una interfície d\'usuari. Normalment s\'inclouen en formularis i quadres de diàleg."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Adreça electrònica"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Introdueix una contrasenya."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-####: introdueix un número de telèfon dels EUA."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Resol els errors marcats en vermell abans d\'enviar el formulari."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Amaga la contrasenya"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Sigues breu, es tracta d\'una demostració."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biografia"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nom*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("El nom és obligatori."),
        "demoTextFieldNoMoreThan": MessageLookupByLibrary.simpleMessage(
            "No pot tenir més de 8 caràcters."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Introdueix només caràcters alfabètics."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Contrasenya*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Les contrasenyes no coincideixen"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telèfon*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* indica que el camp és obligatori"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Torna a escriure la contrasenya*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salari"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mostra la contrasenya"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ENVIA"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Línia de text i xifres editables"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Explica\'ns alguna cosa sobre tu (p. ex., escriu a què et dediques o quines són les teves aficions)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Camps de text"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Com et dius?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Com ens podem posar en contacte amb tu?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("La teva adreça electrònica"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Mostra un quadre de diàleg que conté un selector d\'hora de Material Design."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selector d\'hora"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Els botons de commutació poden utilitzar-se per agrupar opcions relacionades. Per destacar grups de botons de commutació relacionats, un grup ha de compartir un contenidor comú."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botons de commutació"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Les descripcions emergents proporcionen etiquetes de text que ajuden a explicar la funció d\'un botó o d\'altres accions de la interfície d\'usuari. Les descripcions emergents mostren text informatiu quan els usuaris passen el cursor per sobre d\'un element, el seleccionen amb el teclat o el mantenen premut."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Mantén premut o passa el cursor per sobre d\'un element perquè es mostri la descripció emergent."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Missatge breu que es mostra en mantenir premuda una opció o en passar el cursor per sobre"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Descripcions emergents"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dues línies"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definicions dels diversos estils tipogràfics trobats a Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Tots els estils de text predefinits"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografia"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Afegeix un compte"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACCEPTA"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCEL·LA"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NO ACCEPTIS"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("DESCARTA"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "Vols descartar l\'esborrany?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Demostració d\'un quadre de diàleg de pantalla completa"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("DESA"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Quadre de diàleg de pantalla completa"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Permet que Google pugui ajudar les aplicacions a determinar la ubicació, és a dir, que s\'enviïn dades d\'ubicació anònimes a Google fins i tot quan no s\'estigui executant cap aplicació."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Vols fer servir els serveis d\'ubicació de Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Defineix el compte de la còpia de seguretat"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MOSTRA EL QUADRE DE DIÀLEG"),
        "dismiss": MessageLookupByLibrary.simpleMessage("IGNORA"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Una aplicació de notícies centrada en el contingut"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "La reforma de l\'Exèrcit Verd des de dins"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Escassetat d’abelles de camp"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Uns dissenyadors creen teixits futuristes utilitzant tecnologia"),
        "fortnightlyHeadlineFeminists":
            MessageLookupByLibrary.simpleMessage("El feminisme pren partit"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("El futur de la gasolina"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "La revolució sanitària: silenciosa, però poderosa"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Les accions s\'estanquen i les mirades se centren en la moneda"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Vides separades als EUA durant la guerra"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Últimes novetats"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Negocis"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Cultura"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Portada"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Política"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Ciència"),
        "fortnightlyMenuSports":
            MessageLookupByLibrary.simpleMessage("Esports"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Tecnologia"),
        "fortnightlyMenuTravel":
            MessageLookupByLibrary.simpleMessage("Viatges"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("EUA"),
        "fortnightlyMenuWorld":
            MessageLookupByLibrary.simpleMessage("Internacional"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("ExèrcitVerd"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("RevolucióSanitària"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Reforma"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Accions"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("DissenyTecnològic"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ESTILS I ALTRES"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categories"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Platja"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Obres de bronze"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Madràs"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Pescador"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Mercat de flors"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Preparació del dinar"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Mercat"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Salina"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Escúters"),
        "placeSilkMaker": MessageLookupByLibrary.simpleMessage("Teler de seda"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Temple de Thanjavur"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Estalvis del cotxe"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Compte corrent"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Estalvis de la llar"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacances"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Propietari del compte"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Percentatge de rendiment anual"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Interessos pagats l\'any passat"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Taxa d\'interès"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Interessos fins a l\'actualitat"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Extracte següent"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Comptes"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alertes"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Import pendent"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Import pagat"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Import total"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Factures"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Venciment"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Roba"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafeteries"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Queviures"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurants"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Import restant"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Import utilitzat"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Límit total"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Restant"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Pressupostos"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Una aplicació de finances personal"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("RESTANT"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("INICIA LA SESSIÓ"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Inicia la sessió"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Inicia la sessió a Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("No tens cap compte?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Contrasenya"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Recorda\'m"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("REGISTRA\'T"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nom d\'usuari"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("MOSTRA-HO TOT"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Mostra tots els comptes"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Mostra totes les factures"),
        "rallySeeAllBudgets": MessageLookupByLibrary.simpleMessage(
            "Mostra tots els pressupostos"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Troba un caixer automàtic"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Ajuda"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gestiona els comptes"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notificacions"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Configuració del format digital"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Contrasenya i Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Informació personal"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Tanca la sessió"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documents fiscals"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("COMPTES"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FACTURES"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("PRESSUPOSTOS"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("INFORMACIÓ GENERAL"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("CONFIGURACIÓ"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Sobre Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Dissenyat per TOASTER a Londres"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Tanca la configuració"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Configuració"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Fosc"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Envia suggeriments"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Clar"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Configuració regional"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mecànica de la plataforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Càmera lenta"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Direcció del text"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("Text d\'esquerra a dreta"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Segons la configuració regional"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("Dreta a esquerra"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Canvia la mida del text"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Molt gran"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Gran"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Petit"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Configuració"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("CANCEL·LA"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("BUIDA EL CARRETÓ"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("CARRETÓ"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Enviament:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Impostos:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESSORIS"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TOT"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ROBA"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("CASA"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Una aplicació de botigues de moda"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Contrasenya"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nom d\'usuari"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("TANCA LA SESSIÓ"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENÚ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SEGÜENT"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Tassa Blue Stone"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Samarreta de coll rodó color cirera"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Tovallons de cambrai"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Camisa cambrai"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Coll blanc clàssic"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Jersei color teula"),
        "shrineProductCopperWireRack": MessageLookupByLibrary.simpleMessage(
            "Cistella de reixeta de coure"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Samarreta a ratlles fines"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Collarets de granadura"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Barret Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Jaqueta noble"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Accessoris d\'escriptori daurats"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Bufanda ataronjada"),
        "shrineProductGreySlouchTank": MessageLookupByLibrary.simpleMessage(
            "Samarreta de tirants ampla grisa"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Joc per al te"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Estris de cuina"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantalons blau marí"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Túnica color guix"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Taula rodona"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Safata"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Camisa encreuada Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Samarreta llarga blau clar"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Jersei color blau clar"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Samarreta amb muscle descobert"),
        "shrineProductShrugBag": MessageLookupByLibrary.simpleMessage("Bossa"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Joc de ceràmica relaxant"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Ulleres de sol Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Arracades"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Testos per a suculentes"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Vestit estiuenc"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Samarreta surfera"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Motxilla Vagabond"),
        "shrineProductVarsitySocks": MessageLookupByLibrary.simpleMessage(
            "Mitjons d\'estil universitari"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Samarreta de ratlles (blanc)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Clauer teixit"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Camisa a ratlles blanca"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Cinturó Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Afegeix al carretó"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Tanca el carretó"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Tanca el menú"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Obre el menú"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Suprimeix l\'article"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Cerca"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Configuració"),
        "signIn": MessageLookupByLibrary.simpleMessage("INICIA LA SESSIÓ"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Un disseny d\'inici responsiu"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Cos"),
        "starterAppGenericButton": MessageLookupByLibrary.simpleMessage("BOTÓ"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Títol"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtítol"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Títol"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplicació d\'inici"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Afegeix"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Preferit"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Cerca"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Comparteix")
      };
}
