import 'package:flutter/material.dart';
import 'package:untitled/model/ScreenArgs.dart';

class SecondRoute extends StatelessWidget {
  const SecondRoute({Key? key}) : super(key: key);
  static const routeName = '/second';
  @override
  Widget build(BuildContext context) {
    final ScreenArgs args = ModalRoute.of(context)!.settings.arguments as ScreenArgs;
    return  Scaffold(
      appBar: AppBar(
        title: Text('Second Route'),
      ),
      body: Column(
        children: [
         Center(child: Text(args.title)),
          ElevatedButton(
            child:  Text('Logout'),
            onPressed: (){
              Navigator.pushNamed(context, '/details');
            },
          ),
        ],
      ),
    );
  }
}
