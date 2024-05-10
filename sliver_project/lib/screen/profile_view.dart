// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          //padding: EdgeInsets.only(top: 100),
          margin: EdgeInsets.symmetric(vertical: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage("https://images.unsplash.com/photo-1511367461989-f85a21fda167?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cHJvZmlsZXxlbnwwfHwwfHx8MA%3D%3D"),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Column(
                children: [
                  Text("16",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 3,),
                  Text("Posts",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ],
              ),
              Column(
                children: [
                  Text("1k",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 3,),
                  Text("Followers",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ],
              ),
              Column(
                children: [
                  Text("500",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600),),
                  SizedBox(height: 3,),
                  Text("Following",style: TextStyle(fontSize: 20,fontWeight: FontWeight.w400),),
                ],
              )
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 16),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "Cool Guy",
                  style: TextStyle(fontSize: 20,fontWeight: FontWeight.w600,color: Colors.black),
                ),
                TextSpan(
                  text: "\nFlutter Dev\nFlutter Web\nFlutter IOS",
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w500,
                    fontSize: 18
                  )
                )
              ]
            )
          ),
        ),        
      ],
    );
  }
}