import 'dart:js';

import 'package:flutter/material.dart';
import 'package:untitled/model/ScreenArgs.dart';
import 'package:untitled/screens/anim_routes/DetailsScreen.dart';
import 'package:untitled/screens/named_routes/FirstRoute.dart';

import 'SecondRoute.dart';

void main(){
  runApp(MaterialApp(
    title: 'Navigation demo',
    initialRoute: '/',
    routes: {
      '/': (context) => FirstRoute(),
      '/second': (context) => SecondRoute(),

    },
    //home: FirstRoute(),
  ));
}