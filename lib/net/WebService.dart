import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:untitled/model/album.dart';

class WebService {
  Future<Album> fetchAlbum() async {
  final response = await http.get(
      Uri.parse('https://jsonplaceholder.typicode.com/albums/1'));
  if (response.statusCode == 200) {
   return Album.fromJson(jsonDecode(response.body));
  }
  else {
   throw Exception('unable to get the json');
  }
 }

/* main() async {
  var album = await fetchAlbum();
  print(album.title);
 }*/
}