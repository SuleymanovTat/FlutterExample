import 'package:flutter/material.dart';

class StaticList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("StaticList"),
          ),
          body: ListView(
            children: <Widget>[
              Text("book1"),
              Divider(),
              Text("book2"),
              Divider(),
              Text("book3"),
              Divider(),
            ],
          )),
    );
  }
}
