import 'package:flutter/material.dart';
import '../home_screen.dart';

class CInfiniteloops extends StatelessWidget {
  const CInfiniteloops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCInfiniteloops(),
    );
  }
}

class MyCInfiniteloops extends StatefulWidget {
  const MyCInfiniteloops({Key? key}) : super(key: key);

  @override
  _MyCInfiniteloopsState createState() => _MyCInfiniteloopsState();
}

class _MyCInfiniteloopsState extends State<MyCInfiniteloops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Infinite loops in C'),
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
              '''An infinite loop is a looping construct that does not terminate the loop and executes the loop forever. It is also called an indefinite loop or an endless loop. It either produces a continuous output or no output.
            ''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'When to use an infinite loop\n',
                textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text("""An infinite loop is useful for those applications that accept the user input and generate the output continuously until the user exits from the application manually. In the following situations, this type of loop can be used:

1. All the operating systems run in an infinite loop as it does not exist after performing some task. It comes out of an infinite loop only when the user manually shuts down the system.

2. All the servers run in an infinite loop as the server responds to all the client requests. It comes out of an indefinite loop only when the administrator shuts down the server manually.

3. All the games also run in an infinite loop. The game will accept the user requests until the user exits from the game.

We can create an infinite loop through various loop structures. The following are the loop structures through which we will define the infinite loop:

1. for loop
2. while loop
3. do-while loop
4. go to statement
5. C macros
""",
              textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'For loop\n',
                textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Let's see the infinite 'for' loop. The following is the definition for the infinite for loop:
            
for(; ;)  
{  
    // body of the for loop.  
}  

As we know that all the parts of the 'for' loop are optional, and in the above for loop, we have not mentioned any condition; so, this loop will execute infinite times.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Let's understand through an example.\n",
                textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
   for(;;)  
   {  
     printf("Hello C");  
   }  
return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code, we run the 'for' loop infinite times, so "Hello C" will be displayed infinitely.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "while loop\n",
                textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Now, we will see how to create an infinite loop using a while loop. The following is the definition for the infinite while loop:

while(1)  
{  
   // body of the loop..  
}  
In the above while loop, we put '1' inside the loop condition. As we know that any non-zero integer represents the true condition while '0' represents the false condition.

Let's look at a simple example.
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
  int i=0;  
  while(1)  
  {  
      i++;   
      printf("i is :%d",i);  
  }  
return 0;  
} """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code, we have defined a while loop, which runs infinite times as it does not contain any condition. The value of 'i' will be updated an infinite number of times.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "do while loop\n",
                textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The do..while loop can also be used to create the infinite loop. The following is the syntax to create the infinite do..while loop.

do  
{  
    // body of the loop..  
}while(1);  
The above do..while loop represents the infinite condition as we provide the '1' value inside the loop condition. As we already know that non-zero integer represents the true condition, so this loop will run infinite times.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "goto statement\n",
                textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We can also use the goto statement to define the infinite loop.

infinite_loop;  
// body statements.  
goto infinite_loop; 
 
In the above code, the goto statement transfers the control to the infinite loop.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Macros\n",
                textAlign: TextAlign.justify, style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We can also create the infinite loop with the help of a macro constant. Let's understand through an example.

#include <stdio.h>  
#define infinite for(;;)  
int main()  
{  
   
  infinite  
  {  
      printf("hello");  
  }  
  
    return 0;  
}
  
In the above code, we have defined a macro named as 'infinite', and its value is 'for(;;)'. Whenever the word 'infinite' comes in a program then it will be replaced with a 'for(;;)'.

Till now, we have seen various ways to define an infinite loop. However, we need some approach to come out of the infinite loop. In order to come out of the infinite loop, we can use the break statement.
''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
