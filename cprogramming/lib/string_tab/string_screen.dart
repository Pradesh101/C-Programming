import 'package:cprogramming/string_tab/c_gets_puts.dart';
import 'package:cprogramming/string_tab/c_string_compare.dart';
import 'package:cprogramming/string_tab/c_string_concatenation.dart';
import 'package:cprogramming/string_tab/c_string_copy.dart';
import 'package:cprogramming/string_tab/c_string_functions.dart';
import 'package:cprogramming/string_tab/c_string_length.dart';
import 'package:cprogramming/string_tab/c_string_lowercase.dart';
import 'package:cprogramming/string_tab/c_string_reverse.dart';
import 'package:cprogramming/string_tab/c_string_uppercase.dart';
import 'package:flutter/material.dart';

import 'c_str.dart';
import 'c_string.dart';

class StringScreen extends StatelessWidget {
  const StringScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CString()));
            },
            child: const Card(
              child: ListTile(
                title: Text("String in C"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CGetPut()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C gets() & puts()"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CStringFxn()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CStringLength()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Length : strlen() functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CStringCopy()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Copy : strcpy() functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CStringConcat()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Concatenation : strcat() functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CStringCompare()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Compare : strcmp() functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CStringReverse()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Reverse : strrev() functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CStringLower()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Lowercase: strlwr() functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const CStringUpper()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String Uppercase: strupr() functions"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CStr()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C String : strstr() functions"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
