import 'package:flutter/material.dart';
import 'package:widget_project1/input.dart';
import 'package:widget_project1/date_Widget.dart';


class ScaffoldWidget extends StatelessWidget {
  var s;
   ScaffoldWidget({super.key, this.s});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text(s),
    
     leading: IconButton(
      onPressed: () {},
      icon: Icon(Icons.home),
      ),
      actions: [
        Text("Profile"),
      IconButton(onPressed: () {},
       icon: Icon(Icons.more_vert),
       ),
      ],
      backgroundColor: Color.fromARGB(255, 98, 251, 64),
      foregroundColor: Color.fromARGB(98, 54, 46, 46),
     ),
     
     body:const Column(
      children: [
      Center(child: Text("-INPUT YOUR USERNAME-",  style: TextStyle(
      fontSize: 20,
      color: Color.fromARGB(255, 0, 0, 0),
      fontWeight: FontWeight.bold,
      ),
    ),
     ),
     InputSelection(),
    DateWidget(title: "Date Widget"),
      ]
     ),
    
    bottomNavigationBar: BottomNavigationBar(
    items: [
      BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home",
    ),
      BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search",
    ),
      BottomNavigationBarItem(icon: Icon(Icons.favorite), label: "Favorite",
    ),
    ],
  )


    );
 }
}