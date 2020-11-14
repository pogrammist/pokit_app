import 'dart:async';

import 'package:pokit/logic/bloc_stream/event_pokemon.dart';
import 'package:pokit/logic/models/pokemons.dart';
import 'package:pokit/services/repository/repository_pokemon.dart';

class PokemonsBloc {
  RepPokemonApi _repPokemonApi = RepPokemonApi();
  Pokemons _pokemons;

  final _inputEventController = StreamController<PokemonEvent>();
  StreamSink<PokemonEvent> get inputEventSink => _inputEventController.sink;

  final _outputStateController = StreamController<Pokemons>();
  Stream<Pokemons> get outputStateStream => _outputStateController.stream;

  void _mapEventToState(PokemonEvent event) async {
    if (event == PokemonEvent.pokemons_fetch) {
      _pokemons = await _repPokemonApi.getPokemons();
    } else if (event == PokemonEvent.pokemons_remove) {
      _pokemons = null;
    } else {
      throw Exception('Wrong Event Type');
    }
    _outputStateController.sink.add(_pokemons);
  }

  PokemonsBloc() {
    _inputEventController.stream.listen(_mapEventToState);
  }

  void dispose() {
    _inputEventController.close();
    _outputStateController.close();
  }
}
