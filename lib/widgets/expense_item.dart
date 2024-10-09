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
        horizontal: 5,
        vertical: 5,
      ),
      child: Card(
        child: Column(
          children: [
            SizedBox(
              height: 6,
            ),
            Text(
              expense.title,
            ),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 13.0, bottom: 6),
                  child: Text('\$${expense.amount.toStringAsFixed(2)}'),
                ), // it converts 12.345141 => 12.34
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    SizedBox(
                      width: 8,
                    ),
                    Text(expense.formattedDate),
                    SizedBox(
                      width: 10,
                    )
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
