import 'package:flutter/material.dart';

class FirstRoute extends StatelessWidget {
   FirstRoute({Key? key}) : super(key: key);


  static const routeName = '/first';

  String title = 'firstroute title';
  String message = 'first route message';



   @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('First Route'),
      ),
      body: ElevatedButton(
        child:  Text('Login'),
        onPressed: (){
          Navigator.pushNamed(context, '/second');
        },
      ),
    );
  }
}
