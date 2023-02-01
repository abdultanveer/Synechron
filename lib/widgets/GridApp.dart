import 'package:flutter/material.dart';

void main(){
  runApp(GridApp());
}

class GridApp extends StatelessWidget {
  const GridApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    const String title = 'Gridlist';

    return MaterialApp(
      title: 'Gridview',
      home: Scaffold(
        appBar: AppBar(
          title: Text(title) ,
        ),
        body: GridView.count(crossAxisCount: 3,
        children: List.generate(50, (index){
          return Center(

              child: Text('Item-$index'));
        }),),
      ),
    );
  }
}
