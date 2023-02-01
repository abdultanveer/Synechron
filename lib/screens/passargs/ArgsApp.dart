import 'package:flutter/material.dart';
import 'package:untitled/model/ScreenArgs.dart';
import 'package:untitled/screens/passargs/ExtractArgsScreen.dart';
import 'package:untitled/screens/passargs/HomeScreen.dart';
import 'package:untitled/screens/passargs/PassArgsScreen.dart';

void main() => runApp(ArgsApp());

class ArgsApp extends StatelessWidget {
  const ArgsApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomeScreen(),
        ExtractArgsScreen.routeName: (context) => ExtractArgsScreen(),
      },
      onGenerateRoute: (settings){
        if(settings.name == PassArgs.routeName){
          final ScreenArgs args = settings.arguments as ScreenArgs;

          return MaterialPageRoute(builder: (context){
            return PassArgs(mTitle: args.title, mMessage: args.message);
          });

        }
      },

    );
  }
}
