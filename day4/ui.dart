import 'package:flutter/material.dart';

myapp(){

  var url = 'https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP._E9GkrYl2GRcm2DrCzzAMwHaGL%26pid%3DApi&f=1';

  var mytitle = Text(
    "Whatsapp",
    textDirection: TextDirection.ltr,
  );

  vertpressed(){
    print("VertButton was pressed");
  }

  gpspressed(){
    print("Location Button was presses");
  }

  var myLead = Icon(Icons.navigate_next);
  var myVert = Icon(Icons.more_vert);
  var mygps = Icon(Icons.my_location);

  var myVertButton = IconButton(icon: myVert, onPressed: vertpressed);
  var mygpsButton = IconButton(icon: mygps, onPressed: gpspressed);  

  var myImage = Image.network(
    url,
    height: double.infinity,
    width: double.infinity,
  );

  var myappbar =  AppBar(
    title: mytitle,
    backgroundColor: Colors.teal[900],
    leading: myLead,
    actions: <Widget>[
      mygpsButton,
      myVertButton,
    ],
  );

  var myhome = Scaffold(
    appBar: myappbar,
    body: myImage,
    backgroundColor: Colors.grey[850],
  );

  var design = MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );

  return design;
}