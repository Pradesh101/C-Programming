import 'package:flutter/material.dart';

import '../home_screen.dart';

class Array2D extends StatelessWidget {
  const Array2D({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyArray2D(),
    );
  }
}

class MyArray2D extends StatefulWidget {
  const MyArray2D({Key? key}) : super(key: key);

  @override
  _MyArray2DState createState() => _MyArray2DState();
}

class _MyArray2DState extends State<MyArray2D> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2-D Array'),
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
              '''The two-dimensional array can be defined as an array of arrays. The 2D array is organized as matrices which can be represented as the collection of rows and columns. However, 2D arrays are created to implement a relational database lookalike data structure. It provides ease of holding the bulk of data at once which can be passed to any number of functions wherever required.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Declaration of Two dimensional Array in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The syntax to declare the 2D array is given below.

data_type array_name[rows][columns];
  
Consider the following example.

int twodimen[4][3];  

Here, 4 is the number of rows, and 3 is the number of columns.\n''',
            textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Initialization of 2D Array in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''In the 1D array, we don't need to specify the size of the array if the declaration and initialization are being done simultaneously. However, this will not work with 2D arrays. We will have to define at least the second dimension of the array. The two-dimensional array can be declared and defined in the following way.

int arr[4][3]={{1,2,3},{2,3,4},{3,4,5},{4,5,6}};  \n''',
              textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Two-dimensional array example in C\n',
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
int i=0,j=0;    
int arr[4][3]={{1,2,3},{2,3,4},{3,4,5},{4,5,6}};     
//traversing 2D array    
for(i=0;i<4;i++){    
 for(j=0;j<3;j++){    
   printf("arr[%d] [%d] = %d \\n",i,j,arr[i][j]);    
 }//end of j    
}//end of i    
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
arr[0][0] = 1
arr[0][1] = 2
arr[0][2] = 3
arr[1][0] = 2
arr[1][1] = 3
arr[1][2] = 4
arr[2][0] = 3
arr[2][1] = 4
arr[2][2] = 5
arr[3][0] = 4
arr[3][1] = 5
arr[3][2] = 6"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C 2D array example: Storing elements in a matrix and printing it.\n',
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
void main ()    
{    
    int arr[3][3],i,j;     
    for (i=0;i<3;i++)    
    {    
        for (j=0;j<3;j++)    
        {    
            printf("Enter a[%d][%d]: ",i,j);                
            scanf("%d",&arr[i][j]);    
        }    
    }    
    printf("\\n printing the elements ....\\n");     
    for(i=0;i<3;i++)    
    {    
        printf("\\n");    
        for (j=0;j<3;j++)    
        {    
            printf("%d\\t",arr[i][j]);    
        }    
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
              child: const Text("""Output: 
Enter a[0][0]: 56   
Enter a[0][1]: 10   
Enter a[0][2]: 30  
Enter a[1][0]: 34  
Enter a[1][1]: 21 
Enter a[1][2]: 34    

Enter a[2][0]: 45
Enter a[2][1]: 56
Enter a[2][2]: 78   

printing the elements .... 
 
56      10      30  
34      21      34  
45      56      78"""),
            ),
          ],
        ),
      ),
    );
  }
}
