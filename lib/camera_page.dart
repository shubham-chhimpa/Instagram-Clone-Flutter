import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  @override
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  List<CameraDescription> cameras;

  Future<void> initCamera() async {
    cameras = await availableCameras();
  }

  CameraController controller;

  @override
  void initState() {
    super.initState();
    initCamera().then((val) {
      if (cameras == []) {
        CircularProgressIndicator();
      } else {
        controller = CameraController(cameras[1], ResolutionPreset.medium);
        controller.initialize().then((_) {
          if (!mounted) {
            return;
          }
          setState(() {});
        });
      }
    });
  }

  @override
  void dispose() {
    controller?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return controller == null
        ? CircularProgressIndicator()
        : new Stack(
      children: <Widget>[
        CameraPreview(controller),
        Positioned(
          bottom: 20,
          right: (MediaQuery.of(context).size.width / 2) - 26,
          child: GestureDetector(
            onTap: (){},
            child: Icon(
              Icons.camera,
              size: 56,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
