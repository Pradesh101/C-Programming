import 'package:flutter/material.dart';
import '../home_screen.dart';

class StorageClasses extends StatelessWidget {
  const StorageClasses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyStorageClasses(),
    );
  }
}

class MyStorageClasses extends StatefulWidget {
  const MyStorageClasses({Key? key}) : super(key: key);

  @override
  _MyStorageClassesState createState() => _MyStorageClassesState();
}

class _MyStorageClassesState extends State<MyStorageClasses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Storage Classes in C'),
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
              '''Storage classes in C are used to determine the lifetime, visibility, memory location, and initial value of a variable. There are four types of storage classes in C:

1. Automatic
2. External
3. Static
4. Register\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Automatic\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1. Automatic variables are allocated memory automatically at runtime.

2. The visibility of the automatic variables is limited to the block in which they are defined.

3. The scope of the automatic variables is limited to the block in which they are defined.

4. The automatic variables are initialized to garbage by default.

5. The memory assigned to automatic variables gets freed upon exiting from the block.

6. The keyword used for defining automatic variables is auto.

7. Every local variable is automatic in C by default.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 1\n',
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
int a; //auto  
char b;  
float c;   
printf("%d %c %f",a,b,c); // printing initial default value of automatic variables a, b, and c.   
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
              child: const Text("""Output: garbage garbage garbage"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2\n',
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
int a = 10,i;   
printf("%d ",++a);  
{  
int a = 20;   
for (i=0;i<3;i++)  
{  
printf("%d ",a); // 20 will be printed 3 times since it is the local value of a  
}  
}  
printf("%d ",a); // 11 will be printed since the scope of a = 20 is ended.   
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
              child: const Text("""Output:  11 20 20 20 11"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Static\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1. The variables defined as static specifier can hold their value between the multiple function calls.

2. Static local variables are visible only to the function or the block in which they are defined.

3. A same static variable can be declared many times but can be assigned at only one time.

4. Default initial value of the static integral variable is 0 otherwise null.

5. The visibility of the static global variable is limited to the file in which it has declared.

6. The keyword used to define static variable is static.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 1\n',
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
static char c;  
static int i;  
static float f;   
static char s[100];  
void main ()  
{  
printf("%d %d %f %s",c,i,f); // the initial default value of c, i, and f will be printed.   
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
              child: const Text("""Output: 0 0 0.000000 (null)"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2\n',
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
void sum()  
{  
static int a = 10;  
static int b = 24;   
printf("%d %d \n",a,b);  
a++;   
b++;  
}  
void main()  
{  
int i;  
for(i = 0; i< 3; i++)  
{  
sum(); // The static variables holds their value between multiple function calls.    
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
10 24 
11 25 
12 26"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Register\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1. The variables defined as the register is allocated the memory into the CPU registers depending upon the size of the memory remaining in the CPU.

2. We can not dereference the register variables, i.e., we can not use &operator for the register variable.

3. The access time of the register variables is faster than the automatic variables.

4. The initial default value of the register local variables is 0.

5. The register keyword is used for the variable which should be stored in the CPU register. However, it is compiler?s choice whether or not; the variables can be stored in the register.

6. We can store pointers into the register, i.e., a register can store the address of a variable.

7. Static variables can not be stored into the register since we can not use more than one storage specifier for the same variable.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 1\n',
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
register int a; // variable a is allocated memory in the CPU register. The initial default value of a is 0.   
printf("%d",a);  
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
              child: const Text("""Output: 0"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2\n',
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
register int a = 0;   
printf("%u",&a); // This will give a compile time error since we can not access the address of a register variable.   
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
main.c:5:5: error: address of register variable ?a? requested
printf("%u",&a);
^~~~~~"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'External\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''1. The external storage class is used to tell the compiler that the variable defined as extern is declared with an external linkage elsewhere in the program.

2. The variables declared as extern are not allocated any memory. It is only declaration and intended to specify that the variable is declared elsewhere in the program.

3. The default initial value of external integral type is 0 otherwise null.

4. We can only initialize the extern variable globally, i.e., we can not initialize the external variable within any block or method.

5. An external variable can be declared many times but can be initialized at only once.

6. If a variable is declared as external then the compiler searches for that variable to be initialized somewhere in the program which may be extern or static. If it is not, then the compiler will show an error.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 1\n',
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
extern int a;   
printf("%d",a);  
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
main.c:(.text+0x6): undefined reference to `a'
collect2: error: ld returned 1 exit status"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 2\n',
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
int a;   
int main()  
{  
extern int a; // variable a is defined globally, the memory will not be allocated to a  
printf("%d",a);  
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
              child: const Text("""Output: 0 """),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 3\n',
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
int a;   
int main()  
{  
extern int a = 0; // this will show a compiler error since we can not use extern and initializer at same time   
printf("%d",a);  
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
compile time error 
main.c: In function ?main?:
main.c:5:16: error: ?a? has both ?extern? and initializer
extern int a = 0;"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 4\n',
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
extern int a; // Compiler will search here for a variable a defined and initialized somewhere in the pogram or not.   
printf("%d",a);  
}  
int a = 20;"""),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: 20"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Example 5\n',
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
              child: const Text("""extern int a;  
int a = 10;   
#include <stdio.h>  
int main()  
{  
printf("%d",a);  
}  
int a = 20; // compiler will show an error at this line """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: compile time error"""),
            ),
          ],
        ),
      ),
    );
  }
}
