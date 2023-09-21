import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:path/path.dart';
import 'package:whatsapp/components/chat%20tile.dart';
// import 'package:whatsapp/datas/chatdatas.dart';
import 'package:whatsapp/screens/camera.dart';
import 'package:whatsapp/datas/conversation.dart';
import 'package:whatsapp/datas/whatsappdatas.dart';
import 'package:whatsapp/components/divider.dart';
import 'package:whatsapp/components/chat tile.dart';

 Data data=Data();
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
                          context,
                          MaterialPageRoute(
                              builder: (_) => CameraPage(cameras: value))),
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
                      value: "New broadcast", child: Text("New broadcast")),
                  PopupMenuItem(
                      value: "Linked devices", child: Text("Linked devices")),
                  PopupMenuItem(
                      value: "Starred Messages",
                      child: Text("Starred Messages")),
                  PopupMenuItem(value: "Payments", child: Text("Payments")),
                  PopupMenuItem(value: "Settings", child: Text("Settings")),
                ];
              }),
            ]),
          ]),
      // body: ListView(children: [
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             name: 'Virat',
      //             leadingImageAsset: 'assets/pictures/personimage1.jpg',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'Virat',
      //       lastMessage: 'Hi',
      //       time: '11:00 pm',
      //       leadingImageAsset: 'assets/pictures/personimage1.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             name: 'name',
      //             leadingImageAsset: 'leadingImageAsset',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'John',
      //       lastMessage: 'Hello',
      //       time: '10:00 am',
      //       leadingImageAsset: 'assets/pictures/personimage2.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             name: 'name',
      //             leadingImageAsset: 'leadingImageAsset',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'Rita',
      //       lastMessage: 'How are u',
      //       time: '1:30 pm',
      //       leadingImageAsset: 'assets/pictures/personimage3.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             leadingImageAsset: 'leadingImageAsset',
      //             name: 'name',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'Seeta',
      //       lastMessage: 'Hello ',
      //       time: '10:45 pm',
      //       leadingImageAsset: 'assets/pictures/personimage4.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             leadingImageAsset: 'leadingImageAsset',
      //             name: 'name',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'George',
      //       lastMessage: 'where are you',
      //       time: '2:45 pm',
      //       leadingImageAsset: 'assets/pictures/personimage1.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             leadingImageAsset: 'leadingImageAsset',
      //             name: 'name',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'Meena',
      //       lastMessage: 'Thankyou',
      //       time: '9:20 am',
      //       leadingImageAsset: 'assets/pictures/personimage5.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             leadingImageAsset: 'leadingImageAsset',
      //             name: 'name',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'college',
      //       lastMessage: 'Thats great',
      //       time: '10:30 pm',
      //       leadingImageAsset: 'assets/pictures/peoplegroup.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             leadingImageAsset: 'leadingImageAsset',
      //             name: 'name',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'Anu',
      //       lastMessage: 'Thankyou',
      //       time: ' 9:20 am',
      //       leadingImageAsset: 'assets/pictures/personimage4.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             leadingImageAsset: 'leadingImageAsset',
      //             name: 'name',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'Sanju',
      //       lastMessage: 'Hi',
      //       time: '9:30 am',
      //       leadingImageAsset: 'assets/pictures/personimage2.jpg',
      //     ),
      //   ),
      //   GestureDetector(
      //     onTap: () {
      //       Navigator.push(
      //         context,
      //         MaterialPageRoute(
      //           builder: (_) => Conversationpage(
      //             leadingImageAsset: 'leadingImageAsset',
      //             name: 'name',
      //           ),
      //         ),
      //       );
      //     },
      //     child: Chatdatas(
      //       name: 'Anju',
      //       lastMessage: 'Thankyou',
      //       time: '11:45 am',
      //       leadingImageAsset: 'assets/pictures/personimage3.jpg',
      //     ),
      //   ),
      // ]),
   
   body:ListView.separated(
    itemBuilder: (context,index)=>ChatTile(
      name: data.chat.values.elementAt(index).elementAt(0),
      img: data.chat.values.elementAt(index).elementAt(1),
   msg: data.chat.values.elementAt(index).elementAt(2),
    time: data.chat.values.elementAt(index).elementAt(3),
    ), 
    separatorBuilder: (context,index)=>Separator(), 
    itemCount: data.chat.length,)
    );
  }
}
