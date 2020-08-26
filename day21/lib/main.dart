import 'package:flutter/material.dart';
import 'home.dart';
import 'profile.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    initialRoute: '/',
    routes: {
      '/' : (context) => HomePage(),
      '/profile': (context) => ProfilePage(),
    },
  ));
}