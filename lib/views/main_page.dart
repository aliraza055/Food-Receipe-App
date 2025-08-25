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
    return Scaffold(
      body: pages[0],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
           setState(() {
            index=value;
           });          
        },
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: 'home'),
        BottomNavigationBarItem(icon: Icon(Icons.favorite),label: 'favorite'),
        BottomNavigationBarItem(icon: Icon(Icons.search),label: 'serach'),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: 'profile'),

      ]),
    );
  }
}