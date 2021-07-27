import 'package:flutter/material.dart';
import 'package:inflearn/screen/HomeScreen.dart';
import 'package:inflearn/widget/BattomBar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {

  _MyAppState createState() => _MyAppState();

}

class _MyAppState extends State<MyApp> {
  late TabController controller;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'RoFlix',
      theme: ThemeData(
          brightness: Brightness.dark,
          primaryColor: Colors.black,
          accentColor: Colors.white),
          home: DefaultTabController(
            length: 4,
            child: Scaffold(
              body: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                children: [
                  HomeScreen(),
                  Container(child: Center(child: Text('Search'),),),
                  Container(child: Center(child: Text('Content'),),),
                  Container(child: Center(child: Text('List'),),),],
              ),
              bottomNavigationBar: BottomBar(),
            ),
          ),
    );

  }

}
