import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return     MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          backgroundColor: Colors.lightBlue,
          body: SafeArea(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 70,
                    backgroundImage: AssetImage('images/scholar.png'),
                  ),
                  Text("Maria Ghanem",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 35,
                        fontFamily: 'Pacifico',
                        color: Colors.white
                    ),),
                  Text("Flutter Developer",
                    style: TextStyle(
                      fontFamily: 'Source Code Pro',
                      color: Colors.lightBlueAccent.shade100,
                      letterSpacing: 5.5,
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),),
                  SizedBox(
                    width: 150,
                    child: Divider(
                      color: Colors.lightBlueAccent[100],
                      thickness: 1,
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(20),
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 10,horizontal: 25),
                      child: Row(
                        children: [
                          Icon(Icons.phone,
                            size: 30,
                            color: Colors.lightBlueAccent,),
                          SizedBox(width: 13,),
                          Text("+97 056 XXX XXX",
                            style: TextStyle(
                                fontSize: 20,
                                fontFamily: 'Source Code Pro',
                                fontWeight: FontWeight.bold,
                                color: Colors.lightBlueAccent.shade700
                            ),)
                        ],
                      ),
                    ),
                  ),
                  Card(
                    color: Colors.white,
                    margin: EdgeInsets.all(20),
                    child: ListTile(
                        leading:  Icon(Icons.email,
                          size: 30,
                          color: Colors.lightBlueAccent,),
                        title:Text("example@gmail.com",
                          style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Source Code Pro',
                              fontWeight: FontWeight.bold,
                              color: Colors.lightBlueAccent.shade700
                          ),)
                    ),
                  )

                ],
              ),
            ),
          )
      ),
    );
  }
}