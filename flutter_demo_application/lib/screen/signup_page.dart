// ignore_for_file: prefer_const_constructors, body_might_complete_normally_nullable


import 'package:flutter/material.dart';
import 'package:flutter_demo_application/model/user_details.dart';
import 'package:flutter_demo_application/screen/login_page.dart';

class SignUpPage extends StatefulWidget {
  
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final formKey = GlobalKey<FormState>(); 

  bool passview = true;
  bool conpassview = true;

  final txtUserName = TextEditingController();
  final txtEmailId = TextEditingController();
  final txtMobileNo = TextEditingController();
  final txtPassword = TextEditingController();
  final txtConfPassword = TextEditingController();


  var horizontalSpacing = SizedBox(width: 20,);
  var verticalSpacing = SizedBox(height: 15,);
  var largeVerticalSpacing = SizedBox(height: 50,);

  UserDetails userDetails = UserDetails();

  @override
  void initState() {
    super.initState();
    txtConfPassword.clear();
    txtPassword.clear();
    txtEmailId.clear();
    txtMobileNo.clear();
    txtUserName.clear();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 53, 53, 58),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title:Text("Sign-Up", style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700),),
      ),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 100, left: 30, right: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                  TextFormField(
                    controller: txtUserName,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
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
                      label: Text("Name",style: TextStyle(fontSize: 18,color: Colors.white),),
                      hintText: "Enter you name",
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your name";
                      } 
                      
                    },
                  ),
                  verticalSpacing,
                  TextFormField(
                    controller: txtEmailId,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
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
                        return "Please enter your correct email-Id";
                      }
                    },
                  ),
                  verticalSpacing,
                  TextFormField(
                    keyboardType: TextInputType.number,
                    controller: txtMobileNo,
                    cursorColor: Colors.white,
                    //maxLength: 10,
                    style: TextStyle(color: Colors.white),
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
                      label: Text("Mobile Number",style: TextStyle(fontSize: 18,color: Colors.white),),
                      hintText: "Enter you mobile number",
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter your mobile number";
                      } 
                      if (txtMobileNo.text.length != 10) {
                        return "Please enter your correct mobile number";
                      }
                    },
                  ),
                  verticalSpacing,
                  TextFormField(
                    controller: txtPassword,
                    obscureText: passview,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
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
                      hintText: "Enter the password",
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter the password";
                      } 
                      bool validPass = RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[!@#\$&*~])(?=.*?[0-9]).{8,}").hasMatch(value);
                      if (!validPass) {
                        return "Please enter strong password";
                      }
                    },
                  ),
                  verticalSpacing,
                  TextFormField(
                    controller: txtConfPassword,
                    obscureText: conpassview,
                    cursorColor: Colors.white,
                    style: TextStyle(color: Colors.white),
                    decoration: InputDecoration(
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            conpassview = !conpassview;
                          });
                        },
                        child: Icon(conpassview ? Icons.visibility_off : Icons.visibility,color: Colors.white)),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      fillColor: Colors.white10,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)
                      ),
                      label: Text("Confirm Password",style: TextStyle(fontSize: 18,color: Colors.white),),
                      hintText: "Enter the confirm password",
                      hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.w400),
                    ),
                    validator: (value) {
                      if (value!.isEmpty) {
                          return "Please re-enter the password";
                      }
                      if ( txtPassword.text != txtConfPassword.text) {
                        return "Password not match";
                      }
                    },
                  ),
                  largeVerticalSpacing,
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          userDetails.userName = txtUserName.text;
                          userDetails.emailId = txtEmailId.text;
                          userDetails.mobileNo = txtMobileNo.text;
                          userDetails.password = txtPassword.text;
                          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(userDetails: userDetails,),));
                        }
                      }, 
                      child: SizedBox(width:100,child: Center(child: Text("Submit", style: TextStyle(color: Colors.black, fontSize: 18),)))
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
