import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStringCompare extends StatelessWidget {
  const CStringCompare({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStringCompare(),
    );
  }
}

class MyCStringCompare extends StatefulWidget {
  const MyCStringCompare({Key? key}) : super(key: key);

  @override
  _MyCStringCompareState createState() => _MyCStringCompareState();
}

class _MyCStringCompareState extends State<MyCStringCompare> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String Compare'),
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
            const Text('''The strcmp(first_string, second_string) function compares two string and returns 0 if both strings are equal.

Here, we are using gets() function which reads string from the console.\n'''
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
  char str1[20],str2[20];    
  printf("Enter 1st string: ");    
  gets(str1);//reads string from console    
  printf("Enter 2nd string: ");    
  gets(str2);    
  if(strcmp(str1,str2)==0)    
      printf("Strings are equal");    
  else    
      printf("Strings are not equal");    
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
Enter 1st string: hello
Enter 2nd string: hello
Strings are equal"""),
            ),
          ],
        ),
      ),
    );
  }
}


