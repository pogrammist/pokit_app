import 'package:flutter/material.dart';
import 'package:pokit/ui/widgets/appbar_drawer.dart';

class UndefinedPage extends StatelessWidget {
  final String title;

  UndefinedPage({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: drawer(context),
      appBar: AppBar(
        title: Text(title),
      ),
      body: Center(
        child: Text(
          'id:1 - name:pikachu',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
