import 'package:flutter/material.dart';
import 'package:location_trace/button.dart';

class LandingScreen extends StatefulWidget {
  @override
  _LandingScreenState createState() => _LandingScreenState();
}

String location = "No location yet";

class _LandingScreenState extends State<LandingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white60,
      appBar: AppBar(
        title: Text("Trace My Location"),
        centerTitle: true,
        backgroundColor: Colors.black54,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Your Latitude  : "),
              Text("Your Longitude : "),
            ],
          ),
          Container(
            alignment: Alignment.center,
            child: Text("$location"),
          ),
          SizedBox(
            height: 100,
          ),
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
            textForbutton: "Locate me",
            colorForBorderButton: Colors.black,
          ),
        ],
      ),
    );
  }
}
