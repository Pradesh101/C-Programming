import 'package:cprogramming/home_screen.dart';
import 'package:flutter/material.dart';

class CBoolean extends StatelessWidget {
  const CBoolean({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: const MyCBoolean(),
    );
  }
}

class MyCBoolean extends StatefulWidget {
  const MyCBoolean({Key? key}) : super(key: key);

  @override
  _MyCBooleanState createState() => _MyCBooleanState();
}

class _MyCBooleanState extends State<MyCBoolean> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C Boolean'),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          color: Colors.white,
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
              '''In C, Boolean is a data type that contains two types of values, i.e., 0 and 1. Basically, the bool type value represents two types of behavior, either true or false. Here, '0' represents false value, while '1' represents true value.

In C Boolean, '0' is stored as 0, and another integer is stored as 1. We do not require to use any header file to use the Boolean data type in C++, but in C, we have to use the header file, i.e., stdbool.h. If we do not use the header file, then the program will not compile.

Syntax: bool variable_name;
  
In the above syntax, bool is the data type of the variable, and variable_name is the name of the variable.

Let's understand through an example.''',
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 15,
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
#include<stdbool.h>  
int main()  
{  
bool x=false; // variable initialization.  
if(x==true) // conditional statements  
{  
printf("The value of x is true");  
}  
else  
printf("The value of x is FALSE");  
return 0;  
} """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "In the above code, we have used <stdbool.h> header file so that we can use the bool type variable in our program."
              "After the declaration of the header file, we create the bool type variable 'x' and assigns a 'false' value to it. "
              "Then, we add the conditional statements, i.e., if..else, to determine whether the value of 'x' is true or not.",
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
              child: const Text('''Output: The value of x is FALSE'''),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Boolean Array',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''Now, we create a bool type array. The Boolean array can contain either true or false value, and the values of the array can be accessed with the help of indexing.

Let's understand this scenario through an example.
''',
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
#include<stdbool.h>  
int main()  
{  
bool b[2]={true,false}; // Boolean type array  
for(int i=0;i<2;i++) // for loop  
{  
printf("%d,",b[i]); // printf statement  
}  
return 0;  
}  """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              'In the above code, we have declared a Boolean type array containing two values, i.e., true and false.',
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
              child: const Text('''Output: 1,0,'''),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'typedef',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''There is another way of using Boolean value, i.e., typedef. Basically, typedef is a keyword in C language, which is used to assign the name to the already existing datatype.

Let's see a simple example of typedef.
''',
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
typedef enum{false,true} b;  
int main()  
{  
b x=false; // variable initialization  
if(x==true) // conditional statements  
{  
printf("The value of x is true");  
}  
else  
{  
printf("The value of x is false");  
}  
return 0;  
}  """),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''In the above code, we use the Boolean values, i.e., true and false, but we have not used the bool type. We use the Boolean values by creating a new name of the 'bool' type. In order to achieve this, the typedef keyword is used in the program.

typedef enum{false,true} b;  

The above statement creates a new name for the 'bool' type, i.e., 'b' as 'b' can contain either true or false value. We use the 'b' type in our program and create the 'x' variable of type 'b'.
''',
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
              child: const Text('''Output: The value of x is false'''),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Boolean with Logical Operators',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''&&(AND Operator): It is a logical operator that takes two operands. If the value of both the operands are true, then this operator returns true otherwise false

||(OR Operator): It is a logical operator that takes two operands. If the value of both the operands is false, then it returns false otherwise true.

!(NOT Operator): It is a NOT operator that takes one operand. If the value of the operand is false, then it returns true, and if the value of the operand is true, then it returns false.

Let's understand through an example.
''',
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
#include<stdbool.h>  
int main()  
{  
bool x=false;  
bool y=true;  
printf("The value of x&&y is %d", x&&y);  
printf("\nThe value of x||y is %d", x||y);  
printf("\nThe value of !x is %d", !x);  
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
              child: const Text('''Output: The value of x&&y is 0 
The value of x||y is 1 
The value of !x is 1 '''),
            ),
          ],
        ),
      ),
    );
  }
}
