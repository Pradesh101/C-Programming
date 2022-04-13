import 'package:flutter/material.dart';
import '../home_screen.dart';

class CBreak extends StatelessWidget {
  const CBreak({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCBreak(),
    );
  }
}

class MyCBreak extends StatefulWidget {
  const MyCBreak({Key? key}) : super(key: key);

  @override
  _MyCBreakState createState() => _MyCBreakState();
}

class _MyCBreakState extends State<MyCBreak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C break'),
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
              '''The break is a keyword in C which is used to bring the program control out of the loop. The break statement is used inside loops or switch statement. The break statement breaks the loop one by one, i.e., in the case of nested loops, it breaks the inner loop first and then proceeds to outer loops. The break statement in C can be used in the following two scenarios:

  1. With switch case
  2. With loop
  
Syntax:
//loop or switch case   
break;
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example\n',
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
#include<stdlib.h>  
void main ()  
{  
    int i;  
    for(i = 0; i<10; i++)  
    {  
        printf("%d ",i);  
        if(i == 5)  
        break;  
    }  
    printf("came outside of loop i = %d",i);     
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
                  """Output:0 1 2 3 4 5 came outside of loop i = 5"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C break statement with the nested loop\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''In such case, it breaks only the inner loop, but not outer loop.\n''',
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
int i=1,j=1;//initializing a local variable    
for(i=1;i<=3;i++){      
for(j=1;j<=3;j++){    
printf("%d &d\\n",i,j);    
if(i==2 && j==2){    
break;//will break loop of j only    
}    
}//end of for loop    
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
              child: const Text("""Output: 1 1
1 2
1 3
2 1
2 2
3 1
3 2
3 3"""),
            ),
            const Text(
              '''As you can see the output on the console, 2 3 is not printed because there is a break statement after printing i==2 and j==2. But 3 1, 3 2 and 3 3 are printed because the break statement is used to break the inner loop only.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'break statement with while loop\n',
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
    int i = 0;  
    while(1)  
    {  
        printf("%d  ",i);  
        i++;  
        if(i == 10)  
        break;   
    }  
    printf("came out of while loop");  
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
                  """Output: 0  1  2  3  4  5  6  7  8  9  came out of while loop"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'break statement with d0-while loop\n',
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
   int n=2,i,choice;  
   do  
   {  
       i=1;  
       while(i<=10)  
       {  
           printf("%d X %d = %d\\n",n,i,n*i);  
           i++;  
       }  
       printf("do you want to continue with the table of %d , enter any non-zero value to continue.",n+1);  
       scanf("%d",&choice);  
    if(choice == 0)  
       {  
           break;  
       }  
       n++;  
   }while(1);  
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
2 X 1 = 2
2 X 2 = 4
2 X 3 = 6
2 X 4 = 8
2 X 5 = 10
2 X 6 = 12
2 X 7 = 14
2 X 8 = 16
2 X 9 = 18
2 X 10 = 20
do you want to continue with the table of 3 , enter any non-zero value to continue.1
3 X 1 = 3
3 X 2 = 6
3 X 3 = 9
3 X 4 = 12
3 X 5 = 15
3 X 6 = 18
3 X 7 = 21
3 X 8 = 24
3 X 9 = 27
3 X 10 = 30
do you want to continue with the table of 4 , enter any non-zero value to continue.0
"""),
            ),
          ],
        ),
      ),
    );
  }
}
