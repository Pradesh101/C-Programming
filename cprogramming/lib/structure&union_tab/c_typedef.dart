import 'package:flutter/material.dart';
import '../home_screen.dart';

class CTypedef extends StatelessWidget {
  const CTypedef({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCTypedef(),
    );
  }
}

class MyCTypedef extends StatefulWidget {
  const MyCTypedef({Key? key}) : super(key: key);

  @override
  _MyCTypedefState createState() => _MyCTypedefState();
}

class _MyCTypedefState extends State<MyCTypedef> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //primary: false,
        title: const Text('typedef in C'),
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
            const Text('''The typedef is a keyword used in C programming to provide some meaningful names to the already existing variable in the C program. It behaves similarly as we define the alias for the commands. In short, we can say that this keyword is used to redefine the name of an already existing variable.

Syntax of typedef: typedef <existing_name> <alias_name>  

In the above syntax, 'existing_name' is the name of an already existing variable while 'alias name' is another name given to the existing variable.

For example, suppose we want to create a variable of type unsigned int, then it becomes a tedious task if we want to declare multiple variables of this type. To overcome the problem, we use a typedef keyword.

typedef unsigned int unit;  

In the above statements, we have declared the unit variable of type unsigned int by using a typedef keyword.

Now, we can create the variables of type unsigned int by writing the following statement: unit a, b;
   
instead of writing: unsigned int a, b;
  
Till now, we have observed that the typedef keyword provides a nice shortcut by providing an alternative name for an already existing variable. This keyword is useful when we are dealing with the long data type especially, structure declarations.

Let's understand through a simple example.\n'''
            ,textAlign: TextAlign.justify,),
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
typedef unsigned int unit;  
unit i,j;  
i=10;  
j=20;  
printf("Value of i is :%d",i);  
printf("\\nValue of j is :%d",j);  
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
Value of i is :10 
Value of j is :20"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Using typedef with structures\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Consider the below structure declaration:

struct student  
{  
char name[20];  
int age;  
};  
struct student s1;   

In the above structure declaration, we have created the variable of student type by writing the following statement:

struct student s1;  

The above statement shows the creation of a variable, i.e., s1, but the statement is quite big. To avoid such a big statement, we use the typedef keyword to create the variable of type student.

struct student  
{  
char name[20];  
int age;  
};  
typedef struct student stud;  
stud s1, s2;
   
In the above statement, we have declared the variable stud of type struct student. Now, we can use the stud variable in a program to create the variables of type struct student.

The above typedef can be written as:

typedef struct student  
{  
char name[20];  
int age;   
} stud;  
stud s1,s2;  

From the above declarations, we conclude that typedef keyword reduces the length of the code and complexity of data types. It also helps in understanding the program.

Let's see another example where we typedef the structure declaration.\n'''
            ,textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include <stdio.h>  
typedef struct student  
{  
char name[20];  
int age;  
}stud;  
int main()  
{  
stud s1;  
printf("Enter the details of student s1: ");  
printf("\\nEnter the name of the student:");  
scanf("%s",&s1.name);  
printf("\\nEnter the age of student:");  
scanf("%d",&s1.age);  
printf("\\n Name of the student is : %s", s1.name);  
printf("\\n Age of the student is : %d", s1.age);  
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
Enter the details of student s1: 
Enter the name of the student: Peter 
Enter the age of student: 28 
Name of the student is : Peter 
Age of the student is : 28"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Using typedef with pointers\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We can also provide another name or alias name to the pointer variables with the help of the typedef.

For example, we normally declare a pointer, as shown below: int* ptr;  

We can rename the above pointer variable as given below: typedef int* ptr;  

In the above statement, we have declared the variable of type int*. Now, we can create the variable of type int* by simply using the 'ptr' variable as shown in the below statement: ptr p1, p2 ;  

In the above statement, p1 and p2 are the variables of type 'ptr'.\n'''
            ,textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}
