import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled/widgets/MyController.dart';



class Other extends StatelessWidget {
  // You can ask Get to find a Controller that is being used by another page and redirect you to it.
  final MyController c = Get.find();

  @override
  Widget build(context){
    // Access the updated count variable
    return Scaffold(body: Center(child: Text("im in other page \n ${c.count}")));
  }
}