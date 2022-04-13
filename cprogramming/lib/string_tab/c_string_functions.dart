import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStringFxn extends StatelessWidget {
  const CStringFxn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStringFxn(),
    );
  }
}

class MyCStringFxn extends StatefulWidget {
  const MyCStringFxn({Key? key}) : super(key: key);

  @override
  _MyCStringFxnState createState() => _MyCStringFxnState();
}

class _MyCStringFxnState extends State<MyCStringFxn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String Functions'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: const [
            Text('''There are many important string functions defined in "string.h" library. Some of them are:
            
1) strlen(string_name): returns the length of string name.

2) strcpy(destination, source): copies the contents of source string to destination string.

3) strcat(first_string, second_string): concat or joins first string with second string. The result of the string is stored in first string.

4) strcmp(first_string, second_string): compares the first string with second string. If both strings are same, it returns 0.

5) strrev(string): returns reverse string.

6) strlwr(string): returns string characters in lowercase.

7) strupr(string): returns string characters in uppercase.'''
            ,textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}

