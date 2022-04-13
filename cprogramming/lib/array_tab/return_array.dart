import 'package:flutter/material.dart';
import '../home_screen.dart';

class ReturnArray extends StatelessWidget {
  const ReturnArray({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyReturnArray(),
    );
  }
}

class MyReturnArray extends StatefulWidget {
  const MyReturnArray({Key? key}) : super(key: key);

  @override
  _MyReturnArrayState createState() => _MyReturnArrayState();
}

class _MyReturnArrayState extends State<MyReturnArray> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Return an array in C'),
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
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'What is an Array?\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''An array is a type of data structure that stores a fixed-size of a homogeneous collection of data. In short, we can say that array is a collection of variables of the same type.

For example, if we want to declare 'n' number of variables, n1, n2...n., if we create all these variables individually, then it becomes a very tedious task. In such a case, we create an array of variables having the same type. Each element of an array can be accessed using an index of the element.

Let's first see how to pass a single-dimensional array to a function.

Passing array to a function\n''',
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
void getarray(int arr[])  
{  
    printf("Elements of array are : ");  
    for(int i=0;i<5;i++)  
    {  
        printf("%d ", arr[i]);  
    }  
}  
int main()  
{  
   int arr[5]={45,67,34,78,90};  
   getarray(arr);  
   return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''In the above program, we have first created the array arr[] and then we pass this array to the function getarray(). The getarray() function prints all the elements of the array arr[].''',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                  """Output: Elements of array are: 45 67 34 78 90"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Passing array to a function as a pointer\n',
                textAlign: TextAlign.justify,
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
void printarray(char *arr)  
{  
    printf("Elements of array are : ");  
    for(int i=0;i<5;i++)  
    {  
        printf("%c ", arr[i]);  
    }  
}  
int main()  
{  
  char arr[5]={'A','B','C','D','E'};  
  printarray(arr);  
  return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''In the above code, we have passed the array to the function as a pointer. The function printarray() prints the elements of an array.''',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Elements of array are: A B C D E"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'How to return an array from a function \n \nReturning pointer pointing to the array\n',
                textAlign: TextAlign.justify,
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
int *getarray()  
{  
    int arr[5];  
    printf("Enter the elements in an array : ");  
    for(int i=0;i<5;i++)  
    {  
        scanf("%d", &arr[i]);  
    }  
    return arr;  
}  
int main()  
{  
  int *n;  
  n=getarray();  
  printf("\\nElements of array are :");  
  for(int i=0;i<5;i++)  
    {  
        printf("%d", n[i]);  
    }  
    return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''In the above program, getarray() function returns a variable 'arr'. It returns a local variable, but it is an illegal memory location to be returned, which is allocated within a function in the stack. Since the program control comes back to the main() function, and all the variables in a stack are freed. Therefore, we can say that this program is returning memory location, which is already de-allocated, so the output of the program is a segmentation fault.''',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 15, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Array inside function: 1
2
3
4
5
Array outside the function:
Segmentation fault (core dumped)"""),
            ),
            const Text(
              '''There are three right ways of returning an array to a function:

1. Using dynamically allocated array
2. Using static array
3. Using structure''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '\nReturning array by passing an array which is to be returned as a parameter to the function.\n',
                textAlign: TextAlign.justify,
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
int *getarray(int *a)  
{  
    
    printf("Enter the elements in an array : ");  
    for(int i=0;i<5;i++)  
    {  
        scanf("%d", &a[i]);  
    }  
    return a;  
}  
int main()  
{  
  int *n;  
  int a[5];  
  n=getarray(a);  
  printf("\\nElements of array are :");  
  for(int i=0;i<5;i++)  
    {  
        printf("%d", n[i]);  
    }  
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
Enter the elements in array :
1
2
3
4
5

Elements of array are: 1 2 3 4 5"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Returning array using malloc() function.\n',
                textAlign: TextAlign.justify,
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
#include<malloc.h>  
int *getarray()  
{  
    int size;  
    printf("Enter the size of the array : ");  
    scanf("%d",&size);  
    int *p= malloc(sizeof(size));  
    printf("\\nEnter the elements in an array");  
    for(int i=0;i<size;i++)  
    {  
        scanf("%d",&p[i]);  
    }  
    return p;  
}  
int main()  
{  
   int *ptr;  
   ptr=getarray();  
   int length=sizeof(*ptr);  
   printf("Elements that you have entered are : ");  
   for(int i=0;ptr[i]!='\\0';i++)  
    {  
      printf("%d ", ptr[i]);  
    }  
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
Enter the elements in an array :
1
2
3
4
5
Elements that you have entered are: 1 2 3 4 5"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Using Static Variable\n',
                textAlign: TextAlign.justify,
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
int *getarray()  
{  
  static int arr[7];  
  printf("Enter the elements in an array : ");  
  for(int i=0;i<7;i++)  
  {  
      scanf("%d",&arr[i]);  
  }  
  return arr;  
      
}  
int main()  
{  
  int *ptr;  
  ptr=getarray();  
  printf("\\nElements that you have entered are :");  
  for(int i=0;i<7;i++)  
  {  
      printf("%d ", ptr[i]);  
  }  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''In the above code, we have created the variable arr[] as static in getarray() function, which is available throughout the program. Therefore, the function getarray() returns the actual memory location of the variable 'arr'.''',
              textAlign: TextAlign.justify,
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
Enter the elements in an array :
10
20
30
40
50
Elements that you have entered are: 10 20 30 40 50"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Using Structure\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The structure is a user-defined data type that can contain a collection of items of different types. Now, we will create a program that returns an array by using structure.\n''',
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
#include<malloc.h>  
struct array  
{  
    int arr[8];  
};  
struct array getarray()  
{  
    struct array y;  
    printf("Enter the elements in an array : ");  
    for(int i=0;i<8;i++)  
    {  
        scanf("%d",&y.arr[i]);  
    }  
    return y;  
}  
int main()  
{  
  struct array x=getarray();  
  printf("Elements that you have entered are :");  
  for(int i=0;x.arr[i]!='\\0';i++)  
  {  
      printf("%d ", x.arr[i]);  
  }  
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
Enter the elements in an array :
4
5
6
7
8
9
Elements that you have entered are: 4 5 6 7 8 9"""),
            ),
          ],
        ),
      ),
    );
  }
}
