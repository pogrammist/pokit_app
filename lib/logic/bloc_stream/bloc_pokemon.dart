import 'dart:async';

import 'package:pokit/logic/bloc_stream/event_pokemon.dart';
import 'package:pokit/logic/models/pokemon.dart';
import 'package:pokit/services/repository/repository_pokemon.dart';

class PokemonBloc {
  RepPokemonApi _repPokemonApi = RepPokemonApi();
  Pokemon _pokemon;

  final _inputEventController = StreamController<PokemonEventValue>();
  StreamSink<PokemonEventValue> get inputEventSink =>
      _inputEventController.sink;

  final _outputStateController = StreamController<Pokemon>();
  Stream<Pokemon> get outputStateStream => _outputStateController.stream;

  void _mapEventToState(PokemonEventValue event) async {
    final key = event.data;
    key == null
        ? _pokemon = null
        : _pokemon = await _repPokemonApi.getPokemon(key.toString());
    _outputStateController.sink.add(_pokemon);
  }

  PokemonBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }
}
