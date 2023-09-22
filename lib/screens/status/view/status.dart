import 'package:flutter/material.dart';
import 'package:whatsapp/screens/status/model/status_tile.dart';

class StatusScreen extends StatefulWidget {
  const StatusScreen({super.key});

  @override
  State<StatusScreen> createState() => _StatusScreenState();
}

class _StatusScreenState extends State<StatusScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 128, 105),
          title: const Text(
            " whatsApp",
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            Row(children: [
              IconButton(
                  icon: const Icon(Icons.camera_alt_rounded), onPressed: () {}),
              const SizedBox(
                width: 3,
              ),
              IconButton(
                  icon: const Icon(Icons.search_rounded), onPressed: () {}),
              const SizedBox(
                width: 3,
              ),
              PopupMenuButton<String>(itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(
                      value: "Status privacy", child: Text("Status privacy")),
                  PopupMenuItem(value: "Settings", child: Text("Settings")),
                ];
              }),
            ]),
          ]),
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

      body: Stack(
        children: [
          Column(
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 5.0),
                child: ListTile(
                  leading: Stack(
                    children: [
                      CircleAvatar(
                        radius: 30,
                        backgroundImage:
                            AssetImage('assets/pictures/personimage5.jpg'),
                      ),
                      Positioned(
                        top: 30,
                        left: 30,
                        child: CircleAvatar(
                          backgroundColor: Color.fromARGB(255, 0, 128, 105),
                          radius: 10,
                          child: Icon(Icons.add, size: 20),
                        ),
                      ),
                    ],
                  ),
                  title: Text(
                    'My Status',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 1.1,
                color: Color.fromARGB(255, 223, 222, 222),
                padding: const EdgeInsets.only(
                  top: 20,
                  left: 10,
                  bottom: 10,
                ),
                child: const Text(
                  'Recent updates',
                  style: TextStyle(color: Colors.grey, fontSize: 19),
                ),
              ),
              SizedBox(height: 10),
              StatusTile(),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 320,
                  bottom: 15,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 201, 199, 199),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                            ),
                          ]),
                      child: Icon(
                        Icons.edit,
                        size: 20,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      padding: EdgeInsets.all(8),
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: const Color.fromARGB(255, 0, 128, 105),
                          boxShadow: [
                            BoxShadow(color: Colors.grey),
                          ]),
                      child: Icon(
                        Icons.camera_alt_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
