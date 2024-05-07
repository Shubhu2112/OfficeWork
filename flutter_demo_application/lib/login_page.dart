import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  
  LoginPage({super.key});
  
  final _formKey = GlobalKey<FormState>(); 
  final txtUserName = TextEditingController();

  var horizontalSpacing = SizedBox(width: 20,);
  var verticalSpacing = SizedBox(height: 20,);
  var largeVerticalSpacing = SizedBox(height: 50,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 232, 234, 245),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 108, 231),
        title: Row(
          children: [
            Icon(Icons.login_outlined),
            horizontalSpacing,
            Text("Login", style: TextStyle(fontWeight: FontWeight.w700),),
          ],
        ),
      ),
      body: Form(
        child: Padding(
          padding: const EdgeInsets.only(top: 130, left: 30, right: 30),
          child: Column(
            children: [
                TextFormField(
                  controller: txtUserName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    label: Text("User Name"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                        return "Please enter the User Name";
                    }
                  },
                ),
                verticalSpacing,
                TextFormField(
                  controller: txtUserName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    label: Text("Email-ID"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                        return "Please enter your EmailID";
                    }
                  },
                ),
                verticalSpacing,
                TextFormField(
                  controller: txtUserName,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: BorderRadius.circular(15)),
                    label: Text("Mobile No"),
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                        return "Please enter your mobile number";
                    }
                  },
                ),
                largeVerticalSpacing,
                ElevatedButton(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Welcome to Torus share market app")));
                  }, 
                  style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => Color.fromARGB(255, 86, 108, 231))),
                  child: Text("Submit", style: TextStyle(color: Colors.white, fontSize: 18),))
            ],
          ),
        )
      ),
    );
  }
}