import 'dart:convert';
import 'api_pokemon.dart';
import 'package:http/http.dart' as http;
import 'package:pokit/logic/models/pokemon.dart';

class ImplPokemonApi implements PokemonApi {
  final _host = 'pokeapi.co';
  final _path = 'api/v2/pokemon/';
  final Map<String, String> _headers = {'Accept': 'application/json'};

  @override
  Future<Pokemon> fetchPokemon(String key) async {
    print('getting pokemon from the web');
    final uri = Uri.https(_host, _path + key.toString());
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      final jsonObject = json.decode(response.body);
      return Pokemon.fromJson(jsonObject);
    } else {
      throw Exception('Error fetching pokemon');
    }
  }
}