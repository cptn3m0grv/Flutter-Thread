import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// do read the day8.txt file before running this code


main(){
  runApp(myHotApp());
}

date() async {
  var url = 'http://192.168.10.13/cgi-bin/date.py';
  var response = await http.get(url);
  var statcode = response.statusCode;
  var body = response.body;
  print(statcode);
  print(body);
}

calendar() async {
  var url = 'http://192.168.10.13/cgi-bin/cal.py';
  var response = await http.get(url);
  var statcode = response.statusCode;
  var body = response.body;
  print(statcode);
  print(body);
}

mybody(){
  return Container(
    margin: EdgeInsets.all(10),
    alignment: Alignment.topCenter,
    width: double.infinity,
    height: double.infinity,
    decoration: BoxDecoration(
      color: Colors.grey[700],
      borderRadius: BorderRadius.circular(10),
      border: Border.all(
        color: Colors.black,
        width: 2,
      ),
    ),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        RaisedButton(
          onPressed: date,
          color: Colors.amber,
          textColor: Colors.black,
          child: Text('Date'),
        ),
        RaisedButton(
          onPressed: calendar,
          color: Colors.amber,
          textColor: Colors.black,
          child: Text('Calendar'),
        ),
      ],
    ),
  );
}

class myHotApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Webtest'),
          backgroundColor: Colors.grey[700],
        ),
        body: mybody(),
      ),
      debugShowCheckedModeBanner: false,
    );    
  }  
}