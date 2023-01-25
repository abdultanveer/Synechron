import 'package:flutter/material.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  //createState  -- fill the juice
  @override
  State<HomePage> createState() => _HomePageState();
}

//defination of the juice
class _HomePageState extends State<HomePage> {
  int _counter = 0;
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
