import 'package:flutter/material.dart';
import 'package:untitled/model/album.dart';
import 'WebService.dart';

void main() => runApp(NetApp());

class NetApp extends StatefulWidget {
  const NetApp({Key? key}) : super(key: key);

  @override
  State<NetApp> createState() => _NetAppState();
}



class _NetAppState extends State<NetApp> {
  late Future<Album> futureAlbum;
  @override
  void initState() {
    super.initState();
    futureAlbum = WebService().fetchAlbum();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Fetch albums',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('fetch albums'),
        ),
        body: Center(
          child: FutureBuilder<Album>(
            future: futureAlbum,
            builder: (context,snapshot){
              if(snapshot.hasData){
                return Text(snapshot.data!.title);
              }
              else{
                return const CircularProgressIndicator();
              }
            },
          ),
        ),
      ),
    );
  }
}
