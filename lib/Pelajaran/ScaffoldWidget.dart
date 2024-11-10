import 'package:flutter/material.dart';
// import 'package:widget_project1/input.dart';
// import 'package:widget_project1/date_Widget.dart';
// import 'package:widget_project1/Dialog.dart';
// import 'package:widget_project1/rowColumn.dart';
import 'package:widget_project1/Pelajaran/stackPosition.dart';

class ScaffoldWidget extends StatelessWidget {
  var s;
   ScaffoldWidget({super.key, this.s});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(title: Text(s),
    
     leading: IconButton(
      onPressed: () {},
      icon: const Icon(Icons.home),
      ),
      actions: [
       const Text("Profile"),
      IconButton(onPressed: () {},
       icon: const Icon(Icons.more_vert),
       ),
      ],
      backgroundColor: const Color.fromARGB(255, 53, 53, 53),
      foregroundColor: const Color.fromARGB(218, 255, 255, 255),
     ),
     
     body:const Column(
      children: [
    //   Center(child: Text("-INPUT YOUR USERNAME-",  style: TextStyle(
    //   fontSize: 20,
    //   color: Color.fromARGB(255, 0, 0, 0),
    //   fontWeight: FontWeight.bold,
    //   ),
    // ),
    //  ),
    //  InputSelection(),
    // DateWidget(title: "Date Widget"),
    // Notif(),
    StackPosition(),
    // Rowcolumn(),
      ]
     ),
    
    bottomNavigationBar: BottomNavigationBar(
    items: const [
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