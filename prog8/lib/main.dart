import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MyApp());
}

int dice1 = 1, dice2 = 2;

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(canvasColor: Colors.black),
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text('Dicee app'),
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Expanded(
                    child: FlatButton(
                        child: Image.asset('assets/$dice1.png'),
                        onPressed: () {
                          changeFace();
                        }),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: FlatButton(
                        child: Image.asset('assets/$dice2.png'),
                        onPressed: () {
                          changeFace();
                        }),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void changeFace() {
    setState(() {
      dice1 = Random().nextInt(6) + 1;
      dice2 = Random().nextInt(6) + 1;
    });
  }
}
