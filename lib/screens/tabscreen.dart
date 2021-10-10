import 'package:flutter/material.dart';
import 'package:football_app/screens/homescreen.dart';
import 'package:football_app/screens/live_scores.dart';

class BottomTabScreen extends StatefulWidget {
  @override
  _BottomTabScreenState createState() => _BottomTabScreenState();
}

class _BottomTabScreenState extends State<BottomTabScreen> {
  List<Widget> _pages = [
    MyHomeScreen(),
    LiveScoresScreen(),
  ];
  int _selectedPageIndex = 0;
  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            title: Text('News'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.sports_soccer),
            title: Text("Live Scores"),
          )
        ],
      ),
    );
  }
}
