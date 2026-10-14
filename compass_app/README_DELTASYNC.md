# Compass com notas de viagem offline — VAL-13

Esta integração acrescenta notas à tela de uma reserva existente do Compass.
O catálogo, autenticação de desenvolvimento, reservas e demais fluxos continuam
nos repositórios originais do sample. Somente as notas usam DeltaSync e SQLite.

## Consumo e escopo

`app/lib/main_deltasync.dart` compõe os providers locais do Compass com
`TripNotesRepository`. A biblioteca é consumida por path, fora de seu workspace:
`../../../deltasync` e seu adaptador SQLite; os quatro pacotes transitivos usam
overrides explícitos no `pubspec.yaml` da raiz de flutter/samples. Os caminhos
pressupõem que samples_test_lib e deltasync são diretórios irmãos. Não houve
publicação no pub.dev. SDK efetivo mínimo: Dart 3.12, exigido por DeltaSync.

A chave `trip-notes:[destinationRef,startDate,endDate]` usa datas de calendário
YYYY-MM-DD; IDs locais de Booking e fuso não identificam a nota. Reservas do mesmo
destino/período compartilham a nota neste cenário de usuário único. O valor LWW é
`{"text":"..."}`. Edições concorrentes escolhem vencedor por HLC/origem/ID,
conforme a biblioteca. Não há merge de texto por caractere.

O dispositivo usa identidade fixa `compass-device`, banco compass-notes.sqlite
no diretório do app e sqflite Android. O peer usa `compass-peer` e SQLite FFI.
Este recorte aceita um par fixo de réplicas; múltiplos usuários/dispositivos,
autenticação e bootstrap após perda definitiva de banco exigem desenho próprio
do consumidor. O backend de notas é de desenvolvimento e escuta somente loopback.

## Executar

Na raiz compass_app, em terminais separados:

```sh
cd server
dart run bin/notes_server.dart --port 8091 --db /tmp/compass-peer.sqlite
```

```sh
cd app
flutter pub get
adb reverse tcp:8091 tcp:8091
flutter run --target lib/main_deltasync.dart
```

O canal é HTTP/TCP real, encaminhado por USB com adb reverse: Android e servidor
Dart são processos distintos, com bancos distintos. Não é Wi-Fi, backend público
ou callback em processo. `NOTES_URL` pode ser configurada com `--dart-define`.
HTTP sem TLS foi habilitado somente no manifest debug. O backend original do
Compass e main_development/main_staging permanecem disponíveis.

Abra a reserva Alaska no início do app e role até **Notas da viagem**. Digite e
toque **Salvar no dispositivo**; o commit SQLite precede a atualização da nota.
**Pendentes de notas** conta a outbox das notas de todas as viagens. O envio
ocorre somente ao tocar **Sincronizar notas**; erro de rede não impede nova edição.
Confirmação remota e pendência são distintas do valor salvo localmente. Após
reinício, a confirmação da sessão é reiniciada; outbox e notas são restauradas.

Para reproduzir perda de conexão, encerre o backend com Ctrl+C, salve uma nota e
tente sincronizar. Edite novamente após a falha. Encerre o processo Android com
`adb shell am force-stop com.example.compass_app`, abra o app e confira a nota e
pendências. Reinicie o backend usando o mesmo arquivo SQLite.

O endpoint local `POST /notes` permite edição concorrente pelo peer, com JSON
`{"key":"trip-notes:[...]","text":"nota do peer"}`. A chave exata pode ser
obtida no snapshot de `GET /state`, após sincronizar uma nota inicial. Para um
conflito offline, prepare a chave antes de editar independentemente nas réplicas.
`GET /state` mostra snapshot/IDs pendentes para a verificação de desenvolvimento.
Sincronize, confira o vencedor e outboxes vazias, então reinicie os processos.
O arquivo em /tmp serve ao roteiro; escolha armazenamento persistente apropriado
ao ambiente ao reutilizar o backend. Não apague o banco para simular reinício.

## Contrato HTTP e manutenção

| Operação | Responsabilidade |
|---|---|
| POST /sync/push | Validar envelope/peers, aplicar e fazer commit remoto; retornar ACK applied-and-persisted somente depois |
| GET /sync/pull | Entregar a outbox do peer sem removê-la |
| POST /sync/ack | Cliente confirma somente após commit SQLite local; servidor remove IDs pendentes do peer correspondente |
| POST /notes | Criar mudança local do peer e persistir snapshot/outbox pelo SyncEngine |

`http_notes_transport.dart` contém HTTP e timeouts; o codec público
`DeltaAcknowledgement.toJson()/fromJson()` centraliza formato e validação do ACK.
O backend ainda valida peer e estágio durável antes de remover IDs pendentes; o
repositório controla push/pull, restauração e notificações/falhas.
Uma assinatura de engine.observations acompanha restauração, commits e push;
pendingDelta continua fonte de pendências. Confirmação da sessão não é persistida.
Chamadas aguardáveis continuam atualizando a tela antes de retornar; eventos
também atualizam alterações remotas sem polling ou ação manual no repositório.
Após pull, receiveEnvelope centraliza validação do par, commit e envio de ACK
pelo contrato IncomingAcknowledgingDeltaTransport. HTTP permanece no adaptador.
Falha ao enviar ACK não desfaz commit; retry pode repetir o envelope.
`trip_notes_card.dart` apresenta valor, pendência e confirmação. A identidade da chave vive em
`tripNotesKey`; o card recebe key por viagem para não reutilizar rascunho de outra.
O repositório consulta notas com `engine.valueAt(chave)` após start, sem copiar
toda a réplica. A leitura devolve valor local comprometido, sem indicar ACK.
`server/bin/notes_server.dart` possui o backend e o ACK de pull. Estado, mutação,
delta, join, commit e restore permanecem nas APIs públicas de DeltaSync.
Não há import de src, override de internos, codegen ou mudança no core.

```sh
cd app
flutter analyze
flutter test
flutter build apk --debug --target lib/main_deltasync.dart
```

```sh
cd server
dart analyze
dart test
```

`app/test/trip_notes_integration_test.dart` usa os modelos de teste existentes,
bancos SQLite reais e processo Dart separado. Cobre perda de conexão, edição
após falha, reabertura, conflito, resposta ACK perdida após commit via proxy HTTP,
duplicação no retry, outboxes/IDs, rejeição de peer incorreto e chaves de calendário.
Execute os testes do app a partir de app, para carregar os assets nativos FFI.

## Resultado e limites

Em 2026-10-13: análise sem issues, 72 testes do app e 13 do servidor aprovados;
cinco regressões novas cobrem HTTP, datas e estado da UI após correções. Build debug e percurso
no Moto G52 Android 13/API 33 usaram Flutter 3.47.7/Dart 3.13.5. Gradle 9.3.1,
AGP 9.1.0 e Kotlin 2.4.0 substituíram versões incompatíveis com Java 25 deste host.
Flags adicionadas pelo migrador Flutter mantêm compatibilidade do DSL/Kotlin.
share_plus conserva aviso de migração futura; build atual passou.

O fluxo de notas foi observado pelo desenvolvedor, sem estudo com participantes.
Imagens remotas originais do sample retornaram HTTP 403 no aparelho; isso afeta
a apresentação do catálogo, sem impedir edição/sincronização das notas.
Reservas criadas no backend local original continuam voláteis. Esta validação
cobre notas LWW, um Android e o canal descrito; os oito CRDTs têm suas suítes
gerais próprias. Não certifica iOS, produção, publicação ou desempenho universal.

## Preparação VAL-15, sem runtime físico

REPLICA_ID/PEER_ID/NOTES_URL por dart-define configuram identidade e endpoint.
Defaults preservam banco e par legados; IDs diferentes usam bancos separados.
Não trocar IDs entre reinstalações nem clonar bancos para criar outra réplica.

Backend opcional --replica notes-hub --clients alpha,beta --snapshot-pull
recebe edições LWW em SQLite e exporta estado materializado para pull com
destinatário explícito. Não há outbox global do hub a confirmar: ACK de pull
não remove estado. Push confirma persistência no hub, sem provar que outro
celular já buscou a nota. Modo antigo permanece padrão.

Roteiro e comandos: [preparação dos dois aparelhos](../../deltasync/docs/val15-dois-dispositivos.md).
Testes locais com dois clientes/processo HTTP e reabertura SQLite passaram;
não substituem execução em dois aparelhos. Nenhum celular usado nesta preparação.
