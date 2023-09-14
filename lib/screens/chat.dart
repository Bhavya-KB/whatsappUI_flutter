
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/datas/chatdatas.dart';
import 'package:whatsapp/screens/camera.dart';


class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color.fromARGB(255, 0, 128, 105),
        onPressed: () {},
        child: const Icon(Icons.chat, color: Colors.white),
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
                  icon: const Icon(Icons.camera_alt_rounded),
                  onPressed: () async {
                   await availableCameras().then(
  (value) => Navigator.push(
    context, MaterialPageRoute(
    builder: (_) => CameraPage(cameras: value))
  ),
);
              
                  }),
              const SizedBox(
                width: 3,
              ),
              IconButton(
                  icon: const Icon(Icons.search_rounded), onPressed: () {}),
              const SizedBox(
                width: 3,
              ),
              // IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
              PopupMenuButton<String>(itemBuilder: (BuildContext context) {
                return const [
                  PopupMenuItem(value: "New group", child: Text("New group")),
                  PopupMenuItem(
                      value: "New broadcast",
                      child: Text("New broadcast")),
                  PopupMenuItem(
                      value: "Linked devices",
                      child: Text("Linked devices")),
                  PopupMenuItem(
                      value: "Starred Messages",
                      child: Text("Starred Messages")),
                  PopupMenuItem(value: "Payments", child: Text("Payments")),
                  PopupMenuItem(value: "Settings", child: Text("Settings")),
                ];
              }),
            ]),
          ]),
      body: ListView(children: const [
        Chatdatas(
          name: 'Virat',
          lastMessage: 'Hi',
          time: '11:00 pm',
          leadingImageAsset: 'assets/pictures/personimage1.jpg',
        ),
        Chatdatas(
          name: 'John',
          lastMessage: 'Hello',
          time: '10:00 am',
          leadingImageAsset: 'assets/pictures/personimage2.jpg',
        ),
        Chatdatas(
          name: 'Rita',
          lastMessage: 'How are u',
          time: '1:30 pm',
          leadingImageAsset: 'assets/pictures/personimage3.jpg',
        ),
        Chatdatas(
          name: 'Seeta',
          lastMessage: 'Hello ',
          time: '10:45 pm',
          leadingImageAsset: 'assets/pictures/personimage4.jpg',
        ),
        Chatdatas(
          name: 'George',
          lastMessage: 'where are you',
          time: '2:45 pm',
          leadingImageAsset: 'assets/pictures/personimage1.jpg',
        ),
        Chatdatas(
          name: 'Meena',
          lastMessage: 'Thankyou',
          time: '9:20 am',
          leadingImageAsset: 'assets/pictures/personimage5.jpg',
        ),
        Chatdatas(
          name: 'college',
          lastMessage: 'Thats great',
          time: '10:30 pm',
          leadingImageAsset: 'assets/pictures/peoplegroup.jpg',
        ),
        Chatdatas(
          name: 'Anu',
          lastMessage: 'Thankyou',
          time: ' 9:20 am',
          leadingImageAsset: 'assets/pictures/personimage4.jpg',
        ),
        Chatdatas(
          name: 'Sanju',
          lastMessage: 'Hi',
          time: '9:30 am',
          leadingImageAsset: 'assets/pictures/personimage2.jpg',
        ),
        Chatdatas(
          name: 'Anju',
          lastMessage: 'Thankyou',
          time: '11:45 am',
          leadingImageAsset: 'assets/pictures/personimage3.jpg',
        ),
      ]),
    );
  }
}
