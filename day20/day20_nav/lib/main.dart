import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    initialRoute: '/',
    routes: {
      '/' : (context) => HomePage(),
      '/gaurav': (context) => GauravPage(),
      '/jon': (context) => JonPage(),
      '/doe': (context) => DoePage(),
    },
    theme: ThemeData.dark(),
    debugShowCheckedModeBanner: false,
  ));
}

class HomePage extends StatefulWidget{
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage>{
  List<String> names = ['gaurav', 'jon', 'doe'];
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Day 20 Navigation"),
      ),
      body: ListView.builder(
        itemCount: names.length,
        itemBuilder: (BuildContext context, int index){
          return Card(
            child: ListTile(
              title: Text("Student: ${names[index]}"),
              subtitle: Text("Click"),
              leading: Icon(Icons.arrow_forward),
              trailing: Text("..."),
              onTap: () {
                Navigator.pushNamed(context, '/${names[index]}');
              },
            ),
          );
        },
      ),
    );
  }
}

class GauravPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Gaurav"),
      ),
      body: Text("I am gaurav"),
    );
  }
}

class JonPage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Jon"),
      ),
      body: Text("I am jon"),
    );
  }
}

class DoePage extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Doe"),
      ),
      body: Text("I am doe"),
    );
  }
}