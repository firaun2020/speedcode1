import 'package:flutter/material.dart';
import 'package:location_trace/button.dart';
import 'package:location_trace/forms.dart';

import 'LandingScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: NetworkImage(
                      "https://images.unsplash.com/photo-1453413453658-27fec8f43f29?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8c3RyZWV0fGVufDB8fDB8fA%3D%3D&ixlib=rb-1.2.1&w=1000&q=80"),
                  fit: BoxFit.cover)),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SizedBox(
                  height: 100,
                ),
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Sign in",
                    style: TextStyle(
                        color: Colors.white, fontFamily: "Try", fontSize: 60),
                  ),
                ),
                SizedBox(
                  height: 100,
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(child: buildEmail()),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  child: Container(child: buildPassword()),
                ),
                SizedBox(
                  height: 30,
                ),
                /* Container(
                  width: 200,
                  padding: EdgeInsets.all(10),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white),
                  child: Text(
                    "sign in",
                    style: TextStyle(fontSize: 20, color: Colors.black54),
                  ),
                ),*/
                BigButton(
                  textColor: Colors.black87,
                  colorForButton: Colors.white60,
                  functionForButton: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return LandingScreen();
                        },
                      ),
                    );
                  },
                  textForbutton: "login",
                  colorForBorderButton: Colors.black,
                ),
                SizedBox(
                  height: 200,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
