import 'package:cprogramming/structure&union_tab/c_array_of_structure.dart';
import 'package:cprogramming/structure&union_tab/c_nested_structure.dart';
import 'package:cprogramming/structure&union_tab/c_structure.dart';
import 'package:cprogramming/structure&union_tab/c_structure_in_padding.dart';
import 'package:cprogramming/structure&union_tab/c_typedef.dart';
import 'package:cprogramming/structure&union_tab/c_union.dart';
import 'package:flutter/material.dart';

class SUScreen extends StatelessWidget {
  const SUScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CStructure()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Structure"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CTypedef()));
            },
            child: const Card(
              child: ListTile(
                title: Text("typedef in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CAoS()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Array of Structures in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CNestedStruct()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Nested Structures"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CSiP()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Structure Padding in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CUnion()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Union"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
