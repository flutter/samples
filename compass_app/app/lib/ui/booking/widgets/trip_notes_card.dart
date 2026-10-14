import 'package:flutter/material.dart';

import '../../../data/repositories/notes/trip_notes_repository.dart';
import '../../../domain/models/booking/booking.dart';

/// Notes are committed locally; synchronization is a separate user action.
class TripNotesCard extends StatefulWidget {
  const TripNotesCard({
    super.key,
    required this.booking,
    required this.repository,
  });

  final Booking booking;
  final TripNotesRepository repository;

  @override
  State<TripNotesCard> createState() => _TripNotesCardState();
}

class _TripNotesCardState extends State<TripNotesCard> {
  final _input = TextEditingController();
  String? _localError;
  bool _saving = false;

  @override
  void dispose() {
    _input.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    setState(() => _saving = true);
    try {
      await widget.repository.edit(widget.booking, _input.text);
      if (mounted) setState(() => _localError = null);
    } catch (error) {
      if (mounted) setState(() => _localError = error.toString());
    } finally {
      if (mounted) setState(() => _saving = false);
    }
  }

  Future<void> _sync() async {
    try {
      await widget.repository.sync();
    } catch (_) {
      // Repository publishes the network failure while preserving local commits.
    }
  }

  @override
  Widget build(BuildContext context) => ListenableBuilder(
    listenable: widget.repository,
    builder: (context, _) {
      final repository = widget.repository;
      return Card(
        margin: const EdgeInsets.all(16),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                'Notas da viagem',
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                'Nota salva no dispositivo: ${repository.read(widget.booking)}',
              ),
              Text('Pendentes de notas: ${repository.pending}'),
              Text(
                repository.confirmation ??
                    (repository.pending > 0
                        ? 'Aguardando confirmação remota'
                        : 'Nenhum envio nesta sessão'),
              ),
              if (_localError != null) Text('Falha local: $_localError'),
              if (repository.error != null)
                Text('Falha de sincronização: ${repository.error}'),
              TextField(
                key: const Key('trip-note-input'),
                controller: _input,
                decoration: const InputDecoration(labelText: 'Nova nota'),
              ),
              FilledButton(
                key: const Key('trip-note-save'),
                onPressed: _saving ? null : _save,
                child: const Text('Salvar no dispositivo'),
              ),
              OutlinedButton(
                key: const Key('trip-note-sync'),
                onPressed: repository.syncing ? null : _sync,
                child: Text(
                  repository.syncing ? 'Sincronizando...' : 'Sincronizar notas',
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
