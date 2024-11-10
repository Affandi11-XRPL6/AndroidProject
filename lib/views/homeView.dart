import 'package:flutter/material.dart';
import 'package:widget_project1/Widget/MenuButton.dart';

class Homeview extends StatelessWidget {
   const Homeview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Text("ok"),
      bottomNavigationBar: MenuBotBar(0),
    );

  }
}