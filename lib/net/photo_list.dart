import 'package:flutter/material.dart';
import 'package:untitled/model/Photo.dart';

class PhotoList extends StatelessWidget {
  const PhotoList({super.key,required this.photos });

  final List<Photo> photos;
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
    ),
      itemCount:  photos.length,
      itemBuilder: (context,index){
        return Image.network(photos[index].thumbnailUrl);
      },

    );
  }
}
