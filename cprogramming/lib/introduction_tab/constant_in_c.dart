import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class ConstantinC extends StatelessWidget {
  const ConstantinC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const MyConstantinC(),
    );
  }
}

class MyConstantinC extends StatefulWidget {
  const MyConstantinC({Key? key}) : super(key: key);

  @override
  _MyConstantinCState createState() => _MyConstantinCState();
}

class _MyConstantinCState extends State<MyConstantinC> {
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
        title: const Text('Constant in C'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: [
            const Text(
              '''A constant is a value or variable that can't be changed in the program, for example: 10, 20, 'a', 3.4, "c programming" etc.

There are different types of constants in C programming.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'List of Constants in C',
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
                    Column(children: const [Text('Constant',style: TextStyle(fontWeight: FontWeight.bold),)],),
                    Column(children: const [Text('Example',style: TextStyle(fontWeight: FontWeight.bold),)],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text('Decimal Constant')],),
                    Column(children: const [Text('10, 20, 450 etc.')],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text('Floating-point Constant')],),
                    Column(children: const [Text('10.3, 20.2, 450.6 etc.')],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text('Octal Constant')],),
                    Column(children: const [Text('021, 033, 046 etc.')],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text('Hexadecimal Constant')],),
                    Column(children: const [Text('0x2a, 0x7b, 0xaa etc.')],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text('Character Constant')],),
                    Column(children: const [Text("a', 'b', 'x' etc.")],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text('String Constant')],),
                    Column(children: const [Text('"c", "c program" etc.')],),
                  ],),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '2 ways to define constant in C',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''There are two ways to define constant in C programming:
                
1. const keyword
2. #define preprocessor
''',
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '1) C const keyword',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''The const keyword is used to define constant in C programming.

const float PI=3.14;  

Now, the value of PI variable can't be changed.
''',textAlign: TextAlign.justify,
              ),
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
    const float PI=3.14;    
    printf("The value of PI is: %f",PI);    
    return 0;  
}"""),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: The value of PI is: 3.140000"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''If you try to change the the value of PI, it will render compile time error.
''',textAlign: TextAlign.justify,
              ),
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
const float PI=3.14;     
PI=4.5;    
printf("The value of PI is: %f",PI);    
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
              child: const Text("""Output: Compile Time Error: Cannot modify a const object"""),
            ),

        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            '2) C #define preprocessor',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text(
            '''The #define preprocessor directive is used to define constant or micro substitution. It can use any basic data type.
            
Syntax: #define token value  

Let's see an example of #define to define a constant.
''',textAlign: TextAlign.justify,
          ),
        ),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include <stdio.h>  
#define PI 3.14  
main() {  
   printf("%f",PI);  
}  """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: 3.140000"""),
            ),
          ],
        ),
      ),
    );
  }
}
