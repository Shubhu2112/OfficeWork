// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class StockDetails extends StatefulWidget {
  final String sName;
  final String sPrice;
  const StockDetails({super.key,required this.sName,required this.sPrice});

  @override
  State<StockDetails> createState() => _StockDetailsState();
}

class _StockDetailsState extends State<StockDetails> {

  var horizontalSpacing = SizedBox(width: 10,);
  var verticalSpacing = SizedBox(height: 10,);

  final txtshares = TextEditingController();

  int price = 0;
  int open = 0;
  int high = 0;
  int low = 0;
  int prevcls = 0;

  @override
  void initState() {
    super.initState();
    price = int.parse(widget.sPrice);
    open = price + 10;
    prevcls = price + 5;
    high = price + 50;
    low = price - 50;
  }

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
        icon: Icon(Icons.arrow_back_ios_new)),
      ),
      body: Container(
        color: Color.fromARGB(255, 232, 234, 245),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: Color.fromARGB(255, 221, 225, 247),
                child: ListTile(
                  title: Text(widget.sName,style: TextStyle(fontSize: 22,fontWeight: FontWeight.w800)),
                  subtitle: Text("  NSE",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                  trailing: Text(widget.sPrice,style: TextStyle(fontSize: 18,fontWeight: FontWeight.w700),),
                ),
              ),
              verticalSpacing,
              Container(
                height: 280,
                color: Color.fromARGB(255, 221, 225, 247),
                child: Image.network("https://qph.cf2.quoracdn.net/main-qimg-41e9c43e047df078c4dcefdff73cfe9d")
              ),
              verticalSpacing,
              Container(
                height: 60,
                color: Color.fromARGB(255, 221, 225, 247),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          Text("OPEN",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                          Text(open.toString()),
                        ],
                      ),
                      Column(
                        children: [
                          Text("HIGH",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                          Text(high.toString()),
                        ],
                      ),
                      Column(
                        children: [
                          Text("LOW",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                          Text(low.toString()),
                        ],
                      ),
                      Column(
                        children: [
                          Text("PRE/CLOSE",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500)),
                          Text(prevcls.toString()),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              verticalSpacing,
              Expanded(
                child: Container(
                  color: Color.fromARGB(255, 221, 225, 247),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text("No. of shares",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                        SizedBox(
                          height: 50,
                          child: TextFormField(
                            controller: txtshares,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(15),),
                              fillColor: Colors.black,
                            ),
                          ),
                        ),
                        verticalSpacing,
                        Text("Price",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500)),
                        Row(
                          children: [
                            IconButton.outlined(onPressed: (){}, icon: Icon(Icons.remove)),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}