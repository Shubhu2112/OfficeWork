// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";
import "package:flutter_demo_application/screen/signup_page.dart";

class LandingPage extends StatelessWidget {
  LandingPage({super.key});

  final verticalSpacing = SizedBox(height: 10,);

  @override
  Widget build(BuildContext context) {
    return  Container(
        decoration: BoxDecoration(
          color: Color.fromARGB(87, 53, 53, 53),
          image: DecorationImage(image: AssetImage("assets/images/lp1.png"),fit: BoxFit.fill),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                padding: EdgeInsets.only(top: 140,left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome in,",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                    verticalSpacing,
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      child: Text("Torus Trading Platform",style: TextStyle(color: Colors.white,fontSize: 28,fontWeight: FontWeight.w800,),)),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.only(top: 630,left: 40),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Invest in everything",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w700),),
                    verticalSpacing,
                    Text("Online platform to invest in stocks, derivatives, mutual funds, and more",style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.w500),),
                  ],
                ),
              ),
            ],
          ),
          floatingActionButton: Padding(
            padding: const EdgeInsets.only(bottom: 30,right: 5),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),));
              }, 
              child: Text("Start Now",style: TextStyle(color: Colors.black, fontSize: 20),)
            ),
          ),
        ),
      );
  }
}