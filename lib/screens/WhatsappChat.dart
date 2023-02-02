import 'package:flutter/material.dart';

void main() => runApp(ChatApp());

class ChatApp extends StatelessWidget {
  const ChatApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'abduls chat';
    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(title),
        ),
        body: ListView(

          children: const <Widget>[
            ListTile(
              leading: Icon(Icons.map),
              title: Text('map'),
            ),
            ListTile(
              leading: Icon(Icons.album),
              title: Text('album'),
            ),
            ListTile(
              leading: Icon(Icons.phone),
              title: Text('phone'),
            ),
          ],
        ),
      )

    );
  }
}
