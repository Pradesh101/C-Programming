import 'package:flutter/material.dart';
import '../home_screen.dart';

class CPS extends StatelessWidget {
  const CPS({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCPS(),
    );
  }
}

class MyCPS extends StatefulWidget {
  const MyCPS({Key? key}) : super(key: key);

  @override
  _MyCPSState createState() => _MyCPSState();
}

class _MyCPSState extends State<MyCPS> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C fprintf() & fscanf()'),
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
        padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Writing File : fprintf() function\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The fprintf() function is used to write set of characters into file. It sends formatted output to a stream.

Syntax: int fprintf(FILE *stream, const char *format [, argument, ...])  

Example:

#include <stdio.h>  
main(){  
   FILE *fp;  
   fp = fopen("file.txt", "w");//opening file  
   fprintf(fp, "Hello file by fprintf...\\n");//writing data into file  
   fclose(fp);//closing file  
}\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Reading File : fscanf() function\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The fscanf() function is used to read set of characters from file. It reads a word from the file and returns EOF at the end of file.

Syntax: int fscanf(FILE *stream, const char *format [, argument, ...])\n'''
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
main(){  
   FILE *fp;  
   char buff[255];//creating char array to store data of file  
   fp = fopen("file.txt", "r");  
   while(fscanf(fp, "%s", buff)!=EOF){  
   printf("%s ", buff );  
   }  
   fclose(fp);  
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
              child: const Text("""Output: Hello file by fprintf..."""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C File Example: Storing employee information\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Let's see a file handling example to store employee information as entered by user from console. We are going to store id, name and salary of the employe\n'''
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
void main()  
{  
    FILE *fptr;  
    int id;  
    char name[30];  
    float salary;  
    fptr = fopen("emp.txt", "w+");/*  open for writing */  
    if (fptr == NULL)  
    {  
        printf("File does not exists \\n");  
        return;  
    }  
    printf("Enter the id\\n");  
    scanf("%d", &id);  
    fprintf(fptr, "Id= %d\\n", id);  
    printf("Enter the name \\n");  
    scanf("%s", name);  
    fprintf(fptr, "Name= %s\\n", name);  
    printf("Enter the salary\\n");  
    scanf("%f", &salary);  
    fprintf(fptr, "Salary= %.2f\\n", salary);  
    fclose(fptr);  
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
Enter the id 
1
Enter the name 
David
Enter the salary
120000 """),
            ),
            const Text('''Now open file from current directory. For windows operating system, go to TC\\bin directory, you will see emp.txt file. It will have following information.\n'''
            ,textAlign: TextAlign.justify,),
        Container(
          margin: const EdgeInsets.only(bottom: 15),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text("""emp.txt

Id= 1
Name= David
Salary= 120000 """)
        ),
          ],
        ),
      ),
    );
  }
}

