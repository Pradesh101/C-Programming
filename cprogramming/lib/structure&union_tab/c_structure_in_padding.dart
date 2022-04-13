import 'package:flutter/material.dart';
import '../home_screen.dart';

class CSiP extends StatelessWidget {
  const CSiP({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCSiP(),
    );
  }
}

class MyCSiP extends StatefulWidget {
  const MyCSiP({Key? key}) : super(key: key);

  @override
  _MyCSiPState createState() => _MyCSiPState();
}

class _MyCSiPState extends State<MyCSiP> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Structure Padding in C'),
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
        padding: const EdgeInsets.only(left: 10, top: 18, right: 10),
        child: Column(
          children: [
            const Text(
              '''Structure padding is a concept in C that adds the one or more empty bytes between the memory addresses to align the data in memory.

Let's first understand the structure padding in C through a simple scenario which is given below:

Suppose we create a user-defined structure. When we create an object of this structure, then the contiguous memory will be allocated to the structure members.

struct student  
{  
   char a;  
   char b;  
   int c;  
} stud1;  

In the above example, we have created a structure of type student. We have declared the object of this structure named as 'stud1'. After the creation of an object, a contiguous block of memory is allocated to its structure members. First, the memory will be allocated to the 'a' variable, then 'b' variable, and then 'c' variable.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'What is the size of the struct student?\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Now, we calculate the size of the struct student. We assume that the size of the int is 4 bytes, and the size of the char is 1 byte.

struct student  
{  
  char a; // 1 byte  
  char b; // 1 byte  
  int c; // 4 bytes   
}  

In the above case, when we calculate the size of the struct student, size comes to be 6 bytes. But this answer is wrong. Now, we will understand why this answer is wrong? We need to understand the concept of structure padding.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Structure Padding\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The processor does not read 1 byte at a time. It reads 1 word at a time.

What does the 1 word mean?

If we have a 32-bit processor, then the processor reads 4 bytes at a time, which means that 1 word is equal to 4 bytes.

1 word = 4 bytes  

If we have a 64-bit processor, then the processor reads 8 bytes at a time, which means that 1 word is equal to 8 bytes.

1 word = 8 bytes 
 
Therefore, we can say that a 32-bit processor is capable of accessing 4 bytes at a time, whereas a 64-bit processor is capable of accessing 8 bytes at a time. It depends upon the architecture that what would be the size of the word.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "What's the problem?\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The 4-bytes can be accessed at a time as we are considering the 32-bit architecture. The problem is that in one CPU cycle, one byte of char a, one byte of char b, and 2 bytes of int c can be accessed. We will not face any problem while accessing the char a and char b as both the variables can be accessed in one CPU cycle, but we will face the problem when we access the int c variable as 2 CPU cycles are required to access the value of the 'c' variable. In the first CPU cycle, the first two bytes are accessed, and in the second cycle, the other two bytes are accessed.

Suppose we do not want to access the 'a' and 'b' variable, we only want to access the variable 'c', which requires two cycles. The variable 'c' is of 4 bytes, so it can be accessed in one cycle also, but in this scenario, it is utilizing 2 cycles. This is an unnecessary wastage of CPU cycles. Due to this reason, the structure padding concept was introduced to save the number of CPU cycles. The structure padding is done automatically by the compiler. Now, we will see how structure padding is done.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "How is structure padding done?\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
                '''In order to achieve the structure padding, an empty row is created on the left, as shown in the above diagram, and the two bytes which are occupied by the 'c' variable on the left are shifted to the right. So, all the four bytes of 'c' variable are on the right. Now, the 'c' variable can be accessed in a single CPU cycle. After structure padding, the total memory occupied by the structure is 8 bytes (1 byte+1 byte+2 bytes+4 bytes), which is greater than the previous one. Although the memory is wasted in this case, the variable can be accessed within a single cycle.

Let's create a simple program of structures.\n''',
                textAlign: TextAlign.justify),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include <stdio.h>  
struct student  
{  
   char a;  
   char b;  
   int c;  
};  
int main()  
{  
   struct student stud1; // variable declaration of the student type..  
   // Displaying the size of the structure student.  
   printf("The size of the student structure is %d", sizeof(stud1));  
   return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''In the above code, we have created a structure named 'student'. Inside the main() method, we declare a variable of student type, i.e., stud1, and then we calculate the size of the student by using the sizeof() operator. The output would be 8 bytes due to the concept of structure padding, which we have already discussed in the above.''',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                  """Output: The size of the student structure is 8"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "Changing order of the variables\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Now, we will see what happens when we change the order of the variables, does it affect the output of the program. Let's consider the same program.\n''',
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
struct student  
{  
   char a;  
   int b;  
   char c;  
};  
int main()  
{  
   struct student stud1; // variable declaration of the student type..  
   // Displaying the size of the structure student.  
   printf("The size of the student structure is %d", sizeof(stud1));  
   return 0;  
}"""),
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              '''The above code is similar to the previous code; the only thing we change is the order of the variables inside the structure student. Due to the change in the order, the output would be different in both the cases. In the previous case, the output was 8 bytes, but in this case, the output is 12 bytes, as we can observe in the below screenshot.''',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text(
                  """Output: The size of the student structure is 12"""),
            ),
            const Text(
              '''Now, we need to understand "why the output is different in this case".

1. First, memory is allocated to the char a variable, i.e., 1 byte.

2. Now, the memory will be allocated to the int b Since the int variable occupies 4 bytes, but on the left, only 3 bytes are available. The empty row will be created on these 3 bytes, and the int variable would occupy the other 4 bytes so that the integer variable can be accessed in a single CPU cycle.

3. Now, the memory will be given to the char c At a time, CPU can access 1 word, which is equal to 4 bytes, so CPU will use 4 bytes to access a 'c' variable. Therefore, the total memory required is 12 bytes (4 bytes +4 bytes +4 bytes), i.e., 4 bytes required to access char a variable, 4 bytes required to access int b variable, and other 4 bytes required to access a single character of 'c' variable.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "How to avoid the structure padding in C?\n",
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''The structural padding is an in-built process that is automatically done by the compiler. Sometimes it required to avoid the structure padding in C as it makes the size of the structure greater than the size of the structure members.

We can avoid the structure padding in C in two ways:

1. Using #pragma pack(1) directive
2. Using attribute\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "1. Using #pragma pack(1) directive\n",
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
#pragma pack(1)  
struct base  
{  
    int a;  
    char b;  
    double c;  
};  
int main()  
{  
  struct base var; // variable declaration of type base  
  // Displaying the size of the structure base  
  printf("The size of the var is : %d", sizeof(var));  
return 0;  
}"""),
            ),
            const Text(
              '''\nIn the above code, we have used the #pragma pack(1) directive to avoid the structure padding. If we do not use this directive, then the output of the above program would be 16 bytes. But the actual size of the structure members is 13 bytes, so 3 bytes are wasted. To avoid the wastage of memory, we use the #pragma pack(1) directive to provide the 1-byte packaging.''',
              textAlign: TextAlign.justify,
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: The size of the var is 13"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                "2. Using attribute\n",
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
  
struct base  
{  
    int a;  
    char b;  
    double c;  
}__attribute__((packed));  ;  
int main()  
{  
  struct base var; // variable declaration of type base  
  // Displaying the size of the structure base  
  printf("The size of the var is : %d", sizeof(var));  
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
              child: const Text("""Output: The size of the var is 13"""),
            ),
          ],
        ),
      ),
    );
  }
}
