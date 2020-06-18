import 'package:flutter/material.dart';

class ListStateFulWidget extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ListStateFulWidgetState();
  }
}

class ListStateFulWidgetState extends State<ListStateFulWidget> {
  List<String> _array = [];
  @override
  Widget build(BuildContext context) {
    return new ListView.builder(itemBuilder: (context, i) {
      print('num $i : нечетное = ${i.isOdd}');
      if (i.isOdd) return new Divider();
      final int index = i ~/ 2;
      print('index $index');
      print('length ${_array.length}');
      if (index >= _array.length)
        _array.addAll(['$index', '${index + 1}', '${index + 2}']);
      return new ListTile(title: new Text(_array[index]));
    });
  }
}

class ListStatelessWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: new Scaffold(
            body: new Center(
          child: ListStateFulWidget(),
        )));
  }
}
