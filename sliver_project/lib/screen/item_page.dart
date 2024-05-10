// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sliver_project/Package/silver_persistant_header.dart';

class ItemsPage extends StatelessWidget {
  const ItemsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (context, innerBoxIsScrolled) {
          return [
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              color: Colors.blueGrey,
            ),
          ];
        }, 
        body: Container(
          height: 300,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 122, 185, 236),
        ),
      ),
    );
  }
}


/*CustomScrollView(
              slivers: [
                SliverAppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  //elevation: 0,
                  //centerTitle: false,
                  expandedHeight: 50,
                  pinned: true,
                  title: Text("Sliver List",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 25),)
                ),
                SliverPersistentHeader(
                  pinned: true,
                  delegate: SliverAppBarDelegate(
                    minHeight: 200.0,
                    maxHeight: 200.0,
                    child: Image.network("https://img.freepik.com/free-vector/gradient-accounting-logo-template_23-2148845176.jpg?size=338&ext=jpg&ga=GA1.1.1369675164.1715212800&semt=ais",
                    fit: BoxFit.fill,),
                  ),
                ),
                SliverAppBar(
                  backgroundColor: Theme.of(context).scaffoldBackgroundColor,
                  elevation: 0,
                  pinned: true,
                  bottom: const PreferredSize(
                    preferredSize: Size.fromHeight(-10.0), 
                    child: SizedBox()),
                  flexibleSpace: Padding(
                    padding: const EdgeInsets.all(10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                          borderSide: BorderSide(color: Colors.black)
                        ),
                        hintText: "Search here...",
                        prefixIcon: Icon(Icons.search,size: 35),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15),
                        )
                      ),
                    ),
                  ), 
                ),
                SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 150,
                          width: MediaQuery.of(context).size.width,
                          padding: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            color: Color.fromARGB(255, 212, 210, 210),
                          ),
                          child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQhN0eJlrRvxXLWgAdBlhkxF4GVEdnU8nFKWBiSwqE4ItPghsCKvJEeOJqd8w&s",fit: BoxFit.fill,),
                        ),
                      );
                    },
                    childCount: 20,
                  ),
                ),
              ],
            ),*/