import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStringLower extends StatelessWidget {
  const CStringLower({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStringLower(),
    );
  }
}

class MyCStringLower extends StatefulWidget {
  const MyCStringLower({Key? key}) : super(key: key);

  @override
  _MyCStringLowerState createState() => _MyCStringLowerState();
}

class _MyCStringLowerState extends State<MyCStringLower> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String Lower'),
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
            const Text('''The strlwr(string) function returns string characters in lowercase. Let's see a simple example of strlwr() function.\n'''
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
  char str[20];    
  printf("Enter string: ");    
  gets(str);//reads string from console    
  printf("String is: %s",str);    
  printf("\\nLower String is: %s",strlwr(str));    
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
Enter string: HELLO
String is: HELLO
Lower String is: hello"""),
            ),
          ],
        ),
      ),
    );
  }
}



