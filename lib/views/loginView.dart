import 'package:flutter/material.dart';
import 'package:widget_project1/Widget/MenuButton.dart';
import 'package:widget_project1/views/profileView.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text("halaman Login"),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacementNamed(context, '/login');
            },
            child: const Text("Login"),
          ),

          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => Profileview(
                    nama: "budi",
                    alamat: "malang",
                    Juara: 1,
                  ),
                ),
              );
            },
            child: const Text("Profile"),
          ),

          ElevatedButton(onPressed: () {
            Navigator.pushNamed(context, '/transaksi', arguments: [
              {'id': 1, 'product': "Laptop", 'price':"8.500.000 "},
              {'id': 2, 'product': "Hp", 'price':"2.500.000 "},
              {'id': 3, 'product': "PS", 'price':"4.000.000 "},
              {'id': 4, 'product': "PSP", 'price':"1.000.000 "},
            ],);
          }, child: const Text("Transaksi"),)
        ],
      ),
      bottomNavigationBar: MenuBotBar(0),
      
    );
  }
}