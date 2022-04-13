import 'package:cprogramming/array_tab/array_screen.dart';
import 'package:cprogramming/cs_tab/control_statement_screen.dart';
import 'package:cprogramming/file_handling_tab/file_handling_screen.dart';
import 'package:cprogramming/functions_tab/functions_screen.dart';
import 'package:cprogramming/introduction_tab/introduction_screen.dart';
import 'package:cprogramming/pointer_tab/pointer_screen.dart';
import 'package:cprogramming/string_tab/string_screen.dart';
import 'package:cprogramming/structure&union_tab/structure_union_screen.dart';
import 'package:flutter/material.dart';
import 'package:tab_indicator_styler/tab_indicator_styler.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
      home: DefaultTabController(
        length: 8,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('C Programming'),
            bottom: TabBar(
              // onTap: (index){
              //   int post = index;
              // },
              isScrollable: true,
              unselectedLabelColor: Colors.black,
              indicatorColor: Colors.white,
              indicator: DotIndicator(
                color: Colors.white,
                distanceFromCenter: 16,
                radius: 3,
                paintingStyle: PaintingStyle.fill,
              ),
              tabs: const [
                Tab(text: "Introduction"),
                Tab(text: "Control Statements"),
                Tab(text: "Functions"),
                Tab(text: "Array"),
                Tab(text: "Pointer"),
                Tab(text: "String"),
                Tab(text: "Structure & Union"),
                Tab(text: "File Handling"),
              ],
            ),
          ),
          drawer: Drawer(
            child: ListView(
              // Important: Remove any padding from the ListView.
              padding: EdgeInsets.zero,
              children: <Widget>[
                const DrawerHeader(
                  decoration: BoxDecoration(
                    color: Colors.deepPurple,
                  ),
                  child: Center(
                    child: Text(
                      'Welcome to C Programming',
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.home),
                  title: const Text("Home"),
                  onTap: () {
                    //Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.settings),
                  title: const Text("Settings"),
                  onTap: () {
                    //Navigator.pop(context);
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.contacts),
                  title: const Text("Contact Us"),
                  onTap: () {
                    //Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
          body: const TabBarView(
            children: [
              IntroductionScreen(),
              ControlStatementScreen(),
              FunctionScreen(),
              ArrayScreen(),
              PointerScreen(),
              StringScreen(),
              SUScreen(),
              FileHandlingScreen(),
            ],
          ),
        ),
      ),
    );
  }
}
