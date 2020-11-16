import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pokit/logic/models/pokemons.dart';

class PokemonsApi {
  final _host = 'pokeapi.co';
  String _path = 'api/v2/pokemon/';
  final Map<String, String> _headers = {'Accept': 'application/json'};

  Future<Pokemons> fetchPokemons({dynamic query}) async {
    print('getting pokemons from the web');
    final uri = Uri.https(_host, _path, query);
    final response = await http.get(uri, headers: _headers);
    if (response.statusCode == 200) {
      final jsonObject = json.decode(response.body);
      return Pokemons.fromJson(jsonObject);
    } else {
      throw Exception('Error fetching pokemons');
    }
  }
}
