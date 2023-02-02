import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/other.dart';
import 'package:untitled/widgets/MyController.dart';


void main() => runApp(GetMaterialApp(
  home: HomeX(),
));

class HomeX extends StatelessWidget {
  const HomeX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyController myController = Get.put(MyController());
    return Scaffold(
      appBar: AppBar(title: Obx( () => Text("Clicks ${myController.count}")),),
      body: Center(
        child: ElevatedButton(
          child: Text('go to other page', ),
          onPressed: (){ Get.to(Other());},
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed:(){myController.increment();},
      ),
    );
  }
}

