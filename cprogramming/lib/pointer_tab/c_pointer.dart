import 'package:flutter/material.dart';
import '../home_screen.dart';

class CPointer extends StatelessWidget {
  const CPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCPointer(),
    );
  }
}

class MyCPointer extends StatefulWidget {
  const MyCPointer({Key? key}) : super(key: key);

  @override
  _MyCPointerState createState() => _MyCPointerState();
}

class _MyCPointerState extends State<MyCPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Pointers'),
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
              '''The pointer in C language is a variable which stores the address of another variable. This variable can be of type int, char, array, function, or any other pointer. The size of the pointer depends on the architecture. However, in 32-bit architecture the size of a pointer is 2 byte.

Consider the following example to define a pointer which stores the address of an integer.

int n = 10;   
int* p = &n; // Variable p of type pointer is pointing to the address of the variable n of type integer.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Declaring a pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The pointer in c language can be declared using * (asterisk symbol). It is also known as indirection pointer used to dereference a pointer.

int *a;//pointer to int  
char *c;//pointer to char

Let's see the pointer example\n''',
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
              child: const Text("""#include<stdio.h>  
int main(){  
int number=50;    
int *p;      
p=&number;//stores the address of number variable 
printf("Address of number variable is %x \\n",number);   
printf("Address of p variable is %x \\n",p); // p contains the address of the number therefore printing p gives the address of number.     
printf("Value of p variable is %d \\n",*p); // As we know that * is used to dereference a pointer therefore if we print *p, we will get the value stored at the address contained by p.    
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
              child: const Text("""Output: 
Address of number variable is fff4
Address of p variable is fff4
Value of p variable is 50"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pointer to array\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''int arr[10];  
int *p[10]=&arr; // Variable p of type pointer is pointing to the address of an integer array arr.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pointer to a function\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''void show (int);  
void(*p)(int) = &display; // Pointer p is pointing to the address of a function  \n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pointer to structure\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''struct st {  
int i;  
float f;  
}ref;  
struct st *p = &ref;\n''',
                textAlign: TextAlign.justify,
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Advantage of pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1) Pointer reduces the code and improves the performance, it is used to retrieving strings, trees, etc. and used with arrays, structures, and functions.

2) We can return multiple values from a function using the pointer.

3) It makes you able to access any memory location in the computer's memory.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Usage of pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''There are many applications of pointers in c language.

1) Dynamic memory allocation: In c language, we can dynamically allocate memory using malloc() and calloc() functions where the pointer is used.

2) Arrays, Functions, and Structures: Pointers in c language are widely used in arrays, functions, and structures. It reduces the code and improves the performance.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Address Of (&) Operator\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The address of operator '&' returns the address of a variable. But, we need to use %u to display the address of a variable.\n''',
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
              child: const Text("""#include<stdio.h>  
int main(){  
int number=50;   
printf("value of number is %d, address of number is %u",number,&number);    
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
              child: const Text("""Output: value of number is 50, address of number is fff4"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'NULL Pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''A pointer that is not assigned any value but NULL is known as the NULL pointer. If you don't have any address to be specified in the pointer at the time of declaration, you can assign NULL value. It will provide a better approach.

int *p=NULL;
In the most libraries, the value of the pointer is 0 (zero).\n''',
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
              child: const Text("""#include<stdio.h>  
int main(){  
int a=10,b=20,*p1=&a,*p2=&b;  
  
printf("Before swap: *p1=%d *p2=%d",*p1,*p2);  
*p1=*p1+*p2;  
*p2=*p1-*p2;  
*p1=*p1-*p2;  
printf("\\nAfter swap: *p1=%d *p2=%d",*p1,*p2);  
  
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
              child: const Text("""Output: 
Before swap: *p1=10 *p2=20
After swap: *p1=20 *p2=10"""),
            ),
            Table(
              border: TableBorder.all(
                color: Colors.black,
              ),
              children: [
                TableRow(children: [
                  Column(children: const [Text('Operator',style: TextStyle(fontWeight: FontWeight.bold),)],),
                  Column(children: const [Text('Precedence',style: TextStyle(fontWeight: FontWeight.bold),)],),
                  Column(children: const [Text('Associativity',style: TextStyle(fontWeight: FontWeight.bold),)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('(), []',)],),
                  Column(children: const [Text('1',)],),
                  Column(children: const [Text('Left to right',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('*, identifier',)],),
                  Column(children: const [Text('2',)],),
                  Column(children: const [Text('Right to left',)],),
                ]),
                TableRow(children: [
                  Column(children: const [Text('Data Type',)],),
                  Column(children: const [Text('3',)],),
                  Column(children: const [Text('',)],),
                ]),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''Here,we must notice that,

1. (): This operator is a bracket operator used to declare and define the function.

2. []: This operator is an array subscript operator

3. * : This operator is a pointer operator.

4. Identifier: It is the name of the pointer. The priority will always be assigned to this.

5. Data type: Data type is the type of the variable to which the pointer is intended to point. It also includes the modifier like signed int, long, etc).

How to read the pointer: int (*p)[10].

To read the pointer, we must see that () and [] have the equal precedence. Therefore, their associativity must be considered here. The associativity is left to right, so the priority goes to ().

Inside the bracket (), pointer operator * and pointer name (identifier) p have the same precedence. Therefore, their associativity must be considered here which is right to left, so the priority goes to p, and the second priority goes to *.

Assign the 3rd priority to [] since the data type has the last precedence. Therefore the pointer will look like following.

1. char -> 4
2. * -> 2
3. p -> 1
4. [10] -> 3

The pointer will be read as p is a pointer to an array of integers of size 10.

Example

How to read the following pointer?

int (*p)(int (*)[2], int (*)void))  

Explanation

This pointer will be read as p is a pointer to such function which accepts the first parameter as the pointer to a one-dimensional array of integers of size two and the second parameter as the pointer to a function which parameter is void and return type is the integer.\n''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
