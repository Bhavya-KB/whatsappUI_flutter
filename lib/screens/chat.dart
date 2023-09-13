
import 'package:flutter/material.dart';
import 'package:whatsapp/datas/chatdatas.dart';


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
        backgroundColor: Color.fromARGB(255, 0, 128, 105),
        onPressed: () {},
        child: Icon(Icons.chat, color: Colors.white),
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
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ()),
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
                  PopupMenuItem(child: Text("New group"), value: "New group"),
                  PopupMenuItem(
                      child: Text("New broadcast"), value: "New broadcast"),
                  PopupMenuItem(
                      child: Text("Linked devices"), value: "Linked devices"),
                  PopupMenuItem(
                      child: Text("Starred Messages"),
                      value: "Starred Messages"),
                  PopupMenuItem(child: Text("Payments"), value: "Payments"),
                  PopupMenuItem(child: Text("Settings"), value: "Settings"),
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
