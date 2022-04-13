import 'package:flutter/material.dart';
import '../home_screen.dart';

class PointerArithmetic extends StatelessWidget {
  const PointerArithmetic({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyPointerArithmetic(),
    );
  }
}

class MyPointerArithmetic extends StatefulWidget {
  const MyPointerArithmetic({Key? key}) : super(key: key);

  @override
  _MyPointerArithmeticState createState() => _MyPointerArithmeticState();
}

class _MyPointerArithmeticState extends State<MyPointerArithmetic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pointers Arithmetic'),
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
              '''We can perform arithmetic operations on the pointers like addition, subtraction, etc. However, as we know that pointer contains the address, the result of an arithmetic operation performed on the pointer will also be a pointer if the other operand is of type integer. In pointer-from-pointer subtraction, the result will be an integer value. Following arithmetic operations are possible on the pointer in C language:

1. Increment
2. Decrement
3. Addition
4. Subtraction
5. Comparison''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                '\nIncrementing Pointer in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''If we increment a pointer by 1, the pointer will start pointing to the immediate next location. This is somewhat different from the general arithmetic since the value of the pointer will get increased by the size of the data type to which the pointer is pointing.

We can traverse an array by using the increment operation on a pointer which will keep pointing to every element of the array, perform some operation on that, and update itself in a loop.

The Rule to increment the pointer is given below:

new_address= current_address + i * size_of(data type)  

Where i is the number by which the pointer get increased.

32-bit
For 32-bit int variable, it will be incremented by 2 bytes.

64-bit
For 64-bit int variable, it will be incremented by 4 bytes.

Let's see the example of incrementing pointer variable on 64-bit architecture.\n''',
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
int number=50;        
int *p;//pointer to int      
p=&number;//stores the address of number variable        
printf("Address of p variable is %u \\n",p);        
p=p+1;        
printf("After increment: Address of p variable is %u \\n",p); // in our case, p will get incremented by 4 bytes.      
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
Address of p variable is 3214864300 
After increment: Address of p variable is 3214864304"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Traversing an array by using pointer\n',
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
    int arr[5] = {1, 2, 3, 4, 5};  
    int *p = arr;  
    int i;  
    printf("printing array elements...\\n");  
    for(i = 0; i< 5; i++)  
    {  
        printf("%d  ",*(p+i));  
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
printing array elements...
1  2  3  4  5"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Decrementing Pointer in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Like increment, we can decrement a pointer variable. If we decrement a pointer, it will start pointing to the previous location. The formula of decrementing the pointer is given below:
              
new_address= current_address - i * size_of(data type)  

32-bit
For 32-bit int variable, it will be decremented by 2 bytes.

64-bit
For 64-bit int variable, it will be decremented by 4 bytes.

Let's see the example of decrementing pointer variable on 64-bit OS.\n''',
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
void main(){            
int number=50;        
int *p;//pointer to int      
p=&number;//stores the address of number variable        
printf("Address of p variable is %u \\n",p);        
p=p-1;       
printf("After decrement: Address of p variable is %u \\n",p); // P will now point to the immediate previous location.         
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
Address of p variable is 3214864300 
After decrement: Address of p variable is 3214864296"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Pointer Addition\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''We can add a value to the pointer variable. The formula of adding value to pointer is given below:

new_address= current_address + (number * size_of(data type))  

32-bit
For 32-bit int variable, it will add 2 * number.

64-bit
For 64-bit int variable, it will add 4 * number.

Let's see the example of adding value to pointer variable on 64-bit architecture.\n''',
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
int number=50;        
int *p;//pointer to int      
p=&number;//stores the address of number variable        
printf("Address of p variable is %u \\n",p);        
p=p+3;   //adding 3 to pointer variable    
printf("After adding 3: Address of p variable is %u \\n",p);       
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
Address of p variable is 3214864300 
After adding 3: Address of p variable is 3214864312"""),
            ),
            const Text(
              '''As you can see, the address of p is 3214864300. But after adding 3 with p variable, it is 3214864312, i.e., 4*3=12 increment. Since we are using 64-bit architecture, it increments 12. But if we were using 32-bit architecture, it was incrementing to 6 only, i.e., 2*3=6. As integer value occupies 2-byte memory in 32-bit OS.\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'C Pointer Subtraction\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''Like pointer addition, we can subtract a value from the pointer variable. Subtracting any number from a pointer will give an address. The formula of subtracting value from the pointer variable is given below:

new_address= current_address - (number * size_of(data type)) 
 
32-bit
For 32-bit int variable, it will subtract 2 * number.

64-bit
For 64-bit int variable, it will subtract 4 * number.

Let's see the example of subtracting value from the pointer variable on 64-bit architecture.\n''',
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
int number=50;        
int *p;//pointer to int      
p=&number;//stores the address of number variable        
printf("Address of p variable is %u \\n",p);        
p=p-3; //subtracting 3 from pointer variable    
printf("After subtracting 3: Address of p variable is %u \\n",p);        
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
Address of p variable is 3214864300 
After subtracting 3: Address of p variable is 3214864288"""),
            ),
            const Text(
              '''ou can see after subtracting 3 from the pointer variable, it is 12 (4*3) less than the previous address value.

However, instead of subtracting a number, we can also subtract an address from another address (pointer). This will result in a number. It will not be a simple arithmetic operation, but it will follow the following rule.

If two pointers are of the same type,

Address2 - Address1 = (Subtraction of two addresses)/size of data type which pointer points  

Consider the following example to subtract one pointer from an another.\n''',
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
    int i = 100;   
    int *p = &i;  
    int *temp;  
    temp = p;   
    p = p + 3;  
    printf("Pointer Subtraction: %d - %d = %d",p, temp, p-temp);  
} """),
            ),
            Container(
              margin: const EdgeInsets.only(top: 10, bottom: 15),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""Output: Pointer Subtraction: 1030585080 - 1030585068 = 3"""),
            ),
            const Text(
              '''There are various operations which can not be performed on pointers. Since, pointer stores address hence we must ignore the operations which may lead to an illegal address, for example, addition, and multiplication. A list of such operations is given below.

  1. Address + Address = illegal
  2. Address * Address = illegal
  3. Address % Address = illegal
  4. Address / Address = illegal
  5. Address & Address = illegal
  6. Address ^ Address = illegal
  7. Address | Address = illegal
  8. ~Address = illegal\n''',
              textAlign: TextAlign.justify,
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pointer to function in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''As we discussed in the previous chapter, a pointer can point to a function in C. However, the declaration of the pointer variable must be the same as the function. Consider the following example to make a pointer pointing to the function.\n''',
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
int addition ();  
int main ()  
{  
    int result;   
    int (*ptr)();  
    ptr = &addition;  
    result = (*ptr)();  
    printf("The sum is %d",result);  
}  
int addition()  
{  
    int a, b;   
    printf("Enter two numbers:");  
    scanf("%d %d",&a,&b);  
    return a+b;  
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
Enter two numbers:10 15 
The sum is 25"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Pointer to Array of functions in C\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text(
              '''To understand the concept of an array of functions, we must understand the array of function. Basically, an array of the function is an array which contains the addresses of functions. In other words, the pointer to an array of functions is a pointer pointing to an array which contains the pointers to the functions. Consider the following example.\n''',
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
int show();  
int showadd(int);  
int (*arr[3])();  
int (*(*ptr)[3])();  
  
int main ()  
{  
    int result1;  
    arr[0] = show;  
    arr[1] = showadd;  
    ptr = &arr;  
    result1 = (**ptr)();  
    printf("printing the value returned by show : %d",result1);  
    (*(*ptr+1))(result1);  
}  
int show()  
{  
    int a = 65;  
    return a++;  
}  
int showadd(int b)  
{  
    printf("\\nAdding 90 to the value returned by show: %d",b+90);  
}  """),
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
printing the value returned by show : 65 
Adding 90 to the value returned by show: 155"""),
            ),
          ],
        ),
      ),
    );
  }
}
