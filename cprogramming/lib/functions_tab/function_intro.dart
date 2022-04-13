import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class FunctionIntro extends StatelessWidget {
  const FunctionIntro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyFunctionIntro(),
    );
  }
}

class MyFunctionIntro extends StatefulWidget {
  const MyFunctionIntro({Key? key}) : super(key: key);

  @override
  _MyFunctionIntroState createState() => _MyFunctionIntroState();
}

class _MyFunctionIntroState extends State<MyFunctionIntro> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Function'),
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
              '''In C, we can divide a large program into the basic building blocks known as function. The function contains the set of programming statements enclosed by {}. A function can be called multiple times to provide reusability and modularity to the C program. In other words, we can say that the collection of functions creates a program. The function is also known as procedureor subroutinein other programming languages.\n'''
              ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Advantages of Funtion in C\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''1. By using functions, we can avoid rewriting same logic or code again and again in a program.
            
2. We can call C functions any number of times in a program and from any place in a program.

3. We can track a large C program easily when it is divided into multiple functions.

4. Reusability is the main achievement of C functions.

5. However, Function calling is always a overhead in a C program.\n'''),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Function Aspect\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''1. Function declaration: A function must be declared globally in a c program to tell the compiler about the function name, function parameters, and return type.

2. Function call: Function can be called from anywhere in the program. The parameter list must not differ in function calling and function declaration. We must pass the same number of functions as it is declared in the function declaration.

3. Function definition: It contains the actual statements which are to be executed. It is the most important aspect to which the control comes when the function is called. Here, we must notice that only one value can be returned from the function.\n'''
              ,textAlign: TextAlign.justify,),
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
                          'SN',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'C Function Aspects',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    Column(
                      children: const [
                        Text(
                          'Syntax',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text('1',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('Function Declaration',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('return_type function_name (argument list);',textAlign: TextAlign.center,)],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text('2',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('Function Call',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('	function_name (argument_list);',textAlign: TextAlign.center,)],
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Column(
                      children: const [Text('3',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('Function Definition',textAlign: TextAlign.center,)],
                    ),
                    Column(
                      children: const [Text('return_type function_name (argument list) {function body;}',textAlign: TextAlign.center,)],
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
                'Types of Function\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''1. Library Functions: are the functions which are declared in the C header files such as scanf(), printf(), gets(), puts(), ceil(), floor() etc.

2. User-defined functions: are the functions which are created by the C programmer, so that he/she can use it many times. It reduces the complexity of a big program and optimizes the code.\n''',
              textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Return Value\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''A C function may or may not return a value from the function. If you don't have to return any value from the function, use void for the return type.

Let's see a simple example of C function that doesn't return any value from the function.

Example without return value:

void hello(){  
printf("hello c");  
}  

If you want to return any value from the function, you need to use any data type such as int, long, char, etc. The return type depends on the value to be returned from the function.

Let's see a simple example of C function that returns int value from the function.

Example with return value:

int get(){  
return 10;  
} 
 
In the above example, we have to return 10 as a value, so the return type is int. If you want to return floating-point value (e.g., 10.2, 3.1, 54.5, etc), you need to use float as the return type of the method.

float get(){  
return 10.2;  
}  

Now, you need to call the function, to get the value of the function.\n''',
              textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Different aspects of function calling\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''A function may or may not accept any argument. It may or may not return any value. Based on these facts, There are four different aspects of function calls.

1. function without arguments and without return value

2. function without arguments and with return value

3. function with arguments and without return value

4. function with arguments and with return value\n''',
              textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example for Function without argument and return value\n\nExample 1\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
void printName();  
void main ()  
{  
    printf("Hello ");  
    printName();  
}  
void printName()  
{  
    printf("C Programmer");  
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
              child: const Text("""Output: Hello C Programmer"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
void sum();  
void main()  
{  
    printf("\\nGoing to calculate the sum of two numbers:");  
    sum();  
}  
void sum()  
{  
    int a,b;   
    printf("\\nEnter two numbers");  
    scanf("%d %d",&a,&b);   
    printf("The sum is %d",a+b);  
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
              child: const Text("""Output: Going to calculate the sum of two numbers:

Enter two numbers 10 
24 

The sum is 34"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example for Function without argument and with return value\n\nExample 1\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
int sum();  
void main()  
{  
    int result;   
    printf("\\nGoing to calculate the sum of two numbers:");  
    result = sum();  
    printf("%d",result);  
}  
int sum()  
{  
    int a,b;   
    printf("\\nEnter two numbers");  
    scanf("%d %d",&a,&b);  
    return a+b;   
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
              child: const Text("""Output: Going to calculate the sum of two numbers:

Enter two numbers 10 
24 

The sum is 34"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2: Program to calculate the area of the square\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
int sum();  
void main()  
{  
    printf("Going to calculate the area of the square\\n");  
    float area = square();  
    printf("The area of the square: %f\\n",area);  
}  
int square()  
{  
    float side;  
    printf("Enter the length of the side in meters: ");  
    scanf("%f",&side);  
    return side * side;  
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
              child: const Text("""Output: Going to calculate the area of the square 
Enter the length of the side in meters: 10 
The area of the square: 100.000000"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example for Function with argument and without return value\n\nExample 1\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
void sum(int, int);  
void main()  
{  
    int a,b,result;   
    printf("\\nGoing to calculate the sum of two numbers:");  
    printf("\\nEnter two numbers:");  
    scanf("%d %d",&a,&b);  
    sum(a,b);  
}  
void sum(int a, int b)  
{  
    printf("\\nThe sum is %d",a+b);      
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
              child: const Text("""Output: Going to calculate the sum of two numbers:

Enter two numbers 10 
24 

The sum is 34"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2: Program to calculate the average of five numbers.\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
void average(int, int, int, int, int);  
void main()  
{  
    int a,b,c,d,e;   
    printf("\nGoing to calculate the average of five numbers:");  
    printf("\nEnter five numbers:");  
    scanf("%d %d %d %d %d",&a,&b,&c,&d,&e);  
    average(a,b,c,d,e);  
}  
void average(int a, int b, int c, int d, int e)  
{  
    float avg;   
    avg = (a+b+c+d+e)/5;   
    printf("The average of given five numbers : %f",avg);  
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
              child: const Text("""Output: Going to calculate the average of five numbers:
Enter five numbers:10 
20
30
40
50
The average of given five numbers : 30.000000"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example for Function with argument and with return value\n\nExample 1\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
int sum(int, int);  
void main()  
{  
    int a,b,result;   
    printf("\\nGoing to calculate the sum of two numbers:");  
    printf("\\nEnter two numbers:");  
    scanf("%d %d",&a,&b);  
    result = sum(a,b);  
    printf("\\nThe sum is : %d",result);  
}  
int sum(int a, int b)  
{  
    return a+b;  
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
              child: const Text("""Output: Going to calculate the sum of two numbers:
Enter two numbers:10
20 
The sum is : 30"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2: Program to check whether a number is even or odd.\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
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
int even_odd(int);  
void main()  
{  
 int n,flag=0;  
 printf("\nGoing to check whether a number is even or odd");  
 printf("\nEnter the number: ");  
 scanf("%d",&n);  
 flag = even_odd(n);  
 if(flag == 0)  
 {  
    printf("\nThe number is odd");  
 }  
 else   
 {  
    printf("\nThe number is even");  
 }  
}  
int even_odd(int n)  
{  
    if(n%2 == 0)  
    {  
        return 1;  
    }  
    else   
    {  
        return 0;  
    }  
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
              child: const Text("""Output: Going to check whether a number is even or odd
Enter the number: 100
The number is even"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Library Functions \n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Library functions are the inbuilt function in C that are grouped and placed at a common place called the library. Such functions are used to perform some specific operations. For example, printf is a library function used to print on the console. The library functions are created by the designers of compilers. All C standard library functions are defined inside the different header files saved with the extension .h. We need to include these header files in our program to make use of the library functions defined in such header files. For example, To use the library functions such as printf/scanf we need to include stdio.h in our program which is a header file that contains all the library functions regarding standard input/output\n''',
            textAlign: TextAlign.justify,)
          ],
        ),
      ),
    );
  }
}
