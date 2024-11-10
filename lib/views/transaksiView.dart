import 'package:flutter/material.dart';
import 'package:widget_project1/Widget/MenuButton.dart';

class Transaksiview extends StatelessWidget {
  const Transaksiview({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
      return Scaffold(
        body: Column
        (children: [
        Text("Id: ${args['id']}"),
        Text("Nama produk: ${args['product']}"),
        Text("Harga: ${args['price']}"),
        IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back)),
            ]),
            bottomNavigationBar: MenuBotBar(2),
      );
}}