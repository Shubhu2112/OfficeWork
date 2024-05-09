// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable

import 'package:flutter/material.dart';
import 'package:flutter_demo_application/model/user_details.dart';
import 'package:flutter_demo_application/screen/forgot_password.dart';
import 'package:flutter_demo_application/screen/home.dart';
import 'package:flutter_demo_application/screen/signup_page.dart';

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {
  
  UserDetails userDetails = UserDetails();

  LoginPage({super.key, required this.userDetails});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final formKey = GlobalKey<FormState>(); 

  bool passview = true;

  final txtEmailId = TextEditingController();
  final txtPassword = TextEditingController();

  var horizontalSpacing = SizedBox(width: 20,);
  var verticalSpacing = SizedBox(height: 15,);
  var largeVerticalSpacing = SizedBox(height: 50,);

  UserDetails userDetails = UserDetails();

  @override
  void initState() {
    super.initState();
    userDetails = widget.userDetails;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 53, 58),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:Text("Login", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 180, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  TextFormField(
                    controller: txtEmailId,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: Text("Email-Id",style: TextStyle(fontSize: 18,color: Colors.white),),
                      hintText: "Enter you email-Id",
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your email-Id";
                      } 
                      bool validEmail = RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+_/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA_Z]+").hasMatch(value);
                      if (!validEmail) {
                        return "Please enter your valid email-Id";
                      }
                    },
                  ),
                  verticalSpacing,
                  TextFormField(
                    controller: txtPassword,
                    obscureText: passview,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passview = !passview;
                          });
                        },
                        child: Icon(passview ? Icons.visibility_off : Icons.visibility,color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      label: Text("Password",style: TextStyle(fontSize: 18,color: Colors.white),),
                      hintText: "Enter you password",
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the password";
                      } 
                      if (txtPassword.text != userDetails.password) {
                        return "Password not valid";
                      }
                     
                    },
                  ),
                  largeVerticalSpacing,
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (txtEmailId.text == userDetails.emailId) {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome to Torus share market app")));
                            Navigator.push(context, MaterialPageRoute(builder: (context) => MyHomePage(userDetails: userDetails,),));
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("We cannot find an account with that email address")));                            
                          }
                        }
                      }, 
                      child: SizedBox(width:100,child: Center(child: Text("Submit", style: TextStyle(color: Colors.black, fontSize: 18),)))
                    ),
                  ),
                  largeVerticalSpacing,
                  Container(
                    padding: EdgeInsets.only(left: 10),
                    child: Row(
                      children: [
                        Text("Don't have account?",style: TextStyle(color: Colors.white,fontSize: 18),),
                        TextButton(onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpPage(),)); 
                        }, 
                        child: Text("Sign-Up",style: TextStyle(color: Colors.white70,fontSize: 20,decoration: TextDecoration.underline))),
                      ],
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => ForgotPasswordScreen(userDetails: userDetails),));
                    }, 
                    child: Text("Forgot Password?",style: TextStyle(color: Colors.white70,fontSize: 20,decoration: TextDecoration.underline))),
              ],
            ),
          ),
        )
      ),
    );
  }
}