import 'package:flutter/material.dart';
import '../home_screen.dart';

class NullPointer extends StatelessWidget {
  const NullPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyNullPointer(),
    );
  }
}

class MyNullPointer extends StatefulWidget {
  const MyNullPointer({Key? key}) : super(key: key);

  @override
  _MyNullPointerState createState() => _MyNullPointerState();
}

class _MyNullPointerState extends State<MyNullPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Null Pointer in C'),
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
          children: const [
            Text(
              '''A Null Pointer is a pointer that does not point to any memory location. It stores the base address of the segment. The null pointer basically stores the Null value while void is the type of the pointer.

A null pointer is a special reserved value which is defined in a stddef header file. Here, Null means that the pointer is referring to the 0th memory location.

If we do not have any address which is to be assigned to the pointer, then it is known as a null pointer. When a NULL value is assigned to the pointer, then it is considered as a Null pointer.\n''',
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Applications of Null Pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '''1. It is used to initialize o pointer variable when the pointer does not point to a valid memory address.

2. It is used to perform error handling with pointers before dereferencing the pointers.

3.It is passed as a function argument and to return from a function when we do not want to pass the actual memory address.\n''',
              textAlign: TextAlign.justify,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Examples of Null Pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              '''int *ptr=(int *)0;
float *ptr=(float *)0;
char *ptr=(char *)0;
double *ptr=(double *)0;
char *ptr='\\0';
int *ptr=NULL;

Let's look at the situations where we need to use the null pointer.

  1. When we do not assign any memory address to the pointer variable.

#include <stdio.h>  
int main()  
{  
    int *ptr;  
   printf("Address: %d", ptr); // printing the value of ptr.  
   printf("Value: %d", *ptr); // dereferencing the illegal pointer  
   return 0;  
} 
 
In the above code, we declare the pointer variable *ptr, but it does not contain the address of any variable. The dereferencing of the uninitialized pointer variable will show the compile-time error as it does not point any variable. According to the stack memory concept, the local variables of a function are stored in the stack, and if the variable does not contain any value, then it shows the garbage value. The above program shows some unpredictable results and causes the program to crash. Therefore, we can say that keeping an uninitialized pointer in a program can cause serious harm to the computer.

How to avoid the above situation?

We can avoid the above situation by using the Null pointer. A null pointer is a pointer pointing to the 0th memory location, which is a reserved memory and cannot be dereferenced.

#include <stdio.h>  
int main()  
{  
    int *ptr=NULL;  
    if(ptr!=NULL)  
    {  
        printf("value of ptr is : %d",*ptr);  
    }  
    else  
    {  
        printf("Invalid pointer");  
    }  
  return 0;  
}  

In the above code, we create a pointer *ptr and assigns a NULL value to the pointer, which means that it does not point any variable. After creating a pointer variable, we add the condition in which we check whether the value of a pointer is null or not.

  2. When we use the malloc() function.
  
#include <stdio.h>  
int main()  
{  
    int *ptr;  
    ptr=(int*)malloc(4*sizeof(int));  
    if(ptr==NULL)  
    {  
        printf("Memory is not allocated");  
    }  
    else  
    {  
        printf("Memory is allocated");  
    }  
    return 0;  
}  

In the above code, we use the library function, i.e., malloc(). As we know, that malloc() function allocates the memory; if malloc() function is not able to allocate the memory, then it returns the NULL pointer. Therefore, it is necessary to add the condition which will check whether the value of a pointer is null or not, if the value of a pointer is not null means that the memory is allocated.

Output : Memory is allocated\n''',
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
