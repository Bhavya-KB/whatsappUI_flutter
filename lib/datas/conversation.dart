import 'package:flutter/material.dart';

class Conversationpage extends StatefulWidget {
  final String name;
  final String leadingImageAsset;

  const Conversationpage({
    Key? key,
    required this.name,
    required this.leadingImageAsset,
  }) : super(key: key);

  @override
  _ConversationPageState createState() => _ConversationPageState();
}

class _ConversationPageState extends State<Conversationpage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 0, 128, 105),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back),
          ),
          title: Row(children: [
            CircleAvatar(
              backgroundImage: AssetImage('leadingImageAsset'),
              child: Container(
                width: 36,
                height: 36,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.account_circle,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'name',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                  ),
                ),
              ],
            ),
          ]),
          actions: [
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.video_camera_back_rounded,
                  size: 20,
                )),
            IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.call,
                  size: 20,
                )),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.more_vert, size: 20),
            ),
          ],
        ),
        // body: SingleChildScrollView(

        //   child: Column(
        //     children: [
        //       Container(
        //         color: Colors.red,
        //         height: MediaQuery.of(context).size.height - kToolbarHeight,
        //         child: Center(child: Text("Kik")),
        //         // child: Center(
        //         //   child: DecoratedBox(
        //         //     decoration: BoxDecoration(
        //         //       color: Colors.green,
        //         //       borderRadius: BorderRadius.circular(30),
        //         //     ),
        //         //   ),
        //         // ),
        //       ),
        //     ],
        //   ),
        // ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(vertical: 1),
          decoration: BoxDecoration(
            color: Colors.grey,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                margin: EdgeInsets.only(
                  left: 8.0,
                  top: 8.0,
                  bottom: 8.0,
                  right: 6.0,
                ),
                width: MediaQuery.of(context).size.width * 0.78,
                height: MediaQuery.of(context).size.height * 0.06,
                padding: EdgeInsets.only(
                  right: 10,
                  left: 5,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(70)),
                ),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.emoji_emotions_outlined,
                        color: Colors.grey,
                        size: 30,
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Message',
                            border: InputBorder.none,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.attachment,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.currency_rupee,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.camera_alt,
                          color: Colors.grey,
                          size: 20,
                        ),
                      ),
                    ]),
              ),
              SizedBox(height: 10),
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Color.fromARGB(255, 0, 128, 105),
          child: const Icon(
            Icons.mic,
            size: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
