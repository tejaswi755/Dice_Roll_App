import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text("Dice"),
          backgroundColor: Colors.red,
        ),
        body: MyApp(),
      ),
    ),
  );
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  int dicel = 6;
  int dicer = 3;
  void newfun() {
    setState(() {
      dicel = Random().nextInt(6) + 1;
      dicer = Random().nextInt(6) + 1;
    });
  }

  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
                child: Image.asset('images/dice$dicel.png'),
                onPressed: () {
                  newfun();
                }),
          ),
          Expanded(
            child: FlatButton(
              child: Image.asset('images/dice$dicer.png'),
              onPressed: () {
                newfun();
              },
            ),
          ),
        ],
      ),
    );
  }
}
