import 'package:pokit/logic/models/pokemon.dart';

abstract class PokemonApi {
  Future<Pokemon> fetchPokemon(dynamic key);
}
