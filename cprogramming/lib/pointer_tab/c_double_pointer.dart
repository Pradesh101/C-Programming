import 'package:flutter/material.dart';
import '../home_screen.dart';

class DoublePointer extends StatelessWidget {
  const DoublePointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyDoublePointer(),
    );
  }
}

class MyDoublePointer extends StatefulWidget {
  const MyDoublePointer({Key? key}) : super(key: key);

  @override
  _MyDoublePointerState createState() => _MyDoublePointerState();
}

class _MyDoublePointerState extends State<MyDoublePointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Double Pointers'),
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
              '''As we know that, a pointer is used to store the address of a variable in C. Pointer reduces the access time of a variable. However, In C, we can also define a pointer to store the address of another pointer. Such pointer is known as a double pointer (pointer to pointer). The first pointer is used to store the address of a variable whereas the second pointer is used to store the address of the first pointer. Let's understand it by the diagram given below.

The syntax of declaring a double pointer is given below.

int **p; // pointer to a pointer which is pointing to an integer.   

Consider the following example.\n''',
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
void main ()  
{  
    int a = 10;  
    int *p;  
    int **pp;   
    p = &a; // pointer p is pointing to the address of a  
    pp = &p; // pointer pp is a double pointer pointing to the address of pointer p  
    printf("address of a: %x\\n",p); // Address of a will be printed   
    printf("address of p: %x\\n",pp); // Address of p will be printed  
    printf("value stored at p: %d\\n",*p); // value stored at the address contained by p i.e. 10 will be printed  
    printf("value stored at pp: %d\\n",**pp); // value stored at the address contained by the pointer stored at pp  
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
              child: const Text("""Output: 
address of a: d26a8734
address of p: d26a8738
value stored at p: 10
value stored at pp: 10"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C double pointer example\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Let's see an example where one pointer points to the address of another pointer.\n''',
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
int number=50;      
int *p;//pointer to int    
int **p2;//pointer to pointer        
p=&number;//stores the address of number variable      
p2=&p;    
printf("Address of number variable is %x \\n",&number);      
printf("Address of p variable is %x \\n",p);      
printf("Value of *p variable is %d \\n",*p);      
printf("Address of p2 variable is %x \\n",p2);      
printf("Value of **p2 variable is %d \\n",*p);      
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
Address of number variable is fff4
Address of p variable is fff4
Value of *p variable is 50
Address of p2 variable is fff2
Value of **p variable is 50"""),
            ),
          ],
        ),
      ),
    );
  }
}
