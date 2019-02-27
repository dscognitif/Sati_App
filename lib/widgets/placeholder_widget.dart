import 'package:flutter/material.dart';

// intialises the widgets inside each of the tabs in the bottom navigation bar

// colour widget for the tabs 
class PlaceholderWidget extends StatelessWidget {
 final Color color;

 PlaceholderWidget(this.color);

 @override
 Widget build(BuildContext context) {
   return Container(
     color: color,
   );
 }
}

// implementation of  timer Widget

/* class TimerWidget extends StatefulWidget {
  final 
}

  @override 
  Widget build(BuildContext context) {
    return Container(
      
    );
  } */