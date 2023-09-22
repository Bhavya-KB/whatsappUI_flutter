import 'package:flutter/material.dart';
import 'package:whatsapp/screens/community/model/community_tile.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({super.key});

  @override
  State<CommunityScreen> createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
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
                  PopupMenuItem(value: "Settings", child: Text("Settings")),
                ];
              }),
            ]),
          ]),
      //  body:const Padding(
      //   padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8),
      //   // child:SingleChildScrollView(
      //     child:
      //         Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      //       Row(
      //         children: [
      //           SizedBox(
      //             height: 15,
      //           ),
      //           Stack(
      //             children: [
      //             CircleAvatar(
      //               backgroundColor: Colors.grey,
      //               radius: 30,
      //               backgroundImage:
      //                   AssetImage('assets/pictures/personimage2.jpg'),
      //             ),
      //             Positioned(
      //               top: 40,
      //               left: 40,
      //              child:CircleAvatar(
      //                 backgroundColor: Color.fromARGB(255, 0, 128, 105),
      //                 radius: 10,
      //                 child: Icon(Icons.add, size: 20),
      //               ),
      //             ),
      //           ]),
      //           Expanded(
      //             child: ListTile(
      //               title: Text(
      //                 'New Community',
      //                 style: TextStyle(fontSize: 13),
      //               ),
      //               subtitle: Padding(
      //                 padding: EdgeInsets.only(top: 2.0),
      //               ),
      //             ),
      //           ),
      //         ],
      //       ),
      //       Divider (
      //       color: Color.fromARGB(255, 236, 234, 234),
      //         thickness: 1,
      //       ),
      //       Row(children: [
      //         Stack(children: [
      //           CircleAvatar(
      //             backgroundColor: Colors.grey,
      //             radius: 30,
      //             child: CircleAvatar(
      //               backgroundColor: Colors.grey,
      //               radius: 28,
      //               backgroundImage:
      //                   AssetImage('assets/pictures/peoplegroup.jpg'),
      //             ),
      //           ),
      //         ]),
      //         Expanded(
      //           child: ListTile(
      //             title: Text('College'),
      //             subtitle: Padding(
      //               padding: EdgeInsets.only(top: 2.0),
      //             ),
      //           ),
      //         ),
      //       ]),
      //     ]),
      //   ),

      body: Stack(children: [
        Column(children: [
          Padding(
            padding: EdgeInsets.only(top: 5.0),
            child: ListTile(
              leading: Stack(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage('assets/pictures/personimage2.jpg'),
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
                'New Community',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          Divider(
            color: Color.fromARGB(255, 236, 234, 234),
            thickness: 1,
          ),
          SizedBox(height: 10),
          CommunityTile(),
        ]),
      ]),
    );
  }
}
