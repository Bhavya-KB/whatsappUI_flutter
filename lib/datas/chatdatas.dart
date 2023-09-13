import 'package:flutter/material.dart';

class Chatdatas extends StatelessWidget {
  final String name;
  final String lastMessage;
  final String time;
  final String leadingImageAsset;

  const Chatdatas({
    required this.name,
    required this.lastMessage,
    required this.time,
    required this.leadingImageAsset,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30, 
        backgroundImage: AssetImage(leadingImageAsset),
      ),
      title: Text(
        name,
        style:const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
      subtitle: Row(children: [
        Icon(Icons.done_all_outlined),
        Text(
          lastMessage,
          style:const TextStyle(
            fontSize: 13,
          ),
        ),
      ]),
      trailing: Text(
        time,
        style: TextStyle(fontSize: 9),
      ),
    );
  }
}
