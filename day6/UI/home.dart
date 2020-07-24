import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';

MyApp(){

  FlutterStatusbarcolor.setStatusBarColor(Colors.grey[700]);

  popup(){
    Fluttertoast.showToast(
      msg: "Enter Email",
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 3,
      backgroundColor: Colors.grey[850],
      textColor: Colors.white,
      fontSize: 15.0,
    );
  }

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Whatsapp"),
        backgroundColor: Colors.grey[800],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.email),
            onPressed: popup,
          ),
        ],
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}