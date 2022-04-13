import 'package:flutter/material.dart';
import '../home_screen.dart';

class VoidPointer extends StatelessWidget {
  const VoidPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyVoidPointer(),
    );
  }
}

class MyVoidPointer extends StatefulWidget {
  const MyVoidPointer({Key? key}) : super(key: key);

  @override
  _MyVoidPointerState createState() => _MyVoidPointerState();
}

class _MyVoidPointerState extends State<MyVoidPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('void Pointers in C'),
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
            const Text('''Till now, we have studied that the address assigned to a pointer should be of the same type as specified in the pointer declaration. For example, if we declare the int pointer, then this int pointer cannot point to the float variable or some other type of variable, i.e., it can point to only int type variable. To overcome this problem, we use a pointer to void. A pointer to void means a generic pointer that can point to any data type. We can assign the address of any data type to the void pointer, and a void pointer can be assigned to any type of the pointer without performing any explicit typecasting.

Syntax of void pointer
void *pointer name;  

Declaration of the void pointer is given below:
void *ptr; 
 
In the above declaration, the void is the type of the pointer, and 'ptr' is the name of the pointer.

Let us consider some examples:

int i=9;         // integer variable initialization.

int *p;         // integer pointer declaration.

float *fp;         // floating pointer declaration.

void *ptr;         // void pointer declaration.

p=fp;         // incorrect.

fp=&i;         // incorrect

ptr=p;         // correct

ptr=fp;         // correct

ptr=&i;         // correct\n''',
            textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Size of the void pointer in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The size of the void pointer in C is the same as the size of the pointer of character type. According to C perception, the representation of a pointer to void is the same as the pointer of character type. The size of the pointer will vary depending on the platform that you are using.

Let's look at the below example:\n''',textAlign: TextAlign.justify,),
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
    void *ptr = NULL; //void pointer  
    int *p  = NULL;// integer pointer  
    char *cp = NULL;//character pointer  
    float *fp = NULL;//float pointer  
    //size of void pointer  
    printf("size of void pointer = %d\\n\\n",sizeof(ptr));  
    //size of integer pointer  
    printf("size of integer pointer = %d\\n\\n",sizeof(p));  
    //size of character pointer  
    printf("size of character pointer = %d\\n\\n",sizeof(cp));  
    //size of float pointer  
    printf("size of float pointer = %d\\n\\n",sizeof(fp));  
    return 0;  
} """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: 
size of void pointer = 8
size of integer pointer = 8
size of character pointer = 8
size of float pointer = 8"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Advantages of void pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The malloc() and calloc() function return the void pointer, so these functions can be used to allocate the memory of any data type.\n'''
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
#include<malloc.h>  
int main()  
{  
   int a=90;  
   
   int *x = (int*)malloc(sizeof(int)) ;  
   x=&a;  
   printf("Value which is pointed by x pointer : %d",*x);  
    return 0;  
}"""),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Value which is pointed by x pointer : 90"""),
            ),
            const Text('''The void pointer in C can also be used to implement the generic functions in C.
            
Some important points related to void pointer are:

1. Dereferencing  a void pointer in C: The void pointer in C cannot be dereferenced directly. Let's see the below example.\n'''
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
   int a=90;  
   void *ptr;  
   ptr=&a;  
   printf("Value which is pointed by ptr pointer : %d",*ptr);  
   return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code, *ptr is a void pointer which is pointing to the integer variable 'a'. As we already know that the void pointer cannot be dereferenced, so the above code will give the compile-time error because we are printing the value of the variable pointed by the pointer 'ptr' directly'''
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
main.c: In function 'main':
main.c:17:56: warning: dereferencing 'void *' pointer
printf('Value which is pointed by ptr pointer : %d', *ptr);

main.c:17:4: error: invalid use of void expression
printf('Value which is pointed by ptr pointer : %d', *ptr);"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text('''Now, we rewrite the above code to remove the error.\n''',
              textAlign: TextAlign.justify,),
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
   void *ptr;  
   ptr=&a;  
   printf("Value which is pointed by ptr pointer : %d",*(int*)ptr);   
   return 0;  
}"""),
            ),
            const Text('''\nIn the above code, we typecast the void pointer to the integer pointer by using the statement given below: (int*)ptr;

Then, we print the value of the variable which is pointed by the void pointer 'ptr' by using the statement given below: *(int*)ptr;'''
              ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Value which is pointed by x pointer : 90"""),
            ),
            const Text('''Arithmetic operation on void pointers: We cannot apply the arithmetic operations on void pointers in C directly. We need to apply the proper typecasting so that we can perform the arithmetic operations on the void pointers.

Let's see the below example:\n''',textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>   
int main()   
{   
   float a[4]={6.1,2.3,7.8,9.0};  
   void *ptr;  
   ptr=a;  
   for(int i=0;i<4;i++)  
  {  
      printf("%f,",*ptr);  
      ptr=ptr+1;         // Incorrect.  
     
}} """),
            ),
            const Text('''\nThe above code shows the compile-time error that "invalid use of void expression" as we cannot apply the arithmetic operations on void pointer directly, i.e., ptr=ptr+1.

Let's rewrite the above code to remove the error.\n''', textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>   
int main()   
{   
   float a[4]={6.1,2.3,7.8,9.0};  
   void *ptr;  
   ptr=a;  
   for(int i=0;i<4;i++)  
  {  
      printf("%f,",*((float*)ptr+i));  
  }
} """),
            ),
            const Text('''\nThe above code runs successfully as we applied the proper casting to the void pointer, i.e., (float*)ptr and then we apply the arithmetic operation, i.e., *((float*)ptr+i).''', textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: 6.100000, 2.300000, 7.800000, 9.000000"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Why we use void pointers?\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We use void pointers because of its reusability. Void pointers can store the object of any type, and we can retrieve the object of any type by using the indirection operator with proper typecasting.

Let's understand through an example.\n''',textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>   
int main()   
{   
  int a=56; // initialization of a integer variable 'a'.  
  float b=4.5; // initialization of a float variable 'b'.  
  char c='k'; // initialization of a char variable 'c'.  
   void *ptr; // declaration of void pointer.  
   // assigning the address of variable 'a'.  
   ptr=&a;  
   printf("value of 'a' is : %d",*((int*)ptr));  
   // assigning the address of variable 'b'.  
   ptr=&b;  
   printf("\\nvalue of 'b' is : %f",*((float*)ptr));  
   // assigning the address of variable 'c'.  
   ptr=&c;  
    printf("\\nvalue of 'c' is : %c",*((char*)ptr));  
    return 0;  
}"""),
            ),
            Container(
          margin: const EdgeInsets.only(top: 15, bottom: 15),
          padding: const EdgeInsets.all(5),
          alignment: Alignment.topLeft,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black38, width: 1),
            borderRadius: BorderRadius.circular(5),
          ),
          child: const Text("""Output: 
value of 'a' is : 56,
value of 'b' is : 4.500000
value of c is : k"""),
        ),
          ],
        ),
      ),
    );
  }
}
