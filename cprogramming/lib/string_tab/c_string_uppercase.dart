import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStringUpper extends StatelessWidget {
  const CStringUpper({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStringUpper(),
    );
  }
}

class MyCStringUpper extends StatefulWidget {
  const MyCStringUpper({Key? key}) : super(key: key);

  @override
  _MyCStringUpperState createState() => _MyCStringUpperState();
}

class _MyCStringUpperState extends State<MyCStringUpper> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String Upper'),
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
            const Text('''The strupr(string) function returns string characters in uppercase. Let's see a simple example of strupr() function.\n'''
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
  printf("\\nUpper String is: %s",strupr(str));    
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
Enter string: hello
String is: hello
Upper String is: HELLO"""),
            ),
          ],
        ),
      ),
    );
  }
}




