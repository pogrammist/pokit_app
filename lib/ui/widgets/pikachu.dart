import 'package:flutter/material.dart';

class Pikachu extends StatelessWidget {
  const Pikachu({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Let\'s go!'),
            Image.network(
                'https://raw.githubusercontent.com/PokeAPI/sprites/master/sprites/pokemon/25.png'),
          ],
        ),
      ),
    );
  }
}
