import 'package:flutter/material.dart';
import 'widgets/FirstPage.dart' as first;
import 'widgets/SecondPage.dart' as second;
import 'widgets/ThirdPage.dart' as third;

void main() => runApp(MaterialApp(
    home: new MyTabs(),
    theme: ThemeData(
      canvasColor: Colors.white,
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      accentColor: Colors.blueAccent,
      brightness: Brightness.light,
    ),
  ));

class MyTabs extends StatefulWidget {
  @override
  MyTabsState createState() => new MyTabsState();
}

class MyTabsState extends State<MyTabs> with SingleTickerProviderStateMixin {
  TabController controller;

  @override
  void initState() {
    super.initState();
    controller = new TabController(
      vsync: this, 
      length: 3);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  // Building the widgets for the App Bar and the Tab Bar with 3 Tabs
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Sati"), 
        backgroundColor: Colors.deepPurple,
        bottom: new TabBar(
          controller: controller,
          tabs: <Tab>[
            new Tab(
              icon: new Icon(Icons.timer),
              child: Text('Timer'),
            ),
            new Tab(
              icon: new Icon(Icons.timelapse),
              child: Text('Progress'),
              ),
            new Tab(
              icon: new Icon(Icons.settings),
              child: Text('Settings')
              ),
          ]
        )
      ),
      body: new TabBarView(
        controller: controller,
        children: <Widget>[
          new first.FirstPage(),
          new second.SecondPage(),
          new third.ThirdPage()
        ]
      )
    );
  }
}
