import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStructure extends StatelessWidget {
  const CStructure({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStructure(),
    );
  }
}

class MyCStructure extends StatefulWidget {
  const MyCStructure({Key? key}) : super(key: key);

  @override
  _MyCStructureState createState() => _MyCStructureState();
}

class _MyCStructureState extends State<MyCStructure> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Structure'),
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
        padding: const EdgeInsets.only(left: 10, top: 18, right: 10),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Why use structure in C?\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''In C, there are cases where we need to store multiple attributes of an entity. It is not necessary that an entity has all the information of one type only. It can have different attributes of different data types. For example, an entity Student may have its name (string), roll number (int), marks (float). To store such type of information regarding an entity student, we have the following approaches:

Construct individual arrays for storing names, roll numbers, and marks.
Use a special data structure to store the collection of different data types.

Let's look at the first approach in detail.\n'''
            ,textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>  
void main ()  
{  
  char names[2][10],dummy; // 2-dimensional character array names is used to store the names of the students   
  int roll_numbers[2],i;  
  float marks[2];  
  for (i=0;i<3;i++)  
  {  
      
    printf("Enter the name, roll number, and marks of the student %d ",i+1);  
    scanf("%s %d %f",&names[i],&roll_numbers[i],&marks[i]);  
    scanf("%c",&dummy); // enter will be stored into dummy character at each iteration  
  }  
  printf("Printing the Student details ...\\n");  
  for (i=0;i<3;i++)  
  {  
    printf("%s %d %f\\n",names[i],roll_numbers[i],marks[i]);  
  }  
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
Enter the name, roll number, and marks of the student 1 Arun 90 91        
Enter the name, roll number, and marks of the student 2 Ram 91 56      
Enter the name, roll number, and marks of the student 3 Sham 89 69

Printing the Student details...
Arun 90 91.000000                                                                      
Ram 91 56.000000  
Sham 89 69.000000"""),
            ),
            const Text('''The above program may fulfill our requirement of storing the information of an entity student. However, the program is very complex, and the complexity increase with the amount of the input. The elements of each of the array are stored contiguously, but all the arrays may not be stored contiguously in the memory. C provides you with an additional and simpler approach where you can use a special data structure, i.e., structure, in which, you can group all the information of different data type regarding an entity.\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'What is Structure in C?\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Structure in c is a user-defined data type that enables us to store the collection of different data types. Each element of a structure is called a member. Structures ca; simulate the use of classes and templates as it can store various information

The ,struct keyword is used to define the structure. Let's see the syntax to define the structure in c.

struct structure_name   
{  
    data_type member1;  
    data_type member2;  
    .  
    .  
    data_type memeberN;  
};  

Let's see the example to define a structure for an entity employee in c.

struct employee  
{   int id;  
    char name[20];  
    float salary;  
}; 

Here, struct is the keyword; employee is the name of the structure; id, name, and salary are the members or fields of the structure.\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Declaring structure variable\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We can declare a variable for the structure so that we can access the member of the structure easily. There are two ways to declare structure variable:

1. By struct keyword within main() function
2. By declaring a variable at the time of defining the structure.

1st way:

Let's see the example to declare the structure variable by struct keyword. It should be declared within the main function.

struct employee  
{   int id;  
    char name[50];  
    float salary;  
}; 
 
Now write given code inside the main() function.

struct employee e1, e2;
  
The variables e1 and e2 can be used to access the values stored in the structure. Here, e1 and e2 can be treated in the same way as the objects in C++
and Java.

2nd way:

Let's see another way to declare variable at the time of defining the structure.

struct employee  
{   int id;  
    char name[50];  
    float salary;  
}e1,e2; \n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Which approach is good?\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''If number of variables are not fixed, use the 1st approach. It provides you the flexibility to declare the structure variable many times.

If no. of variables are fixed, use 2nd approach. It saves your code to declare a variable in main() function.\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Accessing members of the structure\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''There are two ways to access structure members:

1. By . (member or dot operator)
2. By -> (structure pointer operator)

Let's see the code to access the id member of p1 variable by. (member) operator.

p1.id\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Structure example\n',
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
              child: const Text("""#include<stdio.h>  
#include <string.h>    
struct employee      
{   int id;      
    char name[50];      
}e1;  //declaring e1 variable for structure    
int main( )    
{    
   //store first employee information    
   e1.id=101;    
   strcpy(e1.name, "David Lamer");//copying string into char array    
   //printing first employee information    
   printf( "employee 1 id : %d\\n", e1.id);    
   printf( "employee 1 name : %s\\n", e1.name);    
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
employee 1 id : 101
employee 1 name : David Lamer"""),
            ),
            const Text('''Let's see another example of the structure in C language to store many employees information.\n''',textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>  
#include <string.h>    
struct employee      
{   int id;      
    char name[50];      
    float salary;      
}e1,e2;  //declaring e1 and e2 variables for structure    
int main( )    
{    
   //store first employee information    
   e1.id=101;    
   strcpy(e1.name, "David Lamer");//copying string into char array    
   e1.salary=56000;    
    
  //store second employee information    
   e2.id=102;    
   strcpy(e2.name, "James Bond");    
   e2.salary=126000;    
     
   //printing first employee information    
   printf( "employee 1 id : %d\\n", e1.id);    
   printf( "employee 1 name : %s\\n", e1.name);    
   printf( "employee 1 salary : %f\\n", e1.salary);    
    
   //printing second employee information    
   printf( "employee 2 id : %d\\n", e2.id);    
   printf( "employee 2 name : %s\\n", e2.name);    
   printf( "employee 2 salary : %f\\n", e2.salary);    
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
              child: const Text("""Output: 
employee 1 id : 101
employee 1 name : David Lamer
employee 1 salary : 56000.000000
employee 2 id : 102
employee 2 name : James Bond
employee 2 salary : 126000.000000"""),
            ),
          ],
        ),
      ),
    );
  }
}

