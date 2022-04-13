import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStringCopy extends StatelessWidget {
  const CStringCopy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStringCopy(),
    );
  }
}

class MyCStringCopy extends StatefulWidget {
  const MyCStringCopy({Key? key}) : super(key: key);

  @override
  _MyCStringCopyState createState() => _MyCStringCopyState();
}

class _MyCStringCopyState extends State<MyCStringCopy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String Copy'),
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
            const Text("The strcpy(destination, source) function copies the source string in destination.\n"
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
#include <string.h>    
int main(){    
  char ch[10]={'h', 'e', 'l', 'l', 'o', '\\0'};    
  char ch2[10];    
  strcpy(ch2,ch);    
  printf("Value of second string is: %s",ch2);    
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
Value of second string is: hello"""),
            ),
          ],
        ),
      ),
    );
  }
}

