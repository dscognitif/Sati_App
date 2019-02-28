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

class TimerWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(children: [
          Container(
            margin: EdgeInsets.all(10.0),
            child: RaisedButton(
              onPressed: () {},
              child: Text('Begin'),
            ),
          ),
        ]),
      ),
    );
  }
}
