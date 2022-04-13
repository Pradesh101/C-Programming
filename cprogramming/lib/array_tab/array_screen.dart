import 'package:cprogramming/array_tab/array_two.dart';
import 'package:cprogramming/array_tab/array_to_function.dart';
import 'package:cprogramming/array_tab/return_array.dart';
import 'package:flutter/material.dart';

import 'array_one.dart';

class ArrayScreen extends StatelessWidget {
  const ArrayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Array1D()));
            },
            child: const Card(
              child: ListTile(
                title: Text("1-D Array"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Array2D()));
            },
            child: const Card(
              child: ListTile(
                title: Text("2-D Array"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ReturnArray()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Return an array in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ArrayFunction()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Array to Function"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
