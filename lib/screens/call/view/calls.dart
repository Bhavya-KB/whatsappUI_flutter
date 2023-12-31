import 'package:flutter/material.dart';
// import 'package:path/path.dart';

import 'package:whatsapp/controller/whatsappdatas.dart';
import 'package:whatsapp/screens/call/models/call_tile.dart';
import 'package:whatsapp/screens/chat/model/divider.dart';

Data data = Data();

class PhoneScreen extends StatefulWidget {
  const PhoneScreen({super.key});

  @override
  State<PhoneScreen> createState() => _PhoneScreen();
}

class _PhoneScreen extends State<PhoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 128, 105),
        onPressed: () {},
        child: const Icon(Icons.add_call, color: Colors.white),
      ),
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
                      value: "Clear call log", child: Text("Clear call log")),
                  PopupMenuItem(value: "Settings", child: Text("Settings")),
                ];
              }),
            ]),
          ]),
      // body: Padding(
      //   padding: const EdgeInsets.all(8.0),
      //   child: ListView(
      //     children: const [
      //       Calls(
      //         chatTitle: 'Anu',
      //         callStatus: 'Outgoing',
      //         callType: 'Audio',
      //         chatMessage: 'Today, 12:28 pm',
      //         leadingImageAsset: 'assets/pictures/personimage4.jpg',
      //       ),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       Calls(
      //         chatTitle: 'Virat',
      //         callStatus: 'Incoming',
      //         callType: 'Video',
      //         chatMessage: 'Today, 1:11 am',
      //         leadingImageAsset: 'assets/pictures/personimage1.jpg',
      //       ),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       Calls(
      //         chatTitle: 'Seeta',
      //         callStatus: 'Incoming',
      //         callType: 'Video',
      //         chatMessage: 'Today, 5:28 am',
      //         leadingImageAsset: 'assets/pictures/personimage4.jpg',
      //       ),
      //       SizedBox(
      //         height: 15,
      //       ),
      //       Calls(
      //         chatTitle: 'Anju',
      //         callStatus: 'Outgoing',
      //         callType: 'Audio',
      //         chatMessage: '31 august, 12:28 pm',
      //         leadingImageAsset: 'assets/pictures/personimage3.jpg',
      //       ),
      //     ],
      //   ),
      // ),

      body: ListView.separated(
          itemBuilder: (context, index) => CallTile(
                name: data.calllist.values.elementAt(index).elementAt(0),
                img: data.calllist.values.elementAt(index).elementAt(1),
                vid: data.calllist.values.elementAt(index).elementAt(2),
                isMissed: data.calllist.values.elementAt(index).elementAt(3),
                incoming: data.calllist.values.elementAt(index).elementAt(4),
                time: data.calllist.values.elementAt(index).elementAt(5),
              ),
          separatorBuilder: (context, index) =>
              // data.calllist.values.elementAt(index).elementAt(6)
              //     ? SizedBox(
              //         height: 10,
              //       )
              Separator(),
          itemCount: data.calllist.length),
    );
  }
}
