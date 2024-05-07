import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_demo_application/details_screen.dart';
import 'package:flutter_demo_application/home.dart';
import 'package:flutter_demo_application/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});




  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 86, 108, 231)),
        useMaterial3: true,
      ),
      home: LoginPage(),
      // const MyHomePage(title: 'Stock Market'),
      debugShowCheckedModeBanner: false,
    );
  }
}
