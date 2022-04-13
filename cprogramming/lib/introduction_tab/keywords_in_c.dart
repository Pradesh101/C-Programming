import 'package:flutter/material.dart';
import '../home_screen.dart';

class KeywordsinC extends StatelessWidget {
  const KeywordsinC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyKeywordsinC(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyKeywordsinC extends StatefulWidget {
  const MyKeywordsinC({Key? key}) : super(key: key);

  @override
  _MyKeywordsinCState createState() => _MyKeywordsinCState();
}

class _MyKeywordsinCState extends State<MyKeywordsinC> {
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
        title: const Text('Keywords in C'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: [
            const Text(
              '''A keyword is a reserved word. You cannot use it as a variable name, constant name, etc. There are only 32 reserved words (keywords) in the C language.

A list of 32 keywords in the c language is given below:''',
              textAlign: TextAlign.justify,
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
                      'auto',
                    )
                  ]),
                  Column(children: const [Text('break')]),
                  Column(children: const [Text('case')]),
                  Column(children: const [Text('char')]),
                  Column(children: const [Text('const')]),
                  Column(children: const [Text('continue')]),
                  Column(children: const [Text('switch')]),
                  Column(children: const [
                    Text(
                      'volatile',
                    )
                  ]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'default',
                    )
                  ]),
                  Column(children: const [Text('do')]),
                  Column(children: const [Text('double')]),
                  Column(children: const [Text('else')]),
                  Column(children: const [Text('enum')]),
                  Column(children: const [Text('extern')]),
                  Column(children: const [Text('while')]),
                  Column(children: const [Text('union')]),
                ]),
                TableRow(children: [
                  Column(children: const [
                    Text(
                      'float',
                    )
                  ]),
                  Column(children: const [Text('for')]),
                  Column(children: const [Text('goto')]),
                  Column(children: const [Text('if')]),
                  Column(children: const [Text('int')]),
                  Column(children: const [Text('long')]),
                  Column(children: const [Text('typedef')]),
                  Column(children: const [Text('void')]),
                ]),
                TableRow(
                  children: [
                    Column(children: const [
                      Text(
                        'register',
                      )
                    ]),
                    Column(children: const [Text('return')]),
                    Column(children: const [Text('short')]),
                    Column(children: const [Text('signed')]),
                    Column(children: const [Text('unsigned')]),
                    Column(children: const [Text('sizeof')]),
                    Column(children: const [Text('static')]),
                    Column(children: const [
                      Text(
                        'struct',
                      )
                    ]),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                    "We will learn about all the C language keywords later.")),
          ],
        ),
      ),
    );
  }
}
