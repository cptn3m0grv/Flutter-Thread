// This is the basic code to use API, in this app a user inputs the city name and as soon as the 'Get Weather' button is clicked, the weather is updated
// The weather is for the day
// If you are a developer and you want to run this code, make sure you get your own API key from : 
//   *************************         https://openweathermap.org/        *************************
// And if you are beginner make sure you are using the free service.

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

String cityName;
String input;
var maxTemp;
var minTemp;
var humidity;
var seaLevel;

void main(){
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget{
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>{
  
  apiCall(String cityName) async{
    var url = "http://api.openweathermap.org/data/2.5/forecast?q=$cityName&appid={ your api id here}";
    var response = await http.get(url);
    var body = response.body;
    setState(() {
      var out = jsonDecode(body);
      maxTemp = out['list'][1]['main']['temp_max'];
      minTemp = out['list'][1]['main']['temp_min'];
      humidity = out['list'][1]['main']['humidity'];
      seaLevel = out['list'][1]['main']['sea_level'];
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Day16 API"),
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          color: Colors.grey,
          child: Column(
            children: [
              TextField(
                onChanged: (value) {
                  input = value;
                },
                style: TextStyle(
                  fontSize: 20,
                ),
                decoration: InputDecoration(
                  hintText: 'City Name',
                  border: OutlineInputBorder(),
                  contentPadding: EdgeInsets.all(10),
                  prefixIcon: Icon(Icons.search),
                ),
              ),
              Card(
                child: FlatButton(
                  onPressed: () {
                    cityName = input;
                    apiCall(cityName);
                  },
                  child: Text("Get weather"),
                ),
              ),
              Card(
                child: Text(
                  '  Max Temp: $maxTemp K ',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              Card(
                child: Text(
                  '  Min Temp: $minTemp K ',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              Card(
                child: Text(
                  '  Humidity: $humidity  ',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
              Card(
                child: Text(
                  '  Sea Level: $seaLevel m ',
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
