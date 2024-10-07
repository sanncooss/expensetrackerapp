// import 'package:expense_tracker_app/widgets/expenses.dart';
import 'package:expense_tracker_app/expenses.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Expenses(),
    );
  }
}
