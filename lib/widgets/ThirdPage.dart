import 'package:flutter/material.dart';

// Where the settings page will be in the form of vertical buttons

class ThirdPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          RaisedButton(
            onPressed: () {},
            child: const Text('Bell Sounds'),
            color: Colors.lightBlue
          ),
          RaisedButton(
            onPressed: () {},
            child: const Text('Ambient Sounds'),
            color: Colors.lightBlue
          ),
          RaisedButton(
          onPressed: () {},
          textColor: Colors.white,
          padding: const EdgeInsets.all(0.0),
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: <Color>[Colors.red, Colors.green, Colors.blue],
              ),
            ),
            padding: const EdgeInsets.all(20.0),
            child: Text('Gradient Button'),
          ),
        ),
        ],
      ),
    );
  }
}
