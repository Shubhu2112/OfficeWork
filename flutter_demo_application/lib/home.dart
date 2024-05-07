import 'package:flutter/material.dart';
import 'package:flutter_demo_application/details_screen.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  
  var array = ['Tata Motors','Tata Steel','Reliance','Jio'];
  var watchList1 = ["YesBank","Idea","AdaniPort","Bajaj-Auto","ApolloHospital"];
  var watchList2 = ["Axis Bank","BPCL","CIPLA","COALINDIA","GRASIM","FDFCLIFE","JSWSTEEL","KOTAKBANK"];

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
              accountName: Text("Shubham Pawar"), 
              accountEmail: Text("shubhamspawar2001@gmail.com"),
              currentAccountPicture: CircleAvatar(foregroundImage: NetworkImage("https://cdn3d.iconscout.com/3d/premium/thumb/profile-8260859-6581822.png?f=webp")),
            ),
            verticalSpacing,
            ListTile(
              leading: Icon(Icons.home),
              title: Text("Home",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20),),
              onTap: () {},
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
              onTap: () {},
            ),
          ],
        ),
        
      ),
      appBar: AppBar(
      
       
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
       
        title: Text(widget.title),
        flexibleSpace: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 5,right: 8),
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.search, size:32,)),
            ),
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
                              int no = array.length;
                              array.removeRange(3,no);
                            });
                          }, 
                          child: Text("WatchList", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                          )),
                          horizontalSpacing,
                        ElevatedButton(
                          onPressed: () {
                            setState(() {
                              array.addAll(watchList1);
                            });
                          }, 
                          child: Text("WatchList 1", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                          )),
                          horizontalSpacing,
                          ElevatedButton(
                            onPressed: () {
                              setState(() {
                                int no = array.length;
                                array.removeRange(6,no);
                              });
                            }, 
                            child: Text("WatchList 2", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                            )),
                            horizontalSpacing,
                            ElevatedButton(
                              onPressed: () {
                                setState(() {
                                  array.addAll(watchList2);
                                });
                              }, 
                              child: Text("WatchList 3", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
                              )),
                            horizontalSpacing,
                            watchList(4),
                            horizontalSpacing,
                            watchList(5),
                            horizontalSpacing,
                            ElevatedButton(
                              onPressed: (){
                                setState(() {
                                  array.add("Adani");
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
          Container(
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
                      leading: Icon(Icons.sports_hockey_outlined),
                      title: Text(array[index].toString()),
                      trailing: IconButton(
                        onPressed: () {
                          setState(() {
                            img = Image.asset("assets/images/11.jpg",fit: BoxFit.fill);
                          });
                        }, 
                        icon: IconButton(
                          icon: Icon(Icons.candlestick_chart),
                          onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => StockDetails(),)),)),
                    ),
                  ),
                );
              },
              itemCount: array.length,
              scrollDirection: Axis.vertical,
            ),
          ),
          verticalSpacing,
          Expanded(
            child: Container(
              color: const Color.fromARGB(255, 221, 225, 247),
              child: img,
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
                  onPressed: (){}, 
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

  Widget watchList(int count) {
    return ElevatedButton(
      onPressed: () {
        
      }, 
      child: Text("WatchList $count", style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600),
      ));
  }
}
