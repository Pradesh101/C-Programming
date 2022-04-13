import 'package:flutter/material.dart';
import '../home_screen.dart';

class CNestedStruct extends StatelessWidget {
  const CNestedStruct({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCNestedStruct(),
    );
  }
}

class MyCNestedStruct extends StatefulWidget {
  const MyCNestedStruct({Key? key}) : super(key: key);

  @override
  _MyCNestedStructState createState() => _MyCNestedStructState();
}

class _MyCNestedStructState extends State<MyCNestedStruct> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Nested Structure'),
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
              '''C provides us the feature of nesting one structure within another structure by using which, complex data types are created. For example, we may need to store the address of an entity employee in a structure. The attribute address may also have the subparts as street number, city, state, and pin code. Hence, to store the address of the employee, we need to store the address of the employee into a separate structure and nest the structure address into the structure employee. Consider the following program.\n''',
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
struct address   
{  
    char city[20];  
    int pin;  
    char phone[14];  
};  
struct employee  
{  
    char name[20];  
    struct address add;  
};  
void main ()  
{  
    struct employee emp;  
    printf("Enter employee information:\\n");  
    scanf("%s %s %d %s",emp.name,emp.add.city, &emp.add.pin, emp.add.phone);  
    printf("Printing the employee information....\\n");  
    printf("name: %s\\nCity: %s\\nPin code: %d\\nPhone: %s",emp.name,emp.add.city,emp.add.pin,emp.add.phone);  
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
              child: const Text("""Output: 
Enter employee information:

Arun            

Delhi           

110001       

1234567890    

Printing the employee information....   

name: Arun      

City: Delhi  

Pin code: 110001

Phone: 1234567890"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''The structure can be nested in the following ways:

1. By separate structure
2. By Embedded structure\n''',
                textAlign: TextAlign.justify,
                //style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''1) Separate structure \n''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Here, we create two structures, but the dependent structure should be used inside the main structure as a member. Consider the following example.
struct Date  
{  
   int dd;  
   int mm;  
   int yyyy;   
};  
struct Employee  
{     
   int id;  
   char name[20];  
   struct Date doj;  
}emp1;  

As you can see, doj (date of joining) is the variable of type Date. Here doj is used as a member in Employee structure. In this way, we can use Date structure in many structures.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''2) Embedded structure\n''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The embedded structure enables us to declare the structure inside the structure. Hence, it requires less line of codes but it can not be used in multiple data structures. Consider the following example.

struct Employee  
{     
   int id;  
   char name[20];  
   struct Date  
    {  
      int dd;  
      int mm;  
      int yyyy;   
    }doj;  
}emp1;\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''Accessing Nested Structure\n''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''We can access the member of the nested structure by Outer_Structure.Nested_Structure.member as given below:

e1.doj.dd  
e1.doj.mm  
e1.doj.yyyy\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''C Nested Structure example\n''',
                textAlign: TextAlign.justify,
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
              child: const Text("""#include <stdio.h>  
#include <string.h>  
struct Employee  
{     
   int id;  
   char name[20];  
   struct Date  
    {  
      int dd;  
      int mm;  
      int yyyy;   
    }doj;  
}e1;  
int main( )  
{  
   //storing employee information  
   e1.id=101;  
   strcpy(e1.name, "David Lamer");//copying string into char array  
   e1.doj.dd=10;  
   e1.doj.mm=11;  
   e1.doj.yyyy=2014;  
  
   //printing first employee information  
   printf( "employee id : %d\\n", e1.id);  
   printf( "employee name : %s\\n", e1.name);  
   printf( "employee date of joining (dd/mm/yyyy) : %d/%d/%d\\n", e1.doj.dd,e1.doj.mm,e1.doj.yyyy);  
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
employee id : 101
employee name : David Lamer
employee date of joining (dd/mm/yyyy) : 10/11/2014"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '''Passing structure to function\n''',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Just like other variables, a structure can also be passed to a function. We may pass the structure members into the function or pass the structure variable at once. Consider the following example to pass the structure variable employee to a function display() which is used to display the details of an employee.
            
#include<stdio.h>  
struct address   
{  
    char city[20];  
    int pin;  
    char phone[14];  
};  
struct employee  
{  
    char name[20];  
    struct address add;  
};  
void display(struct employee);  
void main ()  
{  
    struct employee emp;  
    printf("Enter employee information:\\n");  
    scanf("%s %s %d %s",emp.name,emp.add.city, &emp.add.pin, emp.add.phone);  
    display(emp);  
}  
void display(struct employee emp)  
{  
  printf("Printing the details....\\n");  
  printf("%s %s %d %s",emp.name,emp.add.city,emp.add.pin,emp.add.phone);  
}
''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
