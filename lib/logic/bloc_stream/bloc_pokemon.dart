import 'dart:async';

import 'package:pokit/logic/models/pokemon.dart';
import 'package:pokit/services/repository/repository_pokemon.dart';

class PokemonBloc {
  RepPokemonApi _repPokemonApi = RepPokemonApi();
  Pokemon _pokemon;

  final _inputEventController = StreamController<String>();
  StreamSink<String> get inputEventSink => _inputEventController.sink;

  final _outputStateController = StreamController<Pokemon>();
  Stream<Pokemon> get outputStateStream => _outputStateController.stream;

  void _mapEventToState(String event) async {
    if (event == 'clear') {
      _pokemon = null;
    } else if (event != null) {
      _pokemon = await _repPokemonApi.getPokemon(event);
    } else {
      throw Exception('Wrong Event Type');
    }
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
