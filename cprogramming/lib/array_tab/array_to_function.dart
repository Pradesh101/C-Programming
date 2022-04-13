import 'package:flutter/material.dart';
import '../home_screen.dart';

class ArrayFunction extends StatelessWidget {
  const ArrayFunction({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyArrayFunction(),
    );
  }
}

class MyArrayFunction extends StatefulWidget {
  const MyArrayFunction({Key? key}) : super(key: key);

  @override
  _MyArrayFunctionState createState() => _MyArrayFunctionState();
}

class _MyArrayFunctionState extends State<MyArrayFunction> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Array to Function'),
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
              '''In C, there are various general problems which requires passing more than one variable of the same type to a function. For example, consider a function which sorts the 10 elements in ascending order. Such a function requires 10 numbers to be passed as the actual parameters from the main function. Here, instead of declaring 10 different numbers and then passing into the function, we can declare and initialize an array and pass that into the function. This will resolve all the complexity since the function will now work for any number of values.

As we know that the array_name contains the address of the first element. Here, we must notice that we need to pass only the name of the array in the function which is intended to accept an array. The array defined as the formal parameter will automatically refer to the array specified by the array name defined as an actual parameter.

Consider the following syntax to pass an array to the function.

functionname(arrayname);//passing array  
''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Methods to declare a function that receives an array as an argument\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''There are 3 ways to declare the function which is intended to receive an array as an argument.
              
First way:

return_type function(type arrayname[])  
Declaring blank subscript notation [] is the widely used technique.

Second way:

return_type function(type arrayname[SIZE])  
Optionally, we can define size in subscript notation [].

Third way:

return_type function(type *arrayname)  
You can also use the concept of a pointer. In pointer chapter, we will learn about it.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C language passing an array to function example\n',
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
              child: const Text("""#include<stdio.h>  
int minarray(int arr[],int size){    
int min=arr[0];    
int i=0;    
for(i=1;i<size;i++){    
if(min>arr[i]){    
min=arr[i];    
}    
}//end of for    
return min;    
}//end of function    
    
int main(){      
int i=0,min=0;    
int numbers[]={4,5,7,3,8,9};//declaration of array    
  
min=minarray(numbers,6);//passing array with size    
printf("minimum number is %d \\n",min);    
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
              child: const Text("""Output: minimum number is 3"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C function to sort the array\n',
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
              child: const Text("""#include<stdio.h>   
void Bubble_Sort(int[]);  
void main ()    
{    
    int arr[10] = { 10, 9, 7, 101, 23, 44, 12, 78, 34, 23};     
    Bubble_Sort(arr);    
}    
void Bubble_Sort(int a[]) //array a[] points to arr.   
{  
int i, j,temp;     
    for(i = 0; i<10; i++)    
    {    
        for(j = i+1; j<10; j++)    
        {    
            if(a[j] < a[i])    
            {    
                temp = a[i];    
                a[i] = a[j];    
                a[j] = temp;     
            }     
        }     
    }     
    printf("Printing Sorted Element List ...\\n");    
    for(i = 0; i<10; i++)    
    {    
        printf("%d\\n",a[i]);    
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
              child: const Text("""Output: Printing Sorted Element List ...
7  
9  
10  
12  
23 
23  
34  
44  
78  
101"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Returning array from the function\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''As we know that, a function can not return more than one value. However, if we try to write the return statement as return a, b, c; to return three values (a,b,c), the function will return the last mentioned value which is c in our case. In some problems, we may need to return multiple values from a function. In such cases, an array is returned from the function.

Returning an array is similar to passing the array into the function. The name of the array is returned from the function. To make a function returning an array, the following syntax is used.

int * Function_name() {  
//some statements;   
return array_type;  
}  

To store the array returned from the function, we can define a pointer which points to that array. We can traverse the array by increasing that pointer since pointer initially points to the base address of the array. Consider the following example that contains a function returning the sorted array.\n''',
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
int* Bubble_Sort(int[]);  
void main ()    
{    
    int arr[10] = { 10, 9, 7, 101, 23, 44, 12, 78, 34, 23};     
    int *p = Bubble_Sort(arr), i;  
    printf("printing sorted elements ...\\n");  
    for(i=0;i<10;i++)  
    {  
        printf("%d\\n",*(p+i));  
    }  
}    
int* Bubble_Sort(int a[]) //array a[] points to arr.   
{  
int i, j,temp;     
    for(i = 0; i<10; i++)    
    {    
        for(j = i+1; j<10; j++)    
        {    
            if(a[j] < a[i])    
            {    
                temp = a[i];    
                a[i] = a[j];    
                a[j] = temp;     
            }     
        }     
    }     
    return a;  
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
              child: const Text("""Output: Printing Sorted Element List ...
7  
9   
10  
12  
23 
23  
34  
44  
78  
101"""),
            ),
          ],
        ),
      ),
    );
  }
}
