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
      initialDate: selectedDate,
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
    return const Placeholder();
    
  }
}