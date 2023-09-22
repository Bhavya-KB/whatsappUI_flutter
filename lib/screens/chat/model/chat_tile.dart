import 'package:flutter/material.dart';
import 'package:whatsapp/screens/conversation/views/conversation_page.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String img;
  final String msg;
  final String time;

  const ChatTile(
      {super.key, required this.name,
      required this.img,
      required this.msg,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => ConversationScreen(
                    name: name,
                    img: img,
                  )))),
      leading: img != null
          ? Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(img),
              ),
            )
          : const Padding(
              padding: EdgeInsets.only(
                right: 8.0,
              ),
              child: Icon(Icons.account_circle, size: 30, color: Colors.grey),
            ),
      minVerticalPadding: 0,
      horizontalTitleGap: 5,
      trailing: Text(
        time,
        style: const TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        msg,
        style: const TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
    );
  }
}
