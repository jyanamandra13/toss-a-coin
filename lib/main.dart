import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}
int value;
class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  String toss="heads";
  void coin(){
    if(value%2==0){
      toss= "heads";

    }
    else{
      toss="tails";
    }
  }

  @override
  Widget build(BuildContext context) {
    value=Random().nextInt(10);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurpleAccent,
        appBar: AppBar(
          backgroundColor: Colors.deepOrangeAccent,
          title: Center(
            child: Text(
              "Toss",style: TextStyle(
                color: Colors.white
            ),
            ),
          ),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child:
              GestureDetector(
                onTap:(){
                  setState(() {
                    coin();
                  });
      },
                child: Image.asset("images/$toss.jpg")),
            ),
          ],
        ),
      ),
    );
  }
}