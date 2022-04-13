import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class CComments extends StatelessWidget {
  const CComments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCComments(),
    );
  }
}

class MyCComments extends StatefulWidget {
  const MyCComments({Key? key}) : super(key: key);

  @override
  _MyCCommentsState createState() => _MyCCommentsState();
}

class _MyCCommentsState extends State<MyCComments> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Comments'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
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
            const Text(
              '''Comments in C language are used to provide information about lines of code. It is widely used for documenting code. 
            
There are 2 types of comments in the C language.

1. Single Line Comments
2. Multi-Line Comments
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Single Line Comments',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''Single line comments are represented by double slash (//). Let's see an example of a single line comment in C.''',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>    
int main(){    
    //printing information    
    printf("Hello C");    
return 0;  
} """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Hello C"""),
            ),
            const Text(
              '''Even you can place the comment after the statement. For example: 
              
printf("Hello C"); //printing information  ''',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Multiple Line Comments',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''Multi-Line comments are represented by slash asterisk /* ... */. It can occupy many lines of code, but it can't be nested. Syntax:''',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""/*  
code 
to be commented 
*/ """),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Let's see an example of a multi-Line comment in C.",
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>    
int main(){    
    /*printing information   
      Multi-Line Comment*/  
    printf("Hello C");    
return 0;  
} """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Hello C"""),
            ),
          ],
        ),
      ),
    );
  }
}
