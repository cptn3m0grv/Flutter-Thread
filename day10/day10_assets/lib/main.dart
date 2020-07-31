// copy all the folders and files as it is and also it is just a prototype app, advances version of this app is
// coming soon or check it in my github profile.

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.red,
          margin: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Card(
                child: Image.asset(
                  'assets/images/banner.jpeg',
                  width: 300,
                ),
                color: Colors.black,
              ),
              RaisedButton(
                onPressed: () {
                  var aud = AudioCache();
                  aud.play('audio/song.mp3');
                  print("Did it work !!!");
                },
                child: Card(
                  color: Colors.amber,
                  child: Text('PLAY'),
                  elevation: 20,
                ),
              ),
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}