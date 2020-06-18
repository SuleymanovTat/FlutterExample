import 'package:flutter/material.dart';

class NewFavorite extends StatefulWidget {
  final int _number;
  final bool _isLike;

  NewFavorite(this._number, this._isLike);

  @override
  State<StatefulWidget> createState() {
    return NewFavoriteState(_number, _isLike);
  }
}

class NewFavoriteState extends State<NewFavorite> {
  int number;
  bool isLike;

  NewFavoriteState(this.number, this.isLike);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          "В избранном $number",
          textAlign: TextAlign.center,
        ),
        IconButton(
          icon: Icon(
            isLike ? Icons.star : Icons.star_border,
            size: 14,
            color: Colors.blue,
          ),
          onPressed: pressButton,
        )
      ],
    );
  }

  void pressButton() {
    setState(() {
      isLike = !isLike;
      if (isLike)
        number++;
      else
        number--;
    });
  }
}
