import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

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
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); // assings a initial value
}
