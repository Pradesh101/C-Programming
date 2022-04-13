import 'package:flutter/material.dart';
import '../home_screen.dart';

class Cdowhileloop extends StatelessWidget {
  const Cdowhileloop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCdowhileloop(),
    );
  }
}

class MyCdowhileloop extends StatefulWidget {
  const MyCdowhileloop({Key? key}) : super(key: key);

  @override
  _MyCdowhileloopState createState() => _MyCdowhileloopState();
}

class _MyCdowhileloopState extends State<MyCdowhileloop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C do-while loop'),
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
              'The do while loop is a post tested loop. Using the do-while loop, '
              'we can repeat the execution of several parts of the statements. '
              'The do-while loop is mainly used in the case where we need to execute '
              'the loop at least once. The do-while loop is mostly used in menu-driven '
              'programs where the termination condition depends upon the end user.'
              'The syntax of the C language do-while loop is given below:\n\n'
              'do{\n'
              '//code to be executed\n'
              '}while(condition);\n\n'
              'There is given the simple program of c language do while loop where we are printing the table of 1.\n',
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
int i=1;      
do{    
printf("%d \n",i);    
i++;    
}while(i<=10);   
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
              child: const Text("""Output:1
2
3
4
5
6
7
8
9
10"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Program to print table for the given number using do while loop\n',
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
int i=1,number=0;    
printf("Enter a number: ");    
scanf("%d",&number);    
do{    
printf("%d \n",(number*i));    
i++;    
}while(i<=10);    
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
              child: const Text("""Output:Enter a number: 5
5
10
15
20
25
30
35
40
45
50"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Infinitive do while loop\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The do-while loop will run infinite times if we pass any non-zero value as the conditional expression.
            
do{ 
//statement  
}while(1);
''',
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
