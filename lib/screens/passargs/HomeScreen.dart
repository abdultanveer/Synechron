import 'package:flutter/material.dart';
import 'package:untitled/model/ScreenArgs.dart';
import 'package:untitled/screens/passargs/PassArgsScreen.dart';
import 'ExtractArgsScreen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: (){
              Navigator.pushNamed(
                  context,
                  ExtractArgsScreen.routeName,
                  arguments: ScreenArgs('first title','first message'));
            }, child: Text('sign in'),
          ),
          ElevatedButton(onPressed: (){
            Navigator.pushNamed(
                context,
                PassArgs.routeName,
                arguments: ScreenArgs("title-constructor", "message-constructor"));
          },
              child: Text('pass args constructor')
          )
        ],
      ),
    );
  }
}
