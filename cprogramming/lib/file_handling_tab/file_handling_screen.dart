import 'package:cprogramming/file_handling_tab/c_file_handling.dart';
import 'package:cprogramming/file_handling_tab/c_fprintf_fscanf.dart';
import 'package:cprogramming/file_handling_tab/c_fputc_fgetc.dart';
import 'package:cprogramming/file_handling_tab/c_fputs_fgets.dart';
import 'package:cprogramming/file_handling_tab/c_fseek.dart';
import 'package:cprogramming/file_handling_tab/c_rewind.dart';
import 'package:flutter/material.dart';
import 'c_ftell.dart';

class FileHandlingScreen extends StatelessWidget {
  const FileHandlingScreen({Key? key}) : super(key: key);

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
                      builder: (context) => const CFileHandling()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C File Handling"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CPS()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C fprintf() & fscanf()"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CPG()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C fputc() & fgetc()"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => const CPGs()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C fputs() & fgets()"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const CF()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C fseek()"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const CR()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C rewind()"),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushReplacement(
                  context, MaterialPageRoute(builder: (context) => const CT()));
            },
            child: const Card(
              child: ListTile(
                title: Text("C ftell()"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
