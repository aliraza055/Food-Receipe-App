import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:receipe_app/Components/search_bar.dart';

class ExplorePage extends StatefulWidget {
  const ExplorePage({super.key});

  @override
  State<ExplorePage> createState() => _ExplorePageState();
}

class _ExplorePageState extends State<ExplorePage> {
  int selectedIndex = 0; // track selected category

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SearchBa(),
              const SizedBox(height: 20),
            
              StreamBuilder(
                stream: FirebaseFirestore.instance
                    .collection("categories")
                    .snapshots(),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final item = snapshot.data!.docs;
                     return SizedBox(
  height: 90,
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    itemCount: item.length,
    itemBuilder: (context, index) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
      
        child: Container(
          color: Colors.amber,
          margin: const EdgeInsets.symmetric(horizontal: 12),
          child: Column(
            children: [
             Image.network(item[index]['image'],height: 50,width: 50,),
              

              const SizedBox(height: 6),

              Text(
                item[index]['name'],
                style: TextStyle(
                  fontWeight:
                      selectedIndex== index ? FontWeight.bold : FontWeight.normal,
                  color: selectedIndex==index ? Colors.black : Colors.grey[600],
                ),
              ),
              SizedBox(height: 10,),
           
              Container(
                height: 3,
                width: 50,
                color: selectedIndex==index ? Colors.black :Colors.transparent,
              )
            ],
          ),
        ),
      );
    },
  ),
);

                  }
                  return const Center(child: Text("Empty"));
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
