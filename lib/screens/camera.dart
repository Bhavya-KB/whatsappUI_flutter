import 'package:flutter/material.dart';
import 'package:camera/camera.dart';
import 'package:image_picker/image_picker.dart';

class CameraPage extends StatefulWidget {
  final List<CameraDescription> cameras;
  const CameraPage({
    Key? key,
    required this.cameras,
  }) : super(key: key);

  @override
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
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CameraPreview(_cameraController),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                height: MediaQuery.of(context).size.height * 0.20,
                decoration: const BoxDecoration(
                    // borderRadius:
                    //     BorderRadius.vertical(top: Radius.circular(25)),
                    color: Colors.black),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Expanded(
                    //   child: IconButton(
                    //     icon: Icon(
                    //       _isFlashOn ? Icons.flash_on : Icons.flash_off,
                    //       color: Colors.white,
                    //     ),
                    //     color: Colors.white,
                    //     onPressed: _toggleFlashlight,
                    //   ),
                    // ),
                    Expanded(
                      child: IconButton(
                        icon: Icon(
                          _isFlashOn ? Icons.flash_on : Icons.flash_off,
                          color: Colors.white,
                        ),
                        onPressed: _toggleFlash,
                      ),
                    ),

                    Expanded(
                      child: IconButton(
                        onPressed: () {},
                        iconSize: 50,
                        padding: EdgeInsets.zero,
                        icon: const Icon(Icons.circle, color: Colors.white),
                      ),
                    ),

                    Expanded(
                      child: IconButton(
                        icon: const Icon(
                          Icons.switch_camera,
                          color: Colors.white,
                        ),
                        onPressed: _switchCamera,
                      ),
                    ),
                    Expanded(
                      child: IconButton(
                        icon: const Icon(
                          Icons.photo,
                          color: Colors.white,
                        ),
                        onPressed:
                            _openGallery, 
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

  Future<void> _openGallery() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.gallery);

    if (pickedFile != null) {
      // Do something with the picked image (e.g., display it or process it).
      // You can use pickedFile.path to get the file path of the selected image.
    }
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

    // Dispose of the old camera controller
    await _cameraController.dispose();

    setState(() {
      _selectedCameraIndex = newCameraIndex;
    });

    // Initialize a new camera controller and set flash mode
    _cameraController = CameraController(
      widget.cameras[_selectedCameraIndex],
      ResolutionPreset.medium,
    );

    // Initialize the new camera controller
    await _cameraController.initialize();

    if (mounted) {
      setState(() {});
    }
  }
}
