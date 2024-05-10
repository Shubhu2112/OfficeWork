// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            //title: Text("Sliver Demo App",style: TextStyle(color: Colors.white,fontWeight: FontWeight.w700,fontSize: 25),),
            expandedHeight: 250,
            pinned: true,
            floating: true,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network("https://cdn.dribbble.com/userupload/11325677/file/original-0155bb7ae3b91a54216f00c8eaadb21f.jpg?resize=400x300&vertical=center",
              fit: BoxFit.fill,),
            ),
          ),
          SliverFixedExtentList(
            itemExtent: 150,
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                return Container(
                  padding: EdgeInsets.all(8.0),
                  height: 100,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    color: Colors.white38,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                    child: ListTile(
                      title: Text("Hello ${index+1}"),
                    ),
                  ),
                );
              },
              childCount: 100,
            ),
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4
            ),
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    color: Color.fromARGB(255, 224, 149, 153),
                    height: 150.0,
                  ),
                ); 
              },
              childCount: 100,
            ), 
          ),
          SliverGrid(
            gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 80.0
            ), 
            delegate: SliverChildBuilderDelegate(
              (context, index) {
                return Padding(padding: EdgeInsets.all(8.0),
                  child: Container(
                    color: Colors.amberAccent,
                  ),
                );
              },
              childCount: 50
            ), 
          ),
        ],
      ),
    );
  }
}