import 'package:flutter/material.dart';
import '../home_screen.dart';

class CFileHandling extends StatelessWidget {
  const CFileHandling({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      debugShowCheckedModeBanner: false,
      home: const MyCFileHandling(),
    );
  }
}
class MyCFileHandling extends StatefulWidget {
  const MyCFileHandling({Key? key}) : super(key: key);

  @override
  _MyCFileHandlingState createState() => _MyCFileHandlingState();
}

class _MyCFileHandlingState extends State<MyCFileHandling> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('C File Handling'),
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
        padding: const EdgeInsets.only(left: 10,top: 10,right: 10),
        child: Column(
          children: [
            const Text('''In programming, we may require some specific input data to be generated several numbers of times. Sometimes, it is not enough to only display the data on the console. The data to be displayed may be very large, and only a limited amount of data can be displayed on the console, and since the memory is volatile, it is impossible to recover the programmatically generated data again and again. However, if we need to do so, we may store it onto the local file system which is volatile and can be accessed every time. Here, comes the need of file handling in C.

File handling in C enables us to create, update, read, and delete the files stored on the local file system through our C program. The following operations can be performed on a file.

1. Creation of the new file
2. Opening an existing file
3. Reading from the file
4. Writing to the file
5. Deleting the file\n'''
            ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Functions for file handling\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''There are many functions in the C library to open, read, write, search and close the file. A list of file functions are given below:

1. fopen(): opens new or existing file
2. fprintf(): write data into the file
3. fscanf(): reads data from the file
4. fputc(): writes a character into the file
5. fgetc(): reads a character from file
6. fclose(): closes the file
7. fseek(): sets the file pointer to given position
8. fputw(): writes an integer to file
9. fgetw(): reads an integer from file
10. ftell(): returns current position
11. rewind(): sets the file pointer to the beginning of the file\n'''
              ,textAlign: TextAlign.justify,),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Opening File: fopen()\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''We must open a file before it can be read, write, or update. The fopen() function is used to open a file. The syntax of the fopen() is given below.

FILE *fopen( const char * filename, const char * mode );
  
The fopen() function accepts two parameters:

1. The file name (string). If the file is stored at some specific location, then we must mention the path at which the file is stored. For example, a file name can be like "c://some_folder/some_file.ext".
2. The mode in which the file is to be opened. It is a string.

We can use one of the following modes in the fopen() function.

1. r: opens a text file in read mode
2. w: opens a text file in write mode
3. a: opens a text file in append mode
4. r+: opens a text file in read and write mode
5. w+: opens a text file in read and write mode
6. a+: opens a text file in read and write mode
7. rb: opens a binary file in read mode
8. wb: opens a binary file in write mode
9. ab: opens a binary file in append mode
10. rb+: opens a binary file in read and write mode
11. wb+: opens a binary file in read and write mode
12. ab+: opens a binary file in read and write mode

The fopen function works in the following ways:

1. Firstly, It searches the file to be opened.
2. Then, it loads the file from the disk and place it into the buffer. The buffer is used to provide efficiency for the read operations.
3. It sets up a character pointer which points to the first character of the file.

Consider the following example which opens a file in write mode.\n'''
            ,textAlign: TextAlign.justify,),
            Container(
              //margin: EdgeInsets.only(top: 5),
              padding: const EdgeInsets.all(5),
              alignment: Alignment.topLeft,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.black38, width: 1),
                borderRadius: BorderRadius.circular(5),
              ),
              child: const Text("""#include<stdio.h>  
void main( )  
{  
FILE *fp ;  
char ch ;  
fp = fopen("file_handle.c","r") ;  
while ( 1 )  
{  
ch = fgetc ( fp ) ;  
if ( ch == EOF )  
break ;  
printf("%c",ch) ;  
}  
fclose (fp ) ;  
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
              child: const Text("""Output: The content of the file will be printed.

#include;
void main( )
{
FILE *fp; // file pointer
char ch; 
fp = fopen("file_handle.c","r");
while ( 1 )
{
ch = fgetc ( fp ); //Each character of the file is read and stored in the character file.  
if ( ch == EOF )
break;
printf("%c",ch);
}
fclose (fp );
}"""),
            ),
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'Closing File: fclose()\n',
                textAlign: TextAlign.justify,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            const Text('''The fclose() function is used to close a file. The file must be closed after performing all the operations on it. The syntax of fclose() function is given below:

int fclose( FILE *fp );\n''',
            textAlign: TextAlign.justify,),
          ],
        ),
      ),
    );
  }
}

