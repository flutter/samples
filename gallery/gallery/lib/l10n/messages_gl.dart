// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a gl locale. All the
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
  String get localeName => 'gl';

  static m0(value) =>
      "Para ver o código fonte desta aplicación, visita o ${value}.";

  static m1(title) => "Marcador de posición para a pestana ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Non hai restaurantes', one: '1 restaurante', other: '${totalRestaurants} restaurantes')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Directo', one: '1 escala', other: '${numberOfStops} escalas')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Non hai propiedades dispoñibles', one: '1 propiedade dispoñible', other: '${totalProperties} propiedades dispoñibles')}";

  static m5(value) => "Artigo ${value}";

  static m6(error) =>
      "Produciuse un erro ao copiar o contido no portapapeis: ${error}";

  static m7(name, phoneNumber) =>
      "O número de teléfono de ${name} é o ${phoneNumber}";

  static m8(value) => "Seleccionaches: \"${value}\"";

  static m9(accountName, accountNumber, amount) =>
      "A conta ${accountNumber} (${accountName}) contén ${amount}.";

  static m10(amount) =>
      "Gastaches ${amount} en comisións de caixeiro automático este mes";

  static m11(percent) =>
      "Fantástico! A túa conta corrente ten un ${percent} máis de fondos que o mes pasado.";

  static m12(percent) =>
      "Aviso: Consumiches o ${percent} do teu orzamento de compras para este mes.";

  static m13(amount) => "Gastaches ${amount} en restaurantes esta semana.";

  static m14(count) =>
      "${Intl.plural(count, one: 'Aumenta a túa posible dedución de impostos. Escolle categorías para 1 transacción sen asignar.', other: 'Aumenta a túa posible dedución de impostos. Escolle categorías para ${count} transaccións sen asignar.')}";

  static m15(billName, date, amount) =>
      "A data límite da factura (${billName}) é o ${date} e o seu importe é de ${amount}.";

  static m16(budgetName, amountUsed, amountTotal, amountLeft) =>
      "O orzamento ${budgetName} é de ${amountTotal}; utilizouse un importe de ${amountUsed} e queda unha cantidade de ${amountLeft}";

  static m17(quantity) =>
      "${Intl.plural(quantity, zero: 'NON HAI ARTIGOS', one: '1 ARTIGO', other: '${quantity} ARTIGOS')}";

  static m18(price) => "x ${price}";

  static m19(quantity) => "Cantidade: ${quantity}";

  static m20(quantity) =>
      "${Intl.plural(quantity, zero: 'Cesta da compra (sen artigos)', one: 'Cesta da compra (1 artigo)', other: 'Cesta da compra (${quantity} artigos)')}";

  static m21(product) => "Quitar ${product}";

  static m22(value) => "Artigo ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Exemplos de Flutter no repositorio de Github"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Conta"),
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
        "chipBiking": MessageLookupByLibrary.simpleMessage("En bici"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Ascensor"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Cheminea"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grande"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Mediano"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Pequeno"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Activar luces"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Lavadora"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ÁMBAR"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("AZUL"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("GRIS AZULADO"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARRÓN"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CIANO"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("LARANXA INTENSO"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("VIOLETA INTENSO"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERDE"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("GRIS"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ÍNDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("AZUL CLARO"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERDE CLARO"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERDE LIMA"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("LARANXA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSA"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("VIOLETA"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("VERMELLO"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("TURQUESA"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("AMARELO"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Aplicación de viaxes personalizada"),
        "craneEat": MessageLookupByLibrary.simpleMessage("COMIDA"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Nápoles, Italia"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza nun forno de leña"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Estados Unidos"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Muller que suxeita un gran sándwich de pastrami"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bar baleiro con tallos"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Arxentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hamburguesa"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Estados Unidos"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coreano"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("París, Francia"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sobremesa con chocolate"),
        "craneEat5": MessageLookupByLibrary.simpleMessage("Seúl, Corea do Sur"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Sala dun restaurante artístico"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Estados Unidos"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Prato con camaróns"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Estados Unidos"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrada dunha panadaría"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Estados Unidos"),
        "craneEat8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Prato con caranguexos de río"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, España"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mostrador dunha cafetaría con pastas"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorar restaurantes por destino"),
        "craneFly": MessageLookupByLibrary.simpleMessage("VOAR"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé nunha paisaxe nevada con árbores de folla perenne"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("O Cairo, Exipto"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minaretes da mesquita de al-Azhar ao solpor"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneFly11SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Faro de ladrillos xunto ao mar"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palmeiras"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonesia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscina xunto ao mar con palmeiras"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda de campaña nun campo"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Val de Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bandeiras de pregaria fronte a unha montaña nevada"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cidadela de Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cabanas flotantes"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Suíza"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel á beira dun lago e fronte ás montañas"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Cidade de México, México"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vista aérea do Palacio de Belas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Monte Rushmore, Estados Unidos"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Monte Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapur"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("A Habana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Home apoiado nun coche azul antigo"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Explorar voos por destino"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Seleccionar data"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Seleccionar datas"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Escoller destino"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Seleccionar localización"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Escoller orixe"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Seleccionar hora"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Viaxeiros"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("DURMIR"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cabanas flotantes"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("O Cairo, Exipto"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Minaretes da mesquita de al-Azhar ao solpor"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwán"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Rañaceos Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé nunha paisaxe nevada con árbores de folla perenne"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Perú"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cidadela de Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("A Habana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Home apoiado nun coche azul antigo"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Suíza"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel á beira dun lago e fronte ás montañas"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda de campaña nun campo"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina con palmeiras"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Casas coloridas na Praza da Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, México"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruínas maias no alto dun cantil xunto a unha praia"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneSleep9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Faro de ladrillos xunto ao mar"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explorar propiedades por destino"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Gráfico circular"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Torta de queixo"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Biscoito de chocolate"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Selecciona o teu tipo de sobremesa preferido na lista que aparece a continuación. A escolla utilizarase para personalizar a lista de restaurantes recomendados da túa zona."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Descartar"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Non permitir"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Seleccionar sobremesa favorita"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "A túa localización actual mostrarase no mapa e utilizarase para obter indicacións, resultados de busca próximos e duracións estimadas de viaxes."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Queres permitir que Maps acceda á túa localización mentres utilizas a aplicación?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisú"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Botón"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Con fondo"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Mostrar alerta"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "As pílulas de acción son un conxunto de opcións que permiten levar a cabo tarefas relacionadas co contido principal. Deberían aparecer de forma dinámica e contextual na IU."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Pílula de acción"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un cadro de diálogo de alerta informa ao usuario das situacións que requiren unha confirmación. Un cadro de diálogo de alerta ten un título opcional e unha lista opcional de accións."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con título"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "As barras de navegación da parte inferior mostran entre tres e cinco destinos na parte inferior da pantalla. Cada destino represéntase mediante unha icona e unha etiqueta de texto opcional. Ao tocar unha icona de navegación da parte inferior, diríxese ao usuario ao destino de navegación de nivel superior asociado con esa icona."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etiquetas persistentes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etiqueta seleccionada"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navegación pola parte inferior con vistas que se atenúan entre si"),
        "demoBottomNavigationTitle": MessageLookupByLibrary.simpleMessage(
            "Navegación da parte inferior"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Engadir"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("MOSTRAR FOLLA INFERIOR"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Cabeceira"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Unha folla de modo situada na parte inferior é unha alternativa a un menú ou cadro de diálogo e impide ao usuario interactuar co resto da aplicación."),
        "demoBottomSheetModalTitle": MessageLookupByLibrary.simpleMessage(
            "Folla modal da parte inferior"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Unha folla mostrada de xeito permanente na parte inferior que complementa o contido principal da aplicación. Unha folla mostrada de xeito permanente na parte inferior permanece visible incluso cando o usuario interactúa con outras partes da aplicación."),
        "demoBottomSheetPersistentTitle": MessageLookupByLibrary.simpleMessage(
            "Folla situada na parte inferior que se mostra de xeito permanente"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Follas mostradas de xeito permanente e de modo situadas na parte inferior"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Folla inferior"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plano, con relevo, contorno e moito máis"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Botóns"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elementos compactos que representan atributos, accións ou entradas de texto"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Pílulas"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "As pílulas de elección representan unha opción dun conxunto de opcións. Inclúen descricións ou categorías relacionadas."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Pílula de elección"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Mostra de código"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Copiouse o contido no portapapeis."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIAR TODO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Constantes de cores e de coleccións de cores que representan a paleta de cores de material design."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Todas as cores predefinidas"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Cores"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Unha folla de acción é un tipo de alerta que lle ofrece ao usuario un conxunto de dúas ou máis escollas relacionadas co contexto actual. Pode ter un título, unha mensaxe adicional e unha lista de accións."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Folla de acción"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Só botóns de alerta"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con botóns"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Un cadro de diálogo de alerta informa ao usuario das situacións que requiren unha confirmación. Un cadro de diálogo de alerta ten un título opcional, contido opcional e unha lista opcional de accións. O título móstrase enriba do contido, mentres que as accións aparecen debaixo."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerta con título"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Cadros de diálogo de alertas de tipo iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertas"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón de tipo iOS. Utilízase en texto ou nunha icona que se esvaece e volve aparecer cando se toca. Tamén pode dispor de fondo."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Botóns de tipo iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Botóns"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Utilízase para seleccionar unha opción entre varias que se exclúen mutuamente. Cando se selecciona unha opción do control segmentado, anúlase a selección das outras opcións que hai nel."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Control segmentado ao estilo de iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Control segmentado"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simple, alerta e pantalla completa"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Cadros de diálogo"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentación da API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "As pílulas de filtro serven para filtrar contido por etiquetas ou palabras descritivas."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Pílula de filtro"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón plano mostra unha salpicadura de tinta ao premelo pero non sobresae. Usa botóns planos nas barras de ferramentas, nos cadros de diálogo e inseridos con recheo"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón plano"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Un botón de acción flotante é un botón de icona circular pasa por enriba do contido para promover unha acción principal na aplicación."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón de acción flotante"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "A propiedade fullscreenDialog especifica se a páxina entrante é un cadro de diálogo modal de pantalla completa"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Pantalla completa"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Pantalla completa"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Información"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "As pílulas de entrada representan datos complexos de forma compacta, como textos de conversas ou entidades (por exemplo, persoas, lugares ou cousas)."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Pílula de entrada"),
        "demoInvalidURL":
            MessageLookupByLibrary.simpleMessage("Non se puido mostrar o URL:"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Unha única liña de altura fixa que normalmente contén texto así como unha icona ao principio ou ao final."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texto secundario"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Desprazando deseños de listas"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listas"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Unha liña"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Toca aquí para ver as opcións dispoñibles nesta demostración."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Ver opcións"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opcións"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Os botóns de contorno vólvense opacos e elévanse ao premelos. Adoitan estar emparellados con botóns con relevo para indicar unha acción secundaria e alternativa."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón de contorno"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Os botóns con relevo engaden dimensión a deseños principalmente planos. Destacan funcións en espazos reducidos ou amplos."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botón con relevo"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "As caixas de verificación permiten que os usuarios seleccionen varias opcións dun conxunto e adoitan ter dous valores (verdadeiro ou falso), pero tamén poden incluír un terceiro (nulo)."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Caixa de verificación"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Os botóns de opción permiten que os usuarios seleccionen unha opción dun conxunto. Utilízaos se queres que os usuarios escollan unha única opción, pero á vez queres mostrarlles todas as opcións dispoñibles."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Botón de opción"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Caixas de verificación, botóns de opción e interruptores"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Os interruptores de activación e desactivación controlan o estado dunha soa opción de axuste. A etiqueta inserida do interruptor correspondente debería indicar de forma clara a opción que controla e o estado no que se atopa."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Interruptor"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Controis de selección"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Un cadro de diálogo simple ofrécelle ao usuario unha escolla entre varias opcións. Ten un título opcional que se mostra enriba das escollas."),
        "demoSimpleDialogTitle": MessageLookupByLibrary.simpleMessage("Simple"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "As pestanas permiten organizar o contido en diversas pantallas, conxuntos de datos e outras interaccións."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Pestanas con vistas que se poden desprazar de forma independente"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Pestanas"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Os campos de texto permiten aos usuarios escribir texto nunha IU. Adoitan aparecer en formularios e cadros de diálogo."),
        "demoTextFieldEmail":
            MessageLookupByLibrary.simpleMessage("Correo electrónico"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Escribe un contrasinal."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-####: Introduce un número de teléfono dos EUA."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Corrixe os erros marcados en vermello antes de enviar."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ocultar contrasinal"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Sé breve, isto só é unha demostración."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biografía"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nome*"),
        "demoTextFieldNameHasPhoneNumber": m7,
        "demoTextFieldNameRequired": MessageLookupByLibrary.simpleMessage(
            "É necesario indicar un nome."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("Non máis de 8 caracteres."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Introduce só caracteres alfabéticos."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Contrasinal*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "Os contrasinais non coinciden"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de teléfono*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "O símbolo \"*\" indica que o campo é obrigatorio"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Volve escribir o contrasinal*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salario"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mostrar contrasinal"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ENVIAR"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Unha soa liña de texto editable e números"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Fálanos de ti (por exemplo, escribe en que traballas ou que pasatempos tes)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Como te chama a xente?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "En que número podemos contactar contigo?"),
        "demoTextFieldYourEmailAddress": MessageLookupByLibrary.simpleMessage(
            "O teu enderezo de correo electrónico"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Os botóns de activación/desactivación poden utilizarse para agrupar opcións relacionadas. Para destacar grupos de botóns de activación/desactivación relacionados, un deles debe ter un contedor común"),
        "demoToggleButtonTitle": MessageLookupByLibrary.simpleMessage(
            "Botóns de activación/desactivación"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Dúas liñas"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definicións dos diferentes estilos tipográficos atopados en material design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos os estilos de texto predefinidos"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografía"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Engadir conta"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACEPTAR"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NON ACEPTAR"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("DESCARTAR"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "Queres descartar o borrador?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Unha demostración dun cadro de diálogo de pantalla completa"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("GARDAR"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Cadro de diálogo de pantalla completa"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Permite que Google axude ás aplicacións a determinar a localización. Esta acción supón o envío de datos de localización anónimos a Google, aínda que non se execute ningunha aplicación."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Queres utilizar o servizo de localización de Google?"),
        "dialogSelectedOption": m8,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Definir conta para a copia de seguranza"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MOSTRAR CADRO DE DIÁLOGO"),
        "homeCategoryReference":
            MessageLookupByLibrary.simpleMessage("REFERENCE STYLES & MEDIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorías"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galería"),
        "rallyAccountAmount": m9,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Aforros para o coche"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Comprobando"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Aforros para a casa"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Vacacións"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Propietario da conta"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage("Interese porcentual anual"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage(
                "Intereses pagados o ano pasado"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Tipo de interese"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage(
                "Interese do ano ata a data de hoxe"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Seguinte extracto"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Contas"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alertas"),
        "rallyAlertsMessageATMFees": m10,
        "rallyAlertsMessageCheckingAccount": m11,
        "rallyAlertsMessageHeadsUpShopping": m12,
        "rallyAlertsMessageSpentOnRestaurants": m13,
        "rallyAlertsMessageUnassignedTransactions": m14,
        "rallyBillAmount": m15,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Facturas"),
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("Pendentes"),
        "rallyBudgetAmount": m16,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Roupa"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafetarías"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Alimentos"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "rallyBudgetLeft":
            MessageLookupByLibrary.simpleMessage("Cantidade restante"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Orzamentos"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Aplicación financeira persoal"),
        "rallyFinanceLeft":
            MessageLookupByLibrary.simpleMessage("É A CANTIDADE RESTANTE"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("INICIAR SESIÓN"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Iniciar sesión"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Inicia sesión en Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Non tes unha conta?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Contrasinal"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Lembrarme"),
        "rallyLoginSignUp": MessageLookupByLibrary.simpleMessage("REXISTRARSE"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nome de usuario"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("VER TODO"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Ver todas as contas"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Ver todas as facturas"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Ver todos os orzamentos"),
        "rallySettingsFindAtms": MessageLookupByLibrary.simpleMessage(
            "Buscar caixeiros automáticos"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Axuda"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Xestionar contas"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notificacións"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Configuración sen papel"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Contrasinal e Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Información persoal"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Pechar sesión"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documentos fiscais"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("CONTAS"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FACTURAS"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ORZAMENTOS"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("VISIÓN XERAL"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("CONFIGURACIÓN"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Acerca da Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Deseñado por TOASTER en Londres"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Pechar configuración"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Configuración"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Escuro"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Enviar comentarios"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Claro"),
        "settingsLocale":
            MessageLookupByLibrary.simpleMessage("Configuración rexional"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mecánica da plataforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Cámara lenta"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Dirección do texto"),
        "settingsTextDirectionLTR":
            MessageLookupByLibrary.simpleMessage("De esquerda a dereita"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage(
                "Baseada na configuración rexional"),
        "settingsTextDirectionRTL":
            MessageLookupByLibrary.simpleMessage("De dereita a esquerda"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Axuste de texto"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Moi grande"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Grande"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Pequena"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Configuración"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("BALEIRAR CESTA"),
        "shrineCartItemCount": m17,
        "shrineCartPageCaption": MessageLookupByLibrary.simpleMessage("CESTA"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Envío:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Imposto:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACCESORIOS"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TODO"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ROUPA"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("CASA"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("Aplicación de venda de moda"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Contrasinal"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nome de usuario"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("PECHAR SESIÓN"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENÚ"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SEGUINTE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Cunca de pedra azul"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Camiseta de vieira de cor vermello cereixa"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Panos de mesa de chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Camisa de chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Colo branco clásico"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Xersei de cor arxila"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Estante de fío de cobre"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Camiseta de raias finas"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Praia con xardín"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Pucho de tipo Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Chaqueta estilo gentry"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Accesorios de escritorio dourados"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Bufanda alaranxada"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Depósito curvado gris"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Xogo de té Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Cociña quattro"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Pantalóns azul mariño"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Chaqueta cor xeso"),
        "shrineProductPrice": m18,
        "shrineProductQuantity": m19,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Mesa redonda"),
        "shrineProductRainwaterTray": MessageLookupByLibrary.simpleMessage(
            "Rexistro para a auga da chuvia"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Blusa cruzada Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Chaqueta cor mar"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Xersei de cor celeste"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Camiseta de manga corta arremangada"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Bolso de ombreiro"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Xogo de cerámica Soothe"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Lentes de sol Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Pendentes Strut"),
        "shrineProductSucculentPlanters": MessageLookupByLibrary.simpleMessage(
            "Testos para plantas suculentas"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Vestido Sunshirt"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Camiseta Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Saco de vagabundo"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Calcetíns universitarios"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Camiseta henley (branca)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Chaveiro de punto"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage(
                "Camisa de raia diplomática branca"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Cinto Whitney"),
        "shrineScreenReaderCart": m20,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Engadir á cesta"),
        "shrineScreenReaderRemoveProductButton": m21,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Pechar a cesta"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Pechar o menú"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Abrir o menú"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Quitar o artigo"),
        "shrineTooltipSearch": MessageLookupByLibrary.simpleMessage("Buscar"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Configuración"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Deseño para principiantes adaptado"),
        "starterAppDrawerItem": m22,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Corpo"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BOTÓN"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Titular"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtítulo"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Título"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplicación de principiante"),
        "starterAppTooltipAdd": MessageLookupByLibrary.simpleMessage("Engadir"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favorito"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Buscar"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Compartir")
      };
}
