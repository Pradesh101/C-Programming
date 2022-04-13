import 'package:flutter/material.dart';

import '../home_screen.dart';

class CNestedLoops extends StatelessWidget {
  const CNestedLoops({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCNestedLoops(),
    );
  }
}

class MyCNestedLoops extends StatefulWidget {
  const MyCNestedLoops({Key? key}) : super(key: key);

  @override
  _MyCNestedLoopsState createState() => _MyCNestedLoopsState();
}

class _MyCNestedLoopsState extends State<MyCNestedLoops> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Nested loops in C'),
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
              '''C supports nesting of loops in C. Nesting of loops is the feature in C that allows the looping of statements inside another loop. Let's observe an example of nesting loops in C.

Any number of loops can be defined inside another loop, i.e., there is no restriction for defining any number of loops. The nesting level can be defined at n times. You can define any type of loop inside another loop; for example, you can define 'while' loop inside a 'for' loop.
              
Syntax of Nested loop

Outer_loop
{
  Inner_loop
    {
      // inner loop statements.  
    }
  // outer loop statements.  
}

Outer_loop and Inner_loop are the valid loops that can be a 'for' loop, 'while' loop or 'do-while' loop.
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Nested for loop\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              """The nested for loop means any type of loop which is defined inside the 'for' loop.
            
for (initialization; condition; update)   
    {
      for(initialization; condition; update)
         {
            // inner loop statements.  
         }
     // outer loop statements.  
} 
""",
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example of nested for loop\n',
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
   int n;// variable declaration  
   printf("Enter the value of n :");  
   // Displaying the n tables.  
   for(int i=1;i<=n;i++)  // outer loop  
   {  
       for(int j=1;j<=10;j++)  // inner loop  
       {  
           printf("%d\\t",(i*j)); // printing the value.  
       }  
       printf("\\n");  
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
              child: const Text("""Output: Enter a value of n: 2
              
1   2   3   4   5   6   7   8   9   10

2   4   6   8   10  12  14  16  18  20
"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Nested while loop\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              """The nested while loop means any type of loop which is defined inside the 'while' loop.
            
while(condition)  
{  
    while(condition)  
    {  
         // inner loop statements.  
    }  
// outer loop statements.  
} 
""",
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example of nested while loop\n',
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
   int rows;  // variable declaration  
   int columns; // variable declaration  
   int k=1; // variable initialization  
   printf("Enter the number of rows :");  // input the number of rows.  
   scanf("%d",&rows);  
   printf("\\nEnter the number of columns :"); // input the number of columns.  
   scanf("%d",&columns);  
      int a[rows][columns]; //2d array declaration  
      int i=1;  
   while(i<=rows) // outer loop  
   {  
       int j=1;  
      while(j<=columns)  // inner loop  
       {  
           printf("%d\\t",k);  // printing the value of k.  
           k++;   // increment counter  
           j++;  
       }  
       i++;  
       printf("\\n");  
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
              child: const Text("""Output:
               
Enter the number of rows: 5
              
Enter the number of columns: 3
              
1   2   3   

4   5   6   

7   8   9   

10  11  12

13  14  15
"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Nested do-while loop\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              """The nested do while loop means any type of loop which is defined inside the 'do while' loop.
            
do  
{  
   do  
  {   
      // inner loop statements.  
   }while(condition);  
// outer loop statements.  
}while(condition);  
""",
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example of nested do while loop\n',
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
              child: const Text("""#include <stdio.h>  
int main()  
{  
  /*printing the pattern 
     ******** 
     ******** 
     ******** 
     ******** */  
int i=1;  
do           // outer loop  
{  
    int j=1;  
    do       // inner loop  
   {  
      printf("*");  
      j++;  
   }while(j<=8);  
    printf("\\n");  
    i++;  
     }while(i<=4);  
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
              child: const Text("""Output:            
******** 
******** 
******** 
********"""),
            ),
          ],
        ),
      ),
    );
  }
}
