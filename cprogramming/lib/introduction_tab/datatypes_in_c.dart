import 'package:flutter/material.dart';

import '../home_screen.dart';

class DataTypesinC extends StatelessWidget {
  const DataTypesinC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyDataTypesinC(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyDataTypesinC extends StatefulWidget {
  const MyDataTypesinC({Key? key}) : super(key: key);

  @override
  _MyDataTypesinCState createState() => _MyDataTypesinCState();
}

class _MyDataTypesinCState extends State<MyDataTypesinC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text('Data Types in C'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              '''A data type specifies the type of data that a variable can store such as integer, floating, character, etc. 
              
There are the following data types in C language.
''',
              textAlign: TextAlign.justify,
            ),
            Table(
              defaultColumnWidth: const FixedColumnWidth(180.0),
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1),
              children: [
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'Types',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Data Types',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'Basic Data Type',
                    )
                  ]),
                  Column(children: const [Text('int, char, float, double')]),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Derived Data Type')]),
                  Column(children: const [
                    Text('array, pointer, structure , union ')
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Enumeration Data Type')]),
                  Column(children: const [Text('enum')]),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Void Data Type')]),
                  Column(children: const [Text('void')]),
                ]),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Basic Data Types",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '''The basic data types are integer-based and floating-point based. C language supports both signed and unsigned literals.

The memory size of the basic data types may change according to 32 or 64-bit operating system.

Let's see the basic data types. Its size is given according to 32-bit architecture.
''',
              textAlign: TextAlign.justify,
            ),
            Table(
              border: TableBorder.all(
                  color: Colors.black, style: BorderStyle.solid, width: 1),
              children: [
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'Types',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Memory Size',
                    )
                  ]),
                  Column(children: const [
                    Text(
                      'Range',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'char',
                    )
                  ]),
                  Column(children: const [Text('1 byte')]),
                  Column(children: const [Text('-128 to 127')]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'signed char',
                    )
                  ]),
                  Column(children: const [Text('1 byte')]),
                  Column(children: const [Text('-128 to 127')]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'unsigned char',
                    )
                  ]),
                  Column(children: const [Text('1 byte')]),
                  Column(children: const [Text('0 to 255')]),
                ]),
                TableRow(children: [Column(children: const [Text('short',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('−32,768 to 32,767')]),
                ]),
                TableRow(children: [Column(children: const [Text('signed short',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('−32,768 to 32,767')]),
                ]),
                TableRow(children: [Column(children: const [Text('unsigned short',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('0 to 65,535')]),
                ]),
                TableRow(children: [Column(children: const [Text('int',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('−32,768 to 32,767')]),
                ]),
                TableRow(children: [Column(children: const [Text('signed int',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('−32,768 to 32,767')]),
                ]),
                TableRow(children: [Column(children: const [Text('unsigned int',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('0 to 65,535')]),
                ]),
                TableRow(children: [Column(children: const [Text('short int',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('−32,768 to 32,767')]),
                ]),
                TableRow(children: [Column(children: const [Text('signed short int',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('−32,768 to 32,767')]),
                ]),
                TableRow(children: [Column(children: const [Text('unsigned short int',)]),
                  Column(children: const [Text('2 byte')]),
                  Column(children: const [Text('0 to 65,535')]),
                ]),
                TableRow(children: [Column(children: const [Text('long int',)]),
                  Column(children: const [Text('4 byte')]),
                  Column(children: const [Text('-2,147,483,648 to 2,147,483,647')]),
                ]),
                TableRow(children: [Column(children: const [Text('signed long int',)]),
                  Column(children: const [Text('4 byte')]),
                  Column(children: const [Text('-2,147,483,648 to 2,147,483,647')]),
                ]),
                TableRow(children: [Column(children: const [Text('unsigned long int',)]),
                  Column(children: const [Text('4 byte')]),
                  Column(children: const [Text('0 to 4,294,967,295')]),
                ]),
                TableRow(children: [Column(children: const [Text('float ',)]),
                  Column(children: const [Text('4 byte')]),
                  Column(children: const [Text(' ')]),
                ]),
                TableRow(children: [Column(children: const [Text('double',)]),
                  Column(children: const [Text('8 byte')]),
                  Column(children: const [Text(' ')]),
                ]),
                TableRow(children: [Column(children: const [Text('long double',)]),
                  Column(children: const [Text('10 byte')]),
                  Column(children: const [Text(' ')]),
                ]),
              ],
            ),
            const SizedBox(height: 15,)
          ],
        ),
      ),
    );
  }
}
