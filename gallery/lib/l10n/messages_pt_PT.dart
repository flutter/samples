// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt_PT locale. All the
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
  String get localeName => 'pt_PT';

  static m0(value) =>
      "Para ver o código-fonte desta aplicação, visite ${value}.";

  static m1(title) => "Marcador de posição para o separador ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Sem restaurantes', one: '1 restaurante', other: '${totalRestaurants} restaurantes')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Voo direto', one: '1 paragem', other: '${numberOfStops} paragens')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Sem propriedades disponíveis', one: '1 propriedade disponível', other: '${totalProperties} propriedades disponíveis')}";

  static m5(value) => "Item ${value}";

  static m6(error) => "Falha ao copiar para a área de transferência: ${error}.";

  static m7(value) => "Contínuo: ${value}";

  static m8(value) => "Discreto: ${value}";

  static m9(value) => "Selecionado: ${value}";

  static m10(value) => "Selecionado: ${value}";

  static m11(name, phoneNumber) =>
      "O número de telefone de ${name} é ${phoneNumber}.";

  static m12(value) => "Selecionou: \"${value}\"";

  static m13(accountName, accountNumber, amount) =>
      "Conta ${accountName} ${accountNumber} com ${amount}.";

  static m14(amount) => "Gastou ${amount} em taxas de multibanco neste mês.";

  static m15(percent) =>
      "Bom trabalho! A sua conta corrente é ${percent} superior ao mês passado.";

  static m16(percent) =>
      "Aviso: utilizou ${percent} do orçamento para compras deste mês.";

  static m17(amount) => "Gastou ${amount} em restaurantes nesta semana.";

  static m18(count) =>
      "${Intl.plural(count, one: 'Aumente a sua dedução fiscal potencial. Atribua categorias a 1 transação não atribuída.', other: 'Aumente a sua dedução fiscal potencial. Atribua categorias a ${count} transações não atribuídas.')}";

  static m19(billName, date, amount) =>
      "Fatura ${billName} com data limite de pagamento a ${date} no valor de ${amount}.";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "Orçamento ${budgetName} com ${amountUsed} utilizado(s) de ${amountTotal}, com ${amountLeft} restante(s).";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'SEM ITENS', one: '1 ITEM', other: '${quantity} ITENS')}";

  static m22(price) => "x ${price}";

  static m23(quantity) => "Quantidade: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'Carrinho de compras, nenhum artigo', one: 'Carrinho de compras, 1 artigo', other: 'Carrinho de compras, ${quantity} artigos')}";

  static m25(product) => "Remover ${product}";

  static m26(value) => "Item ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Repositório do GitHub de amostras do Flutter"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Voltar à galeria"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Entalhe"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Posição do botão de ação flutuante"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Ancorado – no centro"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Ancorado – no final"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Flutuante – no centro"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Flutuante – no final"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Conta"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarme"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Calendário"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Câmara"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Comentários"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BOTÃO"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Criar"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Ciclismo"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Elevador"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Lareira"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grande"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Médio"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Pequeno"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Acender as luzes"),
        "chipWasher": MessageLookupByLibrary.simpleMessage("Máquina de lavar"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ÂMBAR"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("AZUL"),
        "colorsBlueGrey":
            MessageLookupByLibrary.simpleMessage("CINZENTO AZULADO"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("CASTANHO"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("AZUL-TURQUESA"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("LARANJA ESCURO"),
        "colorsDeepPurple": MessageLookupByLibrary.simpleMessage("ROXO ESCURO"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERDE"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("CINZENTO"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ÍNDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("AZUL CLARO"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERDE CLARO"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("LIMA"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("LARANJA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("COR-DE-ROSA"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ROXO"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("VERMELHO"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("AZUL ESVERDEADO"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("AMARELO"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Uma aplicação de viagens personalizada."),
        "craneEat": MessageLookupByLibrary.simpleMessage("COMER"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Nápoles, Itália"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piza num forno a lenha"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Estados Unidos"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mulher a segurar numa sanduíche de pastrami enorme"),
        "craneEat1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bar vazio com bancos ao estilo de um diner americano"),
        "craneEat2": MessageLookupByLibrary.simpleMessage("Córdoba, Argentina"),
        "craneEat2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Hambúrguer"),
        "craneEat3":
            MessageLookupByLibrary.simpleMessage("Portland, Estados Unidos"),
        "craneEat3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Taco coreano"),
        "craneEat4": MessageLookupByLibrary.simpleMessage("Paris, França"),
        "craneEat4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Sobremesa de chocolate"),
        "craneEat5":
            MessageLookupByLibrary.simpleMessage("Seul, Coreia do Sul"),
        "craneEat5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Zona de lugares sentados num restaurante artístico"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Estados Unidos"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Prato de camarão"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Estados Unidos"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrada de padaria"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Estados Unidos"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Prato de lagostins"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madrid, Espanha"),
        "craneEat9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Balcão de café com bolos"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Explore restaurantes por destino."),
        "craneFly": MessageLookupByLibrary.simpleMessage("VOAR"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé numa paisagem com árvores de folha perene e neve"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Cairo, Egito"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres da Mesquita de Al-Azhar durante o pôr do sol"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Farol de tijolo no mar"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina com palmeiras"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonésia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscina voltada para o mar com palmeiras"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda num campo"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Vale de Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bandeiras de oração em frente a uma montanha com neve"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cidadela de Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bangalôs sobre a água"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Suíça"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel voltado para o lago em frente a montanhas"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Cidade do México, México"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vista aérea do Palacio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Monte Rushmore, Estados Unidos"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Monte Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapura"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homem encostado a um automóvel azul antigo"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Explore voos por destino."),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Selecionar data"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Selecionar datas"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Escolher destino"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Pessoas"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Selecionar localização"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Escolher origem"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Selecionar hora"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Viajantes"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("DORMIR"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bangalôs sobre a água"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Cairo, Egito"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres da Mesquita de Al-Azhar durante o pôr do sol"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipé, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Arranha-céus Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé numa paisagem com árvores de folha perene e neve"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cidadela de Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homem encostado a um automóvel azul antigo"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Suíça"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel voltado para o lago em frente a montanhas"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Tenda num campo"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina com palmeiras"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Apartamentos coloridos na Praça Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, México"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruínas maias num penhasco sobre uma praia"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Farol de tijolo no mar"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Explore propriedades por destino."),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Tarte de maçã"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie de chocolate"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Selecione o seu tipo de sobremesa favorito na lista abaixo. A sua seleção será utilizada para personalizar a lista sugerida de restaurantes na sua área."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Rejeitar"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Não permitir"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Selecione a sobremesa favorita"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "A sua localização atual será apresentada no mapa e utilizada para direções, resultados da pesquisa nas proximidades e tempos de chegada estimados."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Pretende permitir que o \"Maps\" aceda à sua localização enquanto estiver a utilizar a aplicação?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Botão"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Com fundo"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Mostrar alerta"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Página inicial"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Perfil"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Os chips de ação são um conjunto de opções que acionam uma ação relacionada com o conteúdo principal. Os chips de ação devem aparecer dinâmica e contextualmente numa IU."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de ação"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Uma caixa de diálogo de alerta informa o utilizador acerca de situações que requerem confirmação. Uma caixa de diálogo de alerta tem um título opcional e uma lista de ações opcional."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerta com título"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "As barras de aplicações inferiores fornecem acesso a uma gaveta de navegação inferior e até quatro ações, incluindo o botão de ação flutuante."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Apresenta a navegação e as ações na parte inferior."),
        "demoBottomAppBarTitle": MessageLookupByLibrary.simpleMessage(
            "Barra de aplicações inferior"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "As barras de navegação inferiores apresentam três a cinco destinos na parte inferior de um ecrã. Cada destino é representado por um ícone e uma etiqueta de texto opcional. Ao tocar num ícone de navegação inferior, o utilizador é direcionado para o destino de navegação de nível superior associado a esse ícone."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etiquetas persistentes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etiqueta selecionada"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navegação inferior com vistas cruzadas"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navegação inferior"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Adicionar"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("MOSTRAR SECÇÃO INFERIOR"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Cabeçalho"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Uma secção inferior modal é uma alternativa a um menu ou uma caixa de diálogo e impede o utilizador de interagir com o resto da aplicação."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Secção inferior modal"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Uma secção inferior persistente apresenta informações que complementam o conteúdo principal da aplicação. Uma secção inferior persistente permanece visível mesmo quando o utilizador interage com outras partes da aplicação."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Secção inferior persistente"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Secções inferiores persistentes e modais"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Secção inferior"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Sem relevo, em relevo, de contorno e muito mais"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Botões"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Menu da lista de verificação"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elementos compactos que representam uma introdução, um atributo ou uma ação."),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Chips"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Os chips de escolha representam uma única escolha num conjunto. Os chips de escolha contêm texto descritivo ou categorias."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de escolha"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um indicador de progresso circular de material design, que gira para indicar que uma aplicação está ocupada."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progresso circular"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Exemplo de código"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Copiado para a área de transferência."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIAR TUDO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "A cor e a amostra de cores constantes que representam a paleta de cores do material design."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Todas as cores predefinidas"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Cores"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu de contexto"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Uma página de ações é um estilo específico de alerta que apresenta ao utilizador um conjunto de duas ou mais opções relacionadas com o contexto atual. Uma página de ações pode ter um título, uma mensagem adicional e uma lista de ações."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Página Ações"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um indicador de atividade ao estilo do iOS que gira no sentido dos ponteiros do relógio."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicadores de atividade ao estilo do iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicador de atividade"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Apenas botões de alerta"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerta com botões"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Uma caixa de diálogo de alerta informa o utilizador acerca de situações que requerem confirmação. Uma caixa de diálogo de alerta tem um título opcional, conteúdo opcional e uma lista de ações opcional. O título é apresentado acima do conteúdo e as ações são apresentadas abaixo do conteúdo."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerta com título"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Caixas de diálogo de alertas ao estilo do iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertas"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Um botão ao estilo do iOS. Abrange texto e/ou um ícone que aumenta e diminui gradualmente com o toque. Opcionalmente, pode ter um fundo."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Botões ao estilo do iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Botões"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Uma barra de navegação ao estilo do iOS. A barra de navegação é uma barra de ferramentas que consiste, no mínimo, num título da página no meio da barra de ferramentas."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Barra de navegação ao estilo do iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de navegação"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um widget que implementa o controlo de puxar para atualizar o conteúdo ao estilo do iOS."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Controlo de puxar para atualizar ao estilo do iOS"),
        "demoCupertinoPullToRefreshTitle":
            MessageLookupByLibrary.simpleMessage("Puxe para atualizar"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Utilizado para selecionar entre um número de opções que se excluem mutuamente. Quando uma opção no controlo segmentado estiver selecionada, as outras opções no mesmo deixam de estar selecionadas."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Controlo segmentado ao estilo do iOS."),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Controlo segmentado"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "É possível utilizar um controlo de deslize para selecionar a partir de um conjunto de valores contínuo ou discreto."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "Controlo de deslize ao estilo do iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Controlo de deslize"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "É utilizado um interruptor para alternar entre o estado ativado/desativado de uma definição individual."),
        "demoCupertinoSwitchSubtitle": MessageLookupByLibrary.simpleMessage(
            "Interruptor ao estilo do iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Uma barra de separadores de navegação inferior ao estilo do iOS. Apresenta vários separadores, sendo que um separador está ativo: por predefinição, o primeiro separador."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barra de separadores inferior ao estilo do iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de separadores"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Os controlos de deslize refletem um intervalo de valores ao longo de uma barra, a partir do qual os utilizadores podem selecionar um valor único ou um intervalo de valores. É possível escolher um tema e personalizar os controlos de deslize."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controlos de deslize personalizados"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simples, alerta e ecrã inteiro"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Caixas de diálogo"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentação da API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Os chips de filtro utilizam etiquetas ou palavras descritivas como uma forma de filtrar conteúdo."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de filtro"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Um botão sem relevo apresenta um salpico de tinta ao premir, mas não levanta. Utilize botões sem relevo em barras de ferramentas, caixas de diálogo e inline sem preenchimento."),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão sem relevo"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Um botão de ação flutuante é um botão de ícone circular que flutua sobre o conteúdo para promover uma ação principal na aplicação."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão de ação flutuante"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "A propriedade fullscreenDialog especifica se a página recebida é uma caixa de diálogo modal em ecrã inteiro."),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Ecrã inteiro"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Ecrã Inteiro"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "As Listas de grelhas são mais adequadas para apresentar dados homogéneos, normalmente, imagens. Cada item numa lista de grelhas é denominado mosaico."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Com rodapé"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Com cabeçalho"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Apenas imagem"),
        "demoGridListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Esquema de linhas e colunas."),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Listas de grelhas"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informações"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Os chips de introdução representam informações complexas, como uma entidade (uma pessoa, um local ou uma coisa) ou um texto de conversa, numa forma compacta."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Chip de introdução"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Não foi possível apresentar o URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um indicador de progresso linear de material design, também denominado de barra de progresso."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progresso linear"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Uma linha única de altura fixa que, normalmente, contém algum texto, bem como um ícone à esquerda ou à direita."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texto secundário"),
        "demoListsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Esquemas de listas de deslocamento"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listas"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Item de menu desativado"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Um item com um menu da lista de verificação"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Um item com um menu de contexto"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Um item com um menu em secções"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Um item com um menu simples"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne": MessageLookupByLibrary.simpleMessage(
            "Primeiro item de menu de contexto"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Terceiro item de menu de contexto"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Um menu apresenta uma lista de opções numa superfície temporária. Estas são apresentadas quando os utilizadores interagem com um botão, uma ação ou outro controlo."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Quatro"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Obter link"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Primeiro item de menu"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Terceiro item de menu"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Segundo item de menu"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Um"),
        "demoMenuPreview":
            MessageLookupByLibrary.simpleMessage("Pré-visualizar"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Remover"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Partilhar"),
        "demoMenuSubtitle": MessageLookupByLibrary.simpleMessage(
            "Botões de menu e menus simples"),
        "demoMenuThree": MessageLookupByLibrary.simpleMessage("Três"),
        "demoMenuTitle": MessageLookupByLibrary.simpleMessage("Menu"),
        "demoMenuTwo": MessageLookupByLibrary.simpleMessage("Dois"),
        "demoOneLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Uma linha"),
        "demoOptionsFeatureDescription": MessageLookupByLibrary.simpleMessage(
            "Toque aqui para ver as opções disponíveis para esta demonstração."),
        "demoOptionsFeatureTitle":
            MessageLookupByLibrary.simpleMessage("Veja as opções"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opções"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Os botões de contorno ficam opacos e são elevados quando premidos. Muitas vezes, são sincronizados com botões em relevo para indicar uma ação secundária alternativa."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão de contorno"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Linear, circular, indeterminado"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicadores de progresso"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Os botões em relevo adicionam dimensão a esquemas maioritariamente planos. Estes botões realçam funções em espaços ocupados ou amplos."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão em relevo"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Os controlos de deslize refletem um intervalo de valores ao longo de uma barra. Podem ter ícones em ambas as extremidades da barra que refletem um intervalo de valores. São ideais para ajustar definições como o volume, o brilho ou aplicar filtros de imagem."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controlos de deslize com intervalo"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu em secções"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "As caixas de verificação permitem que o utilizador selecione várias opções num conjunto. O valor de uma caixa de verificação normal é verdadeiro ou falso e o valor de uma caixa de verificação de três estados também pode ser nulo."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Caixa de verificação"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Os botões de opção permitem ao utilizador selecionar uma opção num conjunto. Utilize os botões de opção para uma seleção exclusiva se considerar que o utilizador necessita de ver todas as opções disponíveis lado a lado."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Opção"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Caixas de verificação, botões de opção e interruptores"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "Os interruptores ativar/desativar alteram o estado de uma única opção de definições. A opção que o interruptor controla e o estado em que se encontra devem estar evidenciados na etiqueta inline correspondente."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Interruptor"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Controlos de seleção"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Uma caixa de diálogo simples oferece ao utilizador uma escolha entre várias opções. Uma caixa de diálogo simples tem um título opcional que é apresentado acima das opções."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Simples"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu simples"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Contínuo"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Controlo de deslize com intervalo contínuo e tema personalizado"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Contínuo com valor numérico editável"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Os controlos de deslize refletem um intervalo de valores ao longo de uma barra, a partir do qual os utilizadores podem selecionar um único valor. São ideais para ajustar definições como o volume, o brilho ou aplicar filtros de imagem."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Discreto"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Controlo de deslize discreto com tema personalizado"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Valor numérico editável"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets para selecionar um valor ao deslizar rapidamente."),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Controlos de deslize"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Premiu a ação da barra de comentários."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("AÇÃO"),
        "demoSnackbarsButtonLabel": MessageLookupByLibrary.simpleMessage(
            "MOSTRAR UMA BARRA DE COMENTÁRIOS"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "As barras de comentários informam os utilizadores acerca de um processo que uma aplicação executou ou vai executar. Surgem temporariamente na parte inferior do ecrã. Não devem interromper a experiência do utilizador e não requerem uma ação do utilizador para desaparecerem."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "As barras de comentários mostram mensagens na parte inferior do ecrã."),
        "demoSnackbarsText": MessageLookupByLibrary.simpleMessage(
            "Isto é uma barra de comentários."),
        "demoSnackbarsTitle":
            MessageLookupByLibrary.simpleMessage("Barras de comentários"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "Os separadores organizam o conteúdo em diferentes ecrãs, conjuntos de dados e outras interações."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Separadores com vistas deslocáveis independentes."),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Separadores"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Os campos de texto permitem aos utilizadores introduzirem texto numa IU. Normalmente, são apresentados em formulários e caixas de diálogo."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("Email"),
        "demoTextFieldEnterPassword": MessageLookupByLibrary.simpleMessage(
            "Introduza uma palavra-passe."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(###) ###-#### – Introduza um número de telefone dos EUA."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Corrija os erros a vermelho antes de enviar."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ocultar palavra-passe"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Seja breve, é apenas uma demonstração."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("História da vida"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nome*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired":
            MessageLookupByLibrary.simpleMessage("É necessário o nome."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("No máximo, 8 carateres."),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Introduza apenas carateres alfabéticos."),
        "demoTextFieldPassword":
            MessageLookupByLibrary.simpleMessage("Palavra-passe*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage(
                "As palavras-passe não correspondem."),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telefone*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* indica um campo obrigatório"),
        "demoTextFieldRetypePassword": MessageLookupByLibrary.simpleMessage(
            "Escreva novamente a palavra-passe*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salário"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mostrar palavra-passe"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ENVIAR"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Única linha de texto e números editáveis."),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Fale-nos sobre si (por exemplo, escreva o que faz ou fale sobre os seus passatempos)"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage("Que nome lhe chamam?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Podemos entrar em contacto consigo através de que número?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("O seu endereço de email"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Os botões ativar/desativar podem ser utilizados para agrupar opções relacionadas. Para realçar grupos de botões ativar/desativar relacionados, um grupo pode partilhar um contentor comum."),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botões ativar/desativar"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "As sugestões fornecem etiquetas de texto que ajudam a explicar a função de um botão ou outra ação da interface do utilizador. As sugestões apresentam texto informativo quando os utilizadores colocam o cursor do rato sobre, focam ou mantêm premido um elemento."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Mantenha premido ou coloque o cursor do rato sobre a sugestão."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mensagem curta apresentada ao manter premido ou ao colocar o cursor do rato sobre um elemento."),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Sugestões"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Duas linhas"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definições para os vários estilos tipográficos encontrados no material design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos os estilos de texto predefinidos."),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografia"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Adicionar conta"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("ACEITAR"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("NÃO ACEITAR"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("REJEITAR"),
        "dialogDiscardTitle": MessageLookupByLibrary.simpleMessage(
            "Pretende rejeitar o rascunho?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Uma demonstração de uma caixa de diálogo em ecrã inteiro"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("GUARDAR"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Caixa de diálogo em ecrã inteiro"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Permita que a Google ajude as aplicações a determinar a localização. Isto significa enviar dados de localização anónimos para a Google, mesmo quando não estiverem a ser executadas aplicações."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Pretende utilizar o serviço de localização da Google?"),
        "dialogSelectedOption": m12,
        "dialogSetBackup": MessageLookupByLibrary.simpleMessage(
            "Defina a conta de cópia de segurança"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MOSTRAR CAIXA DE DIÁLOGO"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "ESTILOS E MULTIMÉDIA DE REFERÊNCIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorias"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Praia"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Trabalhos em bronze"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Pescador"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Mercado das Flores"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Preparação do almoço"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Mercado"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Quinta do sal"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scooters"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Fabricante de seda"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Templo Thanjavur"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Poupanças com o automóvel"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Corrente"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Poupanças para casa"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Férias"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Proprietário da conta"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Percentagem do rendimento anual"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Juros pagos no ano passado"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Taxa de juro"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Juros do ano até à data"),
        "rallyAccountDetailDataNextStatement":
            MessageLookupByLibrary.simpleMessage("Próximo extrato"),
        "rallyAccountTotal": MessageLookupByLibrary.simpleMessage("Total"),
        "rallyAccounts": MessageLookupByLibrary.simpleMessage("Contas"),
        "rallyAlerts": MessageLookupByLibrary.simpleMessage("Alertas"),
        "rallyAlertsMessageATMFees": m14,
        "rallyAlertsMessageCheckingAccount": m15,
        "rallyAlertsMessageHeadsUpShopping": m16,
        "rallyAlertsMessageSpentOnRestaurants": m17,
        "rallyAlertsMessageUnassignedTransactions": m18,
        "rallyBillAmount": m19,
        "rallyBills": MessageLookupByLibrary.simpleMessage("Faturas"),
        "rallyBillsDue":
            MessageLookupByLibrary.simpleMessage("Data de conclusão"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Vestuário"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafés"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Produtos de mercearia"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Restante(s)"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Orçamentos"),
        "rallyDescription": MessageLookupByLibrary.simpleMessage(
            "Uma aplicação de finanças pessoal"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("RESTANTE(S)"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("INICIAR SESSÃO"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Início de sessão"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Inicie sessão no Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Não tem uma conta?"),
        "rallyLoginPassword":
            MessageLookupByLibrary.simpleMessage("Palavra-passe"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Memorizar-me"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("INSCREVER-SE"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nome de utilizador"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("VER TUDO"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Ver todas as contas"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Ver todas as faturas"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Ver todos os orçamentos"),
        "rallySettingsFindAtms":
            MessageLookupByLibrary.simpleMessage("Localizar caixas multibanco"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Ajuda"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gerir contas"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notificações"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Definições sem papel"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Código secreto e Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Informações pessoais"),
        "rallySettingsSignOut":
            MessageLookupByLibrary.simpleMessage("Terminar sessão"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documentos fiscais"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("CONTAS"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FATURAS"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ORÇAMENTOS"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("VISTA GERAL"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("DEFINIÇÕES"),
        "settingsAbout": MessageLookupByLibrary.simpleMessage(
            "Acerca da galeria do Flutter"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Criado por TOASTER em Londres"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Fechar definições"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Definições"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Escuro"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Enviar comentários"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Claro"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Local"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mecânica da plataforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Câmara lenta"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Direção do texto"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Com base no local"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Escala do texto"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Enorme"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Grande"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Pequeno"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Definições"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("LIMPAR CARRINHO"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("CARRINHO"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Envio:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Imposto:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACESSÓRIOS"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TODOS"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("VESTUÁRIO"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("LAR"),
        "shrineDescription": MessageLookupByLibrary.simpleMessage(
            "Uma aplicação de retalho com estilo"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Palavra-passe"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nome de utilizador"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("TERMINAR SESSÃO"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("SEGUINTE"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Caneca de pedra azul"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "T-shirt rendilhada em cor cereja"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Guardanapos Chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Camisa Chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Colarinho branco clássico"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Camisola em cor de barro"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Grade em fio de cobre"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("T-shirt Fine lines"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Ambiente de jardim"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Chapéu Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Casaco Gentry"),
        "shrineProductGiltDeskTrio":
            MessageLookupByLibrary.simpleMessage("Trio de mesas Gilt"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Cachecol ruivo"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Top largo cinzento"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Conjunto de chá Hurrahs"),
        "shrineProductKitchenQuattro":
            MessageLookupByLibrary.simpleMessage("Quattro de cozinha"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Calças em azul-marinho"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Túnica cor de gesso"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Quarteto de mesas"),
        "shrineProductRainwaterTray":
            MessageLookupByLibrary.simpleMessage("Escoamento"),
        "shrineProductRamonaCrossover":
            MessageLookupByLibrary.simpleMessage("Ramona transversal"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Túnica cor de mar"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Camisola fresca"),
        "shrineProductShoulderRollsTee":
            MessageLookupByLibrary.simpleMessage("T-shirt Shoulder rolls"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Saco Shrug"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Conjunto de cerâmica suave"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Óculos de sol Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Brincos Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Succulent planters"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Vestido Sunshirt"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Camisa Surf and perf"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Saco Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Meias Varsity"),
        "shrineProductWalterHenleyWhite":
            MessageLookupByLibrary.simpleMessage("Walter Henley (branco)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Porta-chaves em tecido"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Camisa com riscas brancas"),
        "shrineProductWhitneyBelt":
            MessageLookupByLibrary.simpleMessage("Cinto Whitney"),
        "shrineScreenReaderCart": m24,
        "shrineScreenReaderProductAddToCart":
            MessageLookupByLibrary.simpleMessage("Adicionar ao carrinho"),
        "shrineScreenReaderRemoveProductButton": m25,
        "shrineTooltipCloseCart":
            MessageLookupByLibrary.simpleMessage("Fechar carrinho"),
        "shrineTooltipCloseMenu":
            MessageLookupByLibrary.simpleMessage("Fechar menu"),
        "shrineTooltipOpenMenu":
            MessageLookupByLibrary.simpleMessage("Abrir menu"),
        "shrineTooltipRemoveItem":
            MessageLookupByLibrary.simpleMessage("Remover item"),
        "shrineTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Pesquisar"),
        "shrineTooltipSettings":
            MessageLookupByLibrary.simpleMessage("Definições"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Um esquema da aplicação de iniciação com boa capacidade de resposta"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Corpo"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BOTÃO"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Título"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Legenda"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Título"),
        "starterAppTitle":
            MessageLookupByLibrary.simpleMessage("Aplicação de iniciação"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Adicionar"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favoritos"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Pesquisar"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Partilhar")
      };
}
