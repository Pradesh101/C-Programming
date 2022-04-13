import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class CLoops extends StatelessWidget {
  const CLoops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCLoops(),
    );
  }
}

class MyCLoops extends StatefulWidget {
  const MyCLoops({Key? key}) : super(key: key);

  @override
  _MyCLoopsState createState() => _MyCLoopsState();
}

class _MyCLoopsState extends State<MyCLoops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Loops'),
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
          children: const [
            Text(
              'The looping can be defined as repeating the same process multiple times until'
              ' a specific condition satisfies. There are three types of loops used in the C language. '
              'In this part of the tutorial, we are going to learn all the aspects of C loops.\n',
              textAlign: TextAlign.justify,
            ),
            // const SizedBox(
            //   height: 15,
            // ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Why loops used in C language?\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              'The looping simplifies the complex problems into the easy ones. It enables us to alter the flow of the program so that instead of writing the same code again and again, we can repeat the same code for a finite number of times. For example, if we need to print the first 10 natural numbers then, instead of using the printf statement 10 times, we can print inside a loop which runs up to 10 iterations.\n',
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Advantages of loops in C\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '''1) It provides code reusability.

2) Using loops, we do not need to write the same code again and again.

3) Using loops, we can traverse over the elements of data structures (array or linked lists).
''',
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'do-while loop in C\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '''The do-while loop continues until a given condition satisfies. It is also called post tested loop. It is used when it is necessary to execute the loop at least once (mostly menu driven programs).

The syntax of do-while loop in c language
is given below:

do{  
//code to be executed  
}while(condition);
''',
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'while loop in C\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '''The while loop in c is to be used in the scenario where we don't know the number of iterations in advance. The block of statements is executed in the while loop until the condition specified in the while loop is satisfied. It is also called a pre-tested loop.

The syntax of while loop in c language is given below:

while(condition){  
//code to be executed  
}
''',
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'for loop in C\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
                '''The for loop is used in the case where we need to execute some part of the code until the given condition is satisfied. The for loop is also called as a per-tested loop. It is better to use for loop if the number of iteration is known in advance.

The syntax of for loop in c language is given below:

for(initialization;condition;incr/decr){  
//code to be executed  
} 
''')
          ],
        ),
      ),
    );
  }
}
