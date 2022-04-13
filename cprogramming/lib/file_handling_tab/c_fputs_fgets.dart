import 'package:flutter/material.dart';
import '../home_screen.dart';

class CPGs extends StatelessWidget {
  const CPGs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCPGs(),
    );
  }
}

class MyCPGs extends StatefulWidget {
  const MyCPGs({Key? key}) : super(key: key);

  @override
  _MyCPGsState createState() => _MyCPGsState();
}

class _MyCPGsState extends State<MyCPGs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C fputs() & fgets()'),
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
         const Text('''The fputs() and fgets() in C programming are used to write and read string from stream. Let's see examples of writing and reading file using fgets() and fgets() functions.\n'''
         ,textAlign: TextAlign.justify,),
         const Align(
           alignment: Alignment.topLeft,
           child: Text(
             'Writing File : fputs() function\n',
             textAlign: TextAlign.justify,
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
         ),
         const Text('''The fputs() function writes a line of characters into file. It outputs string to a stream.

Syntax: int fputs(const char *s, FILE *stream) 
 
Example: \n'''
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
#include<conio.h>  
void main(){  
FILE *fp;  
clrscr();  
  
fp=fopen("myfile2.txt","w");  
fputs("hello c programming",fp);  
  
fclose(fp);  
getch();  
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
           child: const Text("""Output: myfile2.txt
hello c programming"""),
         ),
         const Align(
           alignment: Alignment.topLeft,
           child: Text(
             'Reading File : fgets() function\n',
             textAlign: TextAlign.justify,
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
         ),
         const Text('''The fgets() function reads a line of characters from file. It gets string from a stream.

Syntax:char* fgets(char *s, int n, FILE *stream)  

Example:\n'''
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
#include<conio.h>  
void main(){  
FILE *fp;  
char text[300];  
clrscr();  
  
fp=fopen("myfile2.txt","r");  
printf("%s",fgets(text,200,fp));  
  
fclose(fp);  
getch();  
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
           child: const Text("""Output: hello c programming"""),
         ),
       ], 
      ),
      ),
    );
  }
}
