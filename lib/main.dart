import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.teal,
          appBar: AppBar(
            backwardsCompatibility: false,
            systemOverlayStyle: SystemUiOverlayStyle(
              statusBarColor: Colors.teal,
            ),
            backgroundColor: Colors.teal,
            elevation: 0.0,
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 60,
                  backgroundImage: AssetImage("assets/images/youssef.jpeg"),
                ),
                Container(
                  padding: const EdgeInsets.all(7),
                  child: const Text(
                    'Youssef Shaaban',
                    style: TextStyle(
                      fontFamily: 'Pacifico',
                      fontSize: 37,
                      color: Colors.white,
                    ),
                  ),
                ),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(
                    fontSize: 27,
                    color: Colors.white,
                    decorationThickness: 1,
                  ),
                ),
                const Divider(
                  color: Colors.white,
                  height: 1,
                  indent: 110,
                  endIndent: 110,
                  thickness: 0,
                ),
                Container(
                  // ignore: prefer_const_constructors
                  padding: EdgeInsets.only(left: 20, right: 20, top: 20),
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.phone),
                      title: Text("+201551080257"),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 8, bottom: 100),
                  child: const Card(
                    child: ListTile(
                      leading: Icon(Icons.mail),
                      title: Text("Ys1300@fayoum.com"),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
