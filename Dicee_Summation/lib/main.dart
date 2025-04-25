import 'dart:math';

import 'package:flutter/material.dart';

void main()=> runApp(MyApp());

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int leftnum=1;
  int rightnum=1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.teal,
        appBar: AppBar(
          title: Text("Dicee"),
          centerTitle: true,
          backgroundColor: Colors.teal,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Result is : ${leftnum+rightnum}",
            style: TextStyle(
              color: Colors.teal.shade100,
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(
              height:80,
              width: 200,
              child: Divider(
                thickness: 1,
                color: Colors.teal.shade100,
              ),
            ),
            Row(
              children: [
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        leftnum=Random().nextInt(6)+1;
                      });

                    },
                    child: Image(
                      image: AssetImage("images/dice${leftnum}.png"),
                    ),
                  ),
                ),
                Expanded(
                  child: TextButton(
                    onPressed: (){
                      setState(() {
                        rightnum= Random().nextInt(6) + 1;
                      });
                    },
                    child: Image(
                      image: AssetImage("images/dice${rightnum}.png"),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
