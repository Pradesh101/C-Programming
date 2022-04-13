import 'package:flutter/material.dart';
import '../home_screen.dart';

class CContinue extends StatelessWidget {
  const CContinue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCContinue(),
    );
  }
}

class MyCContinue extends StatefulWidget {
  const MyCContinue({Key? key}) : super(key: key);

  @override
  _MyCContinueState createState() => _MyCContinueState();
}

class _MyCContinueState extends State<MyCContinue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Continue'),
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
              '''The continue statement in C language is used to bring the program control to the beginning of the loop. The continue statement skips some lines of code inside the loop and continues with the next iteration. It is mainly used for a condition so that we can skip some code for a particular condition.

Syntax:
//loop statements  
continue;  
//some lines of the code which is to be skipped ''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 1\n',
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
    while(i!=10)  
    {  
        printf("%d", i);   
        continue;   
        i++;  
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
                'Example 2\n',
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
int i=1;//initializing a local variable       
//starting a loop from 1 to 10    
for(i=1;i<=10;i++){      
if(i==5){//if value of i is equal to 5, it will continue the loop    
continue;    
}    
printf("%d \n",i);    
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
              child: const Text("""Output: 
1
2
3
4
6
7
8
9
10"""),
            ),
            const Text(
              '''As you can see, 5 is not printed on the console because loop is continued at i==5.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C continue statement with inner loop\n',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''In such case, C continue statement continues only inner loop, but not outer loop.\n''',
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
if(i==2 && j==2){    
continue;//will continue loop of j only    
}    
printf("%d %d\n",i,j);    
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
              child: const Text("""Output: 
1 1
1 2
1 3
2 1
2 3
3 1
3 2
3 3"""),
            ),
            const Text(
              '''As you can see, 2 2 is not printed on the console because inner loop is continued at i==2 and j==2.\n''',
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}
