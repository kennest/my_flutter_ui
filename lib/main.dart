import 'package:design_ui/pages/pages.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final pageController = PageController();

  MyApp();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Design UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          LuxioPage(),
          TodoPage(),
          InVisioPage(
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
