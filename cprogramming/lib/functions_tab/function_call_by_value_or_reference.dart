import 'package:flutter/material.dart';
import '../home_screen.dart';

class CVCR extends StatelessWidget {
  const CVCR({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCVCR(),
    );
  }
}

class MyCVCR extends StatefulWidget {
  const MyCVCR({Key? key}) : super(key: key);

  @override
  _MyCVCRState createState() => _MyCVCRState();
}

class _MyCVCRState extends State<MyCVCR> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Call: Value & Reference'),
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
              '''There are two methods to pass the data into the function in C language, i.e. call by value and call by reference.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Call by value in C\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''1. In call by value method, the value of the actual parameters is copied into the formal parameters. In other words, we can say that the value of the variable is used in the function call in the call by value method.

2. In call by value method, we can not modify the value of the actual parameter by the formal parameter.

3. In call by value, different memory is allocated for actual and formal parameters since the value of the actual parameter is copied into the formal parameter.

4. The actual parameter is the argument which is used in the function call whereas formal parameter is the argument which is used in the function definition.

Let's try to understand the concept of call by value in c language by the example given below:\n'''
              ,textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>  
void change(int num) {    
    printf("Before adding value inside function num=%d \\n",num);    
    num=num+100;    
    printf("After adding value inside function num=%d \\n", num);    
}    
int main() {    
    int x=100;    
    printf("Before function call x=%d \\n", x);    
    change(x);//passing value in function    
    printf("After function call x=%d \\n", x);    
return 0;  
}   """),
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
Before function call x=100
Before adding value inside function num=100
After adding value inside function num=200
After function call x=100"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Call by Value Example: Swapping the values of the two variables\n', textAlign: TextAlign.justify,
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
void swap(int , int); //prototype of the function   
int main()  
{  
    int a = 10;  
    int b = 20;   
    printf("Before swapping the values in main a = %d, b = %d\\n",a,b); // printing the value of a and b in main  
    swap(a,b);  
    printf("After swapping values in main a = %d, b = %d\\n",a,b); // The value of actual parameters do not change by changing the formal parameters in call by value, a = 10, b = 20  
}  
void swap (int a, int b)  
{  
    int temp;   
    temp = a;  
    a=b;  
    b=temp;  
    printf("After swapping values in function a = %d, b = %d\\n",a,b); // Formal parameters, a = 20, b = 10   
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
Before swapping the values in main a = 10, b = 20
After swapping values in function a = 20, b = 10
After swapping values in main a = 10, b = 20"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Call by reference in C\n', textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''1. In call by reference, the address of the variable is passed into the function call as the actual parameter.

2. The value of the actual parameters can be modified by changing the formal parameters since the address of the actual parameters is passed.

3. In call by reference, the memory allocation is similar for both formal parameters and actual parameters. All the operations in the function are performed on the value stored at the address of the actual parameters, and the modified value gets stored at the same address.

Consider the following example for the call by reference.'''
              ,textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>  
void change(int *num) {    
    printf("Before adding value inside function num=%d \\n",*num);    
    (*num) += 100;    
    printf("After adding value inside function num=%d \\n", *num);    
}      
int main() {    
    int x=100;    
    printf("Before function call x=%d \\n", x);    
    change(&x);//passing reference in function    
    printf("After function call x=%d \\n", x);    
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
              child: const Text("""Output: 
Before function call x=100
Before adding value inside function num=100
After adding value inside function num=200
After function call x=200"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Call by reference Example: Swapping the values of the two variables\n', textAlign: TextAlign.justify,
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
void swap(int *, int *); //prototype of the function   
int main()  
{  
    int a = 10;  
    int b = 20;   
    printf("Before swapping the values in main a = %d, b = %d\\n",a,b); // printing the value of a and b in main  
    swap(&a,&b);  
    printf("After swapping values in main a = %d, b = %d\\n",a,b); // The values of actual parameters do change in call by reference, a = 10, b = 20  
}  
void swap (int *a, int *b)  
{  
    int temp;   
    temp = *a;  
    *a=*b;  
    *b=temp;  
    printf("After swapping values in function a = %d, b = %d\\n",*a,*b); // Formal parameters, a = 20, b = 10   
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
Before swapping the values in main a = 10, b = 20
After swapping values in function a = 20, b = 10
After swapping values in main a = 20, b = 10"""),
            ),
            Table(
              border: TableBorder.all(
                color: Colors.black,
              ),
              children: [
                TableRow(
                  children: [
                    Column(children: const [Text('Call by value',style: TextStyle(fontWeight: FontWeight.bold),)],),
                    Column(children: const [Text('Call by reference',style: TextStyle(fontWeight: FontWeight.bold),)],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text(' A copy of the value is passed into the function',textAlign: TextAlign.center,)],),
                    Column(children: const [Text(' An address of value is passed into the function',textAlign: TextAlign.center)],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text(' Changes made inside the function is limited to the function only. The values of the actual parameters do not change by changing the formal parameters.',textAlign: TextAlign.center)],),
                    Column(children: const [Text(' Changes made inside the function validate outside of the function also. The values of the actual parameters do change by changing the formal parameters.',textAlign: TextAlign.center)],),
                  ],),
                TableRow(
                  children: [
                    Column(children: const [Text(' Actual and formal arguments are created at the different memory location.',textAlign: TextAlign.center)],),
                    Column(children: const [Text(' Actual and formal arguments are created at the same memory location.',textAlign: TextAlign.center)],),
                  ],),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
          ],
        ),
      ),
    );
  }
}
