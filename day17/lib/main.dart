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

  var lat;
  var long;

  getLoc() async{
    var position = await Geolocator().getCurrentPosition(
			desiredAccuracy: LocationAccuracy.high
		);

    setState(() {
      if (lat == null && long == null){
        lat = position.latitude;
        long = position.longitude;
      } 
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
          width: 300,
          height: 300,
          color: Colors.grey,
          child: Column(
            children: <Widget>[
                  Text(
                    "Latitude: $lat",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
                  Text(
                    "Longitude: $long",
                    style: TextStyle(
                      fontSize: 25,
                    ),
                  ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: getLoc(),
        child: Icon(Icons.gps_fixed),
      ),
    );
  }
}