import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:tflite/tflite.dart';

class TensorFlowPage extends StatefulWidget {
  final PageController pageController;
  final List<CameraDescription> cameras;

  const TensorFlowPage({Key key, this.pageController, this.cameras})
      : super(key: key);

  @override
  _TensorFlowPageState createState() => _TensorFlowPageState();
}

class _TensorFlowPageState extends State<TensorFlowPage> {
  CameraController controller;

  @override
  void initState() {
    super.initState();
    controller = CameraController(widget.cameras[0], ResolutionPreset.high);
    controller.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _cameraPreviewWidget(),
      floatingActionButton: FloatingActionButton(
          child: Icon(Icons.arrow_upward),
          onPressed: () {
            widget.pageController.previousPage(
                duration: Duration(seconds: 1), curve: Curves.bounceIn);
          }),
    );
  }

  Widget _cameraPreviewWidget() {
    if (!controller.value.isInitialized) {
      print("Initialized Camera!");
      return Container();
    }
    return Column(
      children: <Widget>[
        AspectRatio(
            aspectRatio: controller.value.aspectRatio,
            child: CameraPreview(controller)),
        RaisedButton(
          child: Text("Start detection"),
          onPressed: () async {
            String res = await Tflite.loadModel(
                model: "assets/ssd_mobilenet.tflite",
                labels: "assets/ssd_mobilenet.txt",
                numThreads: 1 // defaults to 1
                );
            print("Model loaded: $res");

            controller.startImageStream((n) async {
              var recognitions = await Tflite.detectObjectOnFrame(
                bytesList: n.planes.map((plane) {
                  return plane.bytes;
                }).toList(), // required
                imageHeight: n.height,
                imageWidth: n.width,
                imageMean: 127.5, // defaults to 127.5
                imageStd: 127.5, // defaults to 127.5
                rotation: 90, // defaults to 90, Android only
                threshold: 0.1, // defaults to 0.1
              );
              print("${recognitions.toString()}");
            });
          },
        ),
        RaisedButton(
          child: Text("Stop Detection"),
          onPressed: () async {
            await Tflite.close();
            await controller.stopImageStream();
          },
        )
      ],
    );
  }

  @override
  void dispose() async {
    controller?.dispose();
    super.dispose();
  }
}
