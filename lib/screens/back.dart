import 'package:camera/camera.dart';
import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;

  const CameraPage({super.key, required this.cameras});

  @override
  // ignore: library_private_types_in_public_api
  _CameraPageState createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  late CameraController _cameraController;
  late int _selectedCameraIndex;
  late bool _isFlashOn;

  @override
  void initState() {
    super.initState();
    _selectedCameraIndex = 0; // Initialize with the rear camera
    _isFlashOn = false; // Initialize with flash off

    // Initialize the camera controller
    _cameraController = CameraController(
      widget.cameras[_selectedCameraIndex],
      ResolutionPreset.medium,
    );

    // Initialize the camera controller and set flash mode
    _cameraController.initialize().then((_) {
      if (!mounted) {
        return;
      }
      setState(() {});
    });
  }

  @override
  void dispose() {
    _cameraController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_cameraController.value.isInitialized) {
      return Container(); // You can show a loading indicator here.
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Camera'),
        actions: [
          IconButton(
            icon: Icon(
              _isFlashOn ? Icons.flash_on : Icons.flash_off,
              color: Colors.white,
            ),
            onPressed: _toggleFlash,
          ),
          IconButton(
            icon: const Icon(
              Icons.switch_camera,
              color: Colors.white,
            ),
            onPressed: _switchCamera,
          ),
        ],
      ),
      body: CameraPreview(_cameraController),
    );
  }

  void _toggleFlash() {
    setState(() {
      _isFlashOn = !_isFlashOn;
      _cameraController.setFlashMode(
        _isFlashOn ? FlashMode.torch : FlashMode.off,
      );
    });
  }

  void _switchCamera() async {
    final newCameraIndex = (_selectedCameraIndex + 1) % widget.cameras.length;
    setState(() {
      _selectedCameraIndex = newCameraIndex;
    });

    // Dispose of the old camera controller and initialize a new one
    await _cameraController.dispose();
    _cameraController = CameraController(
      widget.cameras[_selectedCameraIndex],
      ResolutionPreset.medium,
    );

    // Initialize the new camera controller and set flash mode
    await _cameraController.initialize();
    if (mounted) {
      setState(() {});
    }
  }
}
