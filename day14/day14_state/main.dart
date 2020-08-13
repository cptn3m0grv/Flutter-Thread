import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
void main() {
  runApp(MaterialApp(
    home: MyApp()
  ));
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

String output;
String input;

class _MyAppState extends State<MyApp>{
  exec() async{
    var url = "http://192.168.10.11/cgi-bin/state.py?cmd=$input";   
    var response = await http.get(url);
    var statecode = response.statusCode;
    var body = response.body;

    setState(() {
      output = body;
    }); 
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 14 State"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10),
          width: double.infinity,
          height: double.infinity,
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Text(
                "Welcome To Terminal",
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
              Card(
                child: TextField(
                  onChanged: (value) {
                    input = value;
                  },
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    hintText: 'Command',
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.all(10),
                    prefixIcon: Icon(Icons.arrow_forward),
                  ),
                ),
              ),
              Card(
                child: FlatButton(
                  onPressed: exec,
                  child: Text("Run"),
                ),
              ),
              Text('\n'),
              Text(output ?? "Output"),
            ],
          ),
        ),
      ),
    );
  }
}
