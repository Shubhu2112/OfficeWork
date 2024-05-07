import 'package:flutter/material.dart';

class StockDetails extends StatefulWidget {
  const StockDetails({super.key});

  @override
  State<StockDetails> createState() => _StockDetailsState();
}

class _StockDetailsState extends State<StockDetails> {

  var horizontalSpacing = SizedBox(width: 10,);
  var verticalSpacing = SizedBox(height: 10,);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 86, 108, 231),
        title: Text("Details",style: TextStyle(fontWeight: FontWeight.w600),),
        leading: IconButton(
          onPressed: () {
          Navigator.pop(context);
        }, 
        icon: Icon(Icons.arrow_back)),
      ),
      body: Container(
        color: Color.fromARGB(255, 232, 234, 245),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("TATA STEEL",style: TextStyle(fontSize: 21,fontWeight: FontWeight.w800),textDirection:TextDirection.ltr,),
              verticalSpacing,
              SizedBox(
                height: 300,
                child: Image.network("https://qph.cf2.quoracdn.net/main-qimg-41e9c43e047df078c4dcefdff73cfe9d")
              ),
              verticalSpacing,
              Container(
                
              )
            ],
          ),
        ),
      ),
    );
  }
}