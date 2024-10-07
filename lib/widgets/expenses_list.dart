import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/expense_item.dart';

import '../models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses});
  final List<Expense> expenses;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (cyx, i) => ExpenseItem(expenses[i]),
    );
  }
}
