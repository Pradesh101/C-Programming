import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class StaticinC extends StatelessWidget {
  const StaticinC({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyStaticinC(),
    );
  }
}

class MyStaticinC extends StatefulWidget {
  const MyStaticinC({Key? key}) : super(key: key);

  @override
  _MyStaticinCState createState() => _MyStaticinCState();
}

class _MyStaticinCState extends State<MyStaticinC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Static in C'),
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
              'Static is a keyword used in C programming language. '
              'It can be used with both variables and functions, i.e., we can declare a static variable '
              'and static function as well. An ordinary variable is limited to the scope in which '
              'it is defined, while the scope of the static variable is throughout the program.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Static keyword can be used in the following situations:',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '1. Static global variable',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'When a global variable is declared with a static keyword, then it is known as a static global variable. '
              'It is declared at the top of the program, and its visibility is throughout the program.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '2. Static function',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'When a function is declared with a static keyword known as a static function. '
              'Its lifetime is throughout the program.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '3. Static local variable',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'When a local variable is declared with a static keyword, '
              'then it is known as a static local variable. The memory of a static local '
              'variable is valid throughout the program, but the scope of visibility of a '
              'variable is the same as the automatic local variables. However, when the '
              'function modifies the static local variable during the first function call, '
              'then this modified value will be available for the next function call also.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '4. Static member variables',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'When the member variables are declared with a static keyword in a class, '
              'then it is known as static member variables. '
              'They can be accessed by all the instances of a class, not with a specific instance.',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '5. Static method',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'The member function of a class declared with a static keyword is known as a static method. '
              'It is accessible by all the instances of a class, not with a specific instance.',
              textAlign: TextAlign.justify,
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
 printf("%d",func());  
printf("\\n%d",func());  
 return 0;  
}  
int func()  
{   
    int count=0; // variable initialization  
    count++; // incrementing counter variable  
  
   return count; 
}   """),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'In the above code, the func() function is called. In func(), count variable gets updated. '
              'As soon as the function completes its execution, the memory of the count variable will be removed. '
              'If we do not want to remove the count from memory, then we need to use the count variable as static. '
              'If we declare the variable as static, then the variable will not be removed from the memory even when '
              'the function completes its execution.',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text('Output: 1 \n 1'),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Static variable",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'The syntax of a static variable is given below: static data_type variable_name;',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Let's look at a simple example of static variable.",
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
   printf("%d",func());  
   printf("\\n%d",func());  
  
    return 0;  
}  
int func()  
{  
    static int count=0;  
    count++;  
    return count;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'In the above code, we have declared the count variable as static. '
              'When the func() is called, the value of count gets updated to 1, and during the next function call, '
              'the value of the count variable becomes 2. Therefore, we can say that the value of the '
              'static variable persists within the function call.',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text('Output: 1 \n 2'),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Static Function",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'As we know that non-static functions are global by default means that the function '
              'can be accessed outside the file also, but if we declare the function as static, then it '
              'limits the function scope. The static function can be accessed within a file only.\n\n'
              'The static function would look like as:\n',
              textAlign: TextAlign.justify,
            ),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""static void func()  
{  
    printf("Hello Programmer");  
}  """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Differences between static and global variable",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'Global variables are the variables that are declared outside the function. '
              'These global variables exist at the beginning of the program, and its scope remains till the end of the program. '
              'It can be accessed outside the program also.\n\n'
              'Static variables are limited to the source file in which they are defined, '
              'i.e., they are not accessible by the other source files.\n\n'
              'Both the static and global variables have static initialization. '
              'Here, static initialization means if we do not assign any value to the variable then '
              'by default, 0 value will be assigned to the variable.\n',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Differences between static local and static global variable",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Static global variable",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'If the variable declared with a static keyword outside the function, '
              'then it is known as a static global variable. '
              'It is accessible throughout the program.\n',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Static local variable",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'The variable with a static keyword is declared inside a function is known as a static local variable. '
              'The scope of the static local variable will be the same as the automatic local variables, '
              'but its memory will be available throughout the program execution. '
              'When the function modifies the value of the static local variable during one function call, '
              'then it will remain the same even during the next function call.\n',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Properties of a static variable",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '1. The memory of a static variable is allocated within a static variable.\n\n'
              '2. Its memory is available throughout the program, but the scope will remain the same as the automatic local variables. Its'
              'value will persist across the various function calls.\n\n'
              '3. If we do not assign any value to the variable, then the default value will be 0.\n\n'
              '4. A global static variable cannot be accessed outside the program, while a global variable can be accessed by other source files.\n',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
