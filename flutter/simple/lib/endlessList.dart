import 'package:flutter/material.dart';

class EndlessList extends StatelessWidget {
  @override
  Widget build(Object context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: new Scaffold(
          appBar: AppBar(title: Text("Бесконечный список")),
          body: new ListView.builder(
          itemBuilder: (context, index) {
            return new Text('строка $index');
          },
        ) // ListView.builder
            ) // Scaffold
        ); // MaterialApp
  }
}
