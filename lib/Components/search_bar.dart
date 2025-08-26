import 'package:flutter/material.dart';

class SearchBa extends StatelessWidget {
  const SearchBa({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: EdgeInsets.symmetric(horizontal: 27),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  blurRadius: 7,
                  color: Colors.black38
                )
              ]
            ),
            child:Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(),
            ) ,
          ),
          SizedBox(width: 8,),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.black38
              ),
            shape: BoxShape.circle,
            ),
            child: Icon(Icons.tune),
          )
        ],
      ),
    );
  }
}