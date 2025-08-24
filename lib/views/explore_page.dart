import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 50,),
          SizedBox(
            height: 120,
            child: Expanded(
              child: StreamBuilder(
                stream: FirebaseFirestore.instance.collection("categories").snapshots(), 
                builder: (context,snapshot){
                  if(snapshot.hasData ){
                    final item=snapshot.data!.docs;
                    return ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: item.length,
                      itemBuilder: (context,index){
                      return  Container(
                        height: 50,
                        margin: EdgeInsets.all(12),
                        padding: EdgeInsets.all(10),
                        color: Colors.transparent,
                        child: Column(
                          children: [
                            Image.network(item[index]['image'],height: 50,width: 50,),
                           Text(item[index]['name']),
                          ],
                        ),);
                              
                      });                     
                  }
                  return Center(child: Text("Empty"));
                } 
                ),
            ),
          )
        ],
      ),
    );
  }
}