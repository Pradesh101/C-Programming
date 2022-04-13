import 'package:flutter/material.dart';
import '../home_screen.dart';

class FunctionPointer extends StatelessWidget {
  const FunctionPointer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyFunctionPointer(),
    );
  }
}

class MyFunctionPointer extends StatefulWidget {
  const MyFunctionPointer({Key? key}) : super(key: key);

  @override
  _MyFunctionPointerState createState() => _MyFunctionPointerState();
}

class _MyFunctionPointerState extends State<MyFunctionPointer> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Function Pointer'),
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
            const Text('''As we know that we can create a pointer of any data type such as int, char, float, we can also create a pointer pointing to a function. The code of a function always resides in memory, which means that the function has some address. We can get the address of memory by using the function pointer.

Let's see a simple example\n'''
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
    printf("Address of main() function is %p",main);  
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
              child: const Text("""Output: Address of main() function is 0x400536"""),
            ),
            const Text('''In the above output, we observe that the main() function has some address. Therefore, we conclude that every function has some address.\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Declaration of a function pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Till now, we have seen that the functions have addresses, so we can create pointers that can contain these addresses, and hence can point them.

Syntax of function pointer

return type (*ptr_name)(type1, type2…);  

For example:

int (*ip) (int);  

In the above declaration, *ip is a pointer that points to a function which returns an int value and accepts an integer value as an argument.

float (*fp) (float);  

In the above declaration, *fp is a pointer that points to a function that returns a float value and accepts a float value as an argument.

We can observe that the declaration of a function is similar to the declaration of a function pointer except that the pointer is preceded by a '*'. So, in the above declaration, fp is declared as a function rather than a pointer.

Till now, we have learnt how to declare the function pointer. Our next step is to assign the address of a function to the function pointer.


float (*fp) (int , int);    // Declaration of a function pointer.  
float func( int , int );    // Declaration of  function.  
fp = func;                     // Assigning address of func to the fp pointer.  

In the above declaration, 'fp' pointer contains the address of the 'func' function.\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Calling a function through a function pointer\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We already know how to call a function in the usual way. Now, we will see how to call a function using a function pointer.

Suppose we declare a function as given below:

float func(int , int);      // Declaration of a function. 
 
Calling an above function using a usual way is given below:

result = func(a , b);     // Calling a function using usual ways.  

Calling a function using a function pointer is given below:

result = (*fp)( a , b);    // Calling a function using function pointer.  

Or

result = fp(a , b);         // Calling a function using function pointer, and indirection operator can be removed.  

The effect of calling a function by its name or function pointer is the same. If we are using the function pointer, we can omit the indirection operator as we did in the second case. Still, we use the indirection operator as it makes it clear to the user that we are using a function pointer.

Let's understand the function pointer through an example.\n'''
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
int add(int,int);  
int main()  
{  
   int a,b;  
   int (*ip)(int,int);  
   int result;  
   printf("Enter the values of a and b : ");  
   scanf("%d %d",&a,&b);  
   ip=add;  
   result=(*ip)(a,b);  
   printf("Value after addition is : %d",result);  
    return 0;  
}  
int add(int a,int b)  
{  
    int c=a+b;  
    return c;  
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
Enter the values of a and b: 4
55
Value after addition is : 59"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Passing a function's address as an argument to other function\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We can pass the function's address as an argument to other functions in the same way we send other arguments to the function.

Let's understand through an example.\n''',textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""include <stdio.h>  
void func1(void (*ptr)());  
void func2();  
int main()  
{  
    func1(func2);  
     return 0;  
}  
void func1(void (*ptr)())  
{  
    printf("Function1 is called");  
    (*ptr)();  
}  
void func2()  
{  
    printf("\\nFunction2 is called");  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code, we have created two functions, i.e., func1() and func2(). The func1() function contains the function pointer as an argument. In the main() method, the func1() method is called in which we pass the address of func2. When func1() function is called, 'ptr' contains the address of 'func2'. Inside the func1() function, we call the func2() function by dereferencing the pointer 'ptr' as it contains the address of func2.'''
            ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output:
Function1 is called
Function2 is called"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Array of Function Pointers\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''Function pointers are used in those applications where we do not know in advance which function will be called. In an array of function pointers, array takes the addresses of different functions, and the appropriate function will be called based on the index number.

Let's understand through an example.\n''',textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include <stdio.h>  
float add(float,int);  
float sub(float,int);  
float mul(float,int);  
float div(float,int);  
int main()  
{  
    float x;              // variable declaration.  
    int y;  
    float (*fp[4]) (float,int);        // function pointer declaration.  
    fp[0]=add;              // assigning addresses to the elements of an array of a function   pointer.  
    fp[1]=sub;  
    fp[2]=mul;  
    fp[3]=div;  
    printf("Enter the values of x and y :");  
    scanf("%f %d",&x,&y);  
  float r=(*fp[0]) (x,y);        // Calling add() function.  
    printf("\\nSum of two values is : %f",r);  
     r=(*fp[1]) (x,y);             // Calling sub() function.  
    printf("\\nDifference of two values is : %f",r);  
      r=(*fp[2]) (x,y);            // Calliung sub() function.  
    printf("\\nMultiplication of two values is : %f",r);  
     r=(*fp[3]) (x,y);           // Calling div() function.  
    printf("\\nDivision of two values is : %f",r);  
    return 0;  
}  
  
float add(float x,int y)  
{  
    float a=x+y;  
    return a;  
}  
float sub(float x,int y)  
{  
    float a=x-y;  
    return a;  
}  
float mul(float x,int y)  
{  
    float a=x*y;  
    return a;  
}  
float div(float x,int y)  
{  
    float a=x/y;  
    return a;  
} """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text('''In the above code, we have created an array of function pointers that contain the addresses of four functions. After storing the addresses of functions in an array of function pointers, we call the functions using the function pointer.'''
              ,textAlign: TextAlign.justify,),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output:
Enter the value of x and y: 5
7

Sum of two values is : 12.000000
Difference of twp values is : -2.000000
Multiplication of two values is : 35.000000
Division of two values is : 0.714286"""),
            ),
          ],
        ),
      ),
    );
  }
}

