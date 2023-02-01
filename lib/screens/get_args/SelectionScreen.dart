import 'package:flutter/material.dart';


class SelectionScreen extends StatelessWidget {
  const SelectionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Select an option'),
      ),
      body: Column(
        children: <Widget>[
          ElevatedButton(onPressed: (){Navigator.pop(context,'yep');}, child: Text('yes')),
          ElevatedButton(onPressed: (){Navigator.pop(context,'nope');}, child: Text('No'))


        ],
      ),
    );
  }
}
