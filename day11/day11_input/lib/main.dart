import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

// Also check the pubspec.yaml file
// only add "http" package
// Also configure your own server and change that IP
// This app takes command as an input from user and print the output
// to the console below.

void main() => runApp(MyApp());

String command;

void web(String command) async{
  var response = await http.get('http://192.168.10.11/cgi-bin/${command}.py');
  print(response.body);
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Input"),
        ),
        body: Center(
          child: Card(
            child: Container(
              padding: EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 50,
              ),
              width: 300,
              height: 300,
              color: Colors.grey,
              margin: EdgeInsets.all(20),
              child: Column(
                children: <Widget>[
                  Card(
                    child: TextField(
                      onChanged: (value) {
                        command = value;
                      },
                      cursorColor: Colors.grey,
                      style: TextStyle(
                        fontSize: 20,
                        fontStyle: FontStyle.italic,
                      ),
                      decoration: InputDecoration(
                        hintText: 'Command Here',
                        contentPadding: EdgeInsets.all(10),
                      ),
                    ),
                  ),
                  Card(
                    child: FlatButton(
                      onPressed: () {
                        print(command);
                        web(command);
                      },
                      child: Text('Run'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}