import 'package:flutter/material.dart';

class Notif extends StatelessWidget {
  const Notif({super.key});

  @override
  Widget build(BuildContext context) {
    return const myLayout();
  }
}

class myLayout extends StatelessWidget {
  const myLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
            child: const Text("Sudah makan hari ini?"),
            onPressed: () {
              showAlertDialog(context);
            }
              )
                );
  }

  void showAlertDialog(BuildContext context) {
    Widget okButton = ElevatedButton(child: const Text("OK"), onPressed: () {});

    AlertDialog alert = AlertDialog(
      title: const Text("Sudah makan hari"),
      content: (const Text("Sudah makan")),
      actions: [
        okButton,
      ],
    );

    showDialog(
      context: context,
      builder: (BuildContext context) {
        return alert;
      },
    );
  }
}
