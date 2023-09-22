import 'package:flutter/material.dart';

class ChatRoomScreen extends StatefulWidget {
  final String name;
  final String img;
  ChatRoomScreen({required this.name, required this.img});

  @override
  State<ChatRoomScreen> createState() => _ChatRoomScreenState();
}

class _ChatRoomScreenState extends State<ChatRoomScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 0, 128, 105),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Row(
          children: [
            widget.img != null
                ? CircleAvatar(
                    radius: 20,
                    backgroundImage: AssetImage(widget.img),
                  )
                : Container(
                    height: 36,
                    width: 36,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.white,
                    ),
                    child: Icon(Icons.account_circle,
                        size: 36, color: Colors.grey),
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
                    fontSize: 20,
                  ),
                ),
                 ],
            ),
            

          ],
        ),
      ),
    );
  }
}
