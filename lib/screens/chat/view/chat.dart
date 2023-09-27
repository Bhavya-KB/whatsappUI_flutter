import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat/model/chat_tile.dart';
import 'package:whatsapp/utils/camera.dart';
import 'package:whatsapp/controller/whatsappdatas.dart';
import 'package:whatsapp/screens/chat/model/divider.dart';

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
              },),
            ],),
          ],),
   body:ListView.separated(
    itemBuilder: (context,index)=>ChatTile(
      name: data.chat.values.elementAt(index).elementAt(0),
      img: data.chat.values.elementAt(index).elementAt(1),
   msg: data.chat.values.elementAt(index).elementAt(2),
    time: data.chat.values.elementAt(index).elementAt(3),
    ),
    separatorBuilder: (context,index)=>Separator(), 
    itemCount: data.chat.length,),
    );
  }
}
