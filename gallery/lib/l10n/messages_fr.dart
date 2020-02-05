// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a fr locale. All the
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
  String get localeName => 'fr';

  static m0(value) =>
      "Pour voir le code source de cette application, veuillez consulter ${value}.";

  static m1(title) => "Espace réservé pour l\'onglet \"${title}\"";

  static m2(destinationName) => "Explorer ${destinationName}";

  static m3(destinationName) => "Partager ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Aucun restaurant', one: '1 restaurant', other: '${totalRestaurants} restaurants')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Sans escale', one: '1 escale', other: '${numberOfStops} escales')}";

  static m7(hours) => "${Intl.plural(hours, one: '1h', other: '${hours}h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1m', other: '${minutes}m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Aucune location disponible', one: '1 location disponible', other: '${totalProperties} locations disponibles')}";

  static m10(value) => "${value} avec du miel";

  static m11(value) => "${value} avec du sucre";

  static m12(value) => "Article ${value}";

  static m13(error) => "Échec de la copie dans le presse-papiers : ${error}";

  static m14(value) => "Continu : ${value}";

  static m15(value) => "Discret : ${value}";

  static m16(value) => "Case cochée : ${value}";

  static m17(value) => "Sélection : ${value}";

  static m18(name, phoneNumber) =>
      "Le numéro de téléphone de ${name} est le ${phoneNumber}";

  static m19(value) => "Vous avez sélectionné : \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Compte ${accountName} ${accountNumber} avec ${amount}.";

  static m21(amount) =>
      "Vos frais liés à l\'utilisation de distributeurs de billets s\'élèvent à ${amount} ce mois-ci";

  static m22(percent) =>
      "Bravo ! Le montant sur votre compte courant est ${percent} plus élevé que le mois dernier.";

  static m23(percent) =>
      "Pour information, vous avez utilisé ${percent} de votre budget de courses ce mois-ci.";

  static m24(amount) =>
      "Vous avez dépensé ${amount} en restaurants cette semaine.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Bénéficiez d\'une déduction fiscale potentielle plus importante ! Attribuez une catégorie à 1 transaction non catégorisée.', other: 'Bénéficiez d\'une déduction fiscale potentielle plus importante ! Attribuez des catégories à ${count} transactions non catégorisées.')}";

  static m26(billName, date, amount) =>
      "Facture ${billName} de ${amount} à payer avant le ${date}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Budget ${budgetName} avec ${amountUsed} utilisés sur ${amountTotal}, ${amountLeft} restants";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'AUCUN ARTICLE', one: '1 ARTICLE', other: '${quantity} ARTICLES')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Quantité : ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Panier, aucun article', one: 'Panier, 1 article', other: 'Panier, ${quantity} articles')}";

  static m32(product) => "Supprimer ${product}";

  static m33(value) => "Article ${value}";

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
            MessageLookupByLibrary.simpleMessage("Actions multiples"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Réinitialiser la bannière"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Votre mot de passe a été mis à jour sur un autre appareil. Veuillez vous reconnecter."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Encoche"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Position du bouton d\'action flottant"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Épinglé - Milieu"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Épinglé - Extrémité"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Flottant - Milieu"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Flottant - Extrémité"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Compte"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarme"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Agenda"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Caméra"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Commentaires"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BOUTON"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Créer"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Explorer"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Accessible en appuyant de manière prolongée"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable": MessageLookupByLibrary.simpleMessage(
            "Accessible d\'une simple pression"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Numéro 10"),
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
                "10 villes à voir absolument au Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Artisans du sud de l\'Inde"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Temple de Brihadesvara"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Vélo"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ascenseur"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Cheminée"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grande"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Moyenne"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Petite"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Allumer les lumières"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Lave-linge"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("AMBRE"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("BLEU"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRIS-BLEU"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARRON"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CYAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("ORANGE FONCÉ"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("VIOLET FONCÉ"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERT"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRIS"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("INDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("BLEU CLAIR"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERT CLAIR"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERT CITRON"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("ORANGE"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSE"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("VIOLET"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROUGE"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TURQUOISE"),
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
            "Femme tenant un énorme sandwich au pastrami"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar inoccupé avec des tabourets de café-restaurant"),
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
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sièges dans un restaurant artistique"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, États-Unis"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plat de crevettes"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, États-Unis"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrée d\'une boulangerie"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, États-Unis"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plat d\'écrevisses"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Espagne"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Comptoir de café avec des viennoiseries"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorer les restaurants par destination"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("VOLER"),
        "craneFly0": MessageLookupByLibrary.simpleMessage("Aspen, États-Unis"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet dans un paysage enneigé avec des sapins"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, États-Unis"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Le Caire, Égypte"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minarets de la mosquée Al-Azhar au coucher du soleil"),
        "craneFly11":
            MessageLookupByLibrary.simpleMessage("Lisbonne, Portugal"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Phare en briques dans la mer"),
        "craneFly12": MessageLookupByLibrary.simpleMessage("Napa, États-Unis"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscine et palmiers"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonésie"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscine en bord de mer avec des palmiers"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tente dans un champ"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Vallée du Khumbu, Népal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Drapeaux de prière devant une montagne enneigée"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Pérou"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Citadelle du Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalows sur pilotis"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Suisse"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hôtel au bord d\'un lac au pied des montagnes"),
        "craneFly6": MessageLookupByLibrary.simpleMessage("Mexico, Mexique"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vue aérienne du Palacio de Bellas Artes"),
        "craneFly7":
            MessageLookupByLibrary.simpleMessage("Mont Rushmore, États-Unis"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Mont Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapour"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("La Havane, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homme s\'appuyant sur une ancienne voiture bleue"),
        "craneFlyStops": m6,
        "craneFlySubhead": MessageLookupByLibrary.simpleMessage(
            "Explorer les vols par destination"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Sélectionner une date"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Sélectionner des dates"),
        "craneFormDestination": MessageLookupByLibrary.simpleMessage(
            "Sélectionner une destination"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Personnes"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Sélectionner un lieu"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Choisir le point de départ"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Sélectionner une heure"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Voyageurs"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("DORMIR"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldives"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalows sur pilotis"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, États-Unis"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("Le Caire, Égypte"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minarets de la mosquée Al-Azhar au coucher du soleil"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei (Taïwan)"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Gratte-ciel Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet dans un paysage enneigé avec des sapins"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Pérou"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Citadelle du Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("La Havane, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homme s\'appuyant sur une ancienne voiture bleue"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Suisse"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hôtel au bord d\'un lac au pied des montagnes"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, États-Unis"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tente dans un champ"),
        "craneSleep6": MessageLookupByLibrary.simpleMessage("Napa, États-Unis"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscine et palmiers"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Appartements colorés place Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, Mexique"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruines mayas sur une falaise surplombant une plage"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisbonne, Portugal"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Phare en briques dans la mer"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorer les locations par destination"),
        "cupertinoAlertAllow":
            MessageLookupByLibrary.simpleMessage("Autoriser"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Tarte aux pommes"),
        "cupertinoAlertCancel": MessageLookupByLibrary.simpleMessage("Annuler"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie au chocolat"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Veuillez sélectionner votre type de dessert préféré dans la liste ci-dessous. Votre choix sera utilisé pour personnaliser la liste des restaurants recommandés dans votre région."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Supprimer"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Ne pas autoriser"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Sélectionner un dessert préféré"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Votre position actuelle sera affichée sur la carte et utilisée pour vous fournir des itinéraires, des résultats de recherche à proximité et des estimations de temps de trajet."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Autoriser \"Maps\" à accéder à votre position lorsque vous utilisez l\'application ?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Bouton"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Avec un arrière-plan"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Afficher l\'alerte"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
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
            MessageLookupByLibrary.simpleMessage("Dessert (pour 1 personne)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Lipides (g)"),
        "dataTableColumnIron": MessageLookupByLibrary.simpleMessage("Fer (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Protéines (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodium (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage(
            "Informations nutritionnelles"),
        "dataTableRowApplePie":
            MessageLookupByLibrary.simpleMessage("Apple Pie"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Donut"),
        "dataTableRowEclair": MessageLookupByLibrary.simpleMessage("Eclair"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Frozen Yogurt"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Gingerbread"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Honeycomb"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Ice Cream Sandwich"),
        "dataTableRowJellyBean":
            MessageLookupByLibrary.simpleMessage("Jelly Bean"),
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
            "Les chips d\'action sont un ensemble d\'options qui déclenchent une action en lien avec le contenu principal. Ces chips s\'affichent de façon dynamique et contextuelle dans l\'interface utilisateur."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip d\'action"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Une boîte de dialogue d\'alerte informe lorsqu\'une confirmation de lecture est nécessaire. Elle peut présenter un titre et une liste d\'actions."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alerte"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerte avec son titre"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Une bannière comporte un message court mais important, ainsi que des suggestions d\'actions pour les utilisateurs (ou une option permettant de fermer la bannière). L\'utilisateur doit agir pour que la bannière disparaisse."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Affichage d\'une bannière au sein d\'une liste"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Bannière"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "La barre d\'application inférieure permet d\'accéder à un panneau de navigation et à un maximum de quatre actions, y compris au bouton d\'action flottant."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Affiche des informations liées à la navigation et des actions au bas de l\'écran"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Barre d\'application inférieure"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Les barres de navigation inférieures affichent trois à cinq destinations au bas de l\'écran. Chaque destination est représentée par une icône et un libellé facultatif. Lorsque l\'utilisateur appuie sur une de ces icônes, il est redirigé vers la destination de premier niveau associée à cette icône."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Libellés fixes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Libellé sélectionné"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barre de navigation inférieure avec vues en fondu enchaîné"),
        "demoBottomNavigationTitle": MessageLookupByLibrary.simpleMessage(
            "Barre de navigation inférieure"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Ajouter"),
        "demoBottomSheetButtonText": MessageLookupByLibrary.simpleMessage(
            "AFFICHER LA PAGE DE CONTENU EN BAS DE L\'ÉCRAN"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("En-tête"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Une page de contenu flottante qui s\'affiche depuis le bas de l\'écran offre une alternative à un menu ou à une boîte de dialogue. Elle empêche l\'utilisateur d\'interagir avec le reste de l\'application."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Page de contenu flottante en bas de l\'écran"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Une page de contenu fixe en bas de l\'écran affiche des informations qui complètent le contenu principal de l\'application. Elle reste visible même lorsque l\'utilisateur interagit avec d\'autres parties de l\'application."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Page de contenu fixe en bas de l\'écran"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pages de contenu flottantes et fixes en bas de l\'écran"),
        "demoBottomSheetTitle": MessageLookupByLibrary.simpleMessage(
            "Page de contenu en bas de l\'écran"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Champs de texte"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plat, en relief, avec contours et plus encore"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Boutons"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Une fiche est un cadre où sont présentées des informations liées à une recherche, telles qu\'un album, un lieu, un plat, des coordonnées, etc."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Fiches de base avec angles arrondis"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Fiches"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu de type checklist"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Éléments compacts représentant une entrée, un attribut ou une action"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les chips de choix représentent un choix unique à faire dans un ensemble d\'options. Ces chips contiennent des catégories ou du texte descriptif associés."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de choix"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Indicateur de progression circulaire Material Design, tournant pour signifier que l\'application est occupée."),
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
            "Constantes de couleurs et du sélecteur de couleurs représentant la palette de couleurs du Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Toutes les couleurs prédéfinies"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Couleurs"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu contextuel"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Une feuille d\'action est un style d\'alertes spécifique qui présente à l\'utilisateur un groupe de deux choix ou plus en rapport avec le contexte à ce moment précis. Elle peut comporter un titre, un message complémentaire et une liste d\'actions."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Feuille d\'action"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Indicateur d\'activité de style iOS tournant dans le sens des aiguilles d\'une montre"),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicateurs d\'activité de style iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Activity indicator"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage(
                "Boutons d\'alerte uniquement"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerte avec des boutons"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Une boîte de dialogue d\'alerte informe lorsqu\'une confirmation de lecture est nécessaire. Elle peut présenter un titre, un contenu et une liste d\'actions. Le titre s\'affiche au-dessus du contenu, et les actions s\'affichent quant à elles sous le contenu."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerte"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerte avec son titre"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Boîtes de dialogue d\'alerte de style iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertes"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Un bouton de style iOS. Il prend la forme d\'un texte et/ou d\'une icône qui s\'affiche ou disparaît simplement en appuyant dessus. Il est possible d\'y ajouter un arrière-plan."),
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
            MessageLookupByLibrary.simpleMessage("Navigation bar"),
        "demoCupertinoPickerDate": MessageLookupByLibrary.simpleMessage("Date"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Date et heure"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Widget de sélection de style iOS pouvant être utilisé pour le choix d\'une date, d\'une heure ou des deux éléments."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Outils de sélection de la date et de l\'heure de style iOS"),
        "demoCupertinoPickerTime":
            MessageLookupByLibrary.simpleMessage("Heure"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Minuteur"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Outils de sélection"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un widget permettant d\'intégrer une commande de style iOS pour balayer l\'écran vers le bas afin d\'actualiser l\'affichage."),
        "demoCupertinoPullToRefreshSubtitle": MessageLookupByLibrary.simpleMessage(
            "Commande de style iOS pour balayer l\'écran vers le bas afin d\'actualiser l\'affichage"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Pull to refresh"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Utilisé pour effectuer une sélection parmi plusieurs options s\'excluant mutuellement. Lorsqu\'une option est sélectionnée dans le contrôle segmenté, les autres options ne le sont plus."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Contrôle segmenté de style iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Segmented control"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez utiliser un curseur pour sélectionner un ensemble de valeurs discrètes ou continues."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle":
            MessageLookupByLibrary.simpleMessage("Curseur de style iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Curseur"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez utiliser un bouton bascule pour permettre d\'activer ou de désactiver un paramètre."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Bouton bascule de style iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Une barre d\'onglets de navigation de style iOS s\'affichant en bas de l\'écran. Affiche plusieurs onglets, dont un actif, par défaut le premier."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barre d\'onglets de style iOS s\'affichant en bas de l\'écran"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Tab bar"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Un champ de texte permet à l\'utilisateur de saisir du texte à l\'aide d\'un clavier physique ou tactile."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("Code"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Champs de texte de style iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Text fields"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Les curseurs permettent aux utilisateurs de sélectionner une valeur ou une plage de valeurs sur une plage donnée représentée sur une ligne horizontale. Des thèmes peuvent leur être appliqués et ils peuvent être personnalisés."),
        "demoCustomSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Curseurs personnalisés"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Les tableaux de données présentent des informations sous forme de grilles composées de lignes et de colonnes. Ce format permet de parcourir facilement les données et d\'identifier des tendances."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lignes et colonnes de données"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Tableaux de données"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Affiche une boîte de dialogue comportant un outil Material Design de sélection de la date."),
        "demoDatePickerTitle": MessageLookupByLibrary.simpleMessage(
            "Outil de sélection de la date"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, alerte et plein écran"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Boîtes de dialogue"),
        "demoDocumentationTooltip": MessageLookupByLibrary.simpleMessage(
            "Documentation relative aux API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les chips de filtre utilisent des tags ou des mots descriptifs pour filtrer le contenu."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de filtre"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un bouton plat présente une tache de couleur lorsque l\'on appuie dessus, mais ne se relève pas. Utilisez les boutons plats sur la barre d\'outils, dans les boîtes de dialogue et intégrés à la marge intérieure"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton plat"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un bouton d\'action flottant est une icône circulaire qui s\'affiche au-dessus d\'un contenu dans le but d\'encourager l\'utilisateur à effectuer une action principale dans l\'application."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton d\'action flottant"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "La propriété \"fullscreenDialog\" indique si la page demandée est une boîte de dialogue modale en plein écran"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Plein écran"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Plein écran"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Les listes sous forme de grille sont particulièrement adaptées à la présentation de données homogènes telles que des images. Chaque élément d\'une liste sous forme de grille est appelé une tuile."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Avec pied de page"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Avec en-tête"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Image uniquement"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Disposition en lignes et colonnes"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Liste sous forme de grille"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informations"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Les chips d\'entrée représentent une information complexe, telle qu\'une entité (personne, lieu ou objet) ou du texte dialogué sous forme compacte."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip d\'entrée"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Impossible d\'afficher l\'URL :"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Indicateur de progression linéaire Material Design, également appelé barre de progression."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicateur de progression linéaire"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Ligne unique à hauteur fixe qui contient généralement du texte ainsi qu\'une icône au début ou à la fin."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texte secondaire"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Dispositions avec liste déroulante"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listes"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Élément de menu désactivé"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un élément avec un menu de type checklist"),
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
            "Élément de menu contextuel 1"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Élément de menu contextuel 3"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Un menu présente une liste d\'options de manière temporaire. Il s\'affiche lorsque les utilisateurs interagissent avec un bouton, une action ou un autre type de commande."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Quatre"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Obtenir le lien"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Élément de menu 1"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Élément de menu 3"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Élément de menu 2"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Un"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Aperçu"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Supprimer"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Partager"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Boutons de menu et menus simples"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Trois"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Deux"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Une ligne"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Appuyez ici pour afficher les options disponibles pour cette démo."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Afficher les options"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Options"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Les boutons avec contours deviennent opaques et se relèvent lorsqu\'on appuie dessus. Ils sont souvent associés à des boutons en relief pour indiquer une action secondaire alternative."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton avec contours"),
        "demoPickersShowPicker": MessageLookupByLibrary.simpleMessage(
            "AFFICHER L\'OUTIL DE SÉLECTION"),
        "demoPickersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sélection de la date et de l\'heure"),
        "demoPickersTitle":
            MessageLookupByLibrary.simpleMessage("Outils de sélection"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Linéaire, circulaire, indéterminé"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicateurs de progression"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Ces boutons ajoutent du relief aux présentations le plus souvent plates. Ils mettent en avant des fonctions lorsque l\'espace est grand ou chargé."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Bouton en relief"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Les curseurs présentent une plage de valeurs sur une ligne horizontale. Ils peuvent comporter des icônes aux deux extrémités représentant les limites de la plage de valeurs. Ils sont idéaux pour ajuster des paramètres comme le volume, la luminosité ou des filtres appliqués sur des images."),
        "demoRangeSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Curseurs de plage"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu à sections"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Les cases à cocher permettent à l\'utilisateur de sélectionner plusieurs options dans une liste. La valeur normale d\'une case à cocher est \"vrai\" ou \"faux\", et une case à trois états peut également avoir une valeur \"nulle\"."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Case à cocher"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Les cases d\'option permettent à l\'utilisateur de sélectionner une option dans une liste. Utilisez les cases d\'option pour effectuer des sélections exclusives si vous pensez que l\'utilisateur doit voir toutes les options proposées côte à côte."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Case d\'option"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Cases à cocher, cases d\'option et boutons bascule"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Les boutons bascule permettent d\'activer ou de désactiver des options. L\'option contrôlée par le bouton, ainsi que l\'état dans lequel elle se trouve, doivent être explicites dans le libellé correspondant."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Bouton bascule"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Commandes de sélection"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Une boîte de dialogue simple donne à l\'utilisateur le choix entre plusieurs options. Elle peut comporter un titre qui s\'affiche au-dessus des choix."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Simple"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu simple"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Continu"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Curseur de plage continue avec un thème personnalisé"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Continu avec une valeur numérique modifiable"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Les curseurs permettent aux utilisateurs de sélectionner une valeur sur une plage donnée représentée sur une ligne horizontale. Ils sont idéaux pour ajuster des paramètres comme le volume, la luminosité ou des filtres appliqués sur des images."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Discret"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Curseur discret avec un thème personnalisé"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Valeur numérique modifiable"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets pour sélectionner une valeur en balayant l\'écran"),
        "demoSlidersTitle": MessageLookupByLibrary.simpleMessage("Curseurs"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Vous avez appuyé sur l\'action du snackbar."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ACTION"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("AFFICHER UN SNACKBAR"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Les snackbars informent les utilisateurs d\'un processus qu\'une application a lancé ou va lancer. Ils s\'affichent de façon temporaire en bas de l\'écran. Ils ne doivent pas interrompre l\'expérience utilisateur ni ne nécessitent l\'intervention de l\'utilisateur pour disparaître."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Les snackbars affichent des messages en bas de l\'écran"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Ceci est un snackbar."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Snackbars"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Les onglets organisent le contenu sur différents écrans et ensembles de données, et en fonction d\'autres interactions."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Non-scrolling"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Scrolling"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Onglets avec affichage à défilement indépendant"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Onglets"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Les champs de texte permettent aux utilisateurs de saisir du texte dans une interface utilisateur. Ils figurent généralement dans des formulaires et des boîtes de dialogue."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Adresse e-mail"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "Veuillez saisir un mot de passe."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Saisissez un numéro de téléphone américain."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Veuillez corriger les erreurs en rouge avant de réessayer."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Masquer le mot de passe"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Soyez bref, il s\'agit juste d\'une démonstration."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Récit de vie"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nom*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired": MessageLookupByLibrary.simpleMessage(
            "Veuillez indiquer votre nom."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Huit caractères maximum."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Veuillez ne saisir que des caractères alphabétiques."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Les mots de passe sont différents"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Numéro de téléphone*"),
        "demoTextFieldRequiredField":
            MessageLookupByLibrary.simpleMessage("* Champ obligatoire"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Confirmer votre mot de passe*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salaire"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Afficher le mot de passe"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ENVOYER"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Une seule ligne de texte et de chiffres modifiables"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Parlez-nous de vous (par exemple, indiquez ce que vous faites ou quels sont vos loisirs)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Champs de texte"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Comment vous appelle-t-on ?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Où pouvons-nous vous joindre ?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Votre adresse e-mail"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Affiche une boîte de dialogue comportant un outil Material Design de sélection de l\'heure."),
        "demoTimePickerTitle": MessageLookupByLibrary.simpleMessage(
            "Outil de sélection de l\'heure"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Vous pouvez utiliser des boutons d\'activation pour regrouper des options associées. Pour mettre en avant des boutons d\'activation associés, un groupe doit partager un conteneur commun"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Boutons d\'activation"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Les info-bulles sont des libellés textuels expliquant la fonction d\'un bouton ou d\'une autre action d\'une interface utilisateur. Le texte informatif s\'affiche lorsque les utilisateurs passent leur souris, placent leur curseur ou appuient de manière prolongée sur un élément."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Appuyez de manière prolongée ou passez la souris sur l\'élément pour afficher l\'info-bulle."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Court message affiché en cas d\'appui de manière prolongée ou de passage de la souris sur un élément"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Info-bulles"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Deux lignes"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Définition des différents styles typographiques de Material Design."),
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
            MessageLookupByLibrary.simpleMessage("Supprimer le brouillon ?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Une boîte de dialogue en plein écran de démonstration"),
        "dialogFullscreenSave":
            MessageLookupByLibrary.simpleMessage("ENREGISTRER"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Boîte de dialogue en plein écran"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Autoriser Google à aider les applications à déterminer votre position. Cela signifie que des données de localisation anonymes sont envoyées à Google, même si aucune application n\'est en cours d\'exécution."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Utiliser le service de localisation Google ?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Définir un compte de sauvegarde"),
        "dialogShow": MessageLookupByLibrary.simpleMessage(
            "AFFICHER LA BOÎTE DE DIALOGUE"),
        "dismiss": MessageLookupByLibrary.simpleMessage("FERMER"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("STYLES & OTHER"),
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
            MessageLookupByLibrary.simpleMessage("Préparation du déjeuner"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Marché"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondichéry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Marais salant"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scooters"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Tisserand de soie"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Temple de Thanjavur"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Économies pour la voiture"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Compte courant"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Compte épargne logement"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacances"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Titulaire du compte"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Pourcentage annuel de rendement"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Intérêts payés l\'an dernier"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Taux d\'intérêt"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Cumul annuel des intérêts"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Relevé suivant"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Comptes"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alertes"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Factures"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Montant dû"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Vêtements"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafés"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Courses"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurants"),
        "rallyBudgetLeft":
            MessageLookupByLibrary.simpleMessage("Budget restant"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Budgets"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Une application financière personnelle"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("RESTANTS"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("SE CONNECTER"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Se connecter"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Se connecter à Rally"),
        "rallyLoginNoAccount": MessageLookupByLibrary.simpleMessage(
            "Vous n\'avez pas de compte ?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Mot de passe"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Mémoriser"),
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
            "Trouver un distributeur de billets"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Aide"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gérer les comptes"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notifications"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Paramètres sans papier"),
        "rallySettingsPasscodeAndTouchId": MessageLookupByLibrary.simpleMessage(
            "Code secret et fonctionnalité Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Informations personnelles"),
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
            MessageLookupByLibrary.simpleMessage("Conçu par TOASTER à Londres"),
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
            MessageLookupByLibrary.simpleMessage("Mécanique des plates-formes"),
        "settingsSlowMotion": MessageLookupByLibrary.simpleMessage("Ralenti"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Système"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Orientation du texte"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("De gauche à droite"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "En fonction des paramètres régionaux"),
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
            MessageLookupByLibrary.simpleMessage("Frais de port :"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Sous-total :"),
        "shrineCartTaxCaption": MessageLookupByLibrary.simpleMessage("Taxes :"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESSOIRES"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TOUT"),
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
            MessageLookupByLibrary.simpleMessage("SE DÉCONNECTER"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SUIVANT"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Mug bleu pierre"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("T-shirt couleur cerise"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Serviettes de batiste"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Chemise de batiste"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Col blanc classique"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Pull couleur argile"),
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
            MessageLookupByLibrary.simpleMessage("Écharpe rousse"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Débardeur gris"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Service à thé Hurrahs"),
        "shrineProductKitchenQuattro": MessageLookupByLibrary.simpleMessage(
            "Quatre accessoires de cuisine"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantalon bleu marine"),
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
            MessageLookupByLibrary.simpleMessage("Pull brise marine"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("T-shirt"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Sac à main"),
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
            MessageLookupByLibrary.simpleMessage("Sac Vagabond"),
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
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Une mise en page réactive"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Corps"),
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
            MessageLookupByLibrary.simpleMessage("Ajouter aux favoris"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Rechercher"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Partager")
      };
}
