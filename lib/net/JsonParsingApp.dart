import 'package:flutter/material.dart';


import 'iso_home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const appTitle = 'Jsonparsing in isolate';

    return MaterialApp(
      title: appTitle,
      home: IsoHomePage(appTitle),
    );
  }
}
