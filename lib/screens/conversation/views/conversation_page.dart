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
  const ConversationScreen({super.key, required this.name, required this.img});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
  TextEditingController textControl = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
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
                      )))),
          child: Row(
            children: [
              widget.img != null
                  ? CircleAvatar(
                      radius: 20,
                      backgroundImage: AssetImage(widget.img),
                    )
                  : Container(
                      height: 36,
                      width: 36,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                      ),
                      child: const Icon(Icons.account_circle,
                          size: 36, color: Colors.grey),
                    ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.name,
                    style: const TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.video_camera_back_rounded,
                size: 20,
              )),
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.call,
                size: 20,
              )),
          // IconButton(onPressed: () {}, icon: Icon(Icons.more_vert)),
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
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/pictures/backgroundimage.jpg'),
              fit: BoxFit.fill),
        ),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Conversationbox(
                        msg: data.conversationlist.values
                            .elementAt(index)
                            .elementAt(0),
                        isMe: data.conversationlist.values
                            .elementAt(index)
                            .elementAt(1),
                      );
                    },
                    itemCount: data.conversationlist.length),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 8.0,
                      top: 9.0,
                      bottom: 8.0,
                      right: 6.0,
                    ),
                    width: MediaQuery.of(context).size.width * 0.75,
                    height: MediaQuery.of(context).size.width * 0.15,
                    padding: const EdgeInsets.only(
                      right: 10,
                      left: 5,
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(
                        Radius.circular(20),
                      ),
                    ),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const Icon(
                            Icons.emoji_emotions_outlined,
                            color: Colors.grey,
                            size: 30,
                          ),
                          Container(
                            margin: const EdgeInsets.only(top: 3.0),
                            width: MediaQuery.of(context).size.width * 0.42,
                            height: MediaQuery.of(context).size.height * 0.1,
                            child: TextField(
                              controller: textControl,
                              cursorColor: Colors.teal,
                              style: const TextStyle(
                                fontSize: 21,
                              ),
                              decoration: const InputDecoration(
                                hintText: "Message",
                                border: InputBorder.none,
                                hintStyle: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 15,
                                ),
                              ),
                            ),

                            //                     IconButton(
                            //                       onPressed: () {},
                            //                       icon: Icon(
                            //                         Icons.attachment,
                            //                         color: Colors.grey,
                            //                         size: 20,
                            //                       ),
                            //                     ),
                            //                     IconButton(
                            //                       onPressed: () {},
                            //                       icon: Icon(
                            //                         Icons.currency_rupee,
                            //                         color: Colors.grey,
                            //                         size: 20,
                            //                       ),
                            //                     ),
                            //                     IconButton(
                            //                       onPressed: () {},
                            //                       icon: Icon(
                            //                         Icons.camera_alt,
                            //                         color: Colors.grey,
                            //                         size: 20,
                            //                       ),
                            //                     ),
                            //                   ]),
                            //             ),
                            //           ],
                            //         ),
                            //       ]),
                            // ),
                            // floatingActionButton: FloatingActionButton(
                            //   onPressed: () {},
                            //   backgroundColor: Color.fromARGB(255, 0, 128, 105),
                            //   child: Icon(Icons.mic, size: 20, color: Colors.white),
                            // ),
                          ),
                          const SizedBox(
                            width: 0.2,
                          ),
                          const Icon(
                            Icons.attachment,
                            color: Colors.grey,
                            size: 23,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          const Icon(Icons.currency_rupee,
                              color: Colors.grey, size: 23),
                          const SizedBox(
                            width: 5,
                          ),
                          textControl.text.trim() == "" ||
                                  textControl.text == null
                              ? const Icon(Icons.camera_alt_rounded,
                                  color: Colors.grey, size: 23)
                              : Container(),
                          const SizedBox(
                            width: 0.2,
                          ),
                        ]),
                  ),
                ],
              ),

              //         : IconButton( icon: Icon(Icons.send_rounded),
              //         onPressed: (){  data.conversationlist[data.conversationlist.length]=[textControl.text,true];
              //        textControl.clear();
              //       setState(() {

              //        });}),
              //  ),),
            ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color.fromARGB(255, 0, 128, 105),
        child: const Icon(Icons.mic, size: 20, color: Colors.white),
      ),
    );
  }

  @override
  void dispose() {
    // TODO: implement dispose
    textControl.dispose();
    super.dispose();
  }
}
