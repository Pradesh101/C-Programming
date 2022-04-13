import 'package:flutter/material.dart';
import '../home_screen.dart';

class VariabilesinC extends StatelessWidget {
  const VariabilesinC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyVariablesinC(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyVariablesinC extends StatefulWidget {
  const MyVariablesinC({Key? key}) : super(key: key);

  @override
  _MyVariablesinCState createState() => _MyVariablesinCState();
}

class _MyVariablesinCState extends State<MyVariablesinC> {
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
        title: const Text('Variables in C'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: const [
            Text(
              """A variable is a name of the memory location. It is used to store data. Its value can be changed, and it can be reused many times.'

It is a way to represent memory location through symbol so that it can be easily identified.

Let's see the syntax to declare a variable: type variable_list;

The example of declaring the variable is given below:

int a;  
float b;  
char c;  

Here, a, b, c are variables. The int, float, char are the data types.

We can also provide values while declaring the variables as given below:

int a=10,b=20; //declaring 2 variable of integer type  
float f=20.8;  
char c='A';  
""",
              textAlign: TextAlign.justify,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Rules for defining variables",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Text(
              '''1. A variable can have alphabets, digits, and underscore.
              
2. A variable name can start with the alphabet, and underscore only. It can't start with a digit.

3. No whitespace is allowed within the variable name.

4. A variable name must not be any reserved word or keyword, e.g. int, float, etc.
''',
              textAlign: TextAlign.justify,
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Valid Variables names:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''int a;  
int _ab;  
int a30;  
''',
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Invalid Variables names:",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''int 2;  
int a b;  
int long;  
''',
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Type of variables in C",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''There are many types of variables in c:

1. local variable
2. global variable
3. static variable
4. automatic variable
5. external variable  
''',
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Local Variable",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''A variable that is declared inside the function or block is called a local variable.

It must be declared at the start of the block.

void function1(){  
int x=10;//local variable  
} 
 
You must have to initialize the local variable before it is used. 
''',
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Global Variable",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''A variable that is declared outside the function or block is called a global variable. Any function can change the value of the global variable. It is available to all the functions.

It must be declared at the start of the block.

int value=20;//global variable  
void function1(){  
int x=10;//local variable  
}  
''',
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Static Variable",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''A variable that is declared with the static keyword is called static variable.

It retains its value between multiple function calls.

void function1(){  
int x=10;//local variable  
static int y=10;//static variable  
x=x+1;  
y=y+1;  
printf("%d,%d",x,y);  
} 
 
If you call this function many times, the local variable will print the same value for each function call, e.g, 11,11,11 and so on. But the static variable will print the incremented value in each function call, e.g. 11, 12, 13 and so on. 
''',
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Automatic Variable",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''All variables in C that are declared inside the block, are automatic variables by default. We can explicitly declare an automatic variable using auto keyword.

void main(){  
int x=10;//local variable (also automatic)  
auto int y=20;//automatic variable  
}  
''',
                textAlign: TextAlign.justify,
              ),
            ),
            Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "External Variable",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            SizedBox(
              height: 10,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''We can share a variable in multiple C source files by using an external variable. To declare an external variable, you need to use extern keyword.
                  
myfile.h
extern int x=10;//external variable (also global)  

program1.c
#include "myfile.h"  
#include <stdio.h>  
void printValue(){  
    printf("Global variable: %d", global_variable);  
}  
''',
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
