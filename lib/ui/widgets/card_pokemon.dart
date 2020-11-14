import 'package:flutter/material.dart';
import 'package:pokit/logic/models/pokemon.dart';

class PokemonCard extends StatelessWidget {
  final Pokemon pokemon;

  const PokemonCard({
    Key key,
    this.pokemon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Flexible(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(pokemon.name),
              Image.network(
                pokemon.sprites.frontDefault,
                height: 100,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
