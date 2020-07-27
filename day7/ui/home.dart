import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor/flutter_statusbarcolor.dart';
import 'package:fluttertoast/fluttertoast.dart';


myApp(){

  FlutterStatusbarcolor.setStatusBarColor(Colors.grey[900]);

  doubletapped(){
    Fluttertoast.showToast(
      msg: 'Flutter Developer',
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.TOP,
      timeInSecForIosWeb: 5,
      backgroundColor: Colors.amber,
      textColor: Colors.black,
      fontSize: 16,
    );
  }

  myimage(){
    Fluttertoast.showToast(
      msg: 'Gaurav Goyal',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 2,
      backgroundColor: Colors.amber,
      textColor: Colors.black,
      fontSize: 12.0,
    );
  }

  test(){
    FlutterStatusbarcolor.setStatusBarColor(Colors.amber);
  }

  hs(){
    Fluttertoast.showToast(
      msg: 'Home Screen',
      gravity: ToastGravity.TOP_RIGHT,
      textColor: Colors.black,  
    );
  }

  var url = "https://media-exp1.licdn.com/dms/image/C5103AQEWu3y39HIAOw/profile-displayphoto-shrink_400_400/0?e=1601510400&v=beta&t=MkpMBjIBX8R1evpBuggZThhzJmoszMyJMsbb8MTY_7Y";

  var mybody = Container(
    height: double.infinity,
    width: double.infinity,
    color: Colors.grey[300],
    margin: EdgeInsets.all(20),
    child: Stack(
      alignment: Alignment.topCenter,
      children: <Widget>[
        Container(
          alignment: Alignment.center,
          width: 350,
          height: 200,
          decoration: BoxDecoration(
            color: Colors.amber,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(
              color: Colors.amber,
              width: 2, 
            ),
          ),
          margin: EdgeInsets.all(50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Gaurav Goyal'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(Icons.email),
                  Text('  cptn3m0grv@gmail.com'),
                ],
              ),
            ],
          ),
        ),
        GestureDetector(
          onDoubleTap: doubletapped,
          onTap: myimage,
          child: Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(50),
              border: Border.all(
                color: Colors.amber,
                width: 2,
              ), 
              image : DecorationImage(
                image: NetworkImage(
                  url
                ),
                fit: BoxFit.cover,
              ),
            ),
          )
        )
      ],
    ),
  );

  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: Text("Day 7"),
        backgroundColor: Colors.grey[700],
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.adb),
            onPressed: test,
          ),
          IconButton(
            icon: Icon(Icons.add_to_home_screen),
            onPressed: hs,
          ),
        ],
      ),
      body: mybody,
    ),
    debugShowCheckedModeBanner: false,
  );

}