import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat/model/chat_tile.dart';
import 'package:whatsapp/screens/conversation/views/model/conversationbox.dart';
import 'package:whatsapp/controller/whatsappdatas.dart';
import 'package:whatsapp/screens/conversation/views/view/personsprofile.dart';

Data data = Data();

class ConversationScreen extends StatefulWidget {
  final String name;
  final String img;
  final String phoneNumber;

  const ConversationScreen({
    super.key,
    required this.name,
    required this.img,
    required this.phoneNumber,
  });

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  TextEditingController textcontrol = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 0, 128, 105),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        title: GestureDetector(
          onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                  builder: ((context) => persondetails(
                        name: widget.name,
                        img: widget.img,
                        phoneNumber: widget.phoneNumber,
                      )))),
          child: Row(
            children: [
              widget.img != null
                  ? CircleAvatar(
                      radius: 18,
                      backgroundImage: AssetImage(widget.img),
                    )
                  : Container(
                      width: 36,
                      height: 36,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle, color: Colors.white),
                      child: Icon(
                        Icons.account_circle,
                        size: 36,
                        color: Colors.grey.shade500,
                      ),
                    ),
              SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  Text(
                    'online',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.videocam_rounded,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: Icon(
              Icons.phone,
              color: Colors.white,
              size: 28,
            ),
            onPressed: () {},
          ),
          PopupMenuButton<String>(itemBuilder: (BuildContext context) {
            return const [
              PopupMenuItem(
                  value: " Media,links,and Docs",
                  child: Text("Media,links,and Docs")),
              PopupMenuItem(value: "Search", child: Text("Search")),
              PopupMenuItem(
                  value: "Disappearing messages",
                  child: Text("Disappearing messages")),
              PopupMenuItem(value: " Wallpaper", child: Text("wallpaper")),
              PopupMenuItem(value: "More", child: Text("More")),
            ];
          }),
        ],
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: EdgeInsets.symmetric(vertical: 5),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/pictures/backgroundimage.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return MessageBubble(
                    msg: data.conversationlist.values
                        .elementAt(index)
                        .elementAt(0),
                    isMe: data.conversationlist.values
                            .elementAt(index)
                            .elementAt(1) ==
                        'true', // Convert to boolean
                  );
                },
                itemCount: data.conversationlist.length,
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: 8.0,
                    top: 8.0,
                    bottom: 8.0,
                    right: 6.0,
                  ),
                  width: MediaQuery.of(context).size.width * 0.84,
                  height: MediaQuery.of(context).size.width * 0.1,
                  padding: EdgeInsets.only(
                    right: 10,
                    left: 5,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(
                      Radius.circular(20),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey.shade500,
                        size: 30,
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 3.0),
                        width: MediaQuery.of(context).size.width * 0.48,
                        height: MediaQuery.of(context).size.width * 0.1,
                        child: TextField(
                          controller: textcontrol,
                          cursorColor: Colors.teal,
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Type a message...',
                              hintStyle: TextStyle(
                                color: Colors.grey.shade400,
                                fontSize: 19,
                              )),
                        ),
                      ),
                      Icon(
                        Icons.attachment,
                        color: Colors.grey.shade500,
                        size: 24,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(Icons.currency_rupee, color: Colors.grey, size: 24),
                      textcontrol.text.trim() == "" || textcontrol.text == null
                          ? Icon(
                              Icons.camera_alt_rounded,
                              color: Colors.grey.shade500,
                              size: 24,
                            )
                          : Container()
                    ],
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color(0xff00897b),
                  radius: 23,
                  child:
                      textcontrol.text.trim() == "" || textcontrol.text == null
                          ? Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 30,
                            )
                          : IconButton(
                              icon: Icon(
                                Icons.send_rounded,
                                color: Colors.white,
                              ),
                              onPressed: () {
                                data.conversationlist[data.conversationlist
                                    .length] = [textcontrol.text, 'true'];

                                textcontrol.clear();
                                setState(() {});
                              }),
                )
              ],
            )
          ],
        ),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textcontrol.dispose();
    super.dispose();
  }
}
