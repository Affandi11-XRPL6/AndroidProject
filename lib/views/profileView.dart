import 'package:flutter/material.dart';
import 'package:widget_project1/Widget/MenuButton.dart';

class Profileview extends StatelessWidget {
  
   String nama;
  String alamat;
  int? Juara;

  Profileview({
    super.key,
    required this.nama,
    required this.alamat,
    this.Juara
    });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("Profile"),
          Text(nama),
          Text(alamat),
          Text("$Juara")
        ],
      ),
      bottomNavigationBar: MenuBotBar(1),
    );
  }
}