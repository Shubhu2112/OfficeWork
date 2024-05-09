// ignore_for_file: prefer_const_constructors


import 'package:flutter/material.dart';
import 'package:flutter_demo_application/screen/landing_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    // return MaterialApp.router(
    //   debugShowCheckedModeBanner: false,
    //   routeInformationParser: MyAppRouter().route.routeInformationParser,
    //   routerDelegate: MyAppRouter().route.routerDelegate,
    // );
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 86, 108, 231)),
        useMaterial3: true,
      ),
      home: LandingPage(),
      //LoginPage(),
      // const MyHomePage(title: 'Stock Market'),
      debugShowCheckedModeBanner: false,
    );
  }
}
