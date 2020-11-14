import 'dart:math';

import 'package:flutter/foundation.dart';
import 'package:pokit/logic/models/pokemon.dart';
import 'package:pokit/services/repository/repository_pokemon.dart';

class RandomPokemonViewModel extends ChangeNotifier {
  final RepPokemonApi _repPokemonApi = RepPokemonApi();
  int _count;
  Random _randomInt = Random();
  Pokemon _pokemon;

  Pokemon get pokemon => _pokemon;

  void loadPokemon() async {
    _count = await getCount();
    int _randomInt = this._randomInt.nextInt(_count);
    print(_randomInt);
    _pokemon = await _repPokemonApi.getPokemon(_randomInt.toString());
    notifyListeners();
  }

  Future<int> getCount() async {
    return await _repPokemonApi.getPokemons().then((value) => value.count);
  }
}
