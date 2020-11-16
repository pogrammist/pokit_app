import 'package:flutter/material.dart';
import 'package:pokit/ui/common/theme.dart';
import 'package:pokit/ui/pages/page_pokemons_list.dart';
import 'package:pokit/ui/pages/page_pokemon_random.dart';
import 'package:pokit/ui/pages/page_pokemon_search.dart';
import 'package:pokit/ui/pages/page_undefined.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: appTheme,
      initialRoute: '/',
      onUnknownRoute: (settings) => MaterialPageRoute(
          builder: (context) => UndefinedPage(title: 'Undefined Page')),
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/':
            return MaterialPageRoute(
                builder: (context) => ListPokemonPage(title: 'Pokemons'));
            break;
          case '/search':
            return MaterialPageRoute(
                builder: (context) =>
                    SearchPokemonPage(title: 'Search Pokemon'));
            break;
          case '/random':
            return MaterialPageRoute(
                builder: (context) =>
                    RandomPokemonPage(title: 'Random Pokemon'));
            break;
          default:
            return MaterialPageRoute(
                builder: (context) => UndefinedPage(title: 'Undefined Page'));
        }
        // Uri uri = Uri.parse(settings.name);
        // if (uri.pathSegments.length == 2 &&
        //     uri.pathSegments.first == 'pokemon') {
        //   var id = uri.pathSegments[1];
        //   return MaterialPageRoute(
        //       builder: (context) => RandomPokemonPage(
        //             id: id,
        //             title: 'Random Pokemon',
        //           ));
        // }
        // return MaterialPageRoute(
        //     builder: (context) => UndefinedPage(title: 'Undefined Page'));
      },
    );
  }
}
