import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class CEscapeSequence extends StatelessWidget {
  const CEscapeSequence({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCEscapeSequence(),
    );
  }
}

class MyCEscapeSequence extends StatefulWidget {
  const MyCEscapeSequence({Key? key}) : super(key: key);

  @override
  _MyCEscapeSequenceState createState() => _MyCEscapeSequenceState();
}

class _MyCEscapeSequenceState extends State<MyCEscapeSequence> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Escape Sequence'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
          onPressed: () {
            Navigator.pushReplacement(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(top: 10, left: 10, right: 10),
        child: Column(
          children: [
            const Text(
              '''An escape sequence in C language is a sequence of characters that doesn't represent itself when used inside string literal or character.

It is composed of two or more characters starting with backslash (\\). For example: \\n represents new line.''',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'List of Escape Sequences in C',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Table(
              border: TableBorder.all(
                color: Colors.black,
              ),
              children: [
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'Escape Sequence',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Meaning',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\a',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Alarm or Beep',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\b',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Backspace',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\f',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Form Feed',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\n',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'New Line',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\r',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Carriage Return',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\t',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Tab Horizontal',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\v',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Vertical Tab',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\\\',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Backslash',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      "\\'",
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Single Quote',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\"',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Double Quote',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\?',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Question Mark',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\nnn',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Octal number',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\xhh',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Hexadecimal Number',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      '\\0',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Null',
                    )
                  ]),
                ]),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Escape Sequence Example',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>    
int main(){    
     int number=50;  
    printf("Hello C Programming");
    printf("\\n");  
    printf("C Escape Sequence");   
return 0;  
} """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text('''Output: Hello C Programming
C Escape Sequence'''),
            ),
          ],
        ),
      ),
    );
  }
}
