// import 'package:flutter/material.dart';
// import 'package:camera/camera.dart';
// import 'package:image_picker/image_picker.dart';
// // import 'package:path_provider/path_provider.dart';
// // import 'dart:io';

// class CameraPage extends StatefulWidget {
//   final List<CameraDescription> cameras;
//   const CameraPage({
//     Key? key,
//     required this.cameras,
//   }) : super(key: key);

//   @override
//   _CameraPageState createState() => _CameraPageState();
// }

// class _CameraPageState extends State<CameraPage> {
//   late CameraController _cameraController;
//   late int _selectedCameraIndex;
//   late bool _isFlashOn;
//   bool _isRecording = false;
//   bool _isPhotoCapture = false;
//   // late String _videoPath;

//   get path => null;

//   @override
//   void initState() {
//     super.initState();
//     _selectedCameraIndex = 0; // Initialize with the rear camera
//     _isFlashOn = false; // Initialize with flash off

//     // Initialize the camera controller
//     _cameraController = CameraController(
//       widget.cameras[_selectedCameraIndex],
//       ResolutionPreset.medium,
//     );

//     // Initialize the camera controller and set flash mode
//     _cameraController.initialize().then((_) {
//       if (!mounted) {
//         return;
//       }
//       setState(() {});
//     });
//   }

//   @override
//   void dispose() {
//     _cameraController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: Stack(
//           children: [
//             Positioned.fill(
//               child: _cameraController.value.isInitialized
//                   ? CameraPreview(
//                       _cameraController) // Replace with CameraPreview
//                   : const CircularProgressIndicator(), // Add a loading indicator while initializing
//             ),
//             Positioned(
//               bottom: 0,
//               left: 0,
//               right: 0,
//               child: Container(
//                 color: Colors.black,
//                 padding: const EdgeInsets.all(58.0),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     IconButton(
//                       icon: const Icon(
//                         Icons.flip_camera_android,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                       onPressed: _switchCamera,
//                     ),
//                     IconButton(
//                       onPressed: () {
//                         if (!_isRecording && _isPhotoCapture) {
                          
//                           setState(() {
//                             _isRecording = false;
//                           });
//                         } else {
//                           if (!_isRecording) {
//                             _recordVideo();
//                           } else {
                            
//                           }
//                         }
//                       },
//                       iconSize: 70,
//                       padding: EdgeInsets.zero,
//                       icon: Icon(
//                         Icons.circle,
//                         color: _isRecording || !_isPhotoCapture
//                             ? Colors.red
//                             : Colors.white,
//                       ),
//                     ),
//                     IconButton(
//                       icon: const Icon(
//                         Icons.photo_library,
//                         color: Colors.white,
//                         size: 30,
//                       ),
//                       onPressed: _openGallery,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               top: 0.0,
//               right: 0.0,
//               child: Row(
//                 children: [
//                   IconButton(
//                     icon: Icon(
//                       _isFlashOn ? Icons.flash_on : Icons.flash_off,
//                       color: _isFlashOn ? Colors.yellow : Colors.white,
//                     ),
//                     onPressed: _toggleFlash,
//                   ),
//                 ],
//               ),
//             ),
//             Positioned(
//               top: 0.0,
//               left: 0.0,
//               child: IconButton(
//                   icon: Icon(
//                     Icons.cancel_outlined,
//                     color: Colors.white,
//                     size: 30,
//                   ),
//                   onPressed: () {
//                     Navigator.pop(context);
//                   }),
//             ),
//             Positioned(
//               bottom: 0, 
//               left: 0,
//               right: 0,
//               child: Container(
//                 color: Colors.black,
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _isRecording = !_isRecording;
//                           _isPhotoCapture = false; 
//                         });
//                         _recordVideo(); 
//                       },
//                       child: const Text(
//                         'Video',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.white, // Set text color to white
//                         ),
//                       ),
//                     ),
//                     ElevatedButton(
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.black,
//                       ),
//                       onPressed: () {
//                         setState(() {
//                           _isRecording = false;
//                           _isPhotoCapture = true;
//                         });
//                         _captureImage(); 
//                       },
//                       child: const Text(
//                         'Photo',
//                         style: TextStyle(
//                           fontSize: 20.0,
//                           color: Colors.white, 
//                         ),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Future<void> _openGallery() async {
//     final picker = ImagePicker();
//     final pickedFile = await picker.pickImage(source: ImageSource.gallery);

//     if (pickedFile != null) {
      
//     }
//   }

//   void _toggleFlash() {
//     setState(() {
//       _isFlashOn = !_isFlashOn;
//       _cameraController.setFlashMode(
//         _isFlashOn ? FlashMode.torch : FlashMode.off,
//       );
//     });
//   }

//   void _switchCamera() async {
//     final newCameraIndex = (_selectedCameraIndex + 1) % widget.cameras.length;

//     // Dispose of the old camera controller
//     await _cameraController.dispose();

//     setState(() {
//       _selectedCameraIndex = newCameraIndex;
//     });

//     // Initialize a new camera controller and set flash mode
//     _cameraController = CameraController(
//       widget.cameras[_selectedCameraIndex],
//       ResolutionPreset.medium,
//     );

//     // Initialize the new camera controller
//     await _cameraController.initialize();

//     if (mounted) {
//       setState(() {});
//     }
//   }

//   void _captureImage() {}
//   // Implement image capture logic here
//   // async {
//   //   if (_cameraController.value.isInitialized) {
//   //     try {
//   //       // Create a directory to store the image file
//   //       final Directory extDir = await getApplicationDocumentsDirectory();
//   //       final String dirPath = '${extDir.path}/Images/';
//   //       await Directory(dirPath).create(recursive: true);

//   //       // Generate a unique file name for the image
//   //       final String filePath = path.join(dirPath, '${DateTime.now()}.jpg');

//   //       // Take a picture and save it to the specified file path
//   //       await _cameraController.takePicture();

//   //       print('Image captured at: $filePath');
//   //     } on CameraException catch (e) {
//   //       print('Error capturing image: $e');
//   //     }
//   //   }
//   // }

//   void _recordVideo() {}
//   // Implement video recording logic here
// //   async {
// //     if (!_isRecording) {
// //       try {
// //         // Create a directory to store the video file
// //         final Directory extDir = await getApplicationDocumentsDirectory();
// //         final String dirPath = '${extDir.path}/Videos/';
// //         await Directory(dirPath).create(recursive: true);

// //         // Generate a unique file name for the video
// //         final String filePath = path.join(dirPath, '${DateTime.now()}.mp4');

// //         // Start recording
// //         await _cameraController.startVideoRecording();
// //         setState(() {
// //           _isRecording = true;
// //           _videoPath = filePath;
// //         });
// //       } on CameraException catch (e) {
// //         print('Error recording video: $e');
// //       }
// //     } else {
// //       // Stop recording
// //       try {
// //         await _cameraController.stopVideoRecording();
// //         setState(() {
// //           _isRecording = false;
// //         });
// //         // Do something with the recorded video (e.g., save it or display it)
// //         print('Video recorded at: $_videoPath');
// //       } on CameraException catch (e) {
// //         print('Error stopping video recording: $e');
// //       }
// //     }
// //   }
// }
