import 'package:flutter/material.dart';
import 'package:untitled/main.dart';
import 'package:untitled/widgets/customlist/DataSource.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String title = 'title list';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: Text('appbar title'),
        ),
        body: ListView.builder(

            itemCount: DataSource.items.length,
            prototypeItem: const ListTile(title: Text(''),
            subtitle: Text(''),),
            itemBuilder: (context, index) {
              final item = DataSource.items[index];
              return ListTile(
                title: item.buildTitle(context),
                subtitle: item.buildSubtitle(context),
              );
            }),
      ),
    );
  }
}
