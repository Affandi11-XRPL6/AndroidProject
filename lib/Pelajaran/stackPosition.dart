import 'package:flutter/material.dart';

class StackPosition extends StatelessWidget {
  const StackPosition({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 36, 35, 35),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(20),
              bottomRight: Radius.circular(20),
            ),
          ),
          height: 200,
          child: const Stack(
            children: [
              // Elemen pertama di Stack (Gambar)
              Positioned(
                top: 20,
                left: 20,
                child: Image(
                  image: AssetImage("assets/IconRP-removebg-preview.png"),
                  width: 100,
                ),
              ),
              // Elemen kedua di Stack (Text Saldo)
              Positioned(
                bottom: 30,
                left: 30,
                child: Text(
                  "Saldo Anda : 100.000.000",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // Elemen ketiga di Stack (Text Informasi)
              Positioned(
                top: 70,
                right: 30,
                child: Text(
                  "Informasi Lain",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white70,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
