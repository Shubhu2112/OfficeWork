// ignore_for_file: body_might_complete_normally_nullable, prefer_const_constructors, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_demo_application/model/user_details.dart';

class ForgotPasswordScreen extends StatefulWidget {
  UserDetails userDetails = UserDetails();
  ForgotPasswordScreen({super.key,required this.userDetails});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  final formKey = GlobalKey<FormState>(); 

  bool passview = true;
  bool enabledpass = false;

  final txtEmailId = TextEditingController();
  final txtPassword = TextEditingController();

  var horizontalSpacing = SizedBox(width: 20,);
  var verticalSpacing = SizedBox(height: 15,);
  var largeVerticalSpacing = SizedBox(height: 50,);

  @override
  void initState() {
    super.initState();
    setState(() {
      enabledpass = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 53, 53, 58),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:const Text("Forgot Password", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
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
                    style: const TextStyle(color: Colors.white),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      label: const Text("Email-Id",style: TextStyle(fontSize: 18,color: Colors.white),),
                      hintText: "Enter you email-Id",
                      hintStyle: const TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
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
                    style: const TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      enabled: enabledpass,
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passview = !passview;
                          });
                        },
                        child: Icon(passview ? Icons.visibility_off : Icons.visibility,color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      label: const Text("Password",style: TextStyle(fontSize: 18,color: Colors.white),),
                    ),
                  ),
                  largeVerticalSpacing,
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          if (widget.userDetails.emailId == txtEmailId.text) {
                            txtPassword.text = widget.userDetails.password;
                            setState(() {
                              enabledpass = true;
                            });
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("We cannot find an account with that email address")));
                            setState(() {
                              enabledpass = false;
                            });
                          }
                        }
                      }, 
                      child: const SizedBox(width:100,child: Center(child: Text("Submit", style: TextStyle(color: Colors.black, fontSize: 18),)))
                    ),
                  ),
              ],
            ),
          ),
        )
      ),
    );
  }
}