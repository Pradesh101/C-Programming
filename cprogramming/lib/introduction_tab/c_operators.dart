import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class COperators extends StatelessWidget {
  const COperators({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCOperators(),
    );
  }
}

class MyCOperators extends StatefulWidget {
  const MyCOperators({Key? key}) : super(key: key);

  @override
  _MyCOperatorsState createState() => _MyCOperatorsState();
}

class _MyCOperatorsState extends State<MyCOperators> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Operators'),
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
          children: [
            const Text(
              '''An operator is simply a symbol that is used to perform operations. There can be many types of operations like arithmetic, logical, bitwise, etc.

There are following types of operators to perform different types of operations in C language.

  1. Arithmetic Operators
  2. Relational Operators
  3. Shift Operators
  4. Logical Operators
  5. Bitwise Operators
  6. Ternary or Conditional Operators
  7. Assignment Operator
  8. Misc Operator
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Precedence of Operators in C',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''The precedence of operator species that which operator will be evaluated first and next. The associativity specifies the operator direction to be evaluated; it may be left to right or right to left.

Let's understand the precedence by the example given below:

int value=10+20*10;  

The value variable will contain 210 because * (multiplicative operator) is evaluated before + (additive operator).

The precedence and associativity of C operators is given below:
'''),
            Table(
              border: TableBorder.all(
                color: Colors.black,
              ),
              children: [
                TableRow(children: [
                  Column(children: const [Text('Category',style: TextStyle(fontWeight: FontWeight.bold),)],),
                  Column(children: const [Text('Operator',style: TextStyle(fontWeight: FontWeight.bold),)],),
                  Column(children: const [Text('Associativity',style: TextStyle(fontWeight: FontWeight.bold),)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Postfix',)],),
                  Column(children: const [Text('() [] -> . ++ - -',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Unary',)],),
                  Column(children: const [Text('+ - ! ~ ++ - - (type)* & sizeof',)],),
                  Column(children: const [Text('Right to left',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Multiplicative',)],),
                  Column(children: const [Text('* / %',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Additive',)],),
                  Column(children: const [Text('+ -',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Shift',)],),
                  Column(children: const [Text('<< >>',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Relational',)],),
                  Column(children: const [Text('< <= > >=',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Equality',)],),
                  Column(children: const [Text('== !=',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Bitwise AND',)],),
                  Column(children: const [Text('&',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Bitwise XOR',)],),
                  Column(children: const [Text('^',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Bitwise OR',)],),
                  Column(children: const [Text('|',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Logical AND',)],),
                  Column(children: const [Text('&&',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Logical OR',)],),
                  Column(children: const [Text('||',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Conditional',)],),
                  Column(children: const [Text('?:',)],),
                  Column(children: const [Text('Right to left',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Assignment',)],),
                  Column(children: const [Text('= += -= *= /= %=>>= <<= &= ^= |=',)],),
                  Column(children: const [Text('Right to left',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('comma',)],),
                  Column(children: const [Text(',',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
