// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a es_CO locale. All the
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
  String get localeName => 'es_CO';

  static m0(value) => "Para ver el código fuente de esta app, visita ${value}.";

  static m1(title) => "Marcador de posición de la pestaña ${title}";

  static m2(destinationName) => "Explorar ${destinationName}";

  static m3(destinationName) => "Compartir ${destinationName}";

  static m4(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'No hay restaurantes', one: '1 restaurante', other: '${totalRestaurants} restaurantes')}";

  static m5(hoursShortForm, minutesShortForm) =>
      "${hoursShortForm} ${minutesShortForm}";

  static m6(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Directo', one: '1 escala', other: '${numberOfStops} escalas')}";

  static m7(hours) => "${Intl.plural(hours, one: '1 h', other: '${hours} h')}";

  static m8(minutes) =>
      "${Intl.plural(minutes, one: '1 m', other: '${minutes} m')}";

  static m9(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'No hay propiedades disponibles', one: '1 propiedad disponible', other: '${totalProperties} propiedades disponibles')}";

  static m10(value) => "${value} con miel";

  static m11(value) => "${value} con azúcar";

  static m12(value) => "Artículo ${value}";

  static m13(error) => "No se pudo copiar al portapapeles: ${error}";

  static m14(value) => "Continuo: ${value}";

  static m15(value) => "Discreto: ${value}";

  static m16(value) => "Marcado: ${value}";

  static m17(value) => "Seleccionado: ${value}";

  static m18(name, phoneNumber) =>
      "El número de teléfono de ${name} es ${phoneNumber}";

  static m19(value) => "Seleccionaste: \"${value}\"";

  static m20(accountName, accountNumber, amount) =>
      "Cuenta ${accountName} ${accountNumber} con ${amount}";

  static m21(amount) =>
      "Este mes, gastaste ${amount} en tarifas de cajeros automáticos";

  static m22(percent) =>
      "¡Buen trabajo! El saldo de la cuenta corriente es un ${percent} mayor al mes pasado.";

  static m23(percent) =>
      "Atención, utilizaste un ${percent} del presupuesto para compras de este mes.";

  static m24(amount) => "Esta semana, gastaste ${amount} en restaurantes";

  static m25(count) =>
      "${Intl.plural(count, one: 'Aumenta tu potencial de deducción de impuestos. Asigna categorías a 1 transacción sin asignar.', other: 'Aumenta tu potencial de deducción de impuestos. Asigna categorías a ${count} transacciones sin asignar.')}";

  static m26(billName, date, amount) =>
      "Factura de ${billName} con vencimiento el ${date} de ${amount}";

  static m27(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Se usó un total de ${amountUsed} de ${amountTotal} del presupuesto ${budgetName}; el saldo restante es ${amountLeft}";

  static m28(quantity) =>
      "${Intl.plural(quantity, zero: 'SIN ARTÍCULOS', one: '1 ARTÍCULO', other: '${quantity} ARTÍCULOS')}";

  static m29(price) => "x ${price}";

  static m30(quantity) => "Cantidad: ${quantity}";

  static m31(quantity) =>
      "${Intl.plural(quantity, zero: 'Carrito de compras sin artículos', one: 'Carrito de compras con 1 artículo', other: 'Carrito de compras con ${quantity} artículos')}";

  static m32(product) => "Quitar ${product}";

  static m33(value) => "Artículo ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Repositorio de GitHub con muestras de Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Volver a la Galería"),
        "bannerDemoLeadingText":
            MessageLookupByLibrary.simpleMessage("Ícono inicial"),
        "bannerDemoMultipleText":
            MessageLookupByLibrary.simpleMessage("Varias acciones"),
        "bannerDemoResetText":
            MessageLookupByLibrary.simpleMessage("Restablecer el banner"),
        "bannerDemoText": MessageLookupByLibrary.simpleMessage(
            "Se actualizó la contraseña en tu otro dispositivo. Vuelve a acceder a la cuenta."),
        "bottomAppBarNotch":
            MessageLookupByLibrary.simpleMessage("Con recorte"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Posición del botón de acción flotante"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Anclado (centro)"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Anclado (extremo)"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Flotante (centro)"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Flotante (extremo)"),
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
            "Se puede seleccionar (mantener presionado)"),
        "cardsDemoShareSemantics": m3,
        "cardsDemoTappable":
            MessageLookupByLibrary.simpleMessage("Se puede presionar"),
        "cardsDemoTravelDestinationCity1":
            MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "cardsDemoTravelDestinationCity2":
            MessageLookupByLibrary.simpleMessage("Chettinad"),
        "cardsDemoTravelDestinationDescription1":
            MessageLookupByLibrary.simpleMessage("Número 10"),
        "cardsDemoTravelDestinationDescription2":
            MessageLookupByLibrary.simpleMessage("Hilanderos de seda"),
        "cardsDemoTravelDestinationDescription3":
            MessageLookupByLibrary.simpleMessage("Templos"),
        "cardsDemoTravelDestinationLocation1":
            MessageLookupByLibrary.simpleMessage("Thanjavur, Tamil Nadu"),
        "cardsDemoTravelDestinationLocation2":
            MessageLookupByLibrary.simpleMessage("Sivaganga, Tamil Nadu"),
        "cardsDemoTravelDestinationTitle1":
            MessageLookupByLibrary.simpleMessage(
                "Las 10 ciudades de Tamil Nadu que debes visitar"),
        "cardsDemoTravelDestinationTitle2":
            MessageLookupByLibrary.simpleMessage("Artesanos del sur de India"),
        "cardsDemoTravelDestinationTitle3":
            MessageLookupByLibrary.simpleMessage("Templo Brihadisvara"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Bicicletas"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ascensor"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Chimenea"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grande"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Mediano"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Pequeño"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Encender luces"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Lavadora"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ÁMBAR"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("AZUL"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRIS AZULADO"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARRÓN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CIAN"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("NARANJA OSCURO"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("PÚRPURA OSCURO"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERDE"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRIS"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ÍNDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("CELESTE"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERDE CLARO"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERDE LIMA"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("NARANJA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSADO"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("PÚRPURA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("ROJO"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("VERDE AZULADO"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("AMARILLO"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Una app personalizada para viajes"),
        "craneEat": MessageLookupByLibrary.simpleMessage("GASTRONOMÍA"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Nápoles, Italia"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza en un horno de leña"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Estados Unidos"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mujer que sostiene un gran sándwich de pastrami"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar vacío con banquetas estilo cafetería"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburguesa"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Estados Unidos"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coreano"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("París, Francia"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Postre de chocolate"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seúl, Corea del Sur"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Área de descanso de restaurante artístico"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Estados Unidos"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plato de camarones"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Estados Unidos"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrada de panadería"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Estados Unidos"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Plato de langosta"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, España"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mostrador de cafetería con pastelería"),
        "craneEatRestaurants": m4,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explora restaurantes por ubicación"),
        "craneFlightDuration": m5,
        "craneFly": MessageLookupByLibrary.simpleMessage("VUELOS"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé en un paisaje nevado con árboles de hoja perenne"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("El Cairo, Egipto"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres de la mezquita de al-Azhar durante una puesta de sol"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Faro de ladrillos en el mar"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palmeras"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscina con palmeras a orillas del mar"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tienda en un campo"),
        "craneFly2": MessageLookupByLibrary.simpleMessage("Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Banderas de plegaria frente a una montaña nevada"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ciudadela de Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cabañas sobre el agua"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Suiza"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel a orillas de un lago frente a las montañas"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Ciudad de México, México"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vista aérea del Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Monte Rushmore, Estados Unidos"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Monte Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Arboleda de superárboles"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("La Habana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hombre reclinado sobre un auto azul antiguo"),
        "craneFlyStops": m6,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Explora vuelos por destino"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Seleccionar fecha"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Seleccionar fechas"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Seleccionar destino"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Seleccionar ubicación"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Seleccionar origen"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar hora"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Viajeros"),
        "craneHours": m7,
        "craneMinutes": m8,
        "craneSleep": MessageLookupByLibrary.simpleMessage("ALOJAMIENTO"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cabañas sobre el agua"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneSleep10":
            MessageLookupByLibrary.simpleMessage("El Cairo, Egipto"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres de la mezquita de al-Azhar durante una puesta de sol"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipéi, Taiwán"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rascacielos Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé en un paisaje nevado con árboles de hoja perenne"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Ciudadela de Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("La Habana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hombre reclinado sobre un auto azul antiguo"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Suiza"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel a orillas de un lago frente a las montañas"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tienda en un campo"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palmeras"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Oporto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Casas coloridas en la Plaza Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, México"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruinas mayas en un acantilado sobre una playa"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Faro de ladrillos en el mar"),
        "craneSleepProperties": m9,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explora propiedades por destino"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Pastel de manzana"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie de chocolate"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Selecciona tu postre favorito de la siguiente lista. Se usará tu elección para personalizar la lista de restaurantes sugeridos en tu área."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Descartar"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("No permitir"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Selecciona tu postre favorito"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Tu ubicación actual se mostrará en el mapa y se usará para obtener instrucciones sobre cómo llegar a lugares, resultados cercanos de la búsqueda y tiempos de viaje aproximados."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "¿Quieres permitir que \"Maps\" acceda a tu ubicación mientras usas la app?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisú"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Botón"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Con fondo"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Mostrar alerta"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Inicio"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Perfil"),
        "dataTableColumnCalcium":
            MessageLookupByLibrary.simpleMessage("Calcio (%)"),
        "dataTableColumnCalories":
            MessageLookupByLibrary.simpleMessage("Calorías"),
        "dataTableColumnCarbs":
            MessageLookupByLibrary.simpleMessage("Carbohidratos (g)"),
        "dataTableColumnDessert":
            MessageLookupByLibrary.simpleMessage("Postre (1 porción)"),
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
            MessageLookupByLibrary.simpleMessage("Pastel de manzana"),
        "dataTableRowCupcake": MessageLookupByLibrary.simpleMessage("Cupcake"),
        "dataTableRowDonut": MessageLookupByLibrary.simpleMessage("Dona"),
        "dataTableRowEclair":
            MessageLookupByLibrary.simpleMessage("Profiterol"),
        "dataTableRowFrozenYogurt":
            MessageLookupByLibrary.simpleMessage("Yogur helado"),
        "dataTableRowGingerbread":
            MessageLookupByLibrary.simpleMessage("Bizcocho de jengibre"),
        "dataTableRowHoneycomb":
            MessageLookupByLibrary.simpleMessage("Caramelo de miel"),
        "dataTableRowIceCreamSandwich":
            MessageLookupByLibrary.simpleMessage("Sándwich de helado"),
        "dataTableRowJellyBean": MessageLookupByLibrary.simpleMessage("Gragea"),
        "dataTableRowLollipop":
            MessageLookupByLibrary.simpleMessage("Paleta de caramelo"),
        "dataTableRowWithHoney": m10,
        "dataTableRowWithSugar": m11,
        "demo2dTransformationsDescription": MessageLookupByLibrary.simpleMessage(
            "Presiona para editar mosaicos y usa los gestos para moverte en la escena. Arrastra el dedo para desplazarte lateralmente, pellizca para hacer zoom o usa dos dedos para rotar. Presiona el botón restablecer para volver a la orientación inicial."),
        "demo2dTransformationsEditTooltip":
            MessageLookupByLibrary.simpleMessage("Editar mosaico"),
        "demo2dTransformationsResetTooltip":
            MessageLookupByLibrary.simpleMessage(
                "Restablecer transformaciones"),
        "demo2dTransformationsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Desplazamiento lateral, zoom y rotación"),
        "demo2dTransformationsTitle":
            MessageLookupByLibrary.simpleMessage("Transformaciones en 2D"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de acciones son un conjunto de opciones que activan una acción relacionada al contenido principal. Deben aparecer de forma dinámica y en contexto en la IU."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de acción"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un diálogo de alerta informa al usuario sobre situaciones que debe conocer para poder seguir usando la app. Un diálogo de alerta tiene un título y una lista de acciones que son opcionales."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con título"),
        "demoBannerDescription": MessageLookupByLibrary.simpleMessage(
            "Los banners muestran mensajes importantes y breves con acciones para realizar. Se requiere una acción del usuario para descartarlos."),
        "demoBannerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mostrando un banner en una lista"),
        "demoBannerTitle": MessageLookupByLibrary.simpleMessage("Banner"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "Las barras de apps inferiores proporcionan acceso a un panel lateral de navegación en la parte inferior y hasta cuatro acciones, incluido el botón de acción flotante."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Muestra la navegación y las acciones en la parte inferior"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de la app inferior"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "Las barras de navegación inferiores muestran entre tres y cinco destinos en la parte inferior de la pantalla. Cada destino se representa con un ícono y una etiqueta de texto opcional. Cuando el usuario presiona un ícono de navegación inferior, se lo redirecciona al destino de navegación de nivel superior que está asociado con el ícono."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etiquetas persistentes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etiqueta seleccionada"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navegación inferior con vistas encadenadas"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navegación inferior"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Agregar"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("MOSTRAR HOJA INFERIOR"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Encabezado"),
        "demoBottomSheetItem": m12,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Una hoja modal inferior es una alternativa a un menú o diálogo que impide que el usuario interactúe con el resto de la app."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Hoja modal inferior"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Una hoja inferior persistente muestra información que suplementa el contenido principal de la app. La hoja permanece visible, incluso si el usuario interactúa con otras partes de la app."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Hoja inferior persistente"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Hojas inferiores modales y persistentes"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Hoja inferior"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Planos, con relieve, con contorno, etc."),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Botones"),
        "demoCardDescription": MessageLookupByLibrary.simpleMessage(
            "Las tarjetas son hojas de material design que se usan para representar información relacionada (como un álbum, una ubicación geográfica, una comida, datos de un contacto, etc.)."),
        "demoCardSubtitle": MessageLookupByLibrary.simpleMessage(
            "Tarjetas de modelo de referencia con esquinas redondeadas"),
        "demoCardTitle": MessageLookupByLibrary.simpleMessage("Tarjetas"),
        "demoChecklistMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú de lista de tareas"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Son elementos compactos que representan una entrada, un atributo o una acción"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de selecciones representan una única selección de un conjunto. Estos incluyen categorías o texto descriptivo relacionado."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de selección"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Corresponde a un indicador de progreso circular de material design que gira para indicar que la aplicación está ocupada."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progreso circular"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Código de demostración"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Se copió el contenido en el portapapeles."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIAR TODO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m13,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Son las constantes de colores y de muestras de color que representan la paleta de material design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos los colores predefinidos"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Colores"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú contextual"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Una hoja de acciones es un estilo específico de alerta que brinda al usuario un conjunto de dos o más opciones relacionadas con el contexto actual. Una hoja de acciones puede tener un título, un mensaje adicional y una lista de acciones."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Hoja de acción"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Corresponde a un indicador de actividad de estilo iOS que gira en sentido horario."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicadores de actividad de estilo iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicador de actividad"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Solo botones de alerta"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con botones"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Un diálogo de alerta informa al usuario sobre situaciones que debe conocer para poder seguir usando la app. Un diálogo de alerta tiene un título, un contenido y una lista de acciones que son opcionales. El título se muestra encima del contenido y las acciones debajo del contenido."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con título"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Diálogos de alerta con estilo de iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertas"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón con el estilo de iOS. Contiene texto o un ícono que aparece o desaparece poco a poco cuando se lo toca. De manera opcional, puede tener un fondo."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Botones con estilo de iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Botones"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Corresponde a una barra de navegación similar a la de iOS. La barra de navegación es una barra de herramientas que básicamente contiene el título de una página en medio de la barra."),
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
            "Corresponde al widget de un selector similar al de iOS que se puede usar para elegir una fecha, una hora o ambas."),
        "demoCupertinoPickerSubtitle": MessageLookupByLibrary.simpleMessage(
            "Selectores de fecha y hora similares a los de iOS"),
        "demoCupertinoPickerTime": MessageLookupByLibrary.simpleMessage("Hora"),
        "demoCupertinoPickerTimer":
            MessageLookupByLibrary.simpleMessage("Temporizador"),
        "demoCupertinoPickerTitle":
            MessageLookupByLibrary.simpleMessage("Selectores"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Corresponde a un widget que implementa el control de contenido con la función \"desliza hacia abajo para actualizar\" similar al de iOS."),
        "demoCupertinoPullToRefreshSubtitle": MessageLookupByLibrary.simpleMessage(
            "Control con la función \"desliza hacia abajo para actualizar\" similar al de iOS"),
        "demoCupertinoPullToRefreshTitle": MessageLookupByLibrary.simpleMessage(
            "Desliza el dedo hacia abajo para actualizar"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Se usa para seleccionar entre varias opciones mutuamente excluyentes. Cuando se selecciona una opción del control segmentado, se anula la selección de las otras."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Control segmentado de estilo iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Control segmentado"),
        "demoCupertinoSliderContinuous": m14,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Un control deslizante se puede utilizar para seleccionar contenido de un conjunto de valores continuos o discretos."),
        "demoCupertinoSliderDiscrete": m15,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "Control deslizante de estilo iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Control deslizante"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "Un interruptor se utiliza para cambiar el estado de una única opción de configuración a activado o desactivado."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Interruptor de estilo iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Corresponde a una barra de pestañas de navegación inferior de estilo iOS. Muestra varias pestañas (la primera activa de forma predeterminada)."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barra de pestañas inferior de estilo iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de pestañas"),
        "demoCupertinoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Un campo de texto permite que el usuario ingrese texto con un teclado de hardware o en pantalla."),
        "demoCupertinoTextFieldPIN":
            MessageLookupByLibrary.simpleMessage("PIN"),
        "demoCupertinoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Campos de texto similares a los de iOS"),
        "demoCupertinoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Los controles deslizantes reflejan un rango de valores en una barra, en la que los usuarios pueden elegir un solo valor o un rango. Los controles se pueden personalizar según un tema."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controles deslizantes personalizados"),
        "demoDataTableDescription": MessageLookupByLibrary.simpleMessage(
            "Las tablas de datos muestran información en un formato similar a una grilla con filas y columnas. Se usan para organizar datos de modo que sean fáciles de analizar, y que los usuarios puedan buscar patrones y estadísticas en ellas."),
        "demoDataTableSubtitle": MessageLookupByLibrary.simpleMessage(
            "Filas y columnas de información"),
        "demoDataTableTitle":
            MessageLookupByLibrary.simpleMessage("Tablas de datos"),
        "demoDatePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Muestra un diálogo que contiene un selector de fecha de material design."),
        "demoDatePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selector de fecha"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, de alerta y de pantalla completa"),
        "demoDialogTitle": MessageLookupByLibrary.simpleMessage("Diálogos"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentación de la API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de filtros usan etiquetas o palabras descriptivas para filtrar contenido."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de filtro"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón plano que muestra una gota de tinta cuando se lo presiona, pero que no tiene sombra. Usa los botones planos en barras de herramientas, diálogos y también intercalados con el relleno."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón plano"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón de acción flotante es un botón de ícono circular que se coloca sobre el contenido para propiciar una acción principal en la aplicación."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón de acción flotante"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "La propiedad fullscreenDialog especifica si la página nueva es un diálogo modal de pantalla completa."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Pantalla completa"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Pantalla completa"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Las listas de cuadrícula funcionan mejor para mostrar datos homogéneos, como imágenes. Cada elemento de una lista de cuadrícula se llama mosaico."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Con pie de página"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Con encabezado"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Solo imagen"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Diseño de filas y columnas"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Listas de cuadrícula"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Información"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de entrada representan datos complejos, como una entidad (persona, objeto o lugar), o texto conversacional de forma compacta."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de entrada"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("No se pudo mostrar la URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Corresponde a un indicador de progreso lineal de material design, también conocido como barra de progreso."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progreso lineal"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Una fila de altura única y fija que suele tener texto y un ícono al principio o al final"),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texto secundario"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Diseños de lista que se puede desplazar"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listas"),
        "demoMenuADisabledMenuItem": MessageLookupByLibrary.simpleMessage(
            "Elemento de menú inhabilitado"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un elemento con un menú de lista de tareas"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Un elemento con un menú contextual"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Un elemento con un menú dividido"),
        "demoMenuAnItemWithASimpleMenu": MessageLookupByLibrary.simpleMessage(
            "Un elemento con un menú simple"),
        "demoMenuChecked": m16,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Primer elemento del menú contextual"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Tercer elemento del menú contextual"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Un menú muestra una lista de opciones en una superficie temporal. Aparece cuando los usuarios interactúan con un botón, una acción u otro control."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Cuatro"),
        "demoMenuGetLink":
            MessageLookupByLibrary.simpleMessage("Obtener vínculo"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Primer elemento del menú"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Tercer elemento del menú"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Segundo elemento del menú"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Uno"),
        "demoMenuPreview":
            MessageLookupByLibrary.simpleMessage("Obtener vista previa"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Quitar"),
        "demoMenuSelected": m17,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Compartir"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Botones de menú y menús simples"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Tres"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menú"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Dos"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Una línea"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Presiona aquí para ver las opciones disponibles en esta demostración."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Ver opciones"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opciones"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Los botones con contorno se vuelven opacos y se elevan cuando se los presiona. A menudo, se combinan con botones con relieve para indicar una acción secundaria alternativa."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón con contorno"),
        "demoPickersShowPicker":
            MessageLookupByLibrary.simpleMessage("MOSTRAR SELECTOR"),
        "demoPickersSubtitle":
            MessageLookupByLibrary.simpleMessage("Selección de fecha y hora"),
        "demoPickersTitle": MessageLookupByLibrary.simpleMessage("Selectores"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lineales, circulares, indeterminados"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicadores de progreso"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Los botones con relieve agregan profundidad a los diseños más que nada planos. Destacan las funciones en espacios amplios o con muchos elementos."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón con relieve"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Los controles deslizantes reflejan un rango de valores en una barra. Es posible que tengan íconos en ambos extremos de la barra que suponen un rango de valores. Son ideales para ajustar opciones de configuración como el volumen y el brillo, o bien para aplicar filtros de imagen."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controles deslizantes de rangos"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú dividido"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "Las casillas de verificación permiten que el usuario seleccione varias opciones de un conjunto. El valor de una casilla de verificación normal es verdadero o falso y el valor de una casilla de verificación de triestado también puede ser nulo."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Casilla de verificación"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Los botones de selección permiten al usuario seleccionar una opción de un conjunto. Usa los botones de selección para una selección exclusiva si crees que el usuario necesita ver todas las opciones disponibles una al lado de la otra."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Selección"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Casillas de verificación, interruptores y botones de selección"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Los interruptores de activado/desactivado cambian el estado de una única opción de configuración. La opción que controla el interruptor, como también el estado en que se encuentra, debería resultar evidente desde la etiqueta intercalada correspondiente."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Interruptor"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Controles de selección"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un diálogo simple le ofrece al usuario la posibilidad de elegir entre varias opciones. Un diálogo simple tiene un título opcional que se muestra encima de las opciones."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Simple"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menú simple"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Continuos"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Control deslizante de rango continuo con tema personalizado"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Continuos con un valor numérico que se puede editar"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Los controles deslizantes reflejan un rango de valores en una barra, en la que los usuarios pueden elegir un solo valor. Son ideales para ajustar opciones de configuración como el volumen y el brillo, o bien para aplicar filtros de imagen."),
        "demoSlidersDiscrete":
            MessageLookupByLibrary.simpleMessage("Discretos"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Control deslizante discreto con tema personalizado"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Valor numérico que se puede editar"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets para seleccionar un valor mediante el gesto de deslizar"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Controles deslizantes"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Presionaste la acción de la barra de notificaciones."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("ACCIÓN"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "MOSTRAR UNA BARRA DE NOTIFICACIONES"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Las barras de notificaciones informan a los usuarios sobre un proceso que realizó o realizará una app. Aparecen temporalmente en la parte inferior de la pantalla. No deberían interrumpir la experiencia del usuario, y no requieren una entrada del usuario para desaparecer."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Las barras de notificaciones muestran mensajes en la parte inferior de la pantalla"),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage(
            "Esta es una barra de notificaciones."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Barras de notificaciones"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Las pestañas organizan el contenido en diferentes pantallas, conjuntos de datos y otras interacciones."),
        "demoTabsNonScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Sin desplazamiento"),
        "demoTabsScrollingTitle":
            MessageLookupByLibrary.simpleMessage("Con desplazamiento"),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pestañas con vistas independientes en las que el usuario puede desplazarse"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Pestañas"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Los campos de texto permiten que los usuarios escriban en una IU. Suelen aparecer en diálogos y formularios."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Correo electrónico"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Ingresa una contraseña."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### - Ingresa un número de teléfono de EE.UU."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Antes de enviar, corrige los errores marcados con rojo."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ocultar contraseña"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Sé breve, ya que esta es una demostración."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Historia de vida"),
        "demoTextFieldNameField":
            MessageLookupByLibrary.simpleMessage("Nombre*"),
        "demoTextFieldNameHasPhoneNumber": m18,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("El nombre es obligatorio."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Incluye hasta 8 caracteres."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Ingresa solo caracteres alfabéticos."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Contraseña*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Las contraseñas no coinciden"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de teléfono*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "El asterisco (*) indica que es un campo obligatorio"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Vuelve a escribir la contraseña*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Sueldo"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mostrar contraseña"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ENVIAR"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Línea única de texto y números editables"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Cuéntanos sobre ti (p. ej., escribe sobre lo que haces o tus pasatiempos)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "¿Cómo te llaman otras personas?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "¿Cómo podemos comunicarnos contigo?"),
        "demoTextFieldYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "Tu dirección de correo electrónico"),
        "demoTimePickerDescription": MessageLookupByLibrary.simpleMessage(
            "Muestra un diálogo que contiene un selector de hora de material design."),
        "demoTimePickerTitle":
            MessageLookupByLibrary.simpleMessage("Selector de hora"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Puedes usar los botones de activación para agrupar opciones relacionadas. Para destacar los grupos de botones de activación relacionados, el grupo debe compartir un contenedor común."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botones de activación"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "La información sobre la herramienta proporciona etiquetas de texto para explicar la función que cumple un botón, o bien otra acción de la interfaz de usuario. Este texto informativo se muestra cuando un usuario coloca el cursor sobre un elemento, lo enfoca o lo mantiene presionado."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Coloca el cursor sobre un elemento o mantenlo presionado para que se muestre la información sobre la herramienta."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mensaje breve que se muestra cuando se mantiene presionado o se coloca el cursor sobre un elemento"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage(
            "Información sobre la herramienta"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dos líneas"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definiciones de distintos estilos de tipografía que se encuentran en material design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos los estilos de texto predefinidos"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografía"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Agregar cuenta"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACEPTAR"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("RECHAZAR"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("DESCARTAR"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "¿Quieres descartar el borrador?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Una demostración de diálogo de pantalla completa"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("GUARDAR"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Diálogo de pantalla completa"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Permite que Google ayude a las apps a determinar la ubicación. Esto implica el envío de datos de ubicación anónimos a Google, incluso cuando no se estén ejecutando apps."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "¿Quieres usar el servicio de ubicación de Google?"),
        "dialogSelectedOption": m19,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Configurar cuenta para copia de seguridad"),
        "dialogShow": MessageLookupByLibrary.simpleMessage("MOSTRAR DIÁLOGO"),
        "dismiss": MessageLookupByLibrary.simpleMessage("DESCARTAR"),
        "fortnightlyDescription": MessageLookupByLibrary.simpleMessage(
            "Una app enfocada en el contenido"),
        "fortnightlyHeadlineArmy": MessageLookupByLibrary.simpleMessage(
            "Reforma interna del \"Ejército verde\""),
        "fortnightlyHeadlineBees":
            MessageLookupByLibrary.simpleMessage("Escasez de abejas obreras"),
        "fortnightlyHeadlineFabrics": MessageLookupByLibrary.simpleMessage(
            "Diseñadores usan la tecnología para crear telas futuristas"),
        "fortnightlyHeadlineFeminists":
            MessageLookupByLibrary.simpleMessage("Feministas toman partido"),
        "fortnightlyHeadlineGasoline":
            MessageLookupByLibrary.simpleMessage("El futuro del combustible"),
        "fortnightlyHeadlineHealthcare": MessageLookupByLibrary.simpleMessage(
            "La revolución silenciosa, pero importante, del sector sanitario"),
        "fortnightlyHeadlineStocks": MessageLookupByLibrary.simpleMessage(
            "A medida que se estanca el mercado de acciones, muchos apuestan a las divisas"),
        "fortnightlyHeadlineWar": MessageLookupByLibrary.simpleMessage(
            "Estadounidenses que viven separados durante la guerra"),
        "fortnightlyLatestUpdates":
            MessageLookupByLibrary.simpleMessage("Novedades más recientes"),
        "fortnightlyMenuBusiness":
            MessageLookupByLibrary.simpleMessage("Negocios"),
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
        "fortnightlyMenuUS": MessageLookupByLibrary.simpleMessage("EE.UU."),
        "fortnightlyMenuWorld":
            MessageLookupByLibrary.simpleMessage("Internacional"),
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
            MessageLookupByLibrary.simpleMessage("ESTILOS Y MÁS"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorías"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galería"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Playa"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Fundidora de bronce"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Pescador"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Mercado de flores"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Preparación del almuerzo"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Mercado"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Puducherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Salina"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Escúteres"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Fabricante de seda"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Thanjavur"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Templo en Thanjavur"),
        "rallyAccountAmount": m20,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Ahorros de vehículo"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Cuenta corriente"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Ahorros del hogar"),
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
            MessageLookupByLibrary.simpleMessage("Tasa de interés"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Interés del comienzo del año fiscal"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Próximo resumen"),
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
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Debes"),
        "rallyBudgetAmount": m27,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Indumentaria"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafeterías"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Compras de comestibles"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "rallyBudgetDetailAmountLeft":
            MessageLookupByLibrary.simpleMessage("Importe disponible"),
        "rallyBudgetDetailAmountUsed":
            MessageLookupByLibrary.simpleMessage("Importe gastado"),
        "rallyBudgetDetailTotalCap":
            MessageLookupByLibrary.simpleMessage("Capital total"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Restante"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Presupuestos"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Una app personal de finanzas"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("RESTANTE"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("ACCEDER"),
        "rallyLoginLabelLogin": MessageLookupByLibrary.simpleMessage("Acceder"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Accede a Rally"),
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
            MessageLookupByLibrary.simpleMessage("Administrar cuentas"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notificaciones"),
        "rallySettingsPaperlessSettings": MessageLookupByLibrary.simpleMessage(
            "Configuración para recibir resúmenes en formato digital"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Contraseña y Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Información personal"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Salir"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documentos de impuestos"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("CUENTAS"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FACTURAS"),
        "rallyTitleBudgets":
            MessageLookupByLibrary.simpleMessage("PRESUPUESTOS"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("DESCRIPCIÓN GENERAL"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("CONFIGURACIÓN"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Acerca de Flutter Gallery"),
        "settingsAttribution":
            MessageLookupByLibrary.simpleMessage("Diseño de TOASTER (Londres)"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Cerrar configuración"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Configuración"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Oscuro"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Envía comentarios"),
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
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("IZQ. a DER."),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "En función de la configuración regional"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("DER. a IZQ."),
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
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Configuración"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("VACIAR CARRITO"),
        "shrineCartItemCount": m28,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("CARRITO"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Envío:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Impuesto:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESORIOS"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TODAS"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("INDUMENTARIA"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("HOGAR"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Una app de venta minorista a la moda"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Contraseña"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nombre de usuario"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("SALIR"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENÚ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SIGUIENTE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Taza de color azul piedra"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Camiseta de cuello cerrado color cereza"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Servilletas de chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Camisa de chambray"),
        "shrineProductClassicWhiteCollar": MessageLookupByLibrary.simpleMessage(
            "Camisa clásica de cuello blanco"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Suéter color arcilla"),
        "shrineProductCopperWireRack": MessageLookupByLibrary.simpleMessage(
            "Estante de metal color cobre"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Camiseta de rayas finas"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Hebras para jardín"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Boina gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Chaqueta estilo gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Juego de tres mesas"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Pañuelo color tierra"),
        "shrineProductGreySlouchTank": MessageLookupByLibrary.simpleMessage(
            "Camiseta gris holgada de tirantes"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Juego de té de cerámica"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Cocina quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantalones azul marino"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Túnica color yeso"),
        "shrineProductPrice": m29,
        "shrineProductQuantity": m30,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Mesa para cuatro"),
        "shrineProductRainwaterTray": MessageLookupByLibrary.simpleMessage(
            "Bandeja para recolectar agua de lluvia"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Mezcla de estilos Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Vestido de verano"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Suéter de hilo liviano"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("Camiseta con mangas"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Bolso de hombro"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Juego de cerámica"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Anteojos Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Aros Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Macetas de suculentas"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Camisa larga de verano"),
        "shrineProductSurfAndPerfShirt": MessageLookupByLibrary.simpleMessage(
            "Camiseta estilo surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Bolso Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Medias varsity"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Camiseta con botones (blanca)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Llavero de tela"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Camisa de rayas finas"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Cinturón"),
        "shrineScreenReaderCart": m31,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Agregar al carrito"),
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
            MessageLookupByLibrary.simpleMessage("Configuración"),
        "signIn": MessageLookupByLibrary.simpleMessage("ACCEDER"),
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Diseño de inicio responsivo"),
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
            MessageLookupByLibrary.simpleMessage("App de inicio"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Agregar"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favoritos"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Buscar"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Compartir")
      };
}
