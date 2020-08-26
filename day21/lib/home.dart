import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Day 21"),
      ),
      body: Column(
        children: [
          RaisedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/profile');
            },
            child: Text("Go to profile"),
          ),
          Text("Profile is offline"),
        ],
      ),
    );
  }
}