import 'package:flutter/material.dart';
import '../home_screen.dart';

class ConstPointer extends StatelessWidget {
  const ConstPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyConstPointer(),
    );
  }
}

class MyConstPointer extends StatefulWidget {
  const MyConstPointer({Key? key}) : super(key: key);

  @override
  _MyConstPointerState createState() => _MyConstPointerState();
}

class _MyConstPointerState extends State<MyConstPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('const Pointers in C'),
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
              '''A constant pointer in C cannot change the address of the variable to which it is pointing, i.e., the address will remain constant. Therefore, we can say that if a constant pointer is pointing to some variable, then it cannot point to any other variable.

Syntax of Constant Pointer
<type of pointer> *const <name of pointer>;  

Declaration of a constant pointer is given below:
int *const ptr;  

Let's understand the constant pointer through an example.\n''',
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
    int a=1;  
    int b=2;  
    int *const ptr;  
    ptr=&a;  
    ptr=&b;  
    printf("Value of ptr is :%d",*ptr);  
    return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code:

1. We declare two variables, i.e., a and b with values 1 and 2, respectively.

2. We declare a constant pointer.

3. First, we assign the address of variable 'a' to the pointer 'ptr'.

4. Then, we assign the address of variable 'b' to the pointer 'ptr'.

5. Lastly, we try to print the value of the variable pointed by the 'ptr'.'''
            ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: 
main.c: In function 'main'
main.c:16:8 error: assignment of read only variable 'ptr'
ptr=&a;
main.c:17:8 error: assignment of read only variable 'ptr'
ptr=&b;"""),
            ),
            const Text('''In the above output, we can observe that the above code produces the error "assignment of read-only variable 'ptr'". It means that the value of the variable 'ptr' which 'ptr' is holding cannot be changed. In the above code, we are changing the value of 'ptr' from &a to &b, which is not possible with constant pointers. Therefore, we can say that the constant pointer, which points to some variable, cannot point to another variable\n.'''
              ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pointer to Constant\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''A pointer to constant is a pointer through which the value of the variable that the pointer points cannot be changed. The address of these pointers can be changed, but the value of the variable that the pointer points cannot be changed.

Syntax of Pointer to Constant:
const <type of pointer>* <name of pointer>  

Declaration of a pointer to constant is given below:
const int* ptr;  

Let's understand through an example.

First, we write the code where we are changing the value of a pointer\n''',
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
    int a=100;  
    int b=200;  
    const int* ptr;  
    ptr=&a;  
    ptr=&b;  
    printf("Value of ptr is :%u",ptr);  
    return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code:

1. We declare two variables, i.e., a and b with the values 100 and 200 respectively.

2. We declare a pointer to constant.

3. First, we assign the address of variable 'a' to the pointer 'ptr'.

4. Then, we assign the address of variable 'b' to the pointer 'ptr'.

5. Lastly, we try to print the value of 'ptr'.'''
              ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Value of ptr is :247760772"""),
            ),
            const Text('''The above code runs successfully, and it shows the value of 'ptr' in the output.

Now, we write the code in which we are changing the value of the variable to which the pointer points.\n'''
            ,textAlign: TextAlign.justify,),
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
    int a=100;  
    int b=200;  
    const int* ptr;  
    ptr=&b;  
    *ptr=300;  
    printf("Value of ptr is :%d",*ptr);  
    return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code:

1. We declare two variables, i.e., 'a' and 'b' with the values 100 and 200 respectively.

2. We declare a pointer to constant.

3. We assign the address of the variable 'b' to the pointer 'ptr'.

4. Then, we try to modify the value of the variable 'b' through the pointer 'ptr'.

5.Lastly, we try to print the value of the variable which is pointed by the pointer 'ptr'.'''
              ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: 
main.c: In function 'main'
main.c:17:9 error: assignment of read only variable '*ptr'
*ptr=300;"""),
            ),
            const Text('''The above code shows the error "assignment of read-only location '*ptr'". This error means that we cannot change the value of the variable to which the pointer is pointing.\n'''
              ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Constant Pointer to a Constant\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''A constant pointer to a constant is a pointer, which is a combination of the above two pointers. It can neither change the address of the variable to which it is pointing nor it can change the value placed at this address.

Syntax: const <type of pointer>* const <name of the pointer>;  

Declaration for a constant pointer to a constant is given below:
const int* const ptr;  

Let's understand through an example.\n''',
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
    int a=10;  
    int b=90;  
    const int* const ptr=&a;  
   *ptr=12;  
    ptr=&b;  
    printf("Value of ptr is :%d",*ptr);  
    return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code:

1. We declare two variables, i.e., 'a' and 'b' with the values 10 and 90, respectively.

2. We declare a constant pointer to a constant and then assign the address of 'a'.

3. We try to change the value of the variable 'a' through the pointer 'ptr'.

4. Then we try to assign the address of variable 'b' to the pointer 'ptr'.

5. Lastly, we print the value of the variable, which is pointed by the pointer 'ptr'.'''
              ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output:
main.c: In function 'main'
main.c:1:9 error: assignment of read only variable '*ptr'
*ptr=12;
main.c:18:6 error: assignment of read only variable 'ptr'
ptr=&b;"""),
            ),
            const Text('''The above code shows the error "assignment of read-only location '*ptr'" and "assignment of read-only variable 'ptr'". Therefore, we conclude that the constant pointer to a constant can change neither address nor value, which is pointing by this pointer.\n'''
              ,textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}
