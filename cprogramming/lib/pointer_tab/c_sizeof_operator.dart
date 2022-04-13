import 'package:flutter/material.dart';
import '../home_screen.dart';

class SizeofOperator extends StatelessWidget {
  const SizeofOperator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MySizeofOperator(),
    );
  }
}

class MySizeofOperator extends StatefulWidget {
  const MySizeofOperator({Key? key}) : super(key: key);

  @override
  _MySizeofOperatorState createState() => _MySizeofOperatorState();
}

class _MySizeofOperatorState extends State<MySizeofOperator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('sizeof() operator in C'),
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
            const Text('''The sizeof() operator is commonly used in C. It determines the size of the expression or the data type specified in the number of char-sized storage units. The sizeof() operator contains a single operand which can be either an expression or a data typecast where the cast is data type enclosed within parenthesis. The data type cannot only be primitive data types such as integer or floating data types, but it can also be pointer data types and compound data types such as unions and structs.\n''',
            textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Need of sizeof() operator\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Mainly, programs know the storage size of the primitive data types. Though the storage size of the data type is constant, it varies when implemented in different platforms. For example, we dynamically allocate the array space by using sizeof() operator:

int *ptr=malloc(10*sizeof(int)); 
 
In the above example, we use the sizeof() operator, which is applied to the cast of type int. We use malloc() function to allocate the memory and returns the pointer which is pointing to this allocated memory. The memory space is equal to the number of bytes occupied by the int data type and multiplied by 10.

The sizeof() operator behaves differently according to the type of the operand.

1. Operand is a data type
2. Operand is an expression\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'When operand is data type\n',
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
int main()  
{  
    int x=89;    // variable declaration.  
    printf("size of the variable x is %d", sizeof(x));  // Displaying the size of ?x? variable.  
    printf("\\nsize of the integer data type is %d",sizeof(int)); //Displaying the size of integer data type.  
    printf("\\nsize of the character data type is %d",sizeof(char)); //Displaying the size of character data type.  
  
    printf("\\nsize of the floating data type is %d",sizeof(float)); //Displaying the size of floating data type.  
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
size of the variable x is 4 
size of the integer data type is 4
size of the character data type is 1
size of the floating data type is 4"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'When operand is expression\n',
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
int main()  
{  
  double i=78.0; //variable initialization.  
  float j=6.78; //variable initialization.  
  printf("size of (i+j) expression is : %d",sizeof(i+j)); //Displaying the size of the expression (i+j).  
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
              child: const Text("""Output: size of (i+j) expression is : 8"""),
            ),
          ],
        ),
      ),
    );
  }
}

