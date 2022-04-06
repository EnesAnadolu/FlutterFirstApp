import 'package:enlish_app/quiz/word_search.dart';
import 'package:enlish_app/sign_up.dart';
import 'package:enlish_app/vacobulary_notebook.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int index = 1;
  final screens = [
    SignUp(),
    Notebook(),
    WordSeach()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[index],
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (i) => setState(() {
          this.index = i;
        }),
        selectedIndex: index,
        destinations: [
          NavigationDestination(
            icon: Icon(Icons.home),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.menu_book),
            label: "",
          ),
          NavigationDestination(
            icon: Icon(Icons.search),
            label: "",
          ),NavigationDestination(
            icon: Icon(Icons.person),
            label: "",
          ),
        ],
      ),
    );
  }
}
