import 'package:flutter/material.dart';
import 'dart:async';

class DateWidget extends StatefulWidget {
  const DateWidget({super.key,required this.title});
final String? title;
  @override
  State<DateWidget> createState() => _DateWidgetState();
}

class _DateWidgetState extends State<DateWidget> {
  DateTime selectedDate = DateTime.now();

   Future<Null> _selectDate (BuildContext context) async {
   final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2015, 8),
      lastDate: DateTime(2101),
    );
    if (picked!= null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }
  }
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            widget.title!=null ? widget.title! : 'selectedDate',
            style: const TextStyle(fontSize: 20),
          ),
          ElevatedButton(onPressed: () => {
            _selectDate(context),
            print(
              'selectedDate.day + selectedDate.month + selectedDate.year' ,
            )
          },
          child: const Text('Select Date'),
          ),
        ],
       
      
      ),
    );
  
    
  }
}