import 'package:flutter/material.dart';
import 'placeholder_widget.dart' ;
import 'package:flutter/cupertino.dart';

// initialises the bottom navigation bar widget

class Home extends StatefulWidget {
 @override
 State<StatefulWidget> createState() {
    return _HomeState();
  }
}

// state of the tabs -> specifically what is displayed in each of the tabs

class _HomeState extends State<Home> {
  int _currentIndex = 0;
  final List<Widget> _children = [
    TimerWidget(), //TimerWidget where button widget and timer widget is defined
    PlaceholderWidget(Colors.white), // placeholderwidget is defined in the placeholder_widget.dart file: this sets the colour of the tabs
    PlaceholderWidget(Colors.white),
  ];
 @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       title: Text('Sati'),
     ),
     body: _children[_currentIndex],
     bottomNavigationBar: BottomNavigationBar(
       onTap: onTabTapped,
       currentIndex: _currentIndex, // this will be set when a new tab is tapped
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.timer),
           title: new Text('Timer'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.timelapse),
           title: new Text('Progress'),
         ),
         BottomNavigationBarItem(
           icon: Icon(Icons.settings),
           title: Text('Settings'),
         ),
       ],
     ),
   );
 }
 void onTabTapped(int index) {
   setState(() {
     _currentIndex = index;
   });
 }
}
