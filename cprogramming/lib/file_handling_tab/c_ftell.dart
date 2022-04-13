import 'package:flutter/material.dart';
import '../home_screen.dart';

class CT extends StatelessWidget {
  const CT({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCT(),
    );
  }
}

class MyCT extends StatefulWidget {
  const MyCT({Key? key}) : super(key: key);

  @override
  _MyCTState createState() => _MyCTState();
}

class _MyCTState extends State<MyCT> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C ftell()'),
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
            const Text('''The ftell() function returns the current file position of the specified stream. We can use ftell() function to get the total size of a file after moving file pointer at the end of file. We can use SEEK_END constant to move the file pointer at the end of file.

Syntax: long int ftell(FILE *stream)  

Example:

File: ftell.c\n'''
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
#include <conio.h>  
void main (){  
   FILE *fp;  
   int length;  
   clrscr();  
   fp = fopen("file.txt", "r");  
   fseek(fp, 0, SEEK_END);  
   length = ftell(fp); 
   fclose(fp);  
   printf("Size of file: %d bytes", length);  
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
              child: const Text("""Output: Size of file: 21 bytes"""),
            ),
          ],
        ),
      ),
    );
  }
}

