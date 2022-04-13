import 'package:flutter/material.dart';
import '../home_screen.dart';

class CPG extends StatelessWidget {
  const CPG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCPG(),
    );  }
}

class MyCPG extends StatefulWidget {
  const MyCPG({Key? key}) : super(key: key);

  @override
  _MyCPGState createState() => _MyCPGState();
}

class _MyCPGState extends State<MyCPG> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C fputc() & fgetc()'),
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
                'Writing File : fputc() function\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The fputc() function is used to write a single character into file. It outputs a character to a stream.

Syntax: int fputc(int c, FILE *stream)\n'''
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
   fp = fopen("file1.txt", "w");//opening file  
   fputc('a',fp);//writing single character into file  
   fclose(fp);//closing file  
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
              child: const Text("""Output: file1.txt
a"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Reading File : fgetc() function\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The fgetc() function returns a single character from the file. It gets a character from the stream. It returns EOF at the end of file.

Syntax: int fgetc(FILE *stream)  \n'''
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
char c;  
clrscr();  
fp=fopen("myfile.txt","r");  
  
while((c=fgetc(fp))!=EOF){  
printf("%c",c);  
}  
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
              child: const Text("""Output: myfile.txt
this is simple text message"""),
            ),
          ],
        ),
      ),
    );
  }
}
