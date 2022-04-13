import 'package:flutter/material.dart';
import '../home_screen.dart';

class PFSF extends StatelessWidget {
  const PFSF({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: const MyPFSF(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyPFSF extends StatefulWidget {
  const MyPFSF({Key? key}) : super(key: key);

  @override
  _MyPFSFState createState() => _MyPFSFState();
}

class _MyPFSFState extends State<MyPFSF> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
        title: const Text('printf() & scanf()'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              "The printf() and scanf() functions are used for input and output in C language. "
              "Both functions are inbuilt library functions, defined in stdio.h (header file)."
              "",
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 10,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "printf() function",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '''The printf() function is used for output. It prints the given statement to the console."
            
The syntax of printf() function is given below:

printf("format string",argument_list);

The format string can be %d (integer), %c (character), %s (string), %f (float) etc.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "scanf() function",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '''The scanf() function is used for input. It reads the input data from the console.

scanf("format string",argument_list);  
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Program to print cube of given number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '''Let's see a simple example of c language that gets input from the user and prints the cube of the given number.);  
''',
              textAlign: TextAlign.justify,
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
int number;    
printf("enter a number:");    
scanf("%d",&number);    
printf("cube of number is:%d ",number*number*number);    
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
              child: const Text("""Output: enter a number:5
cube of number is:125"""),
            ),
            const Text(
              '''The scanf("%d",&number) statement reads integer number from the console and stores the given value in number variable.
              
The printf("cube of number is: %d",number*number*number) statement prints the cube of number on the console. 
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
                alignment: Alignment.topLeft,
                child: Text(
                  "Program to print sum of 2 number",
                  style: TextStyle(fontWeight: FontWeight.bold),
                )),
            const SizedBox(
              height: 10,
            ),
            const Text(
              '''Let's see a simple example of input and output in C language that prints addition of 2 numbers.  
''',
              textAlign: TextAlign.justify,
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
int x=0,y=0,result=0;  
  
printf("enter first number:");  
scanf("%d",&x);  
printf("enter second number:");  
scanf("%d",&y);  
  
result=x+y;  
printf("sum of 2 numbers:%d ",result);  
  
return 0;  
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
              child: const Text("""Output: enter first number:9
enter second number:9
sum of 2 numbers:18"""),
            ),
          ],
        ),
      ),
    );
  }
}
