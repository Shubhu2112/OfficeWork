// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_demo_application/model/user_details.dart';
import 'package:flutter_demo_application/screen/details_screen.dart';


class MyHomePage extends StatefulWidget {
  UserDetails userDetails = UserDetails();
 
  MyHomePage({super.key, required this.userDetails});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 
  List<String> stock = ['TATAMOTOR','TATASTEEL','RELIANCE','JIO'];
  List<int> price = [1232,4343,242,1342,121,332,121,321,1332,1125,7643,6454,5643,236,879,908];
  var watchList1 = ["YESBANK","ADANIPORT","BAJAJAUTO","APOLLOHOSPITAL"];
  var watchList2 = ["Axis Bank","BPCL","CIPLA","COALINDIA","GRASIM","HDFCLIFE","JSWSTEEL","KOTAKBANK"];

  var horizontalSpacing = SizedBox(width: 10,);
  var verticalSpacing = SizedBox(height: 5,);

  var img = Image.asset("assets/images/graph.jpg",fit: BoxFit.fill);

  @override
  Widget build(BuildContext context) {
   
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 86, 108, 231),
              ),
              accountName: Text(widget.userDetails.userName), 
              accountEmail: Text(widget.userDetails.emailId),
              currentAccountPicture: CircleAvatar(foregroundImage: NetworkImage("https://cdn3d.iconscout.com/3d/premium/thumb/profile-8260859-6581822.png?f=webp")),
            ),
            verticalSpacing,
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              onTap: () => MyHomePage(userDetails: widget.userDetails),
            ),
            ListTile(
              leading: Icon(Icons.account_box_outlined),
              title: Text("About",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.health_and_safety_rounded),
              title: Text("Security",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.account_balance),
              title: Text("Bank Details",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text("Setting",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              onTap: () {},
            ),
            ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text("LogOut",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
        
      ),
      appBar: AppBar(
      
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Stock Market"),
            Icon(Icons.bar_chart,size: 30,)
          ],
        ),
      ),
      body: Column(
        children: [
          verticalSpacing,
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 50,
                  color: Color.fromARGB(255, 221, 225, 247),
                  child: Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              int no = stock.length;
                              stock.removeRange(3,no);
                            });
                          }, 
                          child: Text("WatchList", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                          )),
                          horizontalSpacing,
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              stock.addAll(watchList1);
                            });
                          }, 
                          child: Text("WatchList 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                          )),
                          horizontalSpacing,
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                int no = stock.length;
                                stock.removeRange(6,no);
                              });
                            }, 
                            child: Text("WatchList 2", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                            )),
                            horizontalSpacing,
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  stock.addAll(watchList2);
                                });
                              }, 
                              child: Text("WatchList 3", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                              )),
                            horizontalSpacing,
                            ElevatedButton(
                              onPressed: () {}, 
                              child: Text("WatchList 4", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                              )),
                            horizontalSpacing,
                            ElevatedButton(
                              onPressed: () {}, 
                              child: Text("WatchList 5", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                              )),
                            horizontalSpacing,
                            ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  stock.add("Adani");
                                });
                              }, 
                              child: Icon(Icons.add_circle_outline_outlined)),
                      ],
                    ),  
                  ),
                ),
              ],
            ),
          ),
          verticalSpacing,
          Expanded(
            child: Container(
              width: double.infinity,
              height: 340,
              color: const Color.fromARGB(255, 221, 225, 247),
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 232, 234, 245),
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: ListTile(
                        leading: Icon(Icons.candlestick_chart),
                        title: Text(stock[index].toString()),
                        subtitle: Text("NSE"),
                        trailing: Text(price[index].toString(),style: TextStyle(fontSize: 15,fontWeight: FontWeight.w800),),
                        onTap: () {
                          Navigator.push(
                            context, MaterialPageRoute(
                              builder: (context) => StockDetails(sName: stock[index].toString(),sPrice: price[index].toString()),
                            )
                          );
                        },
                      ),
                    ),
                  );
                },
                itemCount: stock.length,
                scrollDirection: Axis.vertical,
              ),
            ),
          ),
          verticalSpacing,
          Container(
            height: 50,
            width: double.infinity,
            color: const Color.fromARGB(255, 221, 225, 247),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: (){
                    Navigator.push(context,MaterialPageRoute(builder: (context) => MyHomePage(userDetails: widget.userDetails),));
                  }, 
                  child: Icon(Icons.home),
                ),
                
                ElevatedButton(
                  onPressed: (){}, 
                  child: Icon(Icons.drive_folder_upload),
                ),
                
                ElevatedButton(
                  onPressed: (){}, 
                  child: Icon(Icons.blinds_closed_sharp),
                ),
                
                ElevatedButton(
                  onPressed: (){}, 
                  child: Icon(Icons.swap_horiz_sharp),
                ),
                
                ElevatedButton(
                  onPressed: (){}, 
                  child: Icon(Icons.account_box),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
