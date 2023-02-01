import 'package:flutter/material.dart';
import 'package:untitled/model/ScreenArgs.dart';

class ExtractArgsScreen extends StatelessWidget {
  const ExtractArgsScreen({Key? key}) : super(key: key);

  static const routeName = '/extractArgs';

  @override
  Widget build(BuildContext context) {
    final ScreenArgs args = ModalRoute.of(context)!.settings.arguments as ScreenArgs;
    return Scaffold(
      appBar: AppBar(
        title: Text('extract args screen--'+args.title),
      ),
      body: Text('msg--'+args.message),
    );
  }
}
