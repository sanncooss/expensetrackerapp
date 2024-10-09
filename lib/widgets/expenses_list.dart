import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/expense_item.dart';

import '../models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key,
    required this.expenses,
    required this.onRemoveExpense,
  });
  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (ctx, i) => Dismissible(
        background: Container(
          color: Colors.red,
          margin: EdgeInsets.symmetric(
            horizontal: 16,
          ),
        ),
        key: ValueKey(expenses[i]),
        child: ExpenseItem(
          expenses[i],
        ),
        onDismissed: (direction) {
          onRemoveExpense(expenses[i]);
        },
      ),
    );
  }
}
