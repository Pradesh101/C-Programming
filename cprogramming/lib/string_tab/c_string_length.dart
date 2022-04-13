import 'package:flutter/material.dart';
import '../home_screen.dart';

class CStringLength extends StatelessWidget {
  const CStringLength({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCStringLength(),
    );
  }
}

class MyCStringLength extends StatefulWidget {
  const MyCStringLength({Key? key}) : super(key: key);

  @override
  _MyCStringLengthState createState() => _MyCStringLengthState();
}

class _MyCStringLengthState extends State<MyCStringLength> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C String Length'),
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
            const Text("The strlen() function returns the length of the given string. It doesn't count null character '\\0'.\n"
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
   printf("Length of string is: %d",strlen(ch));    
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
              child: const Text("""Output: Length of string is: 5"""),
            ),
          ],
        ),
      ),
    );
  }
}
