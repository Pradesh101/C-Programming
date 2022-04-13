import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStr extends StatelessWidget {
  const CStr({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStr(),
    );
  }
}

class MyCStr extends StatefulWidget {
  const MyCStr({Key? key}) : super(key: key);

  @override
  _MyCStrState createState() => _MyCStrState();
}

class _MyCStrState extends State<MyCStr> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String strstr()'),
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
            const Text('''The strstr() function returns pointer to the first occurrence of the matched string in the given string. It is used to return substring from first match till the last character.

Syntax:char *strstr(const char *string, const char *match)  

String strstr() parameters

string: It represents the full string from where substring will be searched.

match: It represents the substring to be searched in the full string.

String strstr() example\n'''
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
  char str[100]="I love C and java";    
  char *sub;    
  sub=strstr(str,"love");    
  printf("\\nSubstring is: %s",sub);    
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
              child: const Text("""Output: love C and java"""),
            ),
          ],
        ),
      ),
    );
  }
}




