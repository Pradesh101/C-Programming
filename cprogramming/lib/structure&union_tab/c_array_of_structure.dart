import 'package:flutter/material.dart';
import '../home_screen.dart';

class CAoS extends StatelessWidget {
  const CAoS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCAoS(),
    );
  }
}

class MyCAoS extends StatefulWidget {
  const MyCAoS({Key? key}) : super(key: key);

  @override
  _MyCAoSState createState() => _MyCAoSState();
}

class _MyCAoSState extends State<MyCAoS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Array of Structure in C'),
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
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Why use an array of structures?\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              'Consider a case, where we need to store the data of 5 students. We can store it by using the structure as given below.\n',
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
struct student  
{  
    char name[20];  
    int id;  
    float marks;  
};  
void main()  
{  
    struct student s1,s2,s3;  
    int dummy;  
    printf("Enter the name, id, and marks of student 1 ");  
    scanf("%s %d %f",s1.name,&s1.id,&s1.marks);  
    scanf("%c",&dummy);  
    printf("Enter the name, id, and marks of student 2 ");  
    scanf("%s %d %f",s2.name,&s2.id,&s2.marks);  
    scanf("%c",&dummy);  
    printf("Enter the name, id, and marks of student 3 ");  
    scanf("%s %d %f",s3.name,&s3.id,&s3.marks);  
    scanf("%c",&dummy);  
    printf("Printing the details....\\n");  
    printf("%s %d %f\\n",s1.name,s1.id,s1.marks);  
    printf("%s %d %f\\n",s2.name,s2.id,s2.marks);  
    printf("%s %d %f\\n",s3.name,s3.id,s3.marks);  
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
Enter the name, id, and marks of student 1 James 90 90  
Enter the name, id, and marks of student 2 Adam 90 90  
Enter the name, id, and marks of student 3 Nick 90 90       
Printing the details....        
James 90 90.000000                          
Adam 90 90.000000                      
Nick 90 90.000000"""),
            ),
            const Text(
              '''In the above program, we have stored data of 3 students in the structure. However, the complexity of the program will be increased if there are 20 students. In that case, we will have to declare 20 different structure variables and store them one by one. This will always be tough since we will have to declare a variable every time we add a student. Remembering the name of all the variables is also a very tricky task. However, c enables us to declare an array of structures by using which, we can avoid declaring the different structure variables; instead we can make a collection containing all the structures that store the information of different entities.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Array of Structures in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''An array of structures in C can be defined as the collection of multiple structures variables where each variable contains information about different entities. The array of structures in C are used to store information about multiple entities of different data types. The array of structures is also known as the collection of structures.
            
Let's see an example of an array of structures that stores information of 5 students and prints it.\n''',
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
#include <string.h>    
struct student{    
int rollno;    
char name[10];    
};    
int main(){    
int i;    
struct student st[5];    
printf("Enter Records of 5 students\\n");    
for(i=0;i<5;i++){    
printf("\\nEnter Rollno:");    
scanf("%d",&st[i].rollno);    
printf("\\nEnter Name:");    
scanf("%s",&st[i].name);    
}    
printf("\\nStudent Information List:");    
for(i=0;i<5;i++){    
printf("\\nRollno:%d, Name:%s",st[i].rollno,st[i].name);    
}    
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
              child: const Text("""Output: Enter Records of 5 students
Enter Rollno:1
Enter Name:Sonoo
Enter Rollno:2
Enter Name:Ratan
Enter Rollno:3
Enter Name:Vimal
Enter Rollno:4
Enter Name:James
Enter Rollno:5
Enter Name:Sarfraz

Student Information List:
Rollno:1, Name:Sonoo
Rollno:2, Name:Ratan
Rollno:3, Name:Vimal
Rollno:4, Name:James
Rollno:5, Name:Sarfraz"""),
            ),
          ],
        ),
      ),
    );
  }
}
