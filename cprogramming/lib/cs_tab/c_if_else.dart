import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class CIfElse extends StatelessWidget {
  const CIfElse({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCIfElse(),
    );
  }
}

class MyCIfElse extends StatefulWidget {
  const MyCIfElse({Key? key}) : super(key: key);

  @override
  _MyCIfElseState createState() => _MyCIfElseState();
}

class _MyCIfElseState extends State<MyCIfElse> {
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
              '''The if-else statement in C is used to perform the operations based on some specific condition. The operations specified in if block are executed if and only if the given condition is true.

There are the following variants of if statement in C language.

 1. If statement \n 2. If-else statement \n 3. If else-if ladder \n 4. Nested if
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'If Statement\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The if statement is used to check some given condition and perform some operations depending upon the correctness of that condition. It is mostly used in the scenario where we need to perform the different operations for the different conditions. The syntax of the if statement is given below.

if(expression){  
//code to be executed  
} 

Let's see a simple example of C language if statement.
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
printf("Enter a number:");    
scanf("%d",&number);    
if(number%2==0){    
printf("%d is even number",number);    
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
              child: const Text("""Output: Enter a number:4
4 is even number
enter a number:5"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Program to find the largest number of the three.\n',
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
    int a, b, c;   
    printf("Enter three numbers:");  
    scanf("%d %d %d",&a,&b,&c);  
    if(a>b && a>c)  
    {  
        printf("%d is largest",a);  
    }  
    if(b>a  && b > c)  
    {  
        printf("%d is largest",b);  
    }  
    if(c>a && c>b)  
    {  
        printf("%d is largest",c);  
    }  
    if(a == b && a == c)   
    {  
        printf("All are equal");   
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
              child: const Text("""Output: Enter three numbers:
12 23 34
34 is largest """),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'If-else Statement\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The if-else statement is used to perform two operations for a single condition. The if-else statement is an extension to the if statement using which, we can perform two different operations, i.e., one is for the correctness of that condition, and the other is for the incorrectness of the condition. Here, we must notice that if and else block cannot be executed simiulteneously. Using if-else statement is always preferable since it always invokes an otherwise case with every if condition. The syntax of the if-else statement is given below.

if(expression){  
//code to be executed if condition is true  
}else{  
//code to be executed if condition is false  
}  

Let's see the simple example to check whether a number is even or odd using if-else statement in C language.
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
if(number%2==0){    
printf("%d is even number",number);    
}    
else{    
printf("%d is odd number",number);    
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
              child: const Text("""Output: enter a number:4
4 is even number
enter a number:5
5 is odd number"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Program to check whether a person is eligible to vote or not.\n',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
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
    int age;   
    printf("Enter your age:");   
    scanf("%d",&age);  
    if(age>=18)  
    {  
        printf("You are eligible to vote...");   
    }  
    else   
    {  
        printf("Sorry ... you can't vote");   
    }  
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
              child: const Text("""Output: Enter your age:18
You are eligible to vote...
Enter your age:13
Sorry ... you can't vote"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'If else-if ladder Statement\n',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
              ),
            ),
            const Text(
              '''The if-else-if ladder statement is an extension to the if-else statement. It is used in the scenario where there are multiple cases to be performed for different conditions. In if-else-if ladder statement, if a condition is true then the statements defined in the if block will be executed, otherwise if some other condition is true then the statements defined in the else-if block will be executed, at the last if none of the condition is true then the statements defined in the else block will be executed. There are multiple else-if blocks possible. It is similar to the switch case statement where the default is executed instead of else block if none of the cases is matched.

if(condition1){  
//code to be executed if condition1 is true  
}else if(condition2){  
//code to be executed if condition2 is true  
}  
else if(condition3){  
//code to be executed if condition3 is true  
}  
...  
else{  
//code to be executed if all the conditions are false  
}  

The example of an if-else-if statement in C language is given below.
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
if(number==10){    
printf("number is equals to 10");    
}    
else if(number==50){    
printf("number is equal to 50");    
}    
else if(number==100){    
printf("number is equal to 100");    
}    
else{    
printf("number is not equal to 10, 50 or 100");    
}    
return 0;  
}    """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: enter a number:4
number is not equal to 10, 50 or 100
enter a number:50
number is equal to 50"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Program to calculate the grade of the student according to the specified marks.\n',
                style: TextStyle(fontWeight: FontWeight.bold),
                textAlign: TextAlign.justify,
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
    int marks;   
    printf("Enter your marks:");  
    scanf("%d",&marks);   
    if(marks > 85 && marks <= 100)  
    {  
        printf("Congrats ! you scored grade A ...");   
    }  
    else if (marks > 60 && marks <= 85)   
    {  
        printf("You scored grade B + ...");  
    }  
    else if (marks > 40 && marks <= 60)   
    {  
        printf("You scored grade B ...");  
    }  
    else if (marks > 30 && marks <= 40)   
    {  
        printf("You scored grade C ...");   
    }  
    else   
    {  
        printf("Sorry you are fail ...");   
    }  
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
              child: const Text("""Output: Enter your marks:10
Sorry you are fail ...
Enter your marks?40
You scored grade C ...
Enter your marks?90
Congrats ! you scored grade A ..."""),
            ),
          ],
        ),
      ),
    );
  }
}
