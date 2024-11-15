import 'package:flutter/material.dart';

class WidgetFunction extends StatelessWidget {
  String img;
  String title;
  WidgetFunction(this.img, this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Image(
            image: AssetImage(img),
            width: 55,
          ),
          Text(
            title,
            style: const TextStyle(fontSize: 10),
          )
        ],
      ),
    );
  }
}