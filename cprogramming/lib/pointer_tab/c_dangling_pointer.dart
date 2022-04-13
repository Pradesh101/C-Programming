import 'package:flutter/material.dart';
import '../home_screen.dart';

class DanglingPointer extends StatelessWidget {
  const DanglingPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyDanglingPointer(),
    );
  }
}

class MyDanglingPointer extends StatefulWidget {
  const MyDanglingPointer({Key? key}) : super(key: key);

  @override
  _MyDanglingPointerState createState() => _MyDanglingPointerState();
}

class _MyDanglingPointerState extends State<MyDanglingPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dangling Pointers in C'),
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
              '''The most common bugs related to pointers and memory management is dangling/wild pointers. Sometimes the programmer fails to initialize the pointer with a valid address, then this type of initialized pointer is known as a dangling pointer in C.

Dangling pointer occurs at the time of the object destruction when the object is deleted or de-allocated from memory without modifying the value of the pointer. In this case, the pointer is pointing to the memory, which is de-allocated. The dangling pointer can point to the memory, which contains either the program code or the code of the operating system. If we assign the value to this pointer, then it overwrites the value of the program code or operating system instructions; in such cases, the program will show the undesirable result or may even crash. If the memory is re-allocated to some other process, then we dereference the dangling pointer will cause the segmentation faults.

Let's understand the dangling pointer through some C programs.

Using free() function to de-allocate the memory.

#include <stdio.h>  
int main()  
{  
   int *ptr=(int *)malloc(sizeof(int));  
   int a=560;  
   ptr=&a;  
   free(ptr);  
   return 0;  
}  

In the above code, we have created two variables, i.e., *ptr and a where 'ptr' is a pointer and 'a' is a integer variable. The *ptr is a pointer variable which is created with the help of malloc() function. As we know that malloc() function returns void, so we use int * to convert void pointer into int pointer.

Variable goes out of the scope

When the variable goes out of the scope then the pointer pointing to the variable becomes a dangling pointer.

#include<stdio.h>  
int main()  
{  
    char *str;  
    {  
        char a = ?A?;  
        str = &a;  
    }  
    // a falls out of scope   
    // str is now a dangling pointer   
    printf("%s", *str);  
} 
 
In the above code, we did the following steps:

1. First, we declare the pointer variable named 'str'.

2. In the inner scope, we declare a character variable. The str pointer contains the address of the variable 'a'.

3. When the control comes out of the inner scope, 'a' variable will no longer be available, so str points to the de-allocated memory. It means that the str pointer becomes the dangling pointer.

Function call

Now, we will see how the pointer becomes dangling when we call the function.

Let's understand through an example.

#include <stdio.h>  
int *fun(){  
int y=10;  
return &y;  
}  
int main()  
{  
int *p=fun();  
printf("%d", *p);  
return 0;  
} 
 
In the above code, we did the following steps:

1. First, we create the main() function in which we have declared 'p' pointer that contains the return value of the fun().

2. When the fun() is called, then the control moves to the context of the int *fun(), the fun() returns the address of the 'y' variable.

3.When control comes back to the context of the main() function, it means the variable 'y' is no longer available. Therefore, we can say that the 'p' pointer is a dangling pointer as it points to the de-allocated memory.

Output: Segmentation Fault

Let's consider another example of a dangling pointer.

#include <stdio.h>  
int *fun()  
{  
    static int y=10;  
    return &y;  
}  
int main()  
{  
   int *p=fun();  
   printf("%d", *p);  
    return 0;  
}  

The above code is similar to the previous one but the only difference is that the variable 'y' is static. We know that static variable stores in the global memory.

Output: 10\n''',
              textAlign: TextAlign.justify,
            )
          ],
        ),
      ),
    );
  }
}
