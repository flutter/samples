// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a pt locale. All the
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
  String get localeName => 'pt';

  static m0(value) => "Para ver o código-fonte desse app, acesse ${value}.";

  static m1(title) => "Marcador para a guia ${title}";

  static m2(totalRestaurants) =>
      "${Intl.plural(totalRestaurants, zero: 'Nenhum restaurante', one: '1 restaurante', other: '${totalRestaurants} restaurantes')}";

  static m3(numberOfStops) =>
      "${Intl.plural(numberOfStops, zero: 'Sem escalas', one: '1 escala', other: '${numberOfStops} escalas')}";

  static m4(totalProperties) =>
      "${Intl.plural(totalProperties, zero: 'Nenhuma propriedade disponível', one: '1 propriedade disponível', other: '${totalProperties} propriedades disponíveis')}";

  static m5(value) => "Item ${value}";

  static m6(error) => "Falha ao copiar para a área de transferência: ${error}";

  static m7(value) => "Contínuo: ${value}";

  static m8(value) => "Pontual: ${value}";

  static m9(value) => "Marcado: ${value}";

  static m10(value) => "Selecionado: ${value}";

  static m11(name, phoneNumber) =>
      "O número de telefone de ${name} é ${phoneNumber}";

  static m12(value) => "Você selecionou: \"${value}\"";

  static m13(accountName, accountNumber, amount) =>
      "Conta ${accountName} ${accountNumber} com ${amount}.";

  static m14(amount) =>
      "Você gastou ${amount} em taxas de caixa eletrônico neste mês";

  static m15(percent) =>
      "Bom trabalho! Sua conta corrente está ${percent} maior do que no mês passado.";

  static m16(percent) =>
      "Atenção, você usou ${percent} do seu Orçamento de compras para este mês.";

  static m17(amount) => "Você gastou ${amount} em Restaurantes nesta semana.";

  static m18(count) =>
      "${Intl.plural(count, one: 'Aumente seu potencial de dedução de taxas. Defina categorias para 1 transação não atribuída.', other: 'Aumente seu potencial de dedução de taxas. Defina categorias para ${count} transações não atribuídas.')}";

  static m19(billName, date, amount) =>
      "A fatura ${billName} de ${amount} vence em ${date}.";

  static m20(budgetName, amountUsed, amountTotal, amountLeft) =>
      "O orçamento ${budgetName} com ${amountUsed} usados de ${amountTotal}. Valor restante: ${amountLeft}";

  static m21(quantity) =>
      "${Intl.plural(quantity, zero: 'NENHUM ITEM', one: '1 ITEM', other: '${quantity} ITENS')}";

  static m22(price) => "x ${price}";

  static m23(quantity) => "Quantidade: ${quantity}";

  static m24(quantity) =>
      "${Intl.plural(quantity, zero: 'Carrinho de compras, nenhum item', one: 'Carrinho de compras, 1 item', other: 'Carrinho de compras, ${quantity} itens')}";

  static m25(product) => "Remover ${product}";

  static m26(value) => "Item ${value}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static _notInlinedMessages(_) => <String, Function>{
        "aboutDialogDescription": m0,
        "aboutFlutterSamplesRepo": MessageLookupByLibrary.simpleMessage(
            "Amostra do Flutter no repositório GitHub"),
        "backToGallery":
            MessageLookupByLibrary.simpleMessage("Voltar à galeria"),
        "bottomAppBarNotch": MessageLookupByLibrary.simpleMessage("Entalhe"),
        "bottomAppBarPosition": MessageLookupByLibrary.simpleMessage(
            "Posição do botão de ação flutuante"),
        "bottomAppBarPositionDockedCenter":
            MessageLookupByLibrary.simpleMessage("Na base: centro"),
        "bottomAppBarPositionDockedEnd":
            MessageLookupByLibrary.simpleMessage("Na base: fim"),
        "bottomAppBarPositionFloatingCenter":
            MessageLookupByLibrary.simpleMessage("Flutuando: centro"),
        "bottomAppBarPositionFloatingEnd":
            MessageLookupByLibrary.simpleMessage("Flutuando: extremidade"),
        "bottomNavigationAccountTab":
            MessageLookupByLibrary.simpleMessage("Conta"),
        "bottomNavigationAlarmTab":
            MessageLookupByLibrary.simpleMessage("Alarme"),
        "bottomNavigationCalendarTab":
            MessageLookupByLibrary.simpleMessage("Agenda"),
        "bottomNavigationCameraTab":
            MessageLookupByLibrary.simpleMessage("Câmera"),
        "bottomNavigationCommentsTab":
            MessageLookupByLibrary.simpleMessage("Comentários"),
        "bottomNavigationContentPlaceholder": m1,
        "buttonText": MessageLookupByLibrary.simpleMessage("BOTÃO"),
        "buttonTextCreate": MessageLookupByLibrary.simpleMessage("Criar"),
        "chipBiking": MessageLookupByLibrary.simpleMessage("Bicicleta"),
        "chipElevator": MessageLookupByLibrary.simpleMessage("Elevador"),
        "chipFireplace": MessageLookupByLibrary.simpleMessage("Lareira"),
        "chipLarge": MessageLookupByLibrary.simpleMessage("Grande"),
        "chipMedium": MessageLookupByLibrary.simpleMessage("Médio"),
        "chipSmall": MessageLookupByLibrary.simpleMessage("Pequeno"),
        "chipTurnOnLights":
            MessageLookupByLibrary.simpleMessage("Acender as luzes"),
        "chipWasher":
            MessageLookupByLibrary.simpleMessage("Máquina de lavar roupas"),
        "colorsAmber": MessageLookupByLibrary.simpleMessage("ÂMBAR"),
        "colorsBlue": MessageLookupByLibrary.simpleMessage("AZUL"),
        "colorsBlueGrey": MessageLookupByLibrary.simpleMessage("CINZA-AZULADO"),
        "colorsBrown": MessageLookupByLibrary.simpleMessage("MARROM"),
        "colorsCyan": MessageLookupByLibrary.simpleMessage("CIANO"),
        "colorsDeepOrange":
            MessageLookupByLibrary.simpleMessage("LARANJA INTENSO"),
        "colorsDeepPurple":
            MessageLookupByLibrary.simpleMessage("ROXO INTENSO"),
        "colorsGreen": MessageLookupByLibrary.simpleMessage("VERDE"),
        "colorsGrey": MessageLookupByLibrary.simpleMessage("CINZA"),
        "colorsIndigo": MessageLookupByLibrary.simpleMessage("ÍNDIGO"),
        "colorsLightBlue": MessageLookupByLibrary.simpleMessage("AZUL-CLARO"),
        "colorsLightGreen": MessageLookupByLibrary.simpleMessage("VERDE-CLARO"),
        "colorsLime": MessageLookupByLibrary.simpleMessage("VERDE-LIMÃO"),
        "colorsOrange": MessageLookupByLibrary.simpleMessage("LARANJA"),
        "colorsPink": MessageLookupByLibrary.simpleMessage("ROSA"),
        "colorsPurple": MessageLookupByLibrary.simpleMessage("ROXO"),
        "colorsRed": MessageLookupByLibrary.simpleMessage("VERMELHO"),
        "colorsTeal": MessageLookupByLibrary.simpleMessage("AZUL-PETRÓLEO"),
        "colorsYellow": MessageLookupByLibrary.simpleMessage("AMARELO"),
        "craneDescription": MessageLookupByLibrary.simpleMessage(
            "Um app de viagens personalizado"),
        "craneEat": MessageLookupByLibrary.simpleMessage("ALIMENTAÇÃO"),
        "craneEat0": MessageLookupByLibrary.simpleMessage("Nápoles, Itália"),
        "craneEat0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Pizza em um fogão à lenha"),
        "craneEat1":
            MessageLookupByLibrary.simpleMessage("Dallas, Estados Unidos"),
        "craneEat10": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneEat10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Mulher segurando um sanduíche de pastrami"),
        "craneEat1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Balcão vazio com banquetas"),
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
            "Área para se sentar em um restaurante artístico"),
        "craneEat6":
            MessageLookupByLibrary.simpleMessage("Seattle, Estados Unidos"),
        "craneEat6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Prato de camarão"),
        "craneEat7":
            MessageLookupByLibrary.simpleMessage("Nashville, Estados Unidos"),
        "craneEat7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Entrada da padaria"),
        "craneEat8":
            MessageLookupByLibrary.simpleMessage("Atlanta, Estados Unidos"),
        "craneEat8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Prato de lagostim"),
        "craneEat9": MessageLookupByLibrary.simpleMessage("Madri, Espanha"),
        "craneEat9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Balcão de um café com itens de padaria"),
        "craneEatRestaurants": m2,
        "craneEatSubhead": MessageLookupByLibrary.simpleMessage(
            "Ver restaurantes por destino"),
        "craneFly": MessageLookupByLibrary.simpleMessage("VOAR"),
        "craneFly0":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneFly0SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé em uma paisagem com neve e árvores perenes"),
        "craneFly1":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneFly10": MessageLookupByLibrary.simpleMessage("Cairo, Egito"),
        "craneFly10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres da mesquita de Al-Azhar no pôr do sol"),
        "craneFly11": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneFly11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Farol de tijolos no mar"),
        "craneFly12":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneFly12SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina com palmeiras"),
        "craneFly13": MessageLookupByLibrary.simpleMessage("Bali, Indonésia"),
        "craneFly13SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Piscina com palmeiras à beira-mar"),
        "craneFly1SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Barraca em um campo"),
        "craneFly2":
            MessageLookupByLibrary.simpleMessage("Vale do Khumbu, Nepal"),
        "craneFly2SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Bandeiras de oração em frente a montanhas com neve"),
        "craneFly3": MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneFly3SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cidadela de Machu Picchu"),
        "craneFly4": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneFly4SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bangalô sobre a água"),
        "craneFly5": MessageLookupByLibrary.simpleMessage("Vitznau, Suíça"),
        "craneFly5SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel às margens de um lago em frente às montanhas"),
        "craneFly6":
            MessageLookupByLibrary.simpleMessage("Cidade do México, México"),
        "craneFly6SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Vista aérea do Palácio de Bellas Artes"),
        "craneFly7": MessageLookupByLibrary.simpleMessage(
            "Monte Rushmore, Estados Unidos"),
        "craneFly7SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Monte Rushmore"),
        "craneFly8": MessageLookupByLibrary.simpleMessage("Singapura"),
        "craneFly8SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Supertree Grove"),
        "craneFly9": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneFly9SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homem apoiado sobre um carro azul antigo"),
        "craneFlyStops": m3,
        "craneFlySubhead":
            MessageLookupByLibrary.simpleMessage("Ver voos por destino"),
        "craneFormDate":
            MessageLookupByLibrary.simpleMessage("Selecionar data"),
        "craneFormDates":
            MessageLookupByLibrary.simpleMessage("Selecionar datas"),
        "craneFormDestination":
            MessageLookupByLibrary.simpleMessage("Escolha o destino"),
        "craneFormDiners": MessageLookupByLibrary.simpleMessage("Lanchonetes"),
        "craneFormLocation":
            MessageLookupByLibrary.simpleMessage("Selecionar local"),
        "craneFormOrigin":
            MessageLookupByLibrary.simpleMessage("Escolha a origem"),
        "craneFormTime":
            MessageLookupByLibrary.simpleMessage("Selecionar horário"),
        "craneFormTravelers": MessageLookupByLibrary.simpleMessage("Viajantes"),
        "craneSleep": MessageLookupByLibrary.simpleMessage("SONO"),
        "craneSleep0": MessageLookupByLibrary.simpleMessage("Malé, Maldivas"),
        "craneSleep0SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Bangalô sobre a água"),
        "craneSleep1":
            MessageLookupByLibrary.simpleMessage("Aspen, Estados Unidos"),
        "craneSleep10": MessageLookupByLibrary.simpleMessage("Cairo, Egito"),
        "craneSleep10SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Torres da mesquita de Al-Azhar no pôr do sol"),
        "craneSleep11": MessageLookupByLibrary.simpleMessage("Taipei, Taiwan"),
        "craneSleep11SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Arranha-céu Taipei 101"),
        "craneSleep1SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Chalé em uma paisagem com neve e árvores perenes"),
        "craneSleep2":
            MessageLookupByLibrary.simpleMessage("Machu Picchu, Peru"),
        "craneSleep2SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Cidadela de Machu Picchu"),
        "craneSleep3": MessageLookupByLibrary.simpleMessage("Havana, Cuba"),
        "craneSleep3SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Homem apoiado sobre um carro azul antigo"),
        "craneSleep4": MessageLookupByLibrary.simpleMessage("Vitznau, Suíça"),
        "craneSleep4SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Hotel às margens de um lago em frente às montanhas"),
        "craneSleep5":
            MessageLookupByLibrary.simpleMessage("Big Sur, Estados Unidos"),
        "craneSleep5SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Barraca em um campo"),
        "craneSleep6":
            MessageLookupByLibrary.simpleMessage("Napa, Estados Unidos"),
        "craneSleep6SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Piscina com palmeiras"),
        "craneSleep7": MessageLookupByLibrary.simpleMessage("Porto, Portugal"),
        "craneSleep7SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Apartamentos coloridos na Praça da Ribeira"),
        "craneSleep8": MessageLookupByLibrary.simpleMessage("Tulum, México"),
        "craneSleep8SemanticLabel": MessageLookupByLibrary.simpleMessage(
            "Ruínas maias em um penhasco acima da praia"),
        "craneSleep9": MessageLookupByLibrary.simpleMessage("Lisboa, Portugal"),
        "craneSleep9SemanticLabel":
            MessageLookupByLibrary.simpleMessage("Farol de tijolos no mar"),
        "craneSleepProperties": m4,
        "craneSleepSubhead": MessageLookupByLibrary.simpleMessage(
            "Ver propriedades por destino"),
        "cupertinoAlertAllow": MessageLookupByLibrary.simpleMessage("Permitir"),
        "cupertinoAlertApplePie":
            MessageLookupByLibrary.simpleMessage("Torta de maçã"),
        "cupertinoAlertCancel":
            MessageLookupByLibrary.simpleMessage("Cancelar"),
        "cupertinoAlertCheesecake":
            MessageLookupByLibrary.simpleMessage("Cheesecake"),
        "cupertinoAlertChocolateBrownie":
            MessageLookupByLibrary.simpleMessage("Brownie de chocolate"),
        "cupertinoAlertDessertDescription": MessageLookupByLibrary.simpleMessage(
            "Selecione seu tipo favorito de sobremesa na lista abaixo. Sua seleção será usada para personalizar a lista sugerida de restaurantes na sua área."),
        "cupertinoAlertDiscard":
            MessageLookupByLibrary.simpleMessage("Descartar"),
        "cupertinoAlertDontAllow":
            MessageLookupByLibrary.simpleMessage("Não permitir"),
        "cupertinoAlertFavoriteDessert": MessageLookupByLibrary.simpleMessage(
            "Selecionar sobremesa favorita"),
        "cupertinoAlertLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Seu local atual será exibido no mapa e usado para rotas, resultados da pesquisa por perto e tempo estimado de viagem."),
        "cupertinoAlertLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Permitir que o \"Maps\" acesse seu local enquanto você estiver usando o app?"),
        "cupertinoAlertTiramisu":
            MessageLookupByLibrary.simpleMessage("Tiramisu"),
        "cupertinoButton": MessageLookupByLibrary.simpleMessage("Botão"),
        "cupertinoButtonWithBackground":
            MessageLookupByLibrary.simpleMessage("Com plano de fundo"),
        "cupertinoShowAlert":
            MessageLookupByLibrary.simpleMessage("Mostrar alerta"),
        "cupertinoTabBarChatTab": MessageLookupByLibrary.simpleMessage("Chat"),
        "cupertinoTabBarHomeTab":
            MessageLookupByLibrary.simpleMessage("Início"),
        "cupertinoTabBarProfileTab":
            MessageLookupByLibrary.simpleMessage("Perfil"),
        "demoActionChipDescription": MessageLookupByLibrary.simpleMessage(
            "Ícones de ação são um conjunto de opções que ativam uma ação relacionada a um conteúdo principal. Eles aparecem de modo dinâmico e contextual em uma IU."),
        "demoActionChipTitle":
            MessageLookupByLibrary.simpleMessage("Ícone de ação"),
        "demoAlertDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Uma caixa de diálogo de alerta informa o usuário sobre situações que precisam ser confirmadas. A caixa de diálogo de alerta tem uma lista de ações e um título opcionais."),
        "demoAlertDialogTitle": MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoAlertTitleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Alerta com título"),
        "demoBottomAppBarDescription": MessageLookupByLibrary.simpleMessage(
            "As barras de apps inferiores fornecem acesso a uma gaveta de navegação e até quatro ações, incluindo o botão de ação flutuante."),
        "demoBottomAppBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Exibe a navegação e as ações na parte inferior da tela"),
        "demoBottomAppBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de apps inferior"),
        "demoBottomNavigationDescription": MessageLookupByLibrary.simpleMessage(
            "As barras de navegação inferiores exibem de três a cinco destinos na parte inferior da tela. Cada destino é representado por um ícone e uma etiqueta de texto opcional. Quando um ícone de navegação da parte inferior é tocado, o usuário é levado para o nível superior do destino de navegação associado a esse ícone."),
        "demoBottomNavigationPersistentLabels":
            MessageLookupByLibrary.simpleMessage("Etiquetas persistentes"),
        "demoBottomNavigationSelectedLabel":
            MessageLookupByLibrary.simpleMessage("Etiqueta selecionada"),
        "demoBottomNavigationSubtitle": MessageLookupByLibrary.simpleMessage(
            "Navegação da parte inferior com visualização de esmaecimento cruzado"),
        "demoBottomNavigationTitle":
            MessageLookupByLibrary.simpleMessage("Navegação na parte inferior"),
        "demoBottomSheetAddLabel":
            MessageLookupByLibrary.simpleMessage("Adicionar"),
        "demoBottomSheetButtonText":
            MessageLookupByLibrary.simpleMessage("MOSTRAR PÁGINA INFERIOR"),
        "demoBottomSheetHeader":
            MessageLookupByLibrary.simpleMessage("Cabeçalho"),
        "demoBottomSheetItem": m5,
        "demoBottomSheetModalDescription": MessageLookupByLibrary.simpleMessage(
            "Uma página inferior modal é uma alternativa a um menu ou uma caixa de diálogo e evita que o usuário interaja com o restante do app."),
        "demoBottomSheetModalTitle":
            MessageLookupByLibrary.simpleMessage("Página inferior modal"),
        "demoBottomSheetPersistentDescription":
            MessageLookupByLibrary.simpleMessage(
                "Uma página inferior persistente mostra informações que suplementam o conteúdo principal do app. Essa página permanece visível mesmo quando o usuário interage com outras partes do app."),
        "demoBottomSheetPersistentTitle":
            MessageLookupByLibrary.simpleMessage("Página inferior persistente"),
        "demoBottomSheetSubtitle": MessageLookupByLibrary.simpleMessage(
            "Páginas inferiores persistente e modal"),
        "demoBottomSheetTitle":
            MessageLookupByLibrary.simpleMessage("Página inferior"),
        "demoBottomTextFieldsTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoButtonSubtitle": MessageLookupByLibrary.simpleMessage(
            "Plano, em relevo, circunscrito e muito mais"),
        "demoButtonTitle": MessageLookupByLibrary.simpleMessage("Botões"),
        "demoChecklistMenuTitle": MessageLookupByLibrary.simpleMessage(
            "Menu de lista de verificação"),
        "demoChipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Elementos compactos que representam uma entrada, um atributo ou uma ação"),
        "demoChipTitle": MessageLookupByLibrary.simpleMessage("Ícones"),
        "demoChoiceChipDescription": MessageLookupByLibrary.simpleMessage(
            "Os ícones de escolha representam uma única escolha de um conjunto. Eles contêm categorias ou textos descritivos relacionados."),
        "demoChoiceChipTitle":
            MessageLookupByLibrary.simpleMessage("Ícone de escolha"),
        "demoCircularProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um indicador de progresso circular com Material Design que gira para indicar que o aplicativo está ocupado."),
        "demoCircularProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progresso circular"),
        "demoCodeTooltip":
            MessageLookupByLibrary.simpleMessage("Amostra de código"),
        "demoCodeViewerCopiedToClipboardMessage":
            MessageLookupByLibrary.simpleMessage(
                "Copiado para a área de transferência."),
        "demoCodeViewerCopyAll":
            MessageLookupByLibrary.simpleMessage("COPIAR TUDO"),
        "demoCodeViewerFailedToCopyToClipboardMessage": m6,
        "demoColorsDescription": MessageLookupByLibrary.simpleMessage(
            "Constantes de cores e de amostras de cores que representam a paleta do Material Design."),
        "demoColorsSubtitle":
            MessageLookupByLibrary.simpleMessage("Todas as cores predefinidas"),
        "demoColorsTitle": MessageLookupByLibrary.simpleMessage("Cores"),
        "demoContextMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu de contexto"),
        "demoCupertinoActionSheetDescription": MessageLookupByLibrary.simpleMessage(
            "Uma página de ações é um estilo específico de alerta que apresenta ao usuário um conjunto de duas ou mais opções relacionadas ao contexto atual. A página de ações pode ter um título, uma mensagem adicional e uma lista de ações."),
        "demoCupertinoActionSheetTitle":
            MessageLookupByLibrary.simpleMessage("Página de ações"),
        "demoCupertinoActivityIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um indicador de atividade no estilo iOS que gira em sentido horário."),
        "demoCupertinoActivityIndicatorSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicadores de atividade no estilo iOS"),
        "demoCupertinoActivityIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicador de atividade"),
        "demoCupertinoAlertButtonsOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Apenas botões de alerta"),
        "demoCupertinoAlertButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Alerta com botões"),
        "demoCupertinoAlertDescription": MessageLookupByLibrary.simpleMessage(
            "Uma caixa de diálogo de alerta informa o usuário sobre situações que precisam ser confirmadas. A caixa de diálogo de alerta tem uma lista de ações, um título e conteúdo opcionais. O título é exibido acima do conteúdo, e as ações são exibidas abaixo dele."),
        "demoCupertinoAlertTitle":
            MessageLookupByLibrary.simpleMessage("Alerta"),
        "demoCupertinoAlertWithTitleTitle":
            MessageLookupByLibrary.simpleMessage("Alerta com título"),
        "demoCupertinoAlertsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Caixas de diálogos de alerta no estilo iOS"),
        "demoCupertinoAlertsTitle":
            MessageLookupByLibrary.simpleMessage("Alertas"),
        "demoCupertinoButtonsDescription": MessageLookupByLibrary.simpleMessage(
            "Um botão no estilo iOS. Ele engloba um texto e/ou um ícone que desaparece e reaparece com o toque. Pode conter um plano de fundo."),
        "demoCupertinoButtonsSubtitle":
            MessageLookupByLibrary.simpleMessage("Botões no estilo iOS"),
        "demoCupertinoButtonsTitle":
            MessageLookupByLibrary.simpleMessage("Botões"),
        "demoCupertinoNavigationBarDescription":
            MessageLookupByLibrary.simpleMessage(
                "Uma barra de navegação no estilo iOS. A barra de navegação é uma barra de ferramentas que consiste basicamente em um título de página no meio da barra de ferramentas."),
        "demoCupertinoNavigationBarSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Barra de navegação no estilo iOS"),
        "demoCupertinoNavigationBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de navegação"),
        "demoCupertinoPullToRefreshDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um widget que implementa o estilo iOS no controle de atualização de conteúdo."),
        "demoCupertinoPullToRefreshSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Controle de atualização no estilo iOS"),
        "demoCupertinoPullToRefreshTitle": MessageLookupByLibrary.simpleMessage(
            "Deslizar para baixo para atualizar"),
        "demoCupertinoSegmentedControlDescription":
            MessageLookupByLibrary.simpleMessage(
                "Usado para escolher entre opções mutuamente exclusivas. Quando uma das opções no controle segmentado é selecionada, as outras são desmarcadas."),
        "demoCupertinoSegmentedControlSubtitle":
            MessageLookupByLibrary.simpleMessage(
                "Controle segmentado no estilo iOS"),
        "demoCupertinoSegmentedControlTitle":
            MessageLookupByLibrary.simpleMessage("Controle segmentado"),
        "demoCupertinoSliderContinuous": m7,
        "demoCupertinoSliderDescription": MessageLookupByLibrary.simpleMessage(
            "Um controle deslizante que pode ser usado para selecionar dentre um conjunto de valores contínuos ou pontuais."),
        "demoCupertinoSliderDiscrete": m8,
        "demoCupertinoSliderSubtitle": MessageLookupByLibrary.simpleMessage(
            "Controle deslizante no estilo iOS"),
        "demoCupertinoSliderTitle":
            MessageLookupByLibrary.simpleMessage("Controle deslizante"),
        "demoCupertinoSwitchDescription": MessageLookupByLibrary.simpleMessage(
            "A chave é usada para alternar o estado ativado/desativado de uma única configuração."),
        "demoCupertinoSwitchSubtitle":
            MessageLookupByLibrary.simpleMessage("Chave no estilo iOS"),
        "demoCupertinoTabBarDescription": MessageLookupByLibrary.simpleMessage(
            "Uma barra de guias inferior no estilo iOS. Ela exibe várias guias com uma ativa, a primeira, por padrão."),
        "demoCupertinoTabBarSubtitle": MessageLookupByLibrary.simpleMessage(
            "Barra de guias inferior no estilo iOS"),
        "demoCupertinoTabBarTitle":
            MessageLookupByLibrary.simpleMessage("Barra de guias"),
        "demoCustomSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Os controles deslizantes refletem um intervalo de valores em uma barra, em que os usuários podem selecionar um valor ou um intervalo. Eles podem ter um tema e ser personalizados."),
        "demoCustomSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controles deslizantes personalizados"),
        "demoDialogSubtitle": MessageLookupByLibrary.simpleMessage(
            "Simples, alerta e tela cheia"),
        "demoDialogTitle":
            MessageLookupByLibrary.simpleMessage("Caixas de diálogo"),
        "demoDocumentationTooltip":
            MessageLookupByLibrary.simpleMessage("Documentação da API"),
        "demoFilterChipDescription": MessageLookupByLibrary.simpleMessage(
            "Os ícones de filtro usam tags ou palavras descritivas para filtrar conteúdo."),
        "demoFilterChipTitle":
            MessageLookupByLibrary.simpleMessage("Ícone de filtro"),
        "demoFlatButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Um botão plano exibe um borrão de tinta ao ser pressionado, mas sem elevação. Use botões planos em barras de ferramenta, caixas de diálogo e inline com padding"),
        "demoFlatButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão plano"),
        "demoFloatingButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Um botão de ação flutuante é um botão de ícone circular que paira sobre o conteúdo para promover uma ação principal no aplicativo."),
        "demoFloatingButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão de ação flutuante"),
        "demoFullscreenDialogDescription": MessageLookupByLibrary.simpleMessage(
            "A propriedade fullscreenDialog especifica se a página recebida é uma caixa de diálogo modal em tela cheia"),
        "demoFullscreenDialogTitle":
            MessageLookupByLibrary.simpleMessage("Tela cheia"),
        "demoFullscreenTooltip":
            MessageLookupByLibrary.simpleMessage("Tela cheia"),
        "demoGridListsDescription": MessageLookupByLibrary.simpleMessage(
            "Listas de grade são melhores para apresentar dados homogêneos, como imagens. Cada item em uma lista de grade é chamado de bloco."),
        "demoGridListsFooterTitle":
            MessageLookupByLibrary.simpleMessage("Com rodapé"),
        "demoGridListsHeaderTitle":
            MessageLookupByLibrary.simpleMessage("Com cabeçalho"),
        "demoGridListsImageOnlyTitle":
            MessageLookupByLibrary.simpleMessage("Somente imagens"),
        "demoGridListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Layout de linhas e colunas"),
        "demoGridListsTitle":
            MessageLookupByLibrary.simpleMessage("Listas de grade"),
        "demoInfoTooltip": MessageLookupByLibrary.simpleMessage("Informações"),
        "demoInputChipDescription": MessageLookupByLibrary.simpleMessage(
            "Os ícones de entrada representam um formato compacto de informações complexas, como uma entidade (pessoa, lugar ou coisa) ou o texto de uma conversa."),
        "demoInputChipTitle":
            MessageLookupByLibrary.simpleMessage("Ícone de entrada"),
        "demoInvalidURL": MessageLookupByLibrary.simpleMessage(
            "Não foi possível exibir o URL:"),
        "demoLinearProgressIndicatorDescription":
            MessageLookupByLibrary.simpleMessage(
                "Um indicador de progresso linear do Material Design, também conhecido como barra de progresso."),
        "demoLinearProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage(
                "Indicador de progresso linear"),
        "demoListsDescription": MessageLookupByLibrary.simpleMessage(
            "Uma única linha com altura fixa e que normalmente contém algum texto, assim como um ícone à direita ou esquerda."),
        "demoListsSecondary":
            MessageLookupByLibrary.simpleMessage("Texto secundário"),
        "demoListsSubtitle":
            MessageLookupByLibrary.simpleMessage("Layouts de lista rolável"),
        "demoListsTitle": MessageLookupByLibrary.simpleMessage("Listas"),
        "demoMenuADisabledMenuItem":
            MessageLookupByLibrary.simpleMessage("Item de menu desativado"),
        "demoMenuAnItemWithAChecklistMenu":
            MessageLookupByLibrary.simpleMessage(
                "Um item com um menu de lista de verificação"),
        "demoMenuAnItemWithAContextMenuButton":
            MessageLookupByLibrary.simpleMessage(
                "Um item com um menu de contexto"),
        "demoMenuAnItemWithASectionedMenu":
            MessageLookupByLibrary.simpleMessage(
                "Um item com um menu em seções"),
        "demoMenuAnItemWithASimpleMenu":
            MessageLookupByLibrary.simpleMessage("Um item com um menu simples"),
        "demoMenuChecked": m9,
        "demoMenuContextMenuItemOne":
            MessageLookupByLibrary.simpleMessage("Item um do menu de contexto"),
        "demoMenuContextMenuItemThree": MessageLookupByLibrary.simpleMessage(
            "Item três do menu de contexto"),
        "demoMenuDescription": MessageLookupByLibrary.simpleMessage(
            "Um menu mostra uma lista de escolhas em uma superfície temporária. Eles aparecem quando os usuários interagem com um botão, uma ação ou outro controle."),
        "demoMenuFour": MessageLookupByLibrary.simpleMessage("Quatro"),
        "demoMenuGetLink": MessageLookupByLibrary.simpleMessage("Gerar link"),
        "demoMenuItemValueOne":
            MessageLookupByLibrary.simpleMessage("Item um do menu"),
        "demoMenuItemValueThree":
            MessageLookupByLibrary.simpleMessage("Item três do menu"),
        "demoMenuItemValueTwo":
            MessageLookupByLibrary.simpleMessage("Item dois do menu"),
        "demoMenuOne": MessageLookupByLibrary.simpleMessage("Um"),
        "demoMenuPreview": MessageLookupByLibrary.simpleMessage("Visualizar"),
        "demoMenuRemove": MessageLookupByLibrary.simpleMessage("Remover"),
        "demoMenuSelected": m10,
        "demoMenuShare": MessageLookupByLibrary.simpleMessage("Compartilhar"),
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
            MessageLookupByLibrary.simpleMessage("Ver opções"),
        "demoOptionsTooltip": MessageLookupByLibrary.simpleMessage("Opções"),
        "demoOutlineButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Botões circunscritos ficam opacos e elevados quando pressionados. Geralmente, são combinados com botões em relevo para indicar uma ação secundária e alternativa."),
        "demoOutlineButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão circunscrito"),
        "demoProgressIndicatorSubtitle": MessageLookupByLibrary.simpleMessage(
            "Lineares, circulares, indeterminados"),
        "demoProgressIndicatorTitle":
            MessageLookupByLibrary.simpleMessage("Indicadores de progresso"),
        "demoRaisedButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Botões em relevo adicionam dimensão a layouts praticamente planos. Eles enfatizam funções em espaços cheios ou amplos."),
        "demoRaisedButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botão em relevo"),
        "demoRangeSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Os controles deslizantes refletem um intervalo de valores em uma barra. Eles podem ter ícones em ambas as extremidades da barra, refletindo um intervalo de valores. São ideais para ajustar configurações como volume e brilho ou aplicar filtros de imagem."),
        "demoRangeSlidersTitle": MessageLookupByLibrary.simpleMessage(
            "Controles deslizantes de intervalo"),
        "demoSectionedMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu em seções"),
        "demoSelectionControlsCheckboxDescription":
            MessageLookupByLibrary.simpleMessage(
                "As caixas de seleção permitem que o usuário escolha várias opções de um conjunto. O valor normal de uma caixa de seleção é verdadeiro ou falso, e uma com três estados também pode ter seu valor como nulo."),
        "demoSelectionControlsCheckboxTitle":
            MessageLookupByLibrary.simpleMessage("Caixa de seleção"),
        "demoSelectionControlsRadioDescription":
            MessageLookupByLibrary.simpleMessage(
                "Os botões de opção permitem que o usuário selecione uma opção em um conjunto delas. Use botões de opção para seleções exclusivas se você achar que o usuário precisa ver todas as opções disponíveis lado a lado."),
        "demoSelectionControlsRadioTitle":
            MessageLookupByLibrary.simpleMessage("Opções"),
        "demoSelectionControlsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Caixas de seleção, botões de opção e chaves"),
        "demoSelectionControlsSwitchDescription":
            MessageLookupByLibrary.simpleMessage(
                "A chave ativar/desativar alterna o estado de uma única opção de configuração. A opção controlada pelo botão, assim como o estado em que ela está, precisam ficar claros na etiqueta in-line correspondente."),
        "demoSelectionControlsSwitchTitle":
            MessageLookupByLibrary.simpleMessage("Chave"),
        "demoSelectionControlsTitle":
            MessageLookupByLibrary.simpleMessage("Controles de seleção"),
        "demoSimpleDialogDescription": MessageLookupByLibrary.simpleMessage(
            "Uma caixa de diálogo simples oferece ao usuário uma escolha entre várias opções. A caixa de diálogo simples tem um título opcional que é exibido acima das opções."),
        "demoSimpleDialogTitle":
            MessageLookupByLibrary.simpleMessage("Simples"),
        "demoSimpleMenuTitle":
            MessageLookupByLibrary.simpleMessage("Menu simples"),
        "demoSlidersContinuous":
            MessageLookupByLibrary.simpleMessage("Contínuo"),
        "demoSlidersContinuousRangeSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Controle deslizante de intervalo contínuo com tema personalizado"),
        "demoSlidersContinuousWithEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage(
                "Contínuo com valor numérico editável"),
        "demoSlidersDescription": MessageLookupByLibrary.simpleMessage(
            "Os controles deslizantes refletem um intervalo de valores em uma barra, em que os usuários podem selecionar um único valor. Eles são ideais para ajustar configurações como volume e brilho ou aplicar filtros de imagem."),
        "demoSlidersDiscrete": MessageLookupByLibrary.simpleMessage("Discreto"),
        "demoSlidersDiscreteSliderWithCustomTheme":
            MessageLookupByLibrary.simpleMessage(
                "Controle deslizante discreto com tema personalizado"),
        "demoSlidersEditableNumericalValue":
            MessageLookupByLibrary.simpleMessage("Valor numérico editável"),
        "demoSlidersSubtitle": MessageLookupByLibrary.simpleMessage(
            "Widgets para selecionar um valor deslizando"),
        "demoSlidersTitle":
            MessageLookupByLibrary.simpleMessage("Controles deslizantes"),
        "demoSnackbarsAction": MessageLookupByLibrary.simpleMessage(
            "Você pressionou a ação de snackbar."),
        "demoSnackbarsActionButtonLabel":
            MessageLookupByLibrary.simpleMessage("AÇÃO"),
        "demoSnackbarsButtonLabel":
            MessageLookupByLibrary.simpleMessage("MOSTRAR UM SNACKBAR"),
        "demoSnackbarsDescription": MessageLookupByLibrary.simpleMessage(
            "Os snackbars informam os usuários sobre processos que o app realizou ou realizará. Eles aparecem temporariamente, na parte inferior da tela. Eles não interrompem a experiência do usuário e não precisam de nenhuma entrada para desaparecer."),
        "demoSnackbarsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Os snackbars exibem mensagens na parte interior da tela"),
        "demoSnackbarsText":
            MessageLookupByLibrary.simpleMessage("Isto é um snackbar."),
        "demoSnackbarsTitle": MessageLookupByLibrary.simpleMessage("Snackbars"),
        "demoTabsDescription": MessageLookupByLibrary.simpleMessage(
            "As guias organizam conteúdo entre diferentes telas, conjuntos de dados e outras interações."),
        "demoTabsSubtitle": MessageLookupByLibrary.simpleMessage(
            "Guias com visualizações roláveis independentes"),
        "demoTabsTitle": MessageLookupByLibrary.simpleMessage("Guias"),
        "demoTextFieldDescription": MessageLookupByLibrary.simpleMessage(
            "Os campos de texto permitem que o usuário digite texto em uma IU. Eles geralmente aparecem em formulários e caixas de diálogo."),
        "demoTextFieldEmail": MessageLookupByLibrary.simpleMessage("E-mail"),
        "demoTextFieldEnterPassword":
            MessageLookupByLibrary.simpleMessage("Insira uma senha."),
        "demoTextFieldEnterUSPhoneNumber": MessageLookupByLibrary.simpleMessage(
            "(##) ###-#### - Digite um número de telefone dos EUA."),
        "demoTextFieldFormErrors": MessageLookupByLibrary.simpleMessage(
            "Corrija os erros em vermelho antes de enviar."),
        "demoTextFieldHidePasswordLabel":
            MessageLookupByLibrary.simpleMessage("Ocultar senha"),
        "demoTextFieldKeepItShort": MessageLookupByLibrary.simpleMessage(
            "Seja breve. Isto é apenas uma demonstração."),
        "demoTextFieldLifeStory":
            MessageLookupByLibrary.simpleMessage("Biografia"),
        "demoTextFieldNameField": MessageLookupByLibrary.simpleMessage("Nome*"),
        "demoTextFieldNameHasPhoneNumber": m11,
        "demoTextFieldNameRequired": MessageLookupByLibrary.simpleMessage(
            "O campo \"Nome\" é obrigatório."),
        "demoTextFieldNoMoreThan":
            MessageLookupByLibrary.simpleMessage("No máximo 8 caracteres"),
        "demoTextFieldOnlyAlphabeticalChars":
            MessageLookupByLibrary.simpleMessage(
                "Digite apenas caracteres alfabéticos."),
        "demoTextFieldPassword": MessageLookupByLibrary.simpleMessage("Senha*"),
        "demoTextFieldPasswordsDoNotMatch":
            MessageLookupByLibrary.simpleMessage("As senhas não correspondem"),
        "demoTextFieldPhoneNumber":
            MessageLookupByLibrary.simpleMessage("Número de telefone*"),
        "demoTextFieldRequiredField": MessageLookupByLibrary.simpleMessage(
            "* indica um campo obrigatório"),
        "demoTextFieldRetypePassword":
            MessageLookupByLibrary.simpleMessage("Digite a senha novamente*"),
        "demoTextFieldSalary": MessageLookupByLibrary.simpleMessage("Salário"),
        "demoTextFieldShowPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Mostrar senha"),
        "demoTextFieldSubmit": MessageLookupByLibrary.simpleMessage("ENVIAR"),
        "demoTextFieldSubtitle": MessageLookupByLibrary.simpleMessage(
            "Uma linha de números e texto editáveis"),
        "demoTextFieldTellUsAboutYourself": MessageLookupByLibrary.simpleMessage(
            "Fale um pouco sobre você, por exemplo, escreva o que você faz ou quais são seus hobbies"),
        "demoTextFieldTitle":
            MessageLookupByLibrary.simpleMessage("Campos de texto"),
        "demoTextFieldUSD": MessageLookupByLibrary.simpleMessage("USD"),
        "demoTextFieldWhatDoPeopleCallYou":
            MessageLookupByLibrary.simpleMessage(
                "Como as pessoas chamam você?"),
        "demoTextFieldWhereCanWeReachYou": MessageLookupByLibrary.simpleMessage(
            "Como podemos falar com você?"),
        "demoTextFieldYourEmailAddress":
            MessageLookupByLibrary.simpleMessage("Seu endereço de e-mail"),
        "demoToggleButtonDescription": MessageLookupByLibrary.simpleMessage(
            "Botões ativar podem ser usados para opções relacionadas a grupos. Para enfatizar grupos de botões ativar relacionados, um grupo precisa compartilhar um mesmo contêiner"),
        "demoToggleButtonTitle":
            MessageLookupByLibrary.simpleMessage("Botões ativar"),
        "demoTooltipDescription": MessageLookupByLibrary.simpleMessage(
            "As dicas mostram etiquetas que ajudam a explicar a função de um botão ou outra ação da interface do usuário. Elas exibem textos informativos quando os usuários passam o cursor por um elemento, focam nele ou tocam nele e o mantêm pressionado."),
        "demoTooltipInstructions": MessageLookupByLibrary.simpleMessage(
            "Toque no elemento e o mantenha pressionado ou passe o cursor sobre ele para exibir a dica."),
        "demoTooltipSubtitle": MessageLookupByLibrary.simpleMessage(
            "Mensagem curta exibida ao tocar em um elemento e mantê-lo pressionado ou passar o cursor sobre ele"),
        "demoTooltipTitle": MessageLookupByLibrary.simpleMessage("Dicas"),
        "demoTwoLineListsTitle":
            MessageLookupByLibrary.simpleMessage("Duas linhas"),
        "demoTypographyDescription": MessageLookupByLibrary.simpleMessage(
            "Definições para os vários estilos tipográficos encontrados no Material Design."),
        "demoTypographySubtitle": MessageLookupByLibrary.simpleMessage(
            "Todos os estilos de texto pré-definidos"),
        "demoTypographyTitle":
            MessageLookupByLibrary.simpleMessage("Tipografia"),
        "dialogAddAccount":
            MessageLookupByLibrary.simpleMessage("Adicionar conta"),
        "dialogAgree": MessageLookupByLibrary.simpleMessage("CONCORDO"),
        "dialogCancel": MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "dialogDisagree": MessageLookupByLibrary.simpleMessage("DISCORDO"),
        "dialogDiscard": MessageLookupByLibrary.simpleMessage("DESCARTAR"),
        "dialogDiscardTitle":
            MessageLookupByLibrary.simpleMessage("Descartar rascunho?"),
        "dialogFullscreenDescription": MessageLookupByLibrary.simpleMessage(
            "Uma demonstração de caixa de diálogo em tela cheia"),
        "dialogFullscreenSave": MessageLookupByLibrary.simpleMessage("SALVAR"),
        "dialogFullscreenTitle": MessageLookupByLibrary.simpleMessage(
            "Caixa de diálogo de tela cheia"),
        "dialogLocationDescription": MessageLookupByLibrary.simpleMessage(
            "Deixe o Google ajudar os apps a determinar locais. Isso significa enviar dados de local anônimos para o Google, mesmo quando nenhum app estiver em execução."),
        "dialogLocationTitle": MessageLookupByLibrary.simpleMessage(
            "Usar serviço de localização do Google?"),
        "dialogSelectedOption": m12,
        "dialogSetBackup":
            MessageLookupByLibrary.simpleMessage("Definir conta de backup"),
        "dialogShow":
            MessageLookupByLibrary.simpleMessage("MOSTRAR CAIXA DE DIÁLOGO"),
        "homeCategoryReference": MessageLookupByLibrary.simpleMessage(
            "MÍDIA E ESTILOS DE REFERÊNCIA"),
        "homeHeaderCategories":
            MessageLookupByLibrary.simpleMessage("Categorias"),
        "homeHeaderGallery": MessageLookupByLibrary.simpleMessage("Galeria"),
        "placeBeach": MessageLookupByLibrary.simpleMessage("Praia"),
        "placeBronzeWorks":
            MessageLookupByLibrary.simpleMessage("Fundição de bronze"),
        "placeChennai": MessageLookupByLibrary.simpleMessage("Chennai"),
        "placeChettinad": MessageLookupByLibrary.simpleMessage("Chettinad"),
        "placeFisherman": MessageLookupByLibrary.simpleMessage("Pescador"),
        "placeFlowerMarket":
            MessageLookupByLibrary.simpleMessage("Mercado de flores"),
        "placeLunchPrep":
            MessageLookupByLibrary.simpleMessage("Preparo do almoço"),
        "placeMarket": MessageLookupByLibrary.simpleMessage("Mercado"),
        "placePondicherry": MessageLookupByLibrary.simpleMessage("Pondicherry"),
        "placeSaltFarm": MessageLookupByLibrary.simpleMessage("Fazenda de sal"),
        "placeScooters": MessageLookupByLibrary.simpleMessage("Scooters"),
        "placeSilkMaker":
            MessageLookupByLibrary.simpleMessage("Fábrica de seda"),
        "placeTanjore": MessageLookupByLibrary.simpleMessage("Tanjore"),
        "placeThanjavurTemple":
            MessageLookupByLibrary.simpleMessage("Templo Thanjavur"),
        "rallyAccountAmount": m13,
        "rallyAccountDataCarSavings":
            MessageLookupByLibrary.simpleMessage("Economia em transporte"),
        "rallyAccountDataChecking":
            MessageLookupByLibrary.simpleMessage("Conta corrente"),
        "rallyAccountDataHomeSavings":
            MessageLookupByLibrary.simpleMessage("Economias domésticas"),
        "rallyAccountDataVacation":
            MessageLookupByLibrary.simpleMessage("Férias"),
        "rallyAccountDetailDataAccountOwner":
            MessageLookupByLibrary.simpleMessage("Proprietário da conta"),
        "rallyAccountDetailDataAnnualPercentageYield":
            MessageLookupByLibrary.simpleMessage(
                "Porcentagem de rendimento anual"),
        "rallyAccountDetailDataInterestPaidLastYear":
            MessageLookupByLibrary.simpleMessage("Juros pagos no ano passado"),
        "rallyAccountDetailDataInterestRate":
            MessageLookupByLibrary.simpleMessage("Taxa de juros"),
        "rallyAccountDetailDataInterestYtd":
            MessageLookupByLibrary.simpleMessage("Juros acumulados do ano"),
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
        "rallyBillsDue": MessageLookupByLibrary.simpleMessage("A pagar"),
        "rallyBudgetAmount": m20,
        "rallyBudgetCategoryClothing":
            MessageLookupByLibrary.simpleMessage("Roupas"),
        "rallyBudgetCategoryCoffeeShops":
            MessageLookupByLibrary.simpleMessage("Cafés"),
        "rallyBudgetCategoryGroceries":
            MessageLookupByLibrary.simpleMessage("Supermercado"),
        "rallyBudgetCategoryRestaurants":
            MessageLookupByLibrary.simpleMessage("Restaurantes"),
        "rallyBudgetLeft": MessageLookupByLibrary.simpleMessage("Restantes"),
        "rallyBudgets": MessageLookupByLibrary.simpleMessage("Orçamentos"),
        "rallyDescription":
            MessageLookupByLibrary.simpleMessage("Um app de finanças pessoais"),
        "rallyFinanceLeft": MessageLookupByLibrary.simpleMessage("RESTANTES"),
        "rallyLoginButtonLogin":
            MessageLookupByLibrary.simpleMessage("FAZER LOGIN"),
        "rallyLoginLabelLogin":
            MessageLookupByLibrary.simpleMessage("Fazer login"),
        "rallyLoginLoginToRally":
            MessageLookupByLibrary.simpleMessage("Fazer login no Rally"),
        "rallyLoginNoAccount":
            MessageLookupByLibrary.simpleMessage("Não tem uma conta?"),
        "rallyLoginPassword": MessageLookupByLibrary.simpleMessage("Senha"),
        "rallyLoginRememberMe":
            MessageLookupByLibrary.simpleMessage("Lembrar meus dados"),
        "rallyLoginSignUp":
            MessageLookupByLibrary.simpleMessage("INSCREVER-SE"),
        "rallyLoginUsername":
            MessageLookupByLibrary.simpleMessage("Nome de usuário"),
        "rallySeeAll": MessageLookupByLibrary.simpleMessage("VER TUDO"),
        "rallySeeAllAccounts":
            MessageLookupByLibrary.simpleMessage("Ver todas as contas"),
        "rallySeeAllBills":
            MessageLookupByLibrary.simpleMessage("Ver todas as faturas"),
        "rallySeeAllBudgets":
            MessageLookupByLibrary.simpleMessage("Ver todos os orçamentos"),
        "rallySettingsFindAtms": MessageLookupByLibrary.simpleMessage(
            "Encontrar caixas eletrônicos"),
        "rallySettingsHelp": MessageLookupByLibrary.simpleMessage("Ajuda"),
        "rallySettingsManageAccounts":
            MessageLookupByLibrary.simpleMessage("Gerenciar contas"),
        "rallySettingsNotifications":
            MessageLookupByLibrary.simpleMessage("Notificações"),
        "rallySettingsPaperlessSettings":
            MessageLookupByLibrary.simpleMessage("Configurações sem papel"),
        "rallySettingsPasscodeAndTouchId":
            MessageLookupByLibrary.simpleMessage("Senha e Touch ID"),
        "rallySettingsPersonalInformation":
            MessageLookupByLibrary.simpleMessage("Informações pessoais"),
        "rallySettingsSignOut": MessageLookupByLibrary.simpleMessage("Sair"),
        "rallySettingsTaxDocuments":
            MessageLookupByLibrary.simpleMessage("Documentos fiscais"),
        "rallyTitleAccounts": MessageLookupByLibrary.simpleMessage("CONTAS"),
        "rallyTitleBills": MessageLookupByLibrary.simpleMessage("FATURAS"),
        "rallyTitleBudgets": MessageLookupByLibrary.simpleMessage("ORÇAMENTOS"),
        "rallyTitleOverview":
            MessageLookupByLibrary.simpleMessage("VISÃO GERAL"),
        "rallyTitleSettings":
            MessageLookupByLibrary.simpleMessage("CONFIGURAÇÕES"),
        "settingsAbout":
            MessageLookupByLibrary.simpleMessage("Sobre a Flutter Gallery"),
        "settingsAttribution": MessageLookupByLibrary.simpleMessage(
            "Criado pela TOASTER em Londres"),
        "settingsButtonCloseLabel":
            MessageLookupByLibrary.simpleMessage("Fechar configurações"),
        "settingsButtonLabel":
            MessageLookupByLibrary.simpleMessage("Configurações"),
        "settingsDarkTheme": MessageLookupByLibrary.simpleMessage("Escuro"),
        "settingsFeedback":
            MessageLookupByLibrary.simpleMessage("Enviar feedback"),
        "settingsLightTheme": MessageLookupByLibrary.simpleMessage("Claro"),
        "settingsLocale": MessageLookupByLibrary.simpleMessage("Localidade"),
        "settingsPlatformAndroid":
            MessageLookupByLibrary.simpleMessage("Android"),
        "settingsPlatformIOS": MessageLookupByLibrary.simpleMessage("iOS"),
        "settingsPlatformMechanics":
            MessageLookupByLibrary.simpleMessage("Mecânica da plataforma"),
        "settingsSlowMotion":
            MessageLookupByLibrary.simpleMessage("Câmera lenta"),
        "settingsSystemDefault":
            MessageLookupByLibrary.simpleMessage("Sistema"),
        "settingsTextDirection":
            MessageLookupByLibrary.simpleMessage("Orientação do texto"),
        "settingsTextDirectionLTR": MessageLookupByLibrary.simpleMessage("LTR"),
        "settingsTextDirectionLocaleBased":
            MessageLookupByLibrary.simpleMessage("Com base na localidade"),
        "settingsTextDirectionRTL": MessageLookupByLibrary.simpleMessage("RTL"),
        "settingsTextScaling":
            MessageLookupByLibrary.simpleMessage("Tamanho do texto"),
        "settingsTextScalingHuge":
            MessageLookupByLibrary.simpleMessage("Enorme"),
        "settingsTextScalingLarge":
            MessageLookupByLibrary.simpleMessage("Grande"),
        "settingsTextScalingNormal":
            MessageLookupByLibrary.simpleMessage("Normal"),
        "settingsTextScalingSmall":
            MessageLookupByLibrary.simpleMessage("Pequeno"),
        "settingsTheme": MessageLookupByLibrary.simpleMessage("Tema"),
        "settingsTitle": MessageLookupByLibrary.simpleMessage("Configurações"),
        "shrineCancelButtonCaption":
            MessageLookupByLibrary.simpleMessage("CANCELAR"),
        "shrineCartClearButtonCaption":
            MessageLookupByLibrary.simpleMessage("LIMPAR CARRINHO"),
        "shrineCartItemCount": m21,
        "shrineCartPageCaption":
            MessageLookupByLibrary.simpleMessage("CARRINHO"),
        "shrineCartShippingCaption":
            MessageLookupByLibrary.simpleMessage("Entrega:"),
        "shrineCartSubtotalCaption":
            MessageLookupByLibrary.simpleMessage("Subtotal:"),
        "shrineCartTaxCaption":
            MessageLookupByLibrary.simpleMessage("Tributos:"),
        "shrineCartTotalCaption": MessageLookupByLibrary.simpleMessage("TOTAL"),
        "shrineCategoryNameAccessories":
            MessageLookupByLibrary.simpleMessage("ACESSÓRIOS"),
        "shrineCategoryNameAll": MessageLookupByLibrary.simpleMessage("TODOS"),
        "shrineCategoryNameClothing":
            MessageLookupByLibrary.simpleMessage("ROUPAS"),
        "shrineCategoryNameHome": MessageLookupByLibrary.simpleMessage("CASA"),
        "shrineDescription":
            MessageLookupByLibrary.simpleMessage("Um app de varejo da moda"),
        "shrineLoginPasswordLabel":
            MessageLookupByLibrary.simpleMessage("Senha"),
        "shrineLoginUsernameLabel":
            MessageLookupByLibrary.simpleMessage("Nome de usuário"),
        "shrineLogoutButtonCaption":
            MessageLookupByLibrary.simpleMessage("SAIR"),
        "shrineMenuCaption": MessageLookupByLibrary.simpleMessage("MENU"),
        "shrineNextButtonCaption":
            MessageLookupByLibrary.simpleMessage("PRÓXIMA"),
        "shrineProductBlueStoneMug":
            MessageLookupByLibrary.simpleMessage("Caneca Blue Stone"),
        "shrineProductCeriseScallopTee": MessageLookupByLibrary.simpleMessage(
            "Camisa abaulada na cor cereja"),
        "shrineProductChambrayNapkins":
            MessageLookupByLibrary.simpleMessage("Guardanapos em chambray"),
        "shrineProductChambrayShirt":
            MessageLookupByLibrary.simpleMessage("Camisa em chambray"),
        "shrineProductClassicWhiteCollar":
            MessageLookupByLibrary.simpleMessage("Gola branca clássica"),
        "shrineProductClaySweater":
            MessageLookupByLibrary.simpleMessage("Suéter na cor argila"),
        "shrineProductCopperWireRack":
            MessageLookupByLibrary.simpleMessage("Prateleira de fios de cobre"),
        "shrineProductFineLinesTee":
            MessageLookupByLibrary.simpleMessage("Camiseta com listras finas"),
        "shrineProductGardenStrand":
            MessageLookupByLibrary.simpleMessage("Fio de jardinagem"),
        "shrineProductGatsbyHat":
            MessageLookupByLibrary.simpleMessage("Chapéu Gatsby"),
        "shrineProductGentryJacket":
            MessageLookupByLibrary.simpleMessage("Casaco chique"),
        "shrineProductGiltDeskTrio": MessageLookupByLibrary.simpleMessage(
            "Trio de acessórios dourados para escritório"),
        "shrineProductGingerScarf":
            MessageLookupByLibrary.simpleMessage("Cachecol laranja"),
        "shrineProductGreySlouchTank":
            MessageLookupByLibrary.simpleMessage("Regata larga cinza"),
        "shrineProductHurrahsTeaSet":
            MessageLookupByLibrary.simpleMessage("Jogo de chá Hurrahs"),
        "shrineProductKitchenQuattro": MessageLookupByLibrary.simpleMessage(
            "Conjunto com quatro itens para cozinha"),
        "shrineProductNavyTrousers":
            MessageLookupByLibrary.simpleMessage("Calças azul-marinho"),
        "shrineProductPlasterTunic":
            MessageLookupByLibrary.simpleMessage("Túnica na cor gesso"),
        "shrineProductPrice": m22,
        "shrineProductQuantity": m23,
        "shrineProductQuartetTable":
            MessageLookupByLibrary.simpleMessage("Mesa de quatro pernas"),
        "shrineProductRainwaterTray": MessageLookupByLibrary.simpleMessage(
            "Recipiente para água da chuva"),
        "shrineProductRamonaCrossover": MessageLookupByLibrary.simpleMessage(
            "Camiseta estilo crossover Ramona"),
        "shrineProductSeaTunic":
            MessageLookupByLibrary.simpleMessage("Túnica azul-mar"),
        "shrineProductSeabreezeSweater":
            MessageLookupByLibrary.simpleMessage("Suéter na cor brisa do mar"),
        "shrineProductShoulderRollsTee": MessageLookupByLibrary.simpleMessage(
            "Camiseta com mangas dobradas"),
        "shrineProductShrugBag":
            MessageLookupByLibrary.simpleMessage("Bolsa Shrug"),
        "shrineProductSootheCeramicSet":
            MessageLookupByLibrary.simpleMessage("Kit de cerâmica relaxante"),
        "shrineProductStellaSunglasses":
            MessageLookupByLibrary.simpleMessage("Óculos escuros Stella"),
        "shrineProductStrutEarrings":
            MessageLookupByLibrary.simpleMessage("Brincos Strut"),
        "shrineProductSucculentPlanters":
            MessageLookupByLibrary.simpleMessage("Vasos de suculentas"),
        "shrineProductSunshirtDress":
            MessageLookupByLibrary.simpleMessage("Vestido Sunshirt"),
        "shrineProductSurfAndPerfShirt":
            MessageLookupByLibrary.simpleMessage("Camiseta de surfista"),
        "shrineProductVagabondSack":
            MessageLookupByLibrary.simpleMessage("Mochila Vagabond"),
        "shrineProductVarsitySocks":
            MessageLookupByLibrary.simpleMessage("Meias Varsity"),
        "shrineProductWalterHenleyWhite": MessageLookupByLibrary.simpleMessage(
            "Camiseta de manga longa (branca)"),
        "shrineProductWeaveKeyring":
            MessageLookupByLibrary.simpleMessage("Chaveiro trançado"),
        "shrineProductWhitePinstripeShirt":
            MessageLookupByLibrary.simpleMessage("Camisa branca listrada"),
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
            MessageLookupByLibrary.simpleMessage("Configurações"),
        "starterAppDescription": MessageLookupByLibrary.simpleMessage(
            "Um layout inicial responsivo"),
        "starterAppDrawerItem": m26,
        "starterAppGenericBody": MessageLookupByLibrary.simpleMessage("Corpo"),
        "starterAppGenericButton":
            MessageLookupByLibrary.simpleMessage("BOTÃO"),
        "starterAppGenericHeadline":
            MessageLookupByLibrary.simpleMessage("Título"),
        "starterAppGenericSubtitle":
            MessageLookupByLibrary.simpleMessage("Subtítulo"),
        "starterAppGenericTitle":
            MessageLookupByLibrary.simpleMessage("Título"),
        "starterAppTitle": MessageLookupByLibrary.simpleMessage("App Starter"),
        "starterAppTooltipAdd":
            MessageLookupByLibrary.simpleMessage("Adicionar"),
        "starterAppTooltipFavorite":
            MessageLookupByLibrary.simpleMessage("Favorito"),
        "starterAppTooltipSearch":
            MessageLookupByLibrary.simpleMessage("Pesquisar"),
        "starterAppTooltipShare":
            MessageLookupByLibrary.simpleMessage("Compartilhar")
      };
}
