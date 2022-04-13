import 'package:cprogramming/introduction_tab/c_boolean.dart';
import 'package:cprogramming/introduction_tab/c_comments.dart';
import 'package:cprogramming/introduction_tab/c_escape_sequence.dart';
import 'package:cprogramming/introduction_tab/c_identifiers.dart';
import 'package:cprogramming/introduction_tab/c_introduction.dart';
import 'package:cprogramming/introduction_tab/c_operators.dart';
import 'package:cprogramming/introduction_tab/datatypes_in_c.dart';
import 'package:cprogramming/introduction_tab/first_c_program.dart';
import 'package:cprogramming/introduction_tab/pf_sf.dart';
import 'package:cprogramming/introduction_tab/static_in_c.dart';
import 'package:cprogramming/introduction_tab/variables_in_c.dart';
import 'package:flutter/material.dart';

import 'constant_in_c.dart';
import 'keywords_in_c.dart';

class IntroductionScreen extends StatelessWidget {
  const IntroductionScreen({Key? key}) : super(key: key);

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
                      builder: (context) => const CIntroduction()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Introduction"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const FirstCProgram()));
            },
            child: const Card(
              child: ListTile(
                title: Text("First C Program"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const PFSF()));
            },
            child: const Card(
              child: ListTile(
                title: Text("printf & scanf"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const VariabilesinC()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Variables in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DataTypesinC()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Data Types in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const KeywordsinC()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Keywords in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const ConstantinC()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Constants in C "),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CIdentifiers()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Identifiers"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const COperators()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Operators"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CComments()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Comments"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CEscapeSequence()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Escape Sequence"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const CBoolean()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C Boolean"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const StaticinC()));
            },
            child: const Card(
              child: ListTile(
                title: Text("Static in C"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
