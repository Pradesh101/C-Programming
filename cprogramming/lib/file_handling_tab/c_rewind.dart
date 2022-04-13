import 'package:flutter/material.dart';
import '../home_screen.dart';

class CR extends StatelessWidget {
  const CR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCR(),
    );
  }
}

class MyCR extends StatefulWidget {
  const MyCR({Key? key}) : super(key: key);

  @override
  _MyCRState createState() => _MyCRState();
}

class _MyCRState extends State<MyCR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C rewind()'),
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
            const Text('''The rewind() function sets the file pointer at the beginning of the stream. It is useful if you have to use stream many times.

Syntax: void rewind(FILE *stream)  

Example:

File: file.txt
this is a simple text
  
File: rewind.c\n'''
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
fp=fopen("file.txt","r");  
  
while((c=fgetc(fp))!=EOF){  
printf("%c",c);  
}  
  
rewind(fp);//moves the file pointer at beginning of the file  
printf("\\n");
  
while((c=fgetc(fp))!=EOF){  
printf("%c",c);  
}  
  
fclose(fp);    
getch();    
}   """),
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
this is a simple text
this is a simple text"""),
            ),
            const Text('''As you can see, rewind() function moves the file pointer at beginning of the file that is why "this is simple text" is printed 2 times. If you don't call rewind() function, "this is simple text" will be printed only once.\n'''
            ,textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}

