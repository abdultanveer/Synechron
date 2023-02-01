import 'package:flutter/material.dart';
import 'package:untitled/screens/anim_routes/MainScreen.dart';

void main() => runApp(HeroApp());

class HeroApp extends StatelessWidget {
  const HeroApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transition demo',
      home: MainScreen(),
    );
  }
}
