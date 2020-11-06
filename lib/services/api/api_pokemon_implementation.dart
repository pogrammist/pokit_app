import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokit/logic/models/pokemon/pokemon.dart';
import 'package:pokit/services/api/api_pokemon_fake.dart';

import 'api_pokemon.dart';

class ImplPokemonApi implements PokemonApi {
  final _host = 'pokeapi.co';
  final _path = 'api/v2/pokemon/';
  final Map<String, String> _headers = {'Accept': 'application/json'};

  Pokemon _pokemon;
  Future<Pokemon> _pokemonFake = FakePokemonApi().fetchPokemon('1');

  @override
  Future<Pokemon> fetchPokemon(String key) async {
    if (_pokemon != null) {
      print('getting pokemons from the web');
      final uri = Uri.https(_host, _path + key.toString());
      final results = await http.get(uri, headers: _headers);
      final jsonObject = json.decode(results.body);
      _pokemon = Pokemon.fromJson(jsonObject);
      print(uri);
      print(jsonObject);
    } else {
      print('getting pokemons from cache');
    }
    _pokemonFake.then((value) {
      print(value.toJson());
    });
    return _pokemonFake;
  }
}
