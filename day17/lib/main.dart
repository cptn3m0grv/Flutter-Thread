// In this application I have not implemented google maps because I do not have any google API as of now
// but i will be update this code accordingly as soon as I get it
// This code will get the current location --> latitude, longitude, altitude and accuracy on a press of a button.
// *** https://github.com/cptn30grv  ******

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';

void main(){
  runApp(
    MaterialApp(
      home: MyApp(),
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
    ),
  );
}

class MyApp extends StatefulWidget{
  @override
  _MyApp createState() => _MyApp();
}

class _MyApp extends State<MyApp>{

  var lat = double.infinity;
  var long = double.infinity;
  var alt = double.infinity;
  var acc  = double.infinity;
  var wid = 300.0;
  var hei = 230.0;

  getLoc() async{
    var position = await Geolocator().getCurrentPosition(
			desiredAccuracy: LocationAccuracy.high
		);

    setState(() {
        lat = position.latitude;
        long = position.longitude;
        alt = position.altitude;
        acc = position.accuracy;
        wid = 300.0;
        hei = 350.0;
    });
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 17 GPS"),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(30),
          width: wid,
          height: hei,
          color: Colors.grey,
          child: Column(
            children: <Widget>[
              Text(
                "Latitude: $lat deg",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                "Longitude: $long deg",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                "Altitude: $alt m",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
              Text(
                "Accuracy: $acc m",
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getLoc,
        child: Icon(Icons.gps_fixed),
      ),
    );
  }
}