import 'package:flutter/material.dart';

myapp(){
 
  var url = "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.XFHPjF5RQuDVqsf9l609CwHaHa%26pid%3DApi&f=1";

  var mybody = Container(
    width: 200,
    height: 200,
    decoration: BoxDecoration(
      color: Colors.teal[900],
      image: DecorationImage(
        image: NetworkImage(url),
        fit: BoxFit.cover,
      ),
      borderRadius: BorderRadius.circular(12),
    ), 
    child: Column(
      children: <Widget>[
        Text(
          "Whatsapp",
        ),
        Text(
          "Gaurav",
        ),
      ],
    ), 
  );

  var myhome = Scaffold(
    appBar: AppBar(
      title: Text("Whatsapp"),
      backgroundColor: Colors.grey[850],
    ),
    body: Center(
      child: mybody,
    ),
    backgroundColor: Colors.teal[900],
  );

  return MaterialApp(
    home: myhome,
    debugShowCheckedModeBanner: false,
  );
}