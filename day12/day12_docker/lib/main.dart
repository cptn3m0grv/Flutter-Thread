import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

void main() => runApp(MyApp());

String imageName;
String osName;

web(String imageName, String osName) async{
  var img = imageName;
  var os = osName;
  print("I got 'em all");
  var url = "http://192.168.10.11/cgi-bin/web.py?i=${img}&o=${os}";
  var response = await http.get(url);
  print(response.body);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.grey,
          title: Text("Docker"),
        ),
        body: Center(
          child: Container(
            padding: EdgeInsets.all(20),
            width: 300,
            height: 300,
            color: Colors.grey,
            child: Column(
              children: <Widget>[
                Card(
                  child: TextField(
                    onChanged: (value) => {
                      imageName = value
                    },
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Image name",
                      prefixIcon: Icon(Icons.tablet_android),
                    ),
                  ),
                ),
                Card(
                  child: TextField(
                    onChanged: (value) => {
                      osName = value
                    },
                    style: TextStyle(
                      fontSize: 20,
                    ),
                    autocorrect: false,
                    textAlign: TextAlign.center,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      contentPadding: EdgeInsets.all(20),
                      hintText: "Os Name",
                      prefixIcon: Icon(Icons.tablet_android),
                    ),
                  ),
                ),
                Card(
                  child: FlatButton(
                    onPressed: () {
                      web(imageName, osName);
                    },
                    child: Text("Run"),
                  )
                ),
              ],
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}