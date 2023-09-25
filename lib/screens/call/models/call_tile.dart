import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class CallTile extends StatelessWidget {
  final String name;
  final String img;
  final String vid;
  final String isMissed;
  final String incoming;
  final String time;
  CallTile(
      {required this.name,
      required this.img,
      required this.vid,
      required this.isMissed,
      required this.incoming,
      required this.time});

  @override
  Widget build(BuildContext context) {
    var cupertinoIcons;
    return ListTile(
      leading: img != null
          ? CircleAvatar(
              radius: 25,
              backgroundImage: AssetImage(img),
            )
          : Icon(
              Icons.account_circle,
              size: 55,
              color: Colors.grey,
            ),
      title: Text(
        name,
        style: TextStyle(
          fontSize: 22,
        ),
      ),
      subtitle: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Icon(
            isMissed == 'Incoming'
                ? (Icons.call_received_sharp)
                : Icons.call_made_sharp,
            size: 15,
            color: isMissed == 'Incoming' ? Colors.teal : Colors.red,
          ),
          Text(
            time,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              fontSize: 15,
              color: Colors.grey,
            ),
          ),
        ],
      ),
      trailing: Column(children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Icon(vid == '0' ? Icons.call : Icons.videocam,
              color: Colors.teal),
        ),
      ]),
    );
  }
}
