import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int num = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey,
        appBar: AppBar(
          title: Text("Get Your Answer",
          style: TextStyle(
            color: Colors.grey
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue[900]
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Click the Ball to git the answer",
            style: TextStyle(
              color: Colors.blue[900],
              fontWeight: FontWeight.bold,
              fontSize: 25,

            ),),
            SizedBox(
             height: 10,
            ),
            Icon(Icons.arrow_downward,
            color: Colors.blue[800],
            size: 40,),
            TextButton(
              onPressed: (){
                setState(() {
                  num = Random().nextInt(5)+1;
                });
              },
              child: Image(
                image: AssetImage("images/ball${num}.png"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
