import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    theme: ThemeData.dark(),
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 22 SnackBar"),
      ),
      body: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget{
  @override
  _MyHomePage createState() => _MyHomePage();
}

class _MyHomePage extends State<MyHomePage>{
  @override
  Widget build(BuildContext context){
    return Center(
      child: RaisedButton(
        onPressed: (){
          Scaffold.of(context).showSnackBar(
            SnackBar(
              content: Text("Button Pressed....."),
              duration: Duration(seconds: 5),
              elevation: 20,
            ),
          ); // this will create a sanckbar as soon as the button is pressed
          print(Scaffold.of(context).hasAppBar);
        },
        child: Text("Click"),
      ),
    );
  }
}