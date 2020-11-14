import 'package:flutter/material.dart';

Widget drawer(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: [
        DrawerHeader(
          child: Text('Pokit',
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
              )),
          decoration: BoxDecoration(
            color: Colors.deepOrange[900],
          ),
        ),
        ListTile(
          title: Text(
            "BloC Stream",
            style: TextStyle(
              color: Colors.orange[900],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          title: Text('List Pokemons'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/',
            );
          },
        ),
        ListTile(
          title: Text('Search Pokemon'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/search',
            );
          },
        ),
        Divider(),
        ListTile(
          title: Text(
            "View Model",
            style: TextStyle(
              color: Colors.orange[900],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          title: Text('Random Pokemon'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/random',
            );
          },
        ),
        Divider(),
        ListTile(
          title: Text(
            "BloC",
            style: TextStyle(
              color: Colors.orange[900],
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ListTile(
          title: Text('ToDo'),
          onTap: () {
            Navigator.pushNamed(
              context,
              '/todo',
            );
          },
        ),
      ],
    ),
  );
}
