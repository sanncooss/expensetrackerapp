import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(
    this.expense, {
    super.key,
  });
  final Expense expense;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 16,
      ),
      child: Card(
        child: Column(
          children: [
            Text(
              expense.title,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text(
                    '\$${expense.amount.toStringAsFixed(2)}'), // it converts 12.345141 => 12.34
                const Spacer(),
                Row(
                  children: [
                    Icon(Icons.alarm),
                    SizedBox(
                      width: 8,
                    ),
                    Text(expense.date.toString())
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
