import 'package:flutter/material.dart';
import 'package:pokit/logic/bloc_stream/bloc_pokemons.dart';
import 'package:pokit/logic/bloc_stream/event_pokemon.dart';
import 'package:pokit/logic/models/pokemons.dart';
import 'package:pokit/ui/widgets/appbar_drawer.dart';

class ListPokemonPage extends StatefulWidget {
  final String title;

  ListPokemonPage({Key key, this.title}) : super(key: key);

  @override
  _ListPokemonPageState createState() => _ListPokemonPageState();
}

class _ListPokemonPageState extends State<ListPokemonPage> {
  final PokemonsBloc _bloc = PokemonsBloc();

  @override
  void initState() {
    super.initState();
    _bloc.inputEventSink.add(PokemonEvent.pokemons_fetch);
  }

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
              onTap: () =>
                  _bloc.inputEventSink.add(PokemonEvent.pokemons_fetch),
              child: Icon(
                Icons.south,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 16.0),
            child: GestureDetector(
              onTap: () =>
                  _bloc.inputEventSink.add(PokemonEvent.pokemons_remove),
              child: Icon(Icons.delete_forever),
            ),
          ),
        ],
      ),
      body: StreamBuilder<Pokemons>(
        stream: _bloc.outputStateStream,
        initialData: null,
        builder: (BuildContext context, snapshot) => Container(
          child: ListView.builder(
            itemCount: snapshot.data?.results?.length ?? 0,
            itemBuilder: (BuildContext context, int index) => Container(
              color: index % 2 == 0 ? Colors.white : Colors.red[100],
              child: ListTile(
                leading: Text(
                  'id:$index',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                title: Text(
                  'name: ${snapshot.data.results[index].name}',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
