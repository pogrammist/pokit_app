import 'package:pokit/logic/models/pokemon.dart';
import 'package:pokit/logic/models/pokemons.dart';
import 'package:pokit/services/api/api_pokemon_fake.dart';
import 'package:pokit/services/api/api_pokemon_implementation.dart';
import 'package:pokit/services/api/api_pokemons.dart';

class RepPokemonApi {
  final FakePokemonApi _fakePokemonApi = FakePokemonApi();
  final ImplPokemonApi _implPokemonApi = ImplPokemonApi();
  final PokemonsApi _pokemonsApi = PokemonsApi();

  Future<Pokemon> getFakePokemon() async {
    var pokemon = await _fakePokemonApi.fetchPokemon('12');
    return pokemon;
  }

  Future<Pokemon> getPokemon(String key) async {
    var pokemon = await _implPokemonApi.fetchPokemon(key);
    return pokemon;
  }

  Future<Pokemons> getPokemons() async {
    var pokemonslist = await _pokemonsApi.fetchPokemons();
    return pokemonslist;
  }
}
