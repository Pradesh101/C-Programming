import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class CIdentifiers extends StatelessWidget {
  const CIdentifiers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const MyCIdentifiers(),
    );
  }
}

class MyCIdentifiers extends StatefulWidget {
  const MyCIdentifiers({Key? key}) : super(key: key);

  @override
  _MyCIdentifiersState createState() => _MyCIdentifiersState();
}

class _MyCIdentifiersState extends State<MyCIdentifiers> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Identifiers'),
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
              'C identifiers represent the name in the C program, for example, variables, '
              'functions, arrays, structures, unions, labels, etc. '
              'An identifier can be composed of letters such as uppercase, '
              'lowercase letters, underscore, digits, but the starting letter should be either an alphabet or an underscore. '
              'If the identifier is not used in the external linkage, then it is called as an internal identifier. '
              'If the identifier is used in the external linkage, then it is called as an external identifier.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'We can say that an identifier is a collection of alphanumeric characters that begins either '
              'with an alphabetical character or an underscore,'
              'which are used to represent various programming elements such as variables, functions, arrays, structures, unions, labels, etc. '
              'There are 52 alphabetical characters (uppercase and lowercase), underscore character, and ten numerical digits (0-9) that represent the identifiers. '
              'There is a total of 63 alphanumerical characters that represent the identifiers.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Rules for constructing C identifiers',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''1. The first character of an identifier should be either an alphabet or an underscore, and then it can be followed by any of the character, digit, or underscore.
              
2. It should not begin with any numerical digit.

3. In identifiers, both uppercase and lowercase letters are distinct. Therefore, we can say that identifiers are case sensitive.

4. Commas or blank spaces cannot be specified within an identifier.

5. Keywords cannot be represented as an identifier.

6. The length of the identifiers should not be more than 31 characters.

7. Identifiers should be written in such a way that it is meaningful, short, and easy to read.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Examples of valid identifiers: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text('total, sum, average, _m _, sum_1, etc. ')),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Examples of invalid identifiers: ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('''2sum (starts with a numerical digit)  
int (reserved word)  
char (reserved word)  
m+n (special character, i.e., '+')  
'''),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Types of identifiers',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('''1. Internal identifier
2. External identifier)  
'''),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Internal identifiers',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'If the identifier is not used in the external linkage, then it is known as an internal identifier. '
              'The internal identifiers can be local variables.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'External identifiers',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'If the identifier is used in the external linkage, then it is known as an external identifier.'
                  ' The external identifiers can be function names, global variables.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Differences between Keyword and Identifier',
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
                TableRow(
                  children: [
                    Column(
                      children: const [
                        Text(
                          'Keyword',
                          style: TextStyle(fontWeight: FontWeight.bold),
                          textAlign: TextAlign.justify,
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'Identifier',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text(' Keyword is a pre-defined word.',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text(' The identifier is a user-defined word',textAlign: TextAlign.center,)],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text(' It must be written in a lowercase letter.',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('	It can be written in both lowercase and uppercase letters.',textAlign: TextAlign.center,)],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text(' Its meaning is pre-defined in the c compiler.',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text(' Its meaning is not defined in the c compiler.',textAlign: TextAlign.center,)],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text(' It is a combination of alphabetical characters.',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('	It is a combination of alphanumeric characters.',textAlign: TextAlign.center,)],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text(' It does not contain the underscore character.',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text("	It can contain the underscore character.",textAlign: TextAlign.center,)],
                    ),
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
                "Let's understand through an example.",
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
int main()  
{  
    int a=10;  
    int A=20;  
    printf("Value of a is : %d",a);  
    printf("\nValue of A is :%d",A);  
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
              child: const Text("""Output: Value of a is : 10
Value of A is :20  """),
            ),
            const Text("The above output shows that the values of both the variables, "
                  "'a' and 'A' are different. Therefore, we conclude that the identifiers are case sensitive."
                  "",
              textAlign: TextAlign.justify,
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
