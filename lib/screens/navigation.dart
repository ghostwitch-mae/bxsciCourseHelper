import 'package:course_helper/screens/home.dart';
import 'package:course_helper/screens/liked.dart';
import 'package:course_helper/screens/search_page.dart';
import 'package:course_helper/screens/settings.dart';
import 'package:course_helper/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  _NavigationState createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int _selectedIndex = 0;
  PageController pageController = PageController();
  void onTapped(int index){
    setState(() {
      _selectedIndex = index;
    });
    pageController.animateToPage(index, duration: Duration(milliseconds: 1000), curve: Curves.ease);
  }
  final screens = [
    Home(),
    Search(),
    liked(),
    settings(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: screens[_selectedIndex],
        bottomNavigationBar:
        BottomNavigationBar(
          backgroundColor: Colors.green,
            items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home),
          label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search),
              label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.check_box_outlined),
              label: 'Favorites'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),
              label: 'Settings')
        ],
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.green,
          unselectedItemColor: Colors.yellow,
          onTap: onTapped),
        );
  }
}
