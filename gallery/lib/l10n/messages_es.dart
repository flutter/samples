// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es locale. All the
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
  String get localeName => 'es';

  static m0(value) =>
      "Visita ${value} para ver el código fuente de esta aplicación.";

  static m1(title) => "Marcador de posición de la pestaña ${title}";

  static m2(destinationName) => "Explorar ${destinationName}";

  static m3(destinationName) => "Compartir ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'No hay restaurantes', one: '1 restaurante', other: '${totalRestaurants} restaurantes')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Vuelo directo', one: '1 escala', other: '${numberOfStops} escalas')}";

  static m7(hours) => "${Intl.plural(hours, one: '1 h', other: '${hours} h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 min', other: '${minutes} min')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'No hay propiedades disponibles', one: '1 propiedad disponible', other: '${totalProperties} propiedades disponibles')}";

  static m10(value) => "${value} con miel";

  static m11(value) => "${value} con azúcar";

  static m12(value) => "Artículo ${value}";

  static m13(error) => "No se ha podido copiar en el portapapeles: ${error}";

  static m14(value) => "Continuo: ${value}";

  static m15(value) => "Específico: ${value}";

  static m16(value) => "Marcado: ${value}";

  static m17(value) => "Seleccionado: ${value}";

  static m18(name, phoneNumber) =>
      "El número de teléfono de ${name} es ${phoneNumber}";

  static m19(value) => "Has seleccionado: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Cuenta ${accountName} (${accountNumber}) con ${amount}.";

  static m21(amount) =>
      "Has pagado ${amount} de comisiones por utilizar cajeros automáticos este mes.";

  static m22(percent) =>
      "¡Bien hecho! El saldo positivo de tu cuenta corriente está un ${percent} más alto que el mes pasado.";

  static m23(percent) =>
      "Aviso: Has utilizado un ${percent} de tu presupuesto para compras este mes.";

  static m24(amount) => "Has gastado ${amount} en restaurantes esta semana.";

  static m25(count) =>
      "${Intl.plural(count, one: 'Aumenta tu posible deducción fiscal Asigna categorías a 1 transacción sin asignar.', other: 'Aumenta tu posible deducción fiscal Asigna categorías a ${count} transacciones sin asignar.')}";

  static m26(billName, date, amount) =>
      "Fecha límite de la factura ${billName} (${amount}): ${date}.";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Has gastado ${amountUsed} de ${amountTotal} del presupuesto ${budgetName}. Cantidad restante: ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'NO HAY ELEMENTOS', one: '1 ELEMENTO', other: '${quantity} ELEMENTOS')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Cantidad: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Carrito: 0 artículos', one: 'Carrito: 1 artículo', other: 'Carrito: ${quantity} artículos')}";

  static m32(product) => "Quitar ${product}";

  static m33(value) => "Artículo ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Ejemplos de Flutter en el repositorio de GitHub"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Volver a la galería"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Icono situado delante"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Varias acciones"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Recuperar el banner"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "La contraseña se ha actualizado en el otro dispositivo. Vuelve a iniciar sesión."),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Recorte"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Posición del botón de acción flotante"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage(
                "Acoplado a la base: parte central"),
        "bottomAppBarPositionDockedEnd": MessageLookupByLibrary.simpleMessage(
            "Acoplado a la base: parte inferior"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Flotante: parte central"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Flotante: parte inferior"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Cuenta"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarma"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Calendario"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Cámara"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Comentarios"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BOTÓN"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Crear"),
        "cardsDemoExplore": MessageLookupByLibrary.simpleMessage("Explorar"),
        "cardsDemoExploreSemantics": m2,
        "cardsDemoSelectable": MessageLookupByLibrary.simpleMessage(
            "Se puede seleccionar (mantener pulsado)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Se puede tocar"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Número 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Hilanderas de seda"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Templos"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur (Tamil Nadu)"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga (Tamil Nadu)"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Las 10 ciudades que debes visitar en Tamil Nadu"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Artesanos del sur de India"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Templo Brihadisvara"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Bicicleta"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ascensor"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Chimenea"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grande"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Medio"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Pequeño"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Encender las luces"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Lavadora"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ÁMBAR"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("AZUL"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRIS AZULADO"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARRÓN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CIAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("NARANJA INTENSO"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("VIOLETA INTENSO"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERDE"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRIS"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ÍNDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("AZUL CLARO"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERDE CLARO"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIMA"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("NARANJA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSA"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("VIOLETA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROJO"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TURQUESA"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("AMARILLO"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Una aplicación de viajes personalizada"),
        "craneEat": MessageLookupByLibrary.simpleMessage("COMER"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Nápoles (Italia)"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza en un horno de leña"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas (Estados Unidos)"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisboa (Portugal)"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mujer que sostiene un gran sándwich de pastrami"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar vacío con taburetes junto a la barra"),
        "craneEat2":
            MessageLookupByLibrary.simpleMessage("Córdoba (Argentina)"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburguesa"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland (Estados Unidos)"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coreano"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("París (Francia)"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Postre de chocolate"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seúl (Corea del Sur)"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sala de un restaurante artístico"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle (Estados Unidos)"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plato de gambas"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville (Estados Unidos)"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrada de una panadería"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta (Estados Unidos)"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plato con cangrejos de río"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid (España)"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mostrador de cafetería con pastas"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Buscar restaurantes por destino"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("VOLAR"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen (Estados Unidos)"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet en un paisaje nevado con árboles de hoja perenne"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur (Estados Unidos)"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("El Cairo (Egipto)"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minaretes de la mezquita de al-Azhar al atardecer"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisboa (Portugal)"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Faro de ladrillos junto al mar"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa (Estados Unidos)"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palmeras"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali (Indonesia)"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscina junto al mar con palmeras"),
        "craneFly1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tienda de campaña en un campo"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Valle del Khumbu (Nepal)"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Banderas de plegaria frente a una montaña nevada"),
        "craneFly3":
            MessageLookupByLibrary.simpleMessage("Machu Picchu (Perú)"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ciudadela de Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé (Maldivas)"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalós flotantes"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau (Suiza)"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel a orillas de un lago y frente a montañas"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Ciudad de México (México)"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vista aérea del Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Monte Rushmore (Estados Unidos)"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Monte Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("La Habana (Cuba)"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hombre apoyado en un coche azul antiguo"),
        "craneFlyStops": m6,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Buscar vuelos por destino"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Seleccionar fecha"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Seleccionar fechas"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Elegir destino"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Seleccionar ubicación"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Elegir origen"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar hora"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Viajeros"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("DORMIR"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé (Maldivas)"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bungalós flotantes"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen (Estados Unidos)"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("El Cairo (Egipto)"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minaretes de la mezquita de al-Azhar al atardecer"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipéi (Taiwán)"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rascacielos Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalet en un paisaje nevado con árboles de hoja perenne"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu (Perú)"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ciudadela de Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("La Habana (Cuba)"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hombre apoyado en un coche azul antiguo"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau (Suiza)"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel a orillas de un lago y frente a montañas"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur (Estados Unidos)"),
        "craneSleep5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Tienda de campaña en un campo"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa (Estados Unidos)"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palmeras"),
        "craneSleep7":
            MessageLookupByLibrary.simpleMessage("Oporto (Portugal)"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Apartamentos de vivos colores en la Plaza de la Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum (México)"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruinas mayas en lo alto de un acantilado junto a una playa"),
        "craneSleep9":
            MessageLookupByLibrary.simpleMessage("Lisboa (Portugal)"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Faro de ladrillos junto al mar"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Buscar propiedades por destino"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Tarta de manzana"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Tarta de queso"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie de chocolate"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "En la siguiente lista, elige tu tipo de postre favorito. Lo que elijas se usará para personalizar la lista de restaurantes recomendados de tu zona."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Descartar"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("No permitir"),
        "cupertinoAlertFavoriteDessert":
            MessageLookupByLibrary.simpleMessage("Seleccionar postre favorito"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Se mostrará tu ubicación en el mapa y se utilizará para ofrecerte indicaciones, resultados de búsqueda cercanos y la duración prevista de los desplazamientos."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "¿Das permiso a Maps para que acceda a tu ubicación mientras usas la aplicación?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisú"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Botón"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Con fondo"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Mostrar alerta"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Página principal"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Perfil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Calcio (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Calorías"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Carbohidratos (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Postre (1 ración)"),
        "dataTableColumnFat":
            MessageLookupByLibrary.simpleMessage("Grasas (g)"),
        "dataTableColumnIron":
            MessageLookupByLibrary.simpleMessage("Hierro (%)"),
        "dataTableColumnProtein":
            MessageLookupByLibrary.simpleMessage("Proteínas (g)"),
        "dataTableColumnSodium":
            MessageLookupByLibrary.simpleMessage("Sodio (mg)"),
        "dataTableHeader": MessageLookupByLibrary.simpleMessage("Nutrición"),
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
            "Toca un archivo para editarlo o usa gestos para desplazarte por la imagen. Arrastra el dedo para moverte por la imagen, pellízcala para hacer zoom y usa dos dedos para girarla. Pulsa el botón para revertir las transformaciones si quieres volver a la orientación inicial."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Editar mosaico"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage("Revertir transformaciones"),
        "demo2dTransformationsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Gira y usa zoom o el modo panorámico"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("Transformaciones a 2D"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de acción son un conjunto de opciones que permiten llevar a cabo tareas relacionadas con el contenido principal. Deberían aparecer de forma dinámica y según el contexto en la interfaz."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de acción"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "En un cuadro de diálogo de alerta se informa al usuario sobre situaciones que requieren su confirmación. Este tipo de cuadros de diálogo incluyen un título opcional y una lista de acciones opcional."),
        "demoAlertDialogTitle":
            MessageLookupByLibrary.simpleMessage("Con alerta"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con título"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Un banner contiene un breve mensaje importante y muestra a los usuarios acciones que deben tomar, aunque puede que solo tengan que cerrar el banner. Para poder cerrarlo, el usuario debe hacer algo antes."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Se muestra un banner en una lista"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Las barras de aplicaciones inferiores proporcionan acceso a un panel de navegación inferior y a hasta cuatro acciones, incluido el botón de acción flotante."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Muestra la navegación y las acciones en la parte inferior"),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Barra de aplicaciones inferior"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "En la barra de navegación inferior de la pantalla se muestran entre tres y cinco destinos. Cada destino está representado mediante un icono y, de forma opcional, con una etiqueta de texto. Al tocar un icono de navegación inferior, se redirige al usuario al destino de nivel superior que esté asociado a ese icono."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etiquetas persistentes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etiqueta seleccionada"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navegación inferior con vistas de fusión cruzada"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navegación inferior"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Añadir"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("MOSTRAR HOJA INFERIOR"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Encabezado"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Una hoja inferior modal es la alternativa al menú o a los cuadros de diálogo y evita que los usuarios interactúen con el resto de la aplicación que estén utilizando."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Hoja inferior modal"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Una hoja inferior persistente muestra información complementaria al contenido principal de la aplicación que estén utilizando y permanece siempre visible, aunque los usuarios interactúen con otras partes de la aplicación."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Hoja inferior persistente"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Hojas inferiores modales y persistentes"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Hoja inferior"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plano, con relieve, con contorno y más"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Botones"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Una tarjeta es una hoja de Material utilizada para representar información relacionada, como un álbum, una ubicación geográfica, una comida, datos de contacto, etc."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tarjetas de referencia con esquinas redondeadas"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Tarjetas"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Menú con lista de comprobación"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elementos compactos que representan atributos, acciones o texto que se ha introducido"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de elección representan una opción de un conjunto de opciones. Incluyen descripciones o categorías relacionadas."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de elección"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicador de progreso circular de Material Design, que gira para indicar que la aplicación no está disponible."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progreso circular"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Código de demostración"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Se ha copiado en el portapapeles."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIAR TODO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Color y muestra de color que representa la paleta de colores de Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos los colores predefinidos"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Colores"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú contextual"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Una hoja de acción es un estilo concreto de alerta que presenta al usuario dos o más opciones relacionadas con el contexto; puede incluir un título, un mensaje adicional y una lista con acciones."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Hoja de acción"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicador de actividad similar al de iOS que gira en el sentido de las agujas del reloj."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicadores de actividad similares a los de iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicador de actividad"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Solo botones de alerta"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con botones"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "En un cuadro de diálogo de alerta se informa al usuario sobre situaciones que requieren su confirmación. Un cuadro de diálogo de alerta incluye un título opcional, contenido opcional y una lista con acciones opcional. El título se muestra encima del contenido y las acciones, bajo el contenido."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con título"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Cuadros de diálogo de alerta similares a los de iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertas"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón similar a los de iOS que incluye texto o un icono que desaparece y aparece al tocarlo. Puede tener un fondo opcionalmente."),
        "demoCupertinoButtonsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Botones similares a los de iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Botones"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Una barra de navegación similar a la de iOS. La barra de navegación es una barra de herramientas que básicamente contiene el título de una página en medio de la barra."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Barra de navegación similar a la de iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de navegación"),
        "demoCupertinoPickerDate":
            MessageLookupByLibrary.simpleMessage("Fecha"),
        "demoCupertinoPickerDateTime":
            MessageLookupByLibrary.simpleMessage("Fecha y hora"),
        "demoCupertinoPickerDescription": MessageLookupByLibrary.simpleMessage(
            "Widget de un selector similar a los de iOS desde el que se puede seleccionar fechas, horas o ambos valores."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Selectores de fecha y hora similares a los de iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Hora"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Temporizador"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Selectores"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un widget que implementa el control de contenido con la función \"Desliza hacia abajo para actualizar\" similar al de iOS."),
        "demoCupertinoPullToRefreshSubtitle": MessageLookupByLibrary.simpleMessage(
            "Control con la función \"Desliza hacia abajo para actualizar\" similar al de iOS"),
        "demoCupertinoPullToRefreshTitle": MessageLookupByLibrary.simpleMessage(
            "Desliza hacia abajo para actualizar"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Se usa para seleccionar entre un número de opciones igualmente exclusivas. Si se selecciona una opción en el control segmentado, el resto no se podrán seleccionar."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Control segmentado similar al de iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Control segmentado"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Los controles deslizantes sirven para seleccionar valores de un conjunto de valores continuos o específicos."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "Control deslizante similar al de iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Control deslizante"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Los interruptores sirven para activar o desactivar un solo ajuste."),
        "demoCupertinoSwitchSubtitle": MessageLookupByLibrary.simpleMessage(
            "Interruptor similar al de iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Una barra de pestañas de navegación situada en la parte inferior similar a la de iOS. Muestra varias pestañas, con una de ellas activa, que de forma predeterminada es la primera."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barra de pestañas de la parte inferior similar a la de iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de pestañas"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Un campo de texto permite que el usuario introduzca texto, tanto mediante el teclado del hardware como mediante el teclado en pantalla."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Campos de texto similares a los de iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Los controles deslizantes muestran un intervalo de valores en una barra, de la cual los usuarios pueden seleccionar un solo valor o intervalo. Se pueden aplicar temas a los controles deslizantes y personalizarlos."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controles deslizantes personalizados"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Las tablas de datos muestran información en un formato de cuadrícula estructurado en filas y columnas. Organizan la información de manera que sea fácil de analizar para que los usuarios puedan detectar patrones y datos interesantes."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Filas y columnas de información"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Tablas de datos"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Muestra un cuadro de diálogo que contiene un selector de fecha de Material Design."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selector de fecha"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sencillo, con alerta y a pantalla completa"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Cuadros de diálogo"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentación de la API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de filtro sirven para filtrar contenido por etiquetas o palabras descriptivas."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de filtro"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Al pulsar un botón plano, se muestra una salpicadura de tinta que no recupera el relieve al dejar de pulsarse. Utiliza este tipo de botones en barras de herramientas, cuadros de diálogo y elementos insertados con márgenes."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón plano"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón de acción flotante es un botón con un icono circular que aparece sobre contenido para fomentar una acción principal en la aplicación."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón de acción flotante"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "La propiedad fullscreenDialog especifica si la página entrante es un cuadro de diálogo modal a pantalla completa"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("A pantalla completa"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Pantalla completa"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Las listas con cuadrícula son las más adecuadas para presentar datos homogéneos, normalmente imágenes. Los elementos de las listas con cuadrícula se llaman mosaicos."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Con pie de página"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Con encabezado"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Solo imagen"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Diseño de fila y columna"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Listas con cuadrícula"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Información"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de entrada representan datos complejos de forma compacta, como textos o entidades (por ejemplo, personas, lugares o cosas)."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de entrada"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "No se ha podido mostrar la URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Un indicador de progreso lineal de Material Design, también denominado \"barra de progreso\"."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progreso lineal"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Fila con un altura fija que por lo general incluye texto y un icono al principio o al final."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texto secundario"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Diseños de listas por las que se puede desplazar"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listas"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Opción de menú inhabilitada"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Una opción con un menú con lista de comprobación"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Una opción con un menú contextual"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Una opción con un menú con secciones"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Una opción con un menú sencillo"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Opción de menú contextual uno"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Opción de menú contextual tres"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Un menú muestra una lista de opciones en una superficie temporal. Se muestran cuando los usuarios interaccionan con un botón, una acción u otro control."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Cuatro"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Obtener enlace"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Opción de menú uno"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Opción de menú tres"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Opción de menú dos"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Uno"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Vista previa"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Quitar"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Compartir"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Botones del menú y menús sencillos"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Tres"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menú"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Dos"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Una línea"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Toca aquí para ver las opciones disponibles en esta demostración."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Ver opciones"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opciones"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Los botones con contorno se vuelven opacos y se elevan al pulsarlos. Suelen aparecer junto a botones elevados para indicar una acción secundaria alternativa."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón con contorno"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("MOSTRAR SELECTOR"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Selección de fecha y hora"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Selectores"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lineal, circular, indeterminado"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicadores de progreso"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Los botones con relieve añaden dimensión a los diseños mayormente planos. Destacan funciones en espacios llenos o amplios."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón con relieve"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Los controles deslizantes muestran un intervalo de valores en una barra, que puede tener iconos en ambos extremos. Pueden resultar muy útiles para modificar ajustes como el volumen o el brillo o aplicar filtros de imagen."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controles deslizantes de intervalos"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú con secciones"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Las casillas permiten que los usuarios seleccionen varias opciones de un conjunto de opciones. Por lo general, las casillas pueden tener dos valores (verdadero o falso), aunque hay casillas que pueden tener tres (el tercero es el valor nulo)."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Casilla"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Los botones de selección permiten que los usuarios seleccionen una opción de un conjunto de opciones. Utilízalos si quieres que los usuarios elijan una única opción, pero quieres mostrarles todas las que están disponibles."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Botón de selección"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Casillas, botones de selección e interruptores"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Los interruptores controlan el estado de un solo ajuste. La etiqueta insertada del interruptor debería indicar de forma clara el ajuste que controla y el estado en el que está."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Interruptor"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Controles de selección"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un cuadro de diálogo sencillo ofrece al usuario la posibilidad de elegir entre diversas opciones e incluye un título opcional que se muestra encima de las opciones."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Sencillo"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú sencillo"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Valores continuos"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Control deslizante de intervalo y valores continuos con un tema personalizado"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Valores continuos con un valor numérico editable"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Los controles deslizantes muestran un intervalo de valores en una barra, de la que los usuarios pueden seleccionar un único valor. Pueden resultar muy útiles para modificar ajustes como el volumen o el brillo o aplicar filtros de imagen."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Valores discretos"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Control deslizante de valores discretos con un tema personalizado"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Valor numérico editable"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets para seleccionar un valor deslizando el dedo"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Controles deslizantes"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Has tocado la acción del snackbar."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ACCIÓN"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("MOSTRAR UN SNACKBAR"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Los snackbar proporcionan a los usuarios información sobre un proceso que una aplicación ha completado o va a iniciar. Aparecen de manera temporal en la parte inferior de la pantalla. No deberían interrumpir la experiencia de usuario, y desaparecen sin que los usuarios tengan que hacer nada."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Los snackbar muestran mensajes en la parte inferior de la pantalla"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Esto es un snackbar."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Snackbar"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "En las pestañas se organiza contenido en distintas pantallas, conjuntos de datos y otras interacciones."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Sin desplazamiento"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Desplazamiento"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pestañas con vistas desplazables por separado"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Pestañas"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "En los campos de texto, los usuarios pueden introducir texto en la interfaz. Estos campos suelen aparecer en formularios y cuadros de diálogo."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Correo electrónico"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Introduce una contraseña."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-####. Introduce un número de teléfono de EE. UU."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Corrige los errores marcados en rojo antes de enviar el formulario."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ocultar contraseña"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Sé breve, esto es solo una demostración."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biografía"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Nombre*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired": MessageLookupByLibrary.simpleMessage(
            "Es obligatorio indicar el nombre."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Menos de 8 caracteres"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Introduce solo caracteres alfabéticos."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Las contraseñas no coinciden"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de teléfono*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* indica que el campo es obligatorio"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Vuelve a escribir la contraseña*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salario"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mostrar contraseña"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ENVIAR"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Una línea de texto y números editables"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Háblanos de ti (p. ej., dinos a qué te dedicas o las aficiones que tienes)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("¿Cómo te llamas?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "¿Cómo podemos ponernos en contacto contigo?"),
        "demoTextFieldYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Tu dirección de correo electrónico"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Muestra un cuadro de diálogo que contiene un selector de hora de Material Design."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selector de hora"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Se pueden usar los botones de activar y desactivar para agrupar opciones relacionadas. Para destacar grupos de botones que se pueden activar y desactivar relacionados, los botones deben compartir un mismo contenedor"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Botones que se pueden activar y desactivar"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "Las descripciones emergentes proporcionan etiquetas de texto que ayudan a explicar la función de un botón u otras acciones de la interfaz de usuario. Las descripciones emergentes muestran texto informativo cuando los usuarios colocan el cursor sobre un elemento, se centran en él o lo mantienen pulsado."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Mantén pulsado o coloca el cursor sobre un elemento para que se muestre la descripción emergente."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mensaje breve que se muestra al mantener pulsado o colocar el cursor sobre un elemento"),
        "demoTooltipTitle":
            MessageLookupByLibrary.simpleMessage("Descripciones emergentes"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dos líneas"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Las definiciones para los estilos tipográficos que se han encontrado en Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos los estilos de texto predefinidos"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografía"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Añadir cuenta"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACEPTAR"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("RECHAZAR"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("DESCARTAR"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "¿Quieres descartar el borrador?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Demostración del cuadro de diálogo de pantalla completa"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("GUARDAR"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Cuadro de diálogo de pantalla completa"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Permite que Google ayude a las aplicaciones a determinar la ubicación haciendo que el usuario envíe datos de ubicación anónimos a Google aunque las aplicaciones no se estén ejecutando."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "¿Quieres utilizar el servicio de ubicación de Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Crear cuenta de copia de seguridad"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MOSTRAR CUADRO DE DIÁLOGO"),
        "dismiss": MessageLookupByLibrary.simpleMessage("CERRAR"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Aplicación de noticias centrada en la calidad de su contenido"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Reformar el Ejército Verde desde dentro"),
        "fortnightlyHeadlineBees": MessageLookupByLibrary.simpleMessage(
            "Escasez de granjas de abejas"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Diseñadores utilizan la tecnología para fabricar tejidos futuristas"),
        "fortnightlyHeadlineFeminists": MessageLookupByLibrary.simpleMessage(
            "Las feministas se enfrentan al partidismo"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("El futuro de la gasolina"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "La silenciosa pero poderosa revolución de la asistencia sanitaria"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "A medida que la bolsa se estanca, muchos vuelven su mirada a la moneda"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Vidas americanas divididas por la guerra"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Últimas novedades"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Empresa"),
        "fortnightlyMenuCulture":
            MessageLookupByLibrary.simpleMessage("Cultura"),
        "fortnightlyMenuFrontPage":
            MessageLookupByLibrary.simpleMessage("Portada"),
        "fortnightlyMenuPolitics":
            MessageLookupByLibrary.simpleMessage("Política"),
        "fortnightlyMenuScience":
            MessageLookupByLibrary.simpleMessage("Ciencia"),
        "fortnightlyMenuSports":
            MessageLookupByLibrary.simpleMessage("Deportes"),
        "fortnightlyMenuTech":
            MessageLookupByLibrary.simpleMessage("Tecnología"),
        "fortnightlyMenuTravel": MessageLookupByLibrary.simpleMessage("Viajes"),
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("EE. UU."),
        "fortnightlyMenuWorld":
            MessageLookupByLibrary.simpleMessage("Todo el mundo"),
        "fortnightlyTrendingGreenArmy":
            MessageLookupByLibrary.simpleMessage("EjércitoVerde"),
        "fortnightlyTrendingHealthcareRevolution":
            MessageLookupByLibrary.simpleMessage(
                "RevoluciónAsistenciaSanitaria"),
        "fortnightlyTrendingReform":
            MessageLookupByLibrary.simpleMessage("Reforma"),
        "fortnightlyTrendingStocks":
            MessageLookupByLibrary.simpleMessage("Bolsa"),
        "fortnightlyTrendingTechDesign":
            MessageLookupByLibrary.simpleMessage("DiseñoTecnológico"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("ESTILOS Y OTROS"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorías"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galería"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Playa"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Obras de bronce"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Pescador"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Mercado de Flores"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Preparación de la comida"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Mercado"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Puducherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Salina"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scooters"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Fabricante de seda"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Templo de Thanjavur"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Ahorros para el coche"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Cuenta corriente"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Ahorros para la casa"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacaciones"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Propietario de la cuenta"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Porcentaje de rendimiento anual"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Intereses pagados el año pasado"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Tipo de interés"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Intereses pagados este año hasta la fecha"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Siguiente extracto"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Cuentas"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alertas"),
        "rallyAlertsMessageATMFees": m21,
        "rallyAlertsMessageCheckingAccount": m22,
        "rallyAlertsMessageHeadsUpShopping": m23,
        "rallyAlertsMessageSpentOnRestaurants": m24,
        "rallyAlertsMessageUnassignedTransactions": m25,
        "rallyBillAmount": m26,
        "rallyBillDetailAmountDue":
            MessageLookupByLibrary.simpleMessage("Importe a pagar"),
        "rallyBillDetailAmountPaid":
            MessageLookupByLibrary.simpleMessage("Importe pagado"),
        "rallyBillDetailTotalAmount":
            MessageLookupByLibrary.simpleMessage("Importe total"),
        "rallyBills": MessageLookupByLibrary.simpleMessage("Facturas"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Pendiente:"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Ropa"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafeterías"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Supermercados"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Importe restante"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Importe gastado"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Límite presupuestario"),
        "rallyBudgetLeft":
            MessageLookupByLibrary.simpleMessage("Presupuesto restante:"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Presupuestos"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Una aplicación de finanzas personales"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("RESTANTE"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("INICIAR SESIÓN"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Iniciar sesión"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Iniciar sesión en Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("¿No tienes una cuenta?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Recordarme"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("REGISTRARSE"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("VER TODO"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Ver todas las cuentas"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Ver todas las facturas"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Ver todos los presupuestos"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Buscar cajeros automáticos"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Ayuda"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gestionar cuentas"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Ajustes sin papel"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Contraseña y Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Información personal"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Cerrar sesión"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documentos fiscales"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("CUENTAS"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FACTURAS"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("PRESUPUESTOS"),
        "rallyTitleOverview": MessageLookupByLibrary.simpleMessage("RESUMEN"),
        "rallyTitleSettings": MessageLookupByLibrary.simpleMessage("AJUSTES"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Acerca de Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Diseñado por TOASTER en Londres"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Cerrar la configuración"),
        "settingsButtonLabel": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Oscuro"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Enviar comentarios"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Claro"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Configuración regional"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mecánica de la plataforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Cámara lenta"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Dirección del texto"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage(
            "Texto de izquierda a derecha"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Basado en la configuración regional"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage(
            "Texto de derecha a izquierda"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Ajuste de texto"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Enorme"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Grande"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Pequeño"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Ajustes"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("VACIAR CARRITO"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("CARRITO"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Gastos de envío:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Impuestos:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESORIOS"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TODO"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ROPA"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("CASA"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Una aplicación para comprar productos de moda"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Contraseña"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("CERRAR SESIÓN"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENÚ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SIGUIENTE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Taza Blue Stone"),
        "shrineProductCeriseScallopTee":
            MessageLookupByLibrary.simpleMessage("Camiseta color cereza"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Servilletas de cambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Camisa de cambray"),
        "shrineProductClassicWhiteCollar": MessageLookupByLibrary.simpleMessage(
            "Camisa de cuello clásico en blanco"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Jersey Clay"),
        "shrineProductCopperWireRack": MessageLookupByLibrary.simpleMessage(
            "Estantería de alambre de cobre"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Camiseta de rayas finas"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Collar de cuentas"),
        "shrineProductGatsbyHat": MessageLookupByLibrary.simpleMessage("Gorra"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Chaqueta Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Conjunto de tres mesas"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Bufanda anaranjada"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Camiseta de tirantes gris"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Juego de té clásico"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Kitchen Quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantalones azul marino"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Túnica color yeso"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Mesa cuadrada"),
        "shrineProductRainwaterTray": MessageLookupByLibrary.simpleMessage(
            "Cubo de recogida de agua de lluvia"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Blusa cruzada Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Túnica azul claro"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Jersey de tejido liviano"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Camiseta de hombros descubiertos"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Mochila Shrug"),
        "shrineProductSootheCeramicSet": MessageLookupByLibrary.simpleMessage(
            "Juego de tazas para infusiones"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Gafas de sol Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Pendientes Strut"),
        "shrineProductSucculentPlanters": MessageLookupByLibrary.simpleMessage(
            "Maceteros para plantas suculentas"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Vestido playero"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Camisa surfera"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Mochila Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Calcetines Varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Camiseta de rayas (blanca)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Llavero de tela"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage(
                "Camisa blanca de rayas diplomáticas"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Cinturón Whitney"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Añadir al carrito"),
        "shrineScreenReaderRemoveProductButton": m32,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Cerrar carrito"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Cerrar menú"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Abrir menú"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Quitar elemento"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Ajustes"),
        "signIn": MessageLookupByLibrary.simpleMessage("INICIAR SESIÓN"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Diseño de inicio adaptable"),
        "starterAppDrawerItem": m33,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Cuerpo"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BOTÓN"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Título"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtítulo"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Título"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplicación de inicio"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Añadir"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favorito"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Buscar"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Compartir")
      };
}
