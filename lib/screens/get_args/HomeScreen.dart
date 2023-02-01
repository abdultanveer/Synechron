import 'package:flutter/material.dart';
import 'package:untitled/screens/get_args/SelectionButton.dart';

class HomeScr extends StatelessWidget {
  const HomeScr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('get data from other screen'),
      ),
      body: SelectionButton(),
    );
  }
}
