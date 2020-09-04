import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
// configure your google-services file at android/app/google-services.json
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

// ignore: must_be_immutable
class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  // ignore: deprecated_member_use
  var fsConnect = FirebaseFirestore.instance;
  String name ;
  String title;
  List data = [];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Firebase practicle"),
        ),
        body: ListView(
          children: [
            Column(
              children: [
                Text("Usernam"),
                TextField(
                  onChanged: (value) {
                    name = value;
                  },
                ),
                Text("title"),
                TextField(
                  onChanged: (value) {
                    title =  value;
                  },
                ),
                RaisedButton(
                  child: Text("add data"),
                  onPressed: () async {
                    var user = await fsConnect.collection("students").add({
                      "name": "$name",
                      "title": "$title", 
                    });
                    print(user);
                  },
                ),
                RaisedButton(
                  child: Text("Get data"),
                  onPressed: () async{
                    var d = await fsConnect.collection("students").get();
                    for(var i in d.docs){
                      data.add(i);
                      print(i);
                    }
                  },
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

