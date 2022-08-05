import 'package:flutter/material.dart';

class FavoriteWidget extends StatefulWidget {
  final bool isFavorited;
  final int favoriteCount;
  const FavoriteWidget(
      {Key? key, required this.isFavorited, required this.favoriteCount})
      : super(key: key);

  @override
  State<FavoriteWidget> createState() =>
      _FavoriteWidgetState(this.isFavorited, this.favoriteCount);
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool _isFavorite;
  int _favoriteCount;
  _FavoriteWidgetState(this._isFavorite, this._favoriteCount);
  void _togglefavorite() {
    setState(() {
      if (this._isFavorite) {
        _isFavorite = false;
        _favoriteCount--;
      } else {
        _isFavorite = true;
        _favoriteCount++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          onPressed: _togglefavorite,
          icon: _isFavorite
              ? Icon(
                  Icons.favorite,
                  color: Colors.red,
                )
              : Icon(Icons.favorite_border),
          color: Colors.red,
        ),
        Text("$_favoriteCount"),
      ],
    );
  }
}
