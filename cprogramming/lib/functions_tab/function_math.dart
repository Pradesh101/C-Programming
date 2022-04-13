import 'package:flutter/material.dart';
import '../home_screen.dart';

class MathFunction extends StatelessWidget {
  const MathFunction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyMathFunction(),
    );
  }
}

class MyMathFunction extends StatefulWidget {
  const MyMathFunction({Key? key}) : super(key: key);

  @override
  _MyMathFunctionState createState() => _MyMathFunctionState();
}

class _MyMathFunctionState extends State<MyMathFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Math Functions'),
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
            const Text(
              '''C Programming allows us to perform mathematical operations through the functions defined in <math.h> header file. The <math.h> header file contains various methods for performing mathematical operations such as sqrt(), pow(), ceil(), floor() etc.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Math Functions\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''ceil(number): rounds up the given number. It returns the integer value which is greater than or equal to given number.
   
floor(number): rounds down the given number. It returns the integer value which is less than or equal to given number.
    
sqrt(number): returns the square root of given number.
   
pow(base, exponent): returns the power of given number.
   
abs(number): returns the absolute value of given number.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Math Example\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
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
#include <math.h>    
int main(){    
printf("\\n%f",ceil(3.6));    
printf("\\n%f",ceil(3.3));    
printf("\\n%f",floor(3.6));    
printf("\\n%f",floor(3.2));    
printf("\\n%f",sqrt(16));    
printf("\\n%f",sqrt(7));    
printf("\\n%f",pow(2,4));    
printf("\\n%f",pow(3,3));    
printf("\\n%d",abs(-12));     
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
              child: const Text("""Output: 
4.000000
4.000000
3.000000
3.000000
4.000000
2.645751
16.000000
27.000000
12"""),
            ),
          ],
        ),
      ),
    );
  }
}
