import 'package:flutter/material.dart';
import '../home_screen.dart';

class DereferencePointer extends StatelessWidget {
  const DereferencePointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyDereferencePointer(),
    );
  }
}

class MyDereferencePointer extends StatefulWidget {
  const MyDereferencePointer({Key? key}) : super(key: key);

  @override
  _MyDereferencePointerState createState() => _MyDereferencePointerState();
}

class _MyDereferencePointerState extends State<MyDereferencePointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Dereference Pointer'),
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
            const Text('''As we already know that "what is a pointer", a pointer is a variable that stores the address of another variable. The dereference operator is also known as an indirection operator, which is represented by (*). When indirection operator (*) is used with the pointer variable, then it is known as dereferencing a pointer. When we dereference a pointer, then the value of the variable pointed by this pointer will be returned.

Why we use dereferencing pointer?

Dereference a pointer is used because of the following reasons:

1. It can be used to access or manipulate the data stored at the memory location, which is pointed by the pointer.

2. Any operation applied to the dereferenced pointer will directly affect the value of the variable that it points to.

Let's observe the following steps to dereference a pointer.

First, we declare the integer variable to which the pointer points.
int x =9;   

Now, we declare the integer pointer variable.
int *ptr;   

After the declaration of an integer pointer variable, we store the address of 'x' variable to the pointer variable 'ptr'.
ptr=&x;  

We can change the value of 'x' variable by dereferencing a pointer 'ptr' as given below:
*ptr =8;  

The above line changes the value of 'x' variable from 9 to 8 because 'ptr' points to the 'x' location and dereferencing of 'ptr', i.e., *ptr=8 will update the value of x.

Let's combine all the above steps:\n''',
            textAlign: TextAlign.justify,),
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
    int x=9;  
    int *ptr;  
    ptr=&x;  
    *ptr=8;  
    printf("value of x is : %d", x);  
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
              child: const Text("""Output: value of x is : 8"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text("Let's consider another example.\n"
              ,textAlign: TextAlign.justify,),
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
    int x=4;  
    int y;  
    int *ptr;  
    ptr=&x;   
    y=*ptr;  
    *ptr=5;  
    printf("The value of x is : %d",x);  
    printf("\\n The value of y is : %d",y);  
    return 0;  
} """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code:

1. We declare two variables 'x' and 'y' where 'x' is holding a '4' value.

2. We declare a pointer variable 'ptr'.

3. After the declaration of a pointer variable, we assign the address of the 'x' variable to the pointer 'ptr'.

4. As we know that the 'ptr' contains the address of 'x' variable, so '*ptr' is the same as 'x'.

5. We assign the value of 'x' to 'y' with the help of 'ptr' variable, i.e., y=*ptr instead of using the 'x' variable.'''
            ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: The value of x is : 5
The value of y is : 4"""),

            ),
        const Align(
          alignment: Alignment.topLeft,
          child: Text("Let's consider another example.\n"
            ,textAlign: TextAlign.justify,),
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
   int a=90;  
   int *ptr1,*ptr2;  
   ptr1=&a;  
   ptr2=&a;  
   *ptr1=7;  
   *ptr2=6;  
    printf("The value of a is : %d",a);  
    return 0;  
}"""),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text('''In the above code:

1. First, we declare an 'a' variable.

2. Then we declare two pointers, i.e., ptr1 and ptr2.

3. Both the pointers contain the address of 'a' variable.

4. We assign the '7' value to the *ptr1 and '6' to the *ptr2. The final value of 'a' would be '6'.'''
          ,textAlign: TextAlign.justify,),
        Container(
          margin: const EdgeInsets.only(top: 10, bottom: 15),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text("""Output: The value of a is : 6"""),
        ),
          ],
        ),
      ),
    );
  }
}
