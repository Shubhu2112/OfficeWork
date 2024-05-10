// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sliver_project/screen/home_page.dart';
import 'package:sliver_project/screen/item_page.dart';
import 'package:sliver_project/screen/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //title: 'Flutter Demo',
      theme: ThemeData(
 
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 42, 136, 243)),
        useMaterial3: true,
      ),
      home: ProfilePage(),
      // home: DefaultTabController(
      //   length: 4, 
      //   child: Scaffold(
      //     appBar: AppBar(
      //       bottom: TabBar(
      //         tabs: [
      //           Tab(text: "cat"),
      //           Tab(text: "Dog",icon: Icon(Icons.donut_large),),
      //           Tab(text: "rabbit", icon: Icon(Icons.roundabout_left),),
      //           Tab(text: "Snak",icon: Icon(Icons.sync_lock_sharp),)

      //         ]),
      //     ),
      //     body: TabBarView(
      //       children: [
      //         Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSX6Sp0S2dcMtMRZpWX1_Xgsvx_S09fb0mON4wLWDYeerUgwOKwictVvsSqHKj1dKUMXCY&usqp=CAU")),
      //         Image(image: NetworkImage("https://thumbs.dreamstime.com/z/dog-icon-puppy-outline-head-cut-out-symbol-sign-isolated-vector-logotype-funny-pictogram-label-cute-cartoon-pet-simple-face-black-223796771.jpg")),
      //         Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSot7GF4SR8S9ONyo1tTaUOHUo7uK9vrkg-FcUBqMl034a8RDMX8e27qjL-bg&s")),
      //         Image(image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSot7GF4SR8S9ONyo1tTaUOHUo7uK9vrkg-FcUBqMl034a8RDMX8e27qjL-bg&s")),
      //       ]),
      //   )),
    );
  }
}
