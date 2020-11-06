import 'package:pokit/logic/models/pokemon.dart';

import 'api_pokemon.dart';

class FakePokemonApi implements PokemonApi {
  @override
  Future<Pokemon> fetchPokemon(dynamic key) async {
    return Pokemon(
      id: 12,
      name: 'butterfree',
      baseExperience: 178,
      height: 11,
      isDefault: true,
      order: 16,
      weight: 320,
      abilities: [
        Abilities(
          isHidden: true,
          slot: 3,
          ability: Ability(
              name: 'tinted-lens',
              url: 'https://pokeapi.co/api/v2/ability/110/'),
        )
      ],
      forms: [
        Forms(
            name: 'butterfree',
            url: 'https://pokeapi.co/api/v2/pokemon-form/12/'),
      ],
      gameIndices: [
        GameIndices(
          gameIndex: 12,
          version: Version(
              name: 'white-2', url: 'https://pokeapi.co/api/v2/version/22/'),
        ),
      ],
      heldItems: [
        HeldItems(
          item: Item(
              name: 'silver-powder',
              url: 'https://pokeapi.co/api/v2/item/199/'),
          versionDetails: [
            VersionDetails(
              rarity: 5,
              version: Version(
                  name: 'y', url: 'https://pokeapi.co/api/v2/version/24/'),
            )
          ],
        )
      ],
      locationAreaEncounters: 'https://pokeapi.co/api/v2/pokemon/12/encounters',
      moves: [
        Moves(
          move: Move(name: 'flash', url: 'https://pokeapi.co/api/v2/move/148/'),
          versionGroupDetails: [
            VersionGroupDetails(
              levelLearnedAt: 0,
              versionGroup: VersionGroup(
                  name: 'x-y',
                  url: 'https://pokeapi.co/api/v2/version-group/15/'),
              moveLearnMethod: MoveLearnMethod(
                  name: 'machine',
                  url: 'https://pokeapi.co/api/v2/move-learn-method/4/'),
            )
          ],
        )
      ],
      species: Species(
          name: 'butterfree',
          url: 'https://pokeapi.co/api/v2/pokemon-species/12/'),
      sprites: Sprites(
        backFemale:
            'http://pokeapi.co/media/sprites/pokemon/back/female/12.png',
        backShinyFemale:
            'http://pokeapi.co/media/sprites/pokemon/back/shiny/female/12.png',
        backDefault: 'http://pokeapi.co/media/sprites/pokemon/back/12.png',
        frontFemale: 'http://pokeapi.co/media/sprites/pokemon/female/12.png',
        frontShinyFemale:
            'http://pokeapi.co/media/sprites/pokemon/shiny/female/12.png',
        backShiny: 'http://pokeapi.co/media/sprites/pokemon/back/shiny/12.png',
        frontDefault: 'http://pokeapi.co/media/sprites/pokemon/12.png',
        frontShiny: 'http://pokeapi.co/media/sprites/pokemon/shiny/12.png',
        other: Other(
          dreamWorld: DreamWorld(
            frontDefault:
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg',
            frontFemale:
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/dream-world/1.svg',
          ),
          officialArtwork: OfficialArtwork(
            frontDefault:
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/other/official-artwork/1.png',
          ),
        ),
        versions: Versions(
            generationI: GenerationI(
              redBlue: RedBlue(
                  backDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/1.png',
                  backGray:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/back/gray/1.png',
                  frontDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/1.png',
                  frontGray:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/red-blue/gray/1.png'),
              yellow: Yellow(
                  backDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/1.png',
                  backGray:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/back/gray/1.png',
                  frontDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/1.png',
                  frontGray:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-i/yellow/gray/1.png'),
            ),
            generationIi: GenerationIi(
              crystal: Crystal(
                  backDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/1.png',
                  backShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/back/shiny/1.png',
                  frontDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/1.png',
                  frontShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/crystal/shiny/1.png'),
              gold: Gold(
                  backDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/1.png',
                  backShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/back/shiny/1.png',
                  frontDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/1.png',
                  frontShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/gold/shiny/1.png'),
              silver: Silver(
                backDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/1.png',
                backShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/back/shiny/1.png',
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-ii/silver/shiny/1.png',
              ),
            ),
            generationIii: GenerationIii(
              emerald: Emerald(
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/emerald/shiny/1.png',
              ),
              fireredLeafgreen: FireredLeafgreen(
                backDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/1.png',
                backShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/back/shiny/1.png',
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/firered-leafgreen/shiny/1.png',
              ),
              rubySapphire: RubySapphire(
                backDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/1.png',
                backShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/back/shiny/1.png',
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iii/ruby-sapphire/shiny/1.png',
              ),
            ),
            generationIv: GenerationIv(
              diamondPearl: DiamondPearl(
                backDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/1.png',
                backFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/1.png',
                backShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/1.png',
                backShinyFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/back/shiny/1.png',
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/1.png',
                frontFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/1.png',
                frontShinyFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/diamond-pearl/shiny/1.png',
              ),
              heartgoldSoulsilver: HeartgoldSoulsilver(
                backDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/1.png',
                backFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/1.png',
                backShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/1.png',
                backShinyFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/back/shiny/1.png',
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/1.png',
                frontFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/1.png',
                frontShinyFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/heartgold-soulsilver/shiny/1.png',
              ),
              platinum: Platinum(
                  backDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/1.png',
                  backFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/1.png',
                  backShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/1.png',
                  backShinyFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/back/shiny/1.png',
                  frontDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/1.png',
                  frontFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/1.png',
                  frontShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/1.png',
                  frontShinyFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-iv/platinum/shiny/1.png'),
            ),
            generationV: GenerationV(
              blackWhite: BlackWhite(
                animated: Animated(
                  backDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/1.gif',
                  backFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/1.gif',
                  backShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/1.gif',
                  backShinyFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/back/shiny/1.gif',
                  frontDefault:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/1.gif',
                  frontFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/1.gif',
                  frontShiny:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/1.gif',
                  frontShinyFemale:
                      'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/animated/shiny/1.gif',
                ),
                backDefault:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/1.png",
                backFemale:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/1.png",
                backShiny:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/1.png",
                backShinyFemale:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/back/shiny/1.png",
                frontDefault:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/1.png",
                frontFemale:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/1.png",
                frontShiny:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/1.png",
                frontShinyFemale:
                    "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-v/black-white/shiny/1.png",
              ),
            ),
            generationVi: GenerationVi(
              omegarubyAlphasapphire: OmegarubyAlphasapphire(
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/1.png',
                frontFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/1.png',
                frontShinyFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/omegaruby-alphasapphire/shiny/1.png',
              ),
              xY: XY(
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/1.png',
                frontFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/1.png',
                frontShinyFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vi/x-y/shiny/1.png',
              ),
            ),
            generationVii: GenerationVii(
              icons: Icons(
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/icons/1.png',
                frontFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/icons/1.png',
              ),
              ultraSunUltraMoon: UltraSunUltraMoon(
                frontDefault:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/1.png',
                frontFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/1.png',
                frontShiny:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/1.png',
                frontShinyFemale:
                    'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-vii/ultra-sun-ultra-moon/shiny/1.png',
              ),
            ),
            generationViii: GenerationViii(
              icons: Icons(
                  frontDefault:
                      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/1.png",
                  frontFemale:
                      "https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/versions/generation-viii/icons/1.png"),
            )),
      ),
      stats: [
        Stats(
          baseStat: 70,
          effort: 0,
          stat: Stat(name: 'speed', url: 'https://pokeapi.co/api/v2/stat/6/'),
        )
      ],
      types: [
        Types(
          slot: 2,
          type: Type(name: 'flying', url: 'https://pokeapi.co/api/v2/type/3/'),
        )
      ],
    );
  }
}
