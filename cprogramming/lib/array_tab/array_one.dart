import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class Array1D extends StatelessWidget {
  const Array1D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyArray1D(),
    );
  }
}

class MyArray1D extends StatefulWidget {
  const MyArray1D({Key? key}) : super(key: key);

  @override
  _MyArray1DState createState() => _MyArray1DState();
}

class _MyArray1DState extends State<MyArray1D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('1-D Array'),
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
              '''An array is defined as the collection of similar type of data items stored at contiguous memory locations. Arrays are the derived data type in C programming language which can store the primitive type of data such as int, char, double, float, etc. It also has the capability to store the collection of derived data types, such as pointers, structure, etc. The array is the simplest data structure where each data element can be randomly accessed by using its index number.

C array is beneficial if you have to store similar elements. For example, if we want to store the marks of a student in 6 subjects, then we don't need to define different variables for the marks in the different subject. Instead of that, we can define an array which can store the marks in each subject at the contiguous memory locations.

By using the array, we can access the elements easily. Only a few lines of code are required to access the elements of the array.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Properties of Array\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1. Each element of an array is of same data type and carries the same size, i.e., int = 4 bytes.

2. Elements of the array are stored at contiguous memory locations where the first element is stored at the smallest memory location.

3. Elements of the array can be randomly accessed since we can calculate the address of each element of the array with the given base address and the size of the data element.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Advantages of C Array\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1) Code Optimization: Less code to the access the data.

2) Ease of traversing: By using the for loop, we can retrieve the elements of an array easily.

3) Ease of sorting: To sort the elements of the array, we need a few lines of code only.

4) Random Access: We can access any element randomly using the array.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Disadvantages of C Array\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1) Fixed Size: Whatever size, we define at the time of declaration of the array, we can't exceed the limit. So, it doesn't grow the size dynamically like LinkedList which we will learn later.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Declaration of C Array\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''We can declare an array in the c language in the following way:

data_type array_name[array_size];  

Now, let us see the example to declare the array.

int marks[5];  

Here, int is the data_type, marks are the array_name, and 5 is the array_size.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Initialization of C Array\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The simplest way to initialize an array is by using the index of each element. We can initialize each element of the array by using the index. Consider the following example.

marks[0]=80;//initialization of array  
marks[1]=60;  
marks[2]=70;  
marks[3]=85;  
marks[4]=75;\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Array Example\n',
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
int main(){      
int i=0;    
int marks[5];//declaration of array       
marks[0]=80;//initialization of array    
marks[1]=60;    
marks[2]=70;    
marks[3]=85;    
marks[4]=75;    
//traversal of array    
for(i=0;i<5;i++){      
printf("%d \\n",marks[i]);    
}//end of for loop     
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
80
60
70
85
75"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Array: Declaration with Initialization\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''We can initialize the c array at the time of declaration. Let's see the code.

int marks[5]={20,30,40,50,60}; 
 
In such case, there is no requirement to define the size. So it may also be written as the following code.

int marks[]={20,30,40,50,60}; 
 
Let's see the C program to declare and initialize the array in C.\n''',
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
int i=0;    
int marks[5]={20,30,40,50,60};//declaration and initialization of array    
 //traversal of array    
for(i=0;i<5;i++){      
printf("%d \\n",marks[i]);    
}    
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
20
30
40
50
60"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Array Example: Sorting an array\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''In the following program, we are using bubble sort method to sort the array in ascending order.\n''',
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
    int i, j,temp;     
    int a[10] = { 10, 9, 7, 101, 23, 44, 12, 78, 34, 23};     
    for(i = 0; i<10; i++)    
    {    
        for(j = i+1; j<10; j++)    
        {    
            if(a[j] > a[i])    
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
} """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Program to print the largest and second largest element of the array.\n',
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
void main ()  
{  
    int arr[100],i,n,largest,sec_largest;  
    printf("Enter the size of the array?");  
    scanf("%d",&n);  
    printf("Enter the elements of the array?");  
    for(i = 0; i<n; i++)  
    {  
        scanf("%d",&arr[i]);  
    }  
    largest = arr[0];  
    sec_largest = arr[1];  
    for(i=0;i<n;i++)  
    {  
        if(arr[i]>largest)  
        {  
            sec_largest = largest;  
            largest = arr[i];  
        }  
        else if (arr[i]>sec_largest && arr[i]!=largest)  
        {  
            sec_largest=arr[i];  
        }  
    }  
    printf("largest = %d, second largest = %d",largest,sec_largest);        
}"""),
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
