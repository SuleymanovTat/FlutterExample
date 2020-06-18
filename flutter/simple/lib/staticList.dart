import 'package:flutter/material.dart';

List<Widget> list = [
  Text("Book1", style: TextStyle(fontSize: 14),),
  Divider(),
  Text("Book2", style: TextStyle(backgroundColor: Colors.blue),),
  Divider(color: Colors.red,),
  Text("book3"),
  Divider(),
];

class StaticList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text("StaticList"),
          ),
          body: ListView(
            children: list,
          )),
    );
  }
}
