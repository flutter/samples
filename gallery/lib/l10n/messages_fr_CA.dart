// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr_CA locale. All the
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
  String get localeName => 'fr_CA';

  static m0(value) =>
      "Pour voir le code source de cette application, veuillez consulter ${value}.";

  static m1(title) => "Marque substitutive pour l\'onglet ${title}";

  static m2(destinationName) => "Explorer ${destinationName}";

  static m3(destinationName) => "Partager ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Aucun restaurant', one: '1 restaurant', other: '${totalRestaurants} restaurants')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Direct', one: '1 escale', other: '${numberOfStops} escales')}";

  static m7(hours) => "${Intl.plural(hours, one: '1 h', other: '${hours} h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 min', other: '${minutes} min')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Aucune propriété n\'est disponible', one: '1 propriété est disponible', other: '${totalProperties} propriétés sont disponibles')}";

  static m10(value) => "${value} avec du miel";

  static m11(value) => "${value} avec du sucre";

  static m12(value) => "Élément ${value}";

  static m13(error) => "Échec de la copie dans le presse-papiers : ${error}";

  static m14(value) => "Continues : ${value}";

  static m15(value) => "Discrètes : ${value}";

  static m16(value) => "Élément coché : ${value}";

  static m17(value) => "Élément sélectionné : ${value}";

  static m18(name, phoneNumber) =>
      "Le numéro de téléphone de ${name} est le ${phoneNumber}";

  static m19(value) => "Vous avez sélectionné : \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Compte ${accountName} ${accountNumber} dont le solde est de ${amount}.";

  static m21(amount) =>
      "Vos frais liés à l\'utilisation de guichets automatiques s\'élèvent à ${amount} ce mois-ci";

  static m22(percent) =>
      "Bon travail! Le montant dans votre compte chèque est ${percent} plus élevé que le mois dernier.";

  static m23(percent) =>
      "Avertissement : Vous avez utilisé ${percent} de votre budget de magasinage ce mois-ci.";

  static m24(amount) =>
      "Vos dépenses en restaurants s\'élèvent à ${amount} cette semaine.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Augmentez vos déductions fiscales potentielles! Attribuez des catégories à 1 transaction non attribuée.', other: 'Augmentez vos déductions fiscales potentielles! Attribuez des catégories à ${count} transactions non attribuées.')}";

  static m26(billName, date, amount) =>
      "La facture de ${billName} de ${amount} est due le ${date}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Dans le budget ${budgetName}, ${amountUsed} a été utilisé sur ${amountTotal} (il reste ${amountLeft})";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'AUCUN ÉLÉMENT', one: '1 ÉLÉMENT', other: '${quantity} ÉLÉMENTS')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Quantité : ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Panier, aucun élément', one: 'Panier, 1 élément', other: 'Panier, ${quantity} éléments')}";

  static m32(product) => "Supprimer ${product}";

  static m33(value) => "Élément ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Dépôt GitHub avec des exemples Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Retour à la galerie"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Icône précédant le texte"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Plusieurs actions"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Réinitialiser la bannière"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Votre mot de passe a été mis à jour sur votre autre appareil. Veuillez vous reconnecter."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Encoche"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Position du bouton d\'action flottant"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Ancré au centre"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Ancré à l\'extrémité"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Flottant au centre"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Flottant à l\'extrémité"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Compte"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarme"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Agenda"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Appareil photo"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Commentaires"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BOUTON"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Créer"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Explorer"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Peut être sélectionné (avec un appui prolongé)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Peut être touché"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Numéro 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Fileurs de soie"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Temples"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Palmarès des 10 villes à visiter dans l\'État du Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Artisans du sud de l\'Inde"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Temple de Brihadisvara"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Vélo"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ascenseur"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Foyer"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grand"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Moyen"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Petit"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Allumer les lumières"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Laveuse"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("AMBRE"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLEU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRIS BLEU"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("BRUN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ORANGE FONCÉ"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("MAUVE FONCÉ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERT"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRIS"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("BLEU CLAIR"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERT CLAIR"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERT LIME"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANGE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSE"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("MAUVE"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROUGE"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("BLEU SARCELLE"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("JAUNE"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Une application de voyage personnalisée"),
        "craneEat": MessageLookupByLibrary.simpleMessage("MANGER"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Naples, Italie"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza dans un four à bois"),
        "craneEat1": MessageLookupByLibrary.simpleMessage("Dallas, États-Unis"),
        "craneEat10":
            MessageLookupByLibrary.simpleMessage("Lisbonne, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Femme tenant un gros sandwich au pastrami"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar vide avec tabourets de style salle à manger"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentine"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburger"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, États-Unis"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coréen"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, France"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Dessert au chocolat"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Séoul, Corée du Sud"),
        "craneEat5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Salle du restaurant Artsy"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, États-Unis"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plat de crevettes"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, États-Unis"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrée de la boulangerie"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, États-Unis"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plateau de langoustes"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Espagne"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Comptoir d\'un café garni de pâtisseries"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorez les restaurants par destination"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("VOLER"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, États-Unis"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet dans un paysage enneigé et entouré de conifères"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, États-Unis"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Le Caire, Égypte"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tours de la mosquée Al-Azhar au coucher du soleil"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisbonne, Portugal"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Phare en briques en haute mer"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, États-Unis"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscine avec des palmiers"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonésie"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscine face à la mer avec palmiers"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tente dans un champ"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Vallée du Khumbu, Népal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Drapeaux de prières devant une montagne enneigée"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Pérou"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Citadelle du Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalows sur l\'eau"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Suisse"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hôtel au bord du lac face aux montagnes"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Mexico, Mexique"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vue aérienne du Palais des beaux-arts de Mexico"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mount Rushmore, États-Unis"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mont Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapour"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("La Havane, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homme s\'appuyant sur une voiture bleue ancienne"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Explorez les vols par destination"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Sélectionner la date"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Sélectionner les dates"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Choisir une destination"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Personnes"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Sélectionner un lieu"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Choisir le lieu de départ"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Sélectionner l\'heure"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Voyageurs"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("SOMMEIL"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalows sur l\'eau"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, États-Unis"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("Le Caire, Égypte"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tours de la mosquée Al-Azhar au coucher du soleil"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taïwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Gratte-ciel Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet dans un paysage enneigé et entouré de conifères"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Pérou"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Citadelle du Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("La Havane, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homme s\'appuyant sur une voiture bleue ancienne"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Suisse"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hôtel au bord du lac face aux montagnes"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, États-Unis"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tente dans un champ"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, États-Unis"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscine avec des palmiers"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Appartements colorés sur la Place Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexique"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruines mayas sur une falaise surplombant une plage"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisbonne, Portugal"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Phare en briques en haute mer"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorez les propriétés par destination"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Autoriser"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Tarte aux pommes"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Gâteau au fromage"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie au chocolat"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner votre type de dessert favori dans la liste ci-dessous. Votre sélection servira à personnaliser la liste de suggestions de restaurants dans votre région."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Supprimer"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Ne pas autoriser"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Sélectionnez votre dessert favori"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Votre position actuelle sera affichée sur la carte et sera utilisée pour les itinéraires, les résultats de recherche à proximité et l\'estimation des durées de déplacement."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Permettre à « Maps » d\'accéder à votre position lorsque vous utilisez l\'application?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Bouton"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Avec arrière-plan"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Afficher l\'alerte"),
        "cupertinoTabBarChatTab":
            MessageLookupByLibrary.simpleMessage("Clavarder"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Accueil"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Profil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Calcium (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Calories"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Glucides (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Dessert (une portion)"),
        "dataTableColumnFat": MessageLookupByLibrary.simpleMessage("Gras (g)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("Fer (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Protéines (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodium (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Nutrition"),
        "dataTableRowApplePie": MessageLookupByLibrary.simpleMessage("Pie"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Donut"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Eclair"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Froyo"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Gingerbread"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Rayon de miel"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Ice Cream Sandwich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Jelly Bean"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Lollipop"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Touchez pour modifier des tuiles et utilisez des gestes pour vous déplacer dans la scène. Faites glisser un doigt pour faire un panoramique, pincez l\'écran pour zoomer et faites pivoter un élément avec deux doigts. Appuyez sur le bouton de réinitialisation pour retourner à l\'orientation de départ."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Modifier la tuile"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage(
                "Réinitialiser les transformations"),
        "demo2dTransformationsSubtitle":
            MessageLookupByLibrary.simpleMessage("Panoramique, zoom, rotation"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("Transformations 2D"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les jetons d\'action sont des ensembles d\'options qui déclenchent une action relative au contenu principal. Les jetons d\'action devraient s\'afficher de manière dynamique, en contexte, dans une IU."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Jeton d\'action"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un dialogue d\'alerte informe l\'utilisateur à propos de situations qui nécessitent qu\'on y porte attention. Un dialogue d\'alerte a un titre optionnel et une liste d\'actions optionnelle."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alerte"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerte avec titre"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Une bannière comporte un message court mais important, ainsi que des suggestions d\'actions pour les utilisateurs (ou une option permettant de fermer la bannière). L\'utilisateur doit agir pour que la bannière disparaisse."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Affichage d\'une bannière dans une liste"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Bannière"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Les barres d\'applications inférieures procurent l\'accès à un panneau de navigation inférieur et jusqu\'à quatre actions, y compris le bouton d\'action flottant."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Affiche la navigation et les actions dans le bas"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Barre d\'applications inférieure"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Les barres de navigation inférieures affichent trois à cinq destinations au bas de l\'écran. Chaque destination est représentée par une icône et une étiquette facultative. Lorsque l\'utilisateur touche l\'une de ces icônes, il est redirigé vers la destination de premier niveau associée à cette icône."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Étiquettes persistantes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Étiquette sélectionnée"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barre de navigation inférieure avec vues en fondu enchaîné"),
        "demoBottomNavigationTitle": MessageLookupByLibrary.simpleMessage(
            "Barre de navigation inférieure"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Ajouter"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "AFFICHER LA PAGE DE CONTENU DANS LE BAS DE L\'ÉCRAN"),
        "demoBottomSheetHeader": MessageLookupByLibrary.simpleMessage("Titre"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Une page de contenu flottante qui s\'affiche dans le bas de l\'écran offre une solution de rechange à un menu ou à une boîte de dialogue. Elle empêche l\'utilisateur d\'interagir avec le reste de l\'application."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Page de contenu flottante dans le bas de l\'écran"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Une page de contenu fixe dans le bas de l\'écran affiche de l\'information qui complète le contenu principal de l\'application. Elle reste visible même lorsque l\'utilisateur interagit avec d\'autres parties de l\'application."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Page de contenu fixe dans le bas de l\'écran"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pages de contenu flottantes et fixes dans le bas de l\'écran"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage(
            "Page de contenu en bas de l\'écran"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Champs de texte"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plat, surélevé, contour, etc."),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Boutons"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Une carte est un cadre où sont présentés des renseignements liés à une recherche, comme un album, un lieu, un plat, des coordonnées, etc."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Cartes de base avec coins arrondis"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Cartes"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu de liste de contrôle"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Éléments compacts qui représentent une entrée, un attribut ou une action"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Jetons"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les jetons de choix représentent un choix unique dans un ensemble. Ils contiennent du texte descriptif ou des catégories."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Jeton de choix"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicateur de progression de forme circulaire avec thème Material Design qui tourne pour indiquer que l\'application est occupée."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicateur de progression circulaire"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Code de démonstration"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Copié dans le presse-papiers."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("TOUT COPIER"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Constantes de couleur et d\'échantillons de couleur qui représentent la palette de couleurs de Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Toutes les couleurs prédéfinies"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Couleurs"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu contextuel"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Une feuille d\'action est un type d\'alerte précis qui présente à l\'utilisateur deux choix ou plus à propos de la situation actuelle. Une feuille d\'action peut comprendre un titre, un message supplémentaire et une liste d\'actions."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Feuille d\'action"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicateur d\'activité de style iOS qui tourne dans le sens des aiguilles d\'une montre."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicateur d\'activité de style iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicateur d\'activité"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Boutons d\'alerte seulement"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerte avec des boutons"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Un dialogue d\'alerte informe l\'utilisateur à propos de situations qui nécessitent qu\'on y porte attention. Un dialogue d\'alerte a un titre optionnel, du contenu optionnel et une liste d\'actions optionnelle. Le titre est affiché au-dessus du contenu et les actions sont affichées sous le contenu."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerte"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerte avec titre"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dialogues d\'alertes de style iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertes"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Un bouton de style iOS. Il accepte du texte et une icône qui disparaissent et apparaissent quand on touche au bouton. Peut avoir un arrière-plan (optionnel)."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Boutons de style iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Boutons"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Une barre de navigation de style iOS. Il s\'agit d\'une barre d\'outils au milieu de laquelle est indiqué au minimum le titre de la page consultée."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Barre de navigation de style iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Barre de navigation"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Date"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Date et heure"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Un widget de sélection de style iOS pouvant être utilisé pour sélectionner des dates, des heures ou les deux."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sélecteurs de date et d\'heure de style iOS"),
        "demoCupertinoPickerTime":
            MessageLookupByLibrary.simpleMessage("Heure"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Minuterie"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Sélecteurs"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un widget permettant d\'intégrer une commande de style iOS pour balayer l\'écran vers le bas afin d\'actualiser l\'écran."),
        "demoCupertinoPullToRefreshSubtitle": MessageLookupByLibrary.simpleMessage(
            "Commande de style iOS pour balayer l\'écran vers le bas afin d\'actualiser l\'écran"),
        "demoCupertinoPullToRefreshTitle": MessageLookupByLibrary.simpleMessage(
            "Balayez vers le bas pour actualiser"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Utilisé pour faire une sélection parmi un nombre d\'options mutuellement exclusives. Lorsqu\'une option dans le contrôle segmenté est sélectionné, les autres options du contrôle segmenté ne le sont plus."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Contrôle segmenté de style iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Contrôle segmenté"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez utiliser un curseur pour sélectionner un ensemble de valeurs discrètes ou continues."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Curseur de style iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Curseur"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Un commutateur permet d\'activer ou de désactiver un paramètre."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Commutateur de style iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Une barre d\'onglets de navigation dans le bas, style iOS Affiche plusieurs onglets avec un onglet actif, le premier onglet par défaut."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barre d\'onglets dans le bas, style iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Barre d\'onglets"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Un champ de texte permet à l\'utilisateur d\'y entrer du texte, à l\'aide d\'un clavier matériel ou d\'un clavier à l\'écran."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("NIP"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Champs de texte de style iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Champs de texte"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Les curseurs présentent une plage de valeurs le long d\'une barre et permettent aux utilisateurs de sélectionner une valeur ou une plage de valeurs. On peut ajouter un thème aux curseurs et les personnaliser."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Curseurs personnalisés"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Les tableaux de données présentent des renseignements sous forme de grilles composées de lignes et de colonnes. Ils permettent d\'organiser l\'information d\'une manière qui permet de la parcourir facilement et de cerner des tendances et des statistiques."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lignes et colonnes d\'information"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Tableaux de données"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Affiche une boîte de dialogue comportant un outil Material Design de sélection de la date."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Sélecteur de dates"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, alerte et plein écran"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Boîtes de dialogue"),
        "demoDocumentationTooltip": MessageLookupByLibrary.simpleMessage(
            "Documentation relative aux API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les jetons de filtre utilisent des balises ou des mots descriptifs comme méthode de filtrage du contenu."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Jeton de filtre"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un bouton plat affiche une éclaboussure d\'encre lors de la pression, mais ne se soulève pas. Utilisez les boutons plats dans les barres d\'outils, les boîtes de dialogue et sous forme de bouton aligné avec du remplissage"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton plat"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un bouton d\'action flottant est un bouton d\'icône circulaire qui pointe sur du contenu pour promouvoir une action principale dans l\'application."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton d\'action flottant"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "La propriété fullscreenDialog qui spécifie si la page entrante est une boîte de dialogue modale plein écran"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Plein écran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Plein écran"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Les listes sous forme de grille sont particulièrement adaptées à la présentation de données homogènes, telles que des images. Chaque élément d\'une liste sous forme de grille est appelé une tuile."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Avec pied de page"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Avec en-tête"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Images seulement"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Disposition en lignes et en colonnes"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Liste sous forme de grille"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Info"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les jetons d\'entrée représentent une donnée complexe, comme une entité (personne, lieu ou objet) ou le texte d\'une conversation, sous forme compacte."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Jeton d\'entrée"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'afficher l\'URL :"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicateur de progression de forme linéaire avec thème Material Design, aussi connu sous le nom de barre de progression."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicateur de progression linéaire"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Ligne unique à hauteur fixe qui contient généralement du texte ainsi qu\'une icône au début ou à la fin."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texte secondaire"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dispositions de liste défilante"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listes"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Option de menu désactivée"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un élément avec menu de liste de contrôle"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Un élément avec un menu contextuel"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un élément avec un menu à sections"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Un élément avec un menu simple"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Option de menu contextuel un"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Option de menu contextuel trois"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Un menu présente une liste d\'options de manière temporaire. Il s\'affiche lorsque les utilisateurs interagissent avec un bouton, une action ou un autre type de commande."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Quatre"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Obtenir le lien"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Option de menu un"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Option de menu trois"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Option de menu deux"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Un"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Aperçu"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Partager"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Boutons de menu menus simples"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Trois"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Deux"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Une ligne"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Touchez ici pour voir les options proposées pour cette démonstration."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Afficher les options"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Options"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Les boutons contour deviennent opaques et s\'élèvent lorsqu\'on appuie sur ceux-ci. Ils sont souvent utilisés en association avec des boutons surélevés pour indiquer une autre action, secondaire."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton contour"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("AFFICHER LE SÉLECTEUR"),
        "demoPickersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sélection de la date et de l\'heure"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Sélecteurs"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Linéaires, circulaires, indéterminés"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicateurs de progression"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Les boutons surélevés ajoutent une dimension aux mises en page plates. Ils font ressortir les fonctions dans les espaces occupés ou vastes."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton surélevé"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Les curseurs présentent une plage de valeurs le long d\'une barre. Ils peuvent être accompagnés d\'icônes aux deux extrémités, indiquant une plage de valeurs. Ils sont idéaux pour ajuster divers paramètres, comme le volume ou la luminosité, ou encore pour appliquer des filtres à des images."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Curseurs de valeurs"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu à sections"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Les cases à cocher permettent à l\'utilisateur de sélectionner de multiples options dans un ensemble. Une valeur normale d\'une case à cocher est vraie ou fausse, et la valeur d\'une case à cocher à trois états peut aussi être nulle."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Case à cocher"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Boutons radio qui permettent à l\'utilisateur de sélectionner une option à partir d\'un ensemble. Utilisez les boutons radio pour offrir une sélection exclusive, si vous croyez que l\'utilisateur a besoin de voir toutes les options proposées côte à côte."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Radio"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Cases à cocher, boutons radio et commutateurs"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Les commutateurs permettent de basculer l\'état d\'un réglage unique. L\'option que le commutateur détermine, ainsi que l\'état dans lequel il se trouve, doivent être clairement indiqués sur l\'étiquette correspondante."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Commutateur"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Commandes de sélection"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Une boîte de dialogue simple offre à un utilisateur le choix entre plusieurs options. Une boîte de dialogue simple a un titre optionnel affiché au-dessus des choix."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Simple"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu simple"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Continu"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Curseur à plage continue avec thème personnalisé"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Continu avec valeur numérique modifiable"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Les curseurs présentent une plage de valeurs le long d\'une barre et permettent aux utilisateurs de sélectionner la valeur de leur choix. Ils sont idéaux pour ajuster divers paramètres, comme le volume ou la luminosité, ou encore pour appliquer des filtres à des images."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Discret"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Curseur discret avec thème personnalisé"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Valeur numérique modifiable"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets permettant de sélectionner une valeur en glissant le doigt"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Curseurs"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Vous avez sélectionné l\'action d\'un casse-croûte."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ACTION"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("AFFICHER UN CASSE-CROÛTE"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Les casse-croûte informent les utilisateurs d\'un processus qu\'une application a effectué ou effectuera. Ils s\'affichent temporairement dans le bas de l\'écran. Ils ne devraient pas interrompre l\'expérience utilisateur et ils n\'exigent pas d\'entrée pour disparaître."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Les casse-croûte affichent des messages dans le bas de l\'écran"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Voici un casse-croûte."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Casse-croûte"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Les onglets permettent d\'organiser le contenu sur divers écrans, ensembles de données et d\'autres interactions."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Pas de défilement"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Défilement"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Onglets avec affichage à défilement indépendant"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Onglets"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Les champs de texte permettent aux utilisateurs d\'entrer du texte dans une interface utilisateur. Ils figurent généralement dans des formulaires et des boîtes de dialogue."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Courriel"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "Veuillez entrer un mot de passe."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "### ###-#### : entrez un numéro de téléphone en format nord-américain."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Veuillez corriger les erreurs en rouge avant de réessayer."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Masquer le mot de passe"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Soyez bref, il s\'agit juste d\'une démonstration."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Histoire de vie"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nom*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("Veuillez entrer un nom."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Maximum de huit caractères."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Veuillez n\'entrer que des caractères alphabétiques."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Les mots de passe ne correspondent pas"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Numéro de téléphone*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* indique un champ obligatoire"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Confirmez votre mot de passe*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salaire"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Afficher le mot de passe"),
        "demoTextFieldSubmit":
            MessageLookupByLibrary.simpleMessage("SOUMETTRE"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Une seule ligne de texte et de chiffres modifiables"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Parlez-nous de vous (par exemple, indiquez ce que vous faites ou quels sont vos loisirs)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Champs de texte"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "Comment les gens vous appellent-ils?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "À quel numéro pouvons-nous vous joindre?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Votre adresse de courriel"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Affiche une boîte de dialogue comportant un outil Material Design de sélection de l\'heure."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Sélecteur de l\'heure"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Les boutons Activer/désactiver peuvent servir à grouper des options connexes. Pour mettre l\'accent sur les groupes de boutons Activer/désactiver connexes, un groupe devrait partager un conteneur commun."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Boutons Activer/désactiver"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Les infobulles sont des libellés textuels qui expliquent la fonction d\'un bouton ou d\'une autre action d\'une interface utilisateur. Le texte informatif s\'affiche lorsque les utilisateurs passent leur souris, placent leur curseur ou appuient de manière prolongée sur un élément."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Faites un appui prolongé ou passez le curseur de la souris sur l\'élément pour afficher l\'infobulle."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Court message qui s\'affiche lors d\'un appui prolongé ou du passage de la souris sur un élément"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Infobulles"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Deux lignes"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Définition des différents styles typographiques de Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Tous les styles de texte prédéfinis"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Typographie"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Ajouter un compte"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACCEPTER"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("ANNULER"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("REFUSER"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("SUPPRIMER"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Supprimer le brouillon?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Une démonstration d\'un dialogue en plein écran"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ENREGISTRER"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Boîte de dialogue plein écran"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Permettre à Google d\'aider les applications à déterminer la position. Cela signifie envoyer des données de localisation anonymes à Google, même si aucune application n\'est en cours d\'exécution."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Utiliser le service de localisation Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Définir le compte de sauvegarde"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("AFFICHER LE DIALOGUE"),
        "dismiss": MessageLookupByLibrary.simpleMessage("IGNORER"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Une application centrée sur le contenu"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Réformer l\'armée verte de l\'intérieur"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Les abeilles désertent les terres agricoles"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Les concepteurs de mode s\'appuient sur les technologies pour créer les tissus de l\'avenir"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Les féministes contre la partisanerie"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("L\'avenir de l\'essence"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "La révolution discrète mais efficace du système de santé"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "Alors que la Bourse stagne, beaucoup d\'investisseurs se tournent vers l\'échange de devises"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Comment la guerre a séparé des vies d\'Américains"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Dernières mises à jour"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Affaires"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Culture"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Page couverture"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Politique"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Sciences"),
        "fortnightlyMenuSports": MessageLookupByLibrary.simpleMessage("Sports"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Technologies"),
        "fortnightlyMenuTravel":
            MessageLookupByLibrary.simpleMessage("Voyages"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("États-Unis"),
        "fortnightlyMenuWorld": MessageLookupByLibrary.simpleMessage("Monde"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("Arméeverte"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage("Révolutiondusystèmedesanté"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Réforme"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Cours boursiers"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("Conceptionstechniques"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES ET AUTRES"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Catégories"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galerie"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Plage"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Fonderie de bronze"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Pêcheur"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Marché aux fleurs"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Préparation du dîner"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Marché"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondichéry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Marais salant"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scouteurs"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Tisserand de soie"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Temple de Thanjavur"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings": MessageLookupByLibrary.simpleMessage(
            "Compte d\'épargne pour la voiture"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Chèque"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Compte épargne maison"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacances"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Propriétaire du compte"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Pourcentage annuel de rendement"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Intérêt payé l\'année dernière"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Taux d\'intérêt"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Cumul annuel des intérêts"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Prochain relevé"),
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
            MessageLookupByLibrary.simpleMessage("Montant dû"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Montant payé"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Montant total"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Factures"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("dû"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Vêtements"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafés"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Épicerie"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurants"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Montant restant"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Montant utilisé"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Limite de budget"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("restant"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budgets"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Une application pour les finances personnelles"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("RESTANT"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("CONNEXION"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Connexion"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Connexion à Rally"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage(
            "Vous ne possédez pas de compte?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Rester connecté"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("S\'INSCRIRE"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("TOUT AFFICHER"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Voir tous les comptes"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Voir toutes les factures"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Voir tous les budgets"),
        "rallySettingsFindAtms": MessageLookupByLibrary.simpleMessage(
            "Trouver des guichets automatiques"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Aide"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gérer les comptes"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Paramètres sans papier"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Mot de passe et Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Renseignements personnels"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Se déconnecter"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documents fiscaux"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("COMPTES"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FACTURES"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("BUDGETS"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("APERÇU"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("PARAMÈTRES"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "À propos de la galerie Flutter"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Créé par TOASTER à Londres"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Fermer les paramètres"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Paramètres"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Sombre"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Envoyer des commentaires"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Clair"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Paramètres régionaux"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mécanique des plateformes"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("Ralenti"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Système"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Orientation du texte"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("De gauche à droite"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Selon le lieu"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("De droite à gauche"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Mise à l\'échelle du texte"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Très grande"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Grande"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normale"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Petite"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Thème"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Paramètres"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("ANNULER"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("VIDER LE PANIER"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("PANIER"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Livraison :"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Sous-total :"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Taxes :"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESSOIRES"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TOUS"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("VÊTEMENTS"),
        "shrineCategoryNameHome":
            MessageLookupByLibrary.simpleMessage("MAISON"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Une application tendance de vente au détail"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nom d\'utilisateur"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("DÉCONNEXION"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SUIVANT"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Tasse bleu pierre"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("T-shirt couleur cerise"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Serviettes Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chemise chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Col blanc classique"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Chandail couleur argile"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Grille en cuivre"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("T-shirt à rayures fines"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Collier"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Casquette Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Veste aristo"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Trois accessoires de bureau dorés"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Foulard gingembre"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Débardeur gris"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Service à thé Hurrahs"),
        "shrineProductKitchenQuattro": MessageLookupByLibrary.simpleMessage(
            "Quatre accessoires de cuisine"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantalons bleu marine"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Tunique couleur plâtre"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Table de quatre"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Bac à eau de pluie"),
        "shrineProductRamonaCrossover": MessageLookupByLibrary.simpleMessage(
            "Mélange de différents styles Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Tunique de plage"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Chandail brise marine"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("T-shirt"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Sac Shrug"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Ensemble céramique apaisant"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Lunettes de soleil Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Boucles d\'oreilles Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Pots pour plantes grasses"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Robe d\'été"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("T-shirt d\'été"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Sac vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Chaussettes de sport"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (blanc)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Porte-clés tressé"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage(
                "Chemise blanche à fines rayures"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Ceinture Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Ajouter au panier"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Fermer le panier"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Fermer le menu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Ouvrir le menu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Supprimer l\'élément"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Rechercher"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Paramètres"),
        "signIn": MessageLookupByLibrary.simpleMessage("CONNEXION"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Une mise en page de base réactive"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody":
            MessageLookupByLibrary.simpleMessage("Corps du texte"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BOUTON"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Titre"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Sous-titre"),
        "starterAppGenericTitle": MessageLookupByLibrary.simpleMessage("Titre"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Application de base"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Ajouter"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favori"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Rechercher"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Partager")
      };
}
