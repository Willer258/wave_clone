import 'package:flutter/material.dart';
import 'package:camera/camera.dart';

class CameraWidget extends StatefulWidget {
  const CameraWidget({super.key});

  @override
  State<CameraWidget> createState() => _CameraWidgetState();
}

class _CameraWidgetState extends State<CameraWidget> {
  late List<CameraDescription> cameras;
  late CameraController cameraController;

  @override
  void initState() {
    startCamera();

    super.initState();
  }

  Future<void> startCamera() async {
    cameras = await availableCameras();
    cameraController =
        CameraController(cameras[0], ResolutionPreset.high, enableAudio: false);

    await cameraController.initialize().then((value) {
      if (!mounted) {
        return;
      }

      setState(() {});
    }).catchError((e) => print(e));
  }

  @override
  void dispose() {
    cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deviceRatio = size.width / size.height;

    if (cameraController.value.isInitialized) {
      return Scaffold(
        body: Stack(children: [
          Center(
            child: Transform.scale(
                scale: 1.4,
                child: CameraPreview(
                  cameraController,
                )),
          ),
        ]),
      );
    } else {
      return SizedBox();
    }
  }
}
