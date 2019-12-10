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

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'No hay restaurantes', one: '1 restaurante', other: '${totalRestaurants} restaurantes')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Vuelo directo', one: '1 escala', other: '${numberOfStops} escalas')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'No hay propiedades disponibles', one: '1 propiedad disponible', other: '${totalProperties} propiedades disponibles')}";

  static m5(value) => "Artículo ${value}";

  static m6(error) => "No se ha podido copiar en el portapapeles: ${error}";

  static m7(name, phoneNumber) =>
      "El número de teléfono de ${name} es ${phoneNumber}";

  static m8(value) => "Has seleccionado: \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "Cuenta ${accountName} (${accountNumber}) con ${amount}.";

  static m10(amount) =>
      "Has pagado ${amount} de comisiones por utilizar cajeros automáticos este mes.";

  static m11(percent) =>
      "¡Bien hecho! El saldo positivo de tu cuenta corriente está un ${percent} más alto que el mes pasado.";

  static m12(percent) =>
      "Aviso: Has utilizado un ${percent} de tu presupuesto para compras este mes.";

  static m13(amount) => "Has gastado ${amount} en restaurantes esta semana.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Aumenta tu posible deducción fiscal Asigna categorías a 1 transacción sin asignar.', other: 'Aumenta tu posible deducción fiscal Asigna categorías a ${count} transacciones sin asignar.')}";

  static m15(billName, date, amount) =>
      "Fecha límite de la factura ${billName} (${amount}): ${date}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Has gastado ${amountUsed} de ${amountTotal} del presupuesto ${budgetName}. Cantidad restante: ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'NO HAY ELEMENTOS', one: '1 ELEMENTO', other: '${quantity} ELEMENTOS')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Cantidad: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Carrito: 0 artículos', one: 'Carrito: 1 artículo', other: 'Carrito: ${quantity} artículos')}";

  static m21(product) => "Quitar ${product}";

  static m22(value) => "Artículo ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Ejemplos de Flutter en el repositorio de Github"),
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
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Buscar restaurantes por destino"),
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
        "craneFlyStops": m3,
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
        "craneSleepProperties": m4,
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
        "demoBottomSheetItem": m5,
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
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elementos compactos que representan atributos, acciones o texto que se ha introducido"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de elección representan una opción de un conjunto de opciones. Incluyen descripciones o categorías relacionadas."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de elección"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Código de ejemplo"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Se ha copiado en el portapapeles."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIAR TODO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Color y muestra de color que representa la paleta de colores de Material Design."),
        "demoColorsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos los colores predefinidos"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Colores"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Una hoja de acción es un estilo concreto de alerta que presenta al usuario dos o más opciones relacionadas con el contexto; puede incluir un título, un mensaje adicional y una lista con acciones."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Hoja de acción"),
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
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Se usa para seleccionar entre un número de opciones igualmente exclusivas. Si se selecciona una opción en el control segmentado, el resto no se podrán seleccionar."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Control segmentado similar al de iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Control segmentado"),
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
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Información"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Los chips de entrada representan datos complejos de forma compacta, como textos o entidades (por ejemplo, personas, lugares o cosas)."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de entrada"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "No se ha podido mostrar la URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Fila con un altura fija que por lo general incluye texto y un icono al principio o al final."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texto secundario"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Diseños de listas por las que se puede desplazar"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listas"),
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
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Los botones con relieve añaden dimensión a los diseños mayormente planos. Destacan funciones en espacios llenos o amplios."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón con relieve"),
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
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "En las pestañas se organiza contenido en distintas pantallas, conjuntos de datos y otras interacciones."),
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
        "demoTextFieldNameHasPhoneNumber": m7,
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
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Se pueden usar los botones de activar y desactivar para agrupar opciones relacionadas. Para destacar grupos de botones que se pueden activar y desactivar relacionados, los botones deben compartir un mismo contenedor"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Botones que se pueden activar y desactivar"),
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
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Crear cuenta de copia de seguridad"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MOSTRAR CUADRO DE DIÁLOGO"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "ESTILOS Y RECURSOS MULTIMEDIA DE REFERENCIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorías"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galería"),
        "rallyAccountAmount": m9,
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
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Facturas"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Pendiente:"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Ropa"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafeterías"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Alimentación"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurantes"),
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
        "shrineCartItemCount": m17,
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
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
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
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Añadir al carrito"),
        "shrineScreenReaderRemoveProductButton": m21,
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
        "starterAppDescription":
            MessageLookupByLibrary.simpleMessage("Diseño de inicio adaptable"),
        "starterAppDrawerItem": m22,
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
