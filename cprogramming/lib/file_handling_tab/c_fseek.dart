import 'package:flutter/material.dart';
import '../home_screen.dart';

class CF extends StatelessWidget {
  const CF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCF(),
    );
  }
}

class MyCF extends StatefulWidget {
  const MyCF({Key? key}) : super(key: key);

  @override
  _MyCFState createState() => _MyCFState();
}

class _MyCFState extends State<MyCF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C fseek()'),
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
            const Text('''The fseek() function is used to set the file pointer to the specified offset. It is used to write data into file at desired location.

Syntax: int fseek(FILE *stream, long int offset, int whence)  

There are 3 constants used in the fseek() function for whence: SEEK_SET, SEEK_CUR and SEEK_END.

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
              child: const Text("""#include <stdio.h>  
void main(){  
   FILE *fp;  
  
   fp = fopen("myfile.txt","w+");  
   fputs("This is javatpoint", fp);      
   fseek( fp, 7, SEEK_SET );  
   fputs("sonoo jaiswal", fp);  
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
              child: const Text("""Output: This is sonoo jaiswal"""),
            ),
          ],
        ),
      ),
    );
  }
}
