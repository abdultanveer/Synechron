import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/net/photo_list.dart';

import '../model/Photo.dart';


class IsoHomePage extends StatelessWidget {
  const IsoHomePage(String appTitle, {Key? key}) : super(key: key);
 
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text('Isolates demo'),
      ),
      body: FutureBuilder<List<Photo>>(
        future: fetchPhotos() ,
        builder: (context,snapshot){
          if(snapshot.hasData){
           return PhotoList(photos: snapshot.data!);
          }
          else{
            return CircularProgressIndicator();
          }
        },
      ),
    );
  }
     
  }

Future<List<Photo>> fetchPhotos() async {
   final response = await  http.get(
       Uri.parse('https://jsonplaceholder.typicode.com/photos'));
   return compute(parsePhotos,response.body);
}
List<Photo> parsePhotos(String responseBody){
  final parsed = jsonDecode(responseBody).cast<Map<String,dynamic>>();
  return parsed.map<Photo>((json) => Photo.fromJson(json)).toList();
}


