import 'package:flutter/material.dart';
import 'widgets/home_widget.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
 @override
 Widget build(BuildContext context) {
   return MaterialApp(
     title: 'Sati',
     home: Home(),
   );
 }
}
