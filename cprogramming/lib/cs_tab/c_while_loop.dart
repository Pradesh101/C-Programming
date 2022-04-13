import 'package:flutter/material.dart';
import '../home_screen.dart';

class Cwhileloop extends StatelessWidget {
  const Cwhileloop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCwhileloop(),
    );
  }
}

class MyCwhileloop extends StatefulWidget {
  const MyCwhileloop({Key? key}) : super(key: key);

  @override
  _MyCwhileloopState createState() => _MyCwhileloopState();
}

class _MyCwhileloopState extends State<MyCwhileloop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C while loop'),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => const HomeScreen()));
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          children: [
            const Text(
              '''While loop is also known as a pre-tested loop. In general, a while loop allows a part of the code to be executed multiple times depending upon a given boolean condition. It can be viewed as a repeating if statement. The while loop is mostly used in the case where the number of iterations is not known in advance.

The syntax of while loop in c language is given below:

while(condition){  
//code to be executed  
} 
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Program to print table for the given number using while loop in C\n',
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
int main(){    
int i=1,number=0,b=9;    
printf("Enter a number: ");    
scanf("%d",&number);    
while(i<=10){    
printf("%d \n",(number*i));    
i++;    
}    
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
              child: const Text("""Output: Enter a number: 50
50
100
150
200
250
300
350
400
450
500"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Properties of while loop\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1. A conditional expression is used to check the condition. The statements defined inside the while loop will repeatedly execute until the given condition fails.

2. The condition will be true if it returns 0. The condition will be false if it returns any non-zero number.

3. In while loop, the condition expression is compulsory.

4. Running a while loop without a body is possible.

5. We can have more than one conditional expression in while loop.

6. If the loop body contains only one statement, then the braces are optional.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 1\n',
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
void main ()  
{  
    int j = 1;  
    while(j+=2,j<=10)  
    {  
        printf("%d ",j);   
    }  
    printf("%d",j);  
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
              child: const Text("""Output: 3 5 7 9 11"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2\n',
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
void main ()  
{  
    while()  
    {  
        printf("Hello Programmer");   
    }  
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
              child: const Text(
                  """Output: compile time error: while loop can't be empty	"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 3\n',
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
void main ()  
{  
    int x = 10, y = 2;  
    while(x+y-1)  
    {  
        printf("%d %d",x--,y--);  
    }  
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
              child: const Text("""Output: infinite loop"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Infinite while loop in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''If the expression passed in while loop results in any non-zero value then the loop will run the infinite number of times.

while(1){  
//statement  
}
''',
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
