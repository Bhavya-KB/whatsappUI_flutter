// import 'package:flutter/material.dart';

// class StatusScreen extends StatefulWidget {
//   const StatusScreen({super.key});

//   @override
//   State<StatusScreen> createState() => _StatusScreenState();
// }

// class _StatusScreenState extends State<StatusScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//           backgroundColor: const Color.fromARGB(255, 0, 128, 105),
//           title: const Text(
//             " whatsApp",
//             style: TextStyle(
//               color: Colors.white,
//               fontSize: 17,
//               fontWeight: FontWeight.bold,
//             ),
//           ),
//           actions: [
//             Row(children: [
//               IconButton(
//                   icon: const Icon(Icons.camera_alt_rounded), onPressed: () {}),
//               const SizedBox(
//                 width: 3,
//               ),
//               IconButton(
//                   icon: const Icon(Icons.search_rounded), onPressed: () {}),
//               const SizedBox(
//                 width: 3,
//               ),
//               // IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
//               PopupMenuButton<String>(itemBuilder: (BuildContext context) {
//                 return const [
//                   PopupMenuItem(
//                       value: "Status privacy",
//                       child: Text("Status privacy")),
//                   PopupMenuItem(value: "Settings", child: Text("Settings")),
//                 ];
//               }),
//             ]),
//           ]),
//       body: const Padding(
//         padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
//         child: SingleChildScrollView(
//           child:
//               Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
//             Row(
//               children: [
//                 Stack(
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: Colors.grey,
//                       radius: 30,
//                       backgroundImage:
//                           AssetImage('assets/pictures/personimage5.jpg'),
//                     ),
//                     Positioned(
//                       top: 40,
//                       left: 40,
//                       child: CircleAvatar(
//                         backgroundColor: Color.fromARGB(255, 0, 128, 105),
//                         radius: 10,
//                         child: Icon(Icons.add, size: 20),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: ListTile(
//                     title: Text('My Status'),
//                     subtitle: Padding(
//                       padding: EdgeInsets.only(top: 2.0),
//                       child: Text('Tap to add status update'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             Padding(
//               padding: EdgeInsets.only(top: 8.0, bottom: 8.0),
//               child: Text('Recent updates',
//                   style: TextStyle(fontWeight: FontWeight.w100)),
//             ),
//             Row(children: [
//               Stack(children: [
//                 CircleAvatar(
//                   backgroundColor: Colors.grey,
//                   radius: 30,
//                   child: CircleAvatar(
//                     radius: 28,
//                     backgroundImage:
//                         AssetImage('assets/pictures/personimage1.jpg'),
//                   ),
//                 ),
//               ]),
//               Expanded(
//                 child: ListTile(
//                   title: Text('Anju'),
//                   subtitle: Padding(
//                     padding: EdgeInsets.only(top: 2.0),
//                     child: Text('7 minutes ago'),
//                   ),
//                 ),
//               ),
//             ]),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: [
//                 Stack(
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: Colors.grey,
//                       radius: 30,
//                       child: CircleAvatar(
//                         radius: 28,
//                         backgroundImage:
//                             AssetImage('assets/pictures/personimage4.jpg'),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: ListTile(
//                     title: Text('Meena'),
//                     subtitle: Padding(
//                       padding: EdgeInsets.only(top: 2.0),
//                       child: Text('10 minutes ago'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             SizedBox(
//               height: 15,
//             ),
//             Row(
//               children: [
//                 Stack(
//                   children: [
//                     CircleAvatar(
//                       backgroundColor: Colors.grey,
//                       radius: 30,
//                       child: CircleAvatar(
//                         radius: 28,
//                         backgroundImage:
//                             AssetImage('assets/pictures/personimage3.jpg'),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Expanded(
//                   child: ListTile(
//                     title: Text('Rita'),
//                     subtitle: Padding(
//                       padding: EdgeInsets.only(top: 2.0),
//                       child: Text('Today, 2:30 pm'),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ]),
//         ),
//       ),
//       floatingActionButton:
//           Column(mainAxisAlignment: MainAxisAlignment.end, children: [
//         FloatingActionButton(
//           backgroundColor: Colors.grey,
//           onPressed: () {},
//           child: const Icon(
//             Icons.edit,
//             size: 20,
//             color: Colors.black,
//           ),
//         ),
//         const SizedBox(
//           height: 10,
//         ),
//         FloatingActionButton(
//           onPressed: () {},
//           backgroundColor: const Color.fromARGB(255, 0, 128, 105),
//           child: const Icon(
//             Icons.camera_alt_rounded,
//           ),
//         ),
//       ]),
//     );
//   }
// }
