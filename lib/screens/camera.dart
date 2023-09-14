import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:torch_light/torch_light.dart';

class CameraPage extends StatefulWidget {
  const CameraPage({
    Key? key,
    required this.cameras,
  }) : super(key: key);

  final List<CameraDescription>? cameras;

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _cameraController;
  bool _isRearCameraSelected = true;
  bool _isFlashOn = false; // Track the flashlight state

  GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    initCamera(widget.cameras![0]);
  }

  Future<void> initCamera(CameraDescription cameraDescription) async {
    _cameraController =
        CameraController(cameraDescription, ResolutionPreset.high);
    try {
      await _cameraController.initialize().then((_) {
        if (!mounted) return;
        setState(() {});
      });
    } on CameraException catch (e) {
      debugPrint("camera error $e");
    }
  }

  Future<void> _toggleFlashlight() async {
    try {
      if (_isFlashOn) {
        await TorchLight.disableTorch();
      } else {
        bool isCameraInUse = await _isCameraInUse();

        if (!isCameraInUse) {
          await TorchLight.enableTorch();
        } else {
          // Handle the case where the camera is in use
          // You can show a message to the user or take appropriate action
          // For example, display a snackbar asking the user to close other camera apps.
          // _scaffoldKey.currentState!.showSnackBar(
          //   SnackBar(
          //     content: Text('Close any other camera apps and try again.'),
          //     duration: Duration(seconds: 3),
          //   ),
          // );
        }
      }
      setState(() {
        _isFlashOn = !_isFlashOn;
      });
    } catch (e) {
      debugPrint("flashlight error $e");
    }
  }

  // Function to check if the camera is in use
  Future<bool> _isCameraInUse() async {
    final cameras = await availableCameras();
    for (final camera in cameras) {
      final controller = CameraController(camera, ResolutionPreset.high);
      try {
        await controller.initialize();
        controller.dispose();
      } catch (e) {
        // If initializing the camera fails, it's likely in use
        return true;
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey, // Set the scaffold key for showing the snackbar
      body: SafeArea(
        child: Stack(
          children: [
            (_cameraController.value.isInitialized)
                ? CameraPreview(_cameraController)
                : Container(
                    color: Colors.black,
                    child: const Center(child: CircularProgressIndicator())),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: const BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(24)),
                    color: Colors.black),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: IconButton(
                        padding: EdgeInsets.zero,
                        iconSize: 30,
                        icon: Icon(
                            _isRearCameraSelected
                                ? CupertinoIcons.switch_camera
                                : CupertinoIcons.switch_camera_solid,
                            color: Colors.white),
                        onPressed: () {
                          setState(() =>
                              _isRearCameraSelected = !_isRearCameraSelected);
                          initCamera(
                              widget.cameras![_isRearCameraSelected ? 0 : 1]);
                        },
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 50,
                        padding: EdgeInsets.zero,
                        constraints: const BoxConstraints(),
                        icon: const Icon(Icons.circle, color: Colors.white),
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: Icon(
                          _isFlashOn ? Icons.flash_on : Icons.flash_off,
                          color: Colors.white,
                        ),
                        color: Colors.white,
                        onPressed: _toggleFlashlight,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }
}
