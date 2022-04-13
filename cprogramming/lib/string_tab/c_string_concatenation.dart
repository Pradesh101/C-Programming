import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStringConcat extends StatelessWidget {
  const CStringConcat({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStringConcat(),
    );
  }
}

class MyCStringConcat extends StatefulWidget {
  const MyCStringConcat({Key? key}) : super(key: key);

  @override
  _MyCStringConcatState createState() => _MyCStringConcatState();
}

class _MyCStringConcatState extends State<MyCStringConcat> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String Concatenation'),
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
            const Text("The strcat(first_string, second_string) function concatenates two strings and result is returned to first_string.\n"
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
   char ch2[10]={'c', '\\0'};    
   strcat(ch,ch2);    
   printf("Value of first string is: %s",ch);    
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
              child: const Text("""Output: Value of first string is: helloc"""),
            ),
          ],
        ),
      ),
    );
  }
}

