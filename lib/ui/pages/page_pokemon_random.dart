import 'package:flutter/material.dart';
import 'package:pokit/logic/view_models/viewmodel_pokemon_random.dart';
import 'package:pokit/ui/widgets/appbar_drawer.dart';
import 'package:pokit/ui/widgets/card_pokemon.dart';
import 'package:pokit/ui/widgets/pikachu.dart';
import 'package:provider/provider.dart';

class RandomPokemonPage extends StatefulWidget {
  final String title;

  RandomPokemonPage({Key key, this.title}) : super(key: key);

  @override
  _RandomPokemonPageState createState() => _RandomPokemonPageState();
}

class _RandomPokemonPageState extends State<RandomPokemonPage> {
  RandomPokemonViewModel model = RandomPokemonViewModel();

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<RandomPokemonViewModel>(
      create: (context) => model,
      child: Scaffold(
        drawer: drawer(context),
        appBar: AppBar(
          title: Text(this.widget.title),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 16.0),
              child: GestureDetector(
                onTap: () => model.loadPokemon(),
                child: Icon(Icons.refresh),
              ),
            ),
          ],
        ),
        body: Consumer<RandomPokemonViewModel>(
          builder: (context, model, child) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              randomPokemon(),
            ],
          ),
        ),
      ),
    );
  }

  Widget randomPokemon() {
    if (model.pokemon != null) {
      return PokemonCard(pokemon: model.pokemon);
    } else {
      return Pikachu();
    }
  }
}
