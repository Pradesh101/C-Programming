import 'package:cprogramming/pointer_tab/c_const_pointer.dart';
import 'package:cprogramming/pointer_tab/c_dangling_pointer.dart';
import 'package:cprogramming/pointer_tab/c_dereference_pointer.dart';
import 'package:cprogramming/pointer_tab/c_double_pointer.dart';
import 'package:cprogramming/pointer_tab/c_function_pointer.dart';
import 'package:cprogramming/pointer_tab/c_null_pointer.dart';
import 'package:cprogramming/pointer_tab/c_pointer_arithmetic.dart';
import 'package:cprogramming/pointer_tab/c_sizeof_operator.dart';
import 'package:cprogramming/pointer_tab/c_void_pointer.dart';
import 'package:flutter/material.dart';

import 'c_pointer.dart';

class PointerScreen extends StatelessWidget {
  const PointerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CPointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Pointers"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DoublePointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Pointer to Pointer"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PointerArithmetic()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Pointer Arithmetic in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DanglingPointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Dangling Pointers in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SizeofOperator()));
            },
            child: const Card(
              child: ListTile(
                title: Text("sizeof() operator in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ConstPointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("const Pointer in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VoidPointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("void Pointer in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DereferencePointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Dereference Pointer"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const NullPointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Null Pointer in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FunctionPointer()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Function Pointer"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
