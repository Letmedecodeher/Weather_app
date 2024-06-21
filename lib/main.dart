
import 'package:flutter/material.dart';
import 'package:weather_app/Activity/loading.dart';

import 'Activity/home.dart';



void main() {
  runApp(MaterialApp(
    routes: {
      "/" : (context) => Loading(),
      "/home" : (context) => Home(),
    },
  ));
}