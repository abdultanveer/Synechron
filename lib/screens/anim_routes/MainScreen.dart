import 'package:flutter/material.dart';

import 'DetailsScreen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('main screen'),
      ),
      body: GestureDetector(
        onTap: (){
          //route = page
          Navigator.push(context, MaterialPageRoute(builder: (context){
            return DetailsScreen();
          }));
        },
        child: Hero(
          tag: 'hero',
          child: Image.network('https://picsum.photos/200'),
        ),
      ),
    );
  }
}
