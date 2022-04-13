import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class FirstCProgram extends StatelessWidget {
  const FirstCProgram({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const MyFCP(),
    );
  }
}

class MyFCP extends StatelessWidget {
  const MyFCP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //primary: false,
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
        //centerTitle: true,
        title: const Text('First C Program'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(left: 10, top: 10, right: 10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Text(
              """Before starting the abcd of C language, you need to learn how to write, compile and run the first c program.

To write the first c program, open the C console and write the following code:
""",
              style: TextStyle(
                  //fontSize: 15,
                  ),
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
int main(){    
printf("Hello C Language");    
return 0;   
}  """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Hello C Language """),
            ),
            const Text(
              """#include <stdio.h> includes the standard input output library functions. The printf() function is defined in stdio.h .

int main(): The main() function is the entry point of every program in c language.

printf(): The printf() function is used to print data on the console.

return 0: The return 0 statement, returns execution status to the OS. The 0 value is used for successful execution and 1 for unsuccessful execution
""",
              style: TextStyle(
                  //fontSize: 15,
                  ),
              textAlign: TextAlign.justify,
            ),
            const Text(
              """How to compile and run the C Program?
              
There are 2 ways to compile and run the c program, by menu and by shortcut.

By menu:

Now click on the compile menu then compile sub menu to compile the c program.

Then click on the run menu then run sub menu to run the c program.

By shortcut (In turbo C++):

Or, press ctrl+f9 keys compile and run the program directly.

You will see the above output on user screen

You can view the user screen any time by pressing the alt+f5 keys.

Now press Esc to return to the turbo c++ console.
""",
              style: TextStyle(
                  //fontWeight: FontWeight.bold
                  ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
