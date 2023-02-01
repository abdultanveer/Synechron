import 'package:flutter/material.dart';


class FavIcon extends StatefulWidget {
  const FavIcon({Key? key}) : super(key: key);

  @override
  State<FavIcon> createState() => _FavIconState();
}

class _FavIconState extends State<FavIcon> {
  bool _isFavourite = false;
  int _favCount = 50;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(onPressed: _toggleFav,
            icon:(_isFavourite ? Icon(Icons.star): Icon(Icons.star_border)),
        color: Colors.red,),
        SizedBox(
          width: 18,
            child: Text('$_favCount'))
      ],
    );
  }

  void _toggleFav() {
    setState(() {
      if(_isFavourite){
        _isFavourite = false;
        _favCount--;
      }
      else{
        _favCount++;
        _isFavourite = true;
      }
    });
  }
}

