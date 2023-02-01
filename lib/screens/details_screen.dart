import 'package:flutter/material.dart';
import 'package:untitled/widgets/FavIcon.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {


    Widget titleSection = Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              Container(
                child: Text('lake campground',
                style: TextStyle(fontWeight: FontWeight.bold),),
                padding: EdgeInsets.only(bottom: 10),
              ),
              Text('switzerland', style: TextStyle(color: Colors.grey),)
            ], ),),
         /* Icon(Icons.star, color: Colors.red,),
          Text('100')*/
          const FavIcon()
        ],
      ),
    );

    Color color = Theme.of(context).primaryColor;
    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color,Icons.call,'call'),
        _buildButtonColumn(color,Icons.route,'route'),
        _buildButtonColumn(color,Icons.share,'share'),

      ],
    );

    Widget textSection =

    Padding(
      padding: const EdgeInsets.all(25.0),
      child: Text(
          'description of the product is ..'
              'description of the product is ..'
              'description of the product is ..'
              'description of the product is ..',
        softWrap: true,
      ),
    );





    return MaterialApp(
      title: 'Product details',
      home: Scaffold(
        appBar: AppBar(
          title: Text('demo on layouts'),
        ),
        body: ListView(
          children: [
            Image.asset('images/lake.jpg',
            width: 600,
                height: 250,
            fit: BoxFit.cover,),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );


  }

 Column _buildButtonColumn(Color color, IconData iconData, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(iconData,color: color,),
        Container(
          margin: const EdgeInsets.only(top: 10),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w200,
                color: color

            ),)
        )
      ],
    );
  }



}
