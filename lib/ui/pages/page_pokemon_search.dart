import 'package:flutter/material.dart';
import 'package:pokit/logic/bloc_stream/bloc_pokemon.dart';
import 'package:pokit/ui/widgets/appbar_drawer.dart';
import 'package:pokit/ui/widgets/card_pokemon.dart';
import 'package:pokit/ui/widgets/pikachu.dart';

class SearchPokemonPage extends StatefulWidget {
  final String title;

  SearchPokemonPage({Key key, this.title}) : super(key: key);

  @override
  _SearchPokemonPageState createState() => _SearchPokemonPageState();
}

class _SearchPokemonPageState extends State<SearchPokemonPage> {
  final _textFieldController = TextEditingController();
  final PokemonBloc _bloc = PokemonBloc();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text(widget.title),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () => getResponse(),
              child: Icon(
                Icons.search,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () => clearResponse(),
              child: Icon(Icons.delete_forever),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                  hintText: 'Find a friend for pikachu, please'),
              textAlign: TextAlign.center,
              controller: _textFieldController,
            ),
          ),
          StreamBuilder(
            stream: _bloc.outputStateStream,
            initialData: null,
            builder: (context, snapshot) => snapshot.data != null
                ? PokemonCard(pokemon: snapshot.data)
                : Pikachu(),
          ),
        ],
      ),
    );
  }

  void getResponse() {
    if (_textFieldController.text.length != 0) {
      _bloc.inputEventSink.add(_textFieldController.text);
      _textFieldController.clear();
    }
  }

  void clearResponse() {
    _bloc.inputEventSink.add('clear');
    _textFieldController.clear();
  }
}
