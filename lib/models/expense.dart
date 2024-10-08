import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formatter = DateFormat.yMd();

const uuid = Uuid();

enum Category {
  food,
  travel,
  leisure,
  work,
}

final categoryIcons = {
  Category.food: Icons.food_bank,
  Category.travel: Icons.flight_outlined,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

class Expense {
  final String title;
  final double amount;
  final String id; // for generating unique id
  final DateTime date;
  final Category category;

  String get formattedDate {
    return formatter.format(date);
  }

  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // assings a initial value
}

class ExpenseBucket {
  final Category category;
  final List<Expense> expenses;

  ExpenseBucket({required this.category, required this.expenses});

  ExpenseBucket.forCategory(List<Expense> allExpense, this.category)
      : expenses = allExpense
            .where(
              (
                element,
              ) =>
                  element.category == category,
            )
            .toList();

  double get totalExpense {
    double sum = 0;
    for (var i in expenses) {
      sum += i.amount;
    }
    return sum;
  }
}
