import 'package:flutter/material.dart';

import '../home_screen.dart';

class CSwitch extends StatelessWidget {
  const CSwitch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCSwitch(),
    );
  }
}

class MyCSwitch extends StatefulWidget {
  const MyCSwitch({Key? key}) : super(key: key);

  @override
  _MyCSwitchState createState() => _MyCSwitchState();
}

class _MyCSwitchState extends State<MyCSwitch> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C if-else'),
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
              '''The switch statement in C is an alternate to if-else-if ladder statement which allows us to execute multiple operations for the different possibles values of a single variable called switch variable. Here, We can define various statements in the multiple cases for the different values of a single variable.

The syntax of switch statement in c language is given below:

switch(expression){    
case value1:    
 //code to be executed;    
 break;  //optional  
case value2:    
 //code to be executed;    
 break;  //optional  
......    
    
default:     
 code to be executed if all cases are not matched;    
}    
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Rules for switch statement in C language\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1) The switch expression must be of an integer or character type.
            
2) The case value must be an integer or character constant.  

3) The case value can be used only inside the switch statement.

4) The break statement in switch case is not must. It is optional. If there is no break statement found in the case, all the cases will be executed present after the matched case. It is known as fall through the state of C switch statement.

Let's try to understand it by the examples. We are assuming that there are following variables.

int x,y,z;  
char a,b;  
float f; 
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Functioning of switch case statement\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''First, the integer expression specified in the switch statement is evaluated. This value is then matched one by one with the constant values given in the different cases. If a match is found, then all the statements specified in that case are executed along with the all the cases present after that case including the default statement. No two cases can have similar values. If the matched case contains a break statement, then all the cases present after that will be skipped, and the control comes out of the switch. Otherwise, all the cases following the matched case will be executed.

Let's see a simple example of c language switch statement.
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
int number=0;     
printf("enter a number:");    
scanf("%d",&number);    
switch(number){    
case 10:    
printf("number is equals to 10");    
break;    
case 50:    
printf("number is equal to 50");    
break;    
case 100:    
printf("number is equal to 100");    
break;    
default:    
printf("number is not equal to 10, 50 or 100");    
}    
return 0;  
}  """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: enter a number:4
number is not equal to 10, 50 or 100"""),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: enter a number:50
number is equal to 50"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Switch Case Example 2\n',
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
    int x = 10, y = 5;   
    switch(x>y && x+y>0)  
    {  
        case 1:   
        printf("hi");  
        break;   
        case 0:   
        printf("bye");  
        break;  
        default:   
        printf(" Hello bye ");  
    }   
          
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
              child: const Text("""Output: hi"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Switch statement is fall-through\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''In C language, the switch statement is fall through; it means if you don't use a break statement in the switch case, all the cases after the matching case will be executed.
            
Let's try to understand the fall through state of switch statement by the example given below.
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
int number=0;    
  
printf("enter a number:");  
scanf("%d",&number);  
  
switch(number){  
case 10:  
printf("number is equal to 10\n");  
case 50:  
printf("number is equal to 50\n");  
case 100:  
printf("number is equal to 100\n");  
default:  
printf("number is not equal to 10, 50 or 100");  
}  
return 0;  
}"""),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 10),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: enter a number:10
number is equal to 10
number is equal to 50
number is equal to 100
number is not equal to 10, 50 or 100"""),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: enter a number:50
number is equal to 50
number is equal to 100
number is not equal to 10, 50 or 100"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Nested switch case statement\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''We can use as many switch statement as we want inside a switch statement. Such type of statements is called nested switch case statements. Consider the following example.
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
int main () {  
  
int i = 10;  
int j = 20;  
   
switch(i) {  
 case 10:   
   printf("the value of i evaluated in outer switch: %d",i);  
    case 20:  
     switch(j) {  
      case 20:  
       printf("The value of j evaluated in nested switch: %d",j);  
     }  
   }   
   printf("Exact value of i is : %d", i );  
   printf("Exact value of j is : %d", j );  
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
              child: const Text(
                  """Output: the value of i evaluated in outer switch: 10
The value of j evaluated in nested switch: 20
Exact value of i is : 10
Exact value of j is : 20 """),
            ),
          ],
        ),
      ),
    );
  }
}
