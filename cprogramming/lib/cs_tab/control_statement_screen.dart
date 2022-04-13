import 'package:cprogramming/cs_tab/c_break.dart';
import 'package:cprogramming/cs_tab/c_continue.dart';
import 'package:cprogramming/cs_tab/c_do_while_loop.dart';
import 'package:cprogramming/cs_tab/c_for_loop.dart';
import 'package:cprogramming/cs_tab/c_infinite_loops.dart';
import 'package:cprogramming/cs_tab/c_loops.dart';
import 'package:cprogramming/cs_tab/c_nested_loops.dart';
import 'package:cprogramming/cs_tab/c_switch.dart';
import 'package:cprogramming/cs_tab/c_typecasting.dart';
import 'package:flutter/material.dart';
import 'c_goto.dart';
import 'c_if_else.dart';
import 'c_while_loop.dart';

class ControlStatementScreen extends StatelessWidget {
  const ControlStatementScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CIfElse()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C if-else"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CSwitch()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C switch"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CLoops()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C loops"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const Cdowhileloop()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C do-while loop"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Cwhileloop()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C while loop"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const Cforloop()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C for loop"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CNestedLoops()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Nested loops in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CInfiniteloops()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Infinite loops in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CBreak()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C break"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CContinue()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C continue"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CGoto()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C goto"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CTypecasting()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Type Casting"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
