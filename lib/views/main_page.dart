import 'package:flutter/material.dart';
import 'package:receipe_app/views/explore_page.dart';
import 'package:receipe_app/views/favorite_item.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int index=0;
  List pages=[
    ExplorePage(),  
    FavoriteItem(),
    ExplorePage(),
    ExplorePage(),
  ];
  @override
  Widget build(BuildContext context) {
    print("built all");
    return Scaffold(
      body: pages[index],
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue.shade100,
        unselectedItemColor: Colors.black,
        backgroundColor: Colors.white,
        onTap: (value) {
           setState(() {
            index=value;
           });          
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black,),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite,color: Colors.black,),label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.search,color: Colors.black,),label: 'serach'),
        BottomNavigationBarItem(icon: Icon(Icons.person,color: Colors.black,),label: 'profile'),

      ]),
    );
  }
}