import 'package:cprogramming/functions_tab/function_call_by_value_or_reference.dart';
import 'package:cprogramming/functions_tab/function_intro.dart';
import 'package:cprogramming/functions_tab/function_math.dart';
import 'package:cprogramming/functions_tab/function_recursion.dart';
import 'package:cprogramming/functions_tab/storage_classes.dart';
import 'package:flutter/material.dart';

class FunctionScreen extends StatelessWidget {
  const FunctionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FunctionIntro()));
            },
            child: const Card(
              child: ListTile(
                title: Text("What is function"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CVCR()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Call: Value & Reference"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Recursion()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Recursion in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const StorageClasses()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Storage Classes in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const MathFunction()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Math Functions"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
