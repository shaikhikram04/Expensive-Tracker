import 'package:expensive_tracker/models/expense.dart';
import 'package:expensive_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expensive_tracker/widgets/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Chips',
      amount: 50,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Cinema',
      amount: 120.50,
      date: DateTime.now(),
      category: Category.leisure,
    ),
  ];

  void _openAddExpenceOverlay() {
    showModalBottomSheet(
      context: context,
      builder: (ctx) => const NewExpense(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // foregroundColor: const Color(0xFFE3C4FF),
        actions: [
          IconButton(
              onPressed: _openAddExpenceOverlay,
              icon: const Icon(
                Icons.add,
                size: 35,
              ))
        ],
        // backgroundColor: const Color(0xFF1F0542),
        title: const Text(
          'Flutter ExpenseTracker',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: ExpensesList(expenses: _registeredExpenses),
          ),
        ],
      ),
    );
  }
}
