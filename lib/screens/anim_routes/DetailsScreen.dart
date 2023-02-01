import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: (){
          Navigator.pop(context);
          
        },
        child: Center(
          child: Hero(
              tag: 'hero',
              child: Image.network('https://picsum.photos/200/300')),
        ),
      ),
      
    );
  }
}
