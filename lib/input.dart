import 'package:flutter/material.dart';

class InputSelection extends StatefulWidget {
  const InputSelection({super.key});

  @override
  State<InputSelection> createState() => _InputSelectionState();
}
class _InputSelectionState extends State<InputSelection> {
  
  TextEditingController nama = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12),
      child: Column(
        children: [
          TextField(controller: nama,
            obscureText: false,
            onChanged: (i){
              setState(() {
              });
            },
            decoration: InputDecoration(
              border:
              OutlineInputBorder(),
              labelText: 'Username',
            )
          ),
          Text(nama.text),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border:
              OutlineInputBorder(),
              labelText: 'Password',
            )
          )
        ],
      ),
    );
  }
}