import 'package:flutter/material.dart';

class ChatTile extends StatelessWidget {
  final String name;
  final String img;
  final String msg;
  final String time;

  ChatTile(
      {required this.name,
      required this.img,
      required this.msg,
      required this.time});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: img != null
          ? Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(img),
              ),
            )
          : Padding(
              padding: EdgeInsets.only(
                right: 8.0,
              ),
              child: Icon(Icons.account_circle, size: 30, color: Colors.grey),
            ),
      minVerticalPadding: 0,
      horizontalTitleGap: 5,
      trailing: Text(
        time,
        style: TextStyle(
          color: Colors.grey,
          fontSize: 12,
        ),
      ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
      subtitle: Text(
        msg,
        style: TextStyle(
          fontSize: 13,
          color: Colors.grey,
        ),
      ),
    );
  }
}
