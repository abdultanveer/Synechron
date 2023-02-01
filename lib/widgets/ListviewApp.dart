import 'package:flutter/material.dart';

void main() => runApp(ListApp());

class ListApp extends StatelessWidget {
  const ListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = 'horizontal list';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Container(
          margin: EdgeInsets.symmetric(vertical: 20.0),
          height: 160,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[
              Container( width: 160, color: Colors.red,),
              Container( width: 160, color: Colors.black,),
              Container( width: 160, color: Colors.blue,),
              Container( width: 160, color: Colors.grey,),
              Container( width: 160, color: Colors.green,),
              Container( width: 160, color: Colors.orange,),
              Container( width: 160, color: Colors.yellow,),

            ],
          ),
        ),
      ),
    );
  }
}
