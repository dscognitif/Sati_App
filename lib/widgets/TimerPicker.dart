import 'package:flutter/material.dart';

class TextFieldInput extends StatefulWidget {
  @override
  TextFieldInputState createState() => TextFieldInputState();
}

class TextFieldInputState extends State<TextFieldInput> {
  TextEditingController timerController;

  @override
  void dispose() {
    timerController.dispose();
    super.dispose();
  }

 //  String 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Timer Picker"),
        backgroundColor: Colors.deepPurple,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TextField(
          keyboardType: TextInputType.number,
          decoration: InputDecoration(
            icon: Icon(Icons.timer),
            hintText: "Please enter timer value in minutes"
          ),
          controller: timerController,
          onSubmitted: (v) => timerController.text = v,
        ),
      ),
    );
  }
}