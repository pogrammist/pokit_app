import 'package:pokit/logic/models/pokemon.dart';

abstract class PokemonApi {
  Future<List<Pokemon>> fetchPokemons();
}
