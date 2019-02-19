import 'package:camera/camera.dart';
import 'package:design_ui/pages/pages.dart';
import 'package:flutter/material.dart';

List<CameraDescription> cameras;

Future<void> main() async{
  cameras = await availableCameras();
  print("Camera size: ${cameras.length}");
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final pageController = PageController();

  MyApp();
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.indigo,
      title: 'Design UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        backgroundColor: Colors.indigo,
        platform: TargetPlatform.fuchsia,
      ),
      home: PageView(
        controller: pageController,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          LuxioPage(),
          TensorFlowPage(pageController: pageController,cameras: cameras),
          ListWheelPage(),
          TodoPage(),
          InVisioPage(
            pageController: pageController,
          ),
        ],
      ),
    );
  }
}
