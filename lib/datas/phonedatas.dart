import 'package:flutter/material.dart';

class Calls extends StatelessWidget {
  final String chatMessage;
  final String chatTitle;
  final String callStatus;
  final String leadingImageAsset;
  final String callType;

  const Calls({super.key, 
    required this.chatMessage,
    required this.chatTitle,
    required this.callStatus,
    required this.leadingImageAsset,
    required this.callType,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: ListTile(
          leading: CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage(leadingImageAsset),
          ),
          title:
              Text(chatTitle, style: const TextStyle(fontWeight: FontWeight.w600)),
          subtitle: Row(children: [
            Icon(
              callStatus == 'Incoming'
                  ? (Icons.call_received_sharp)
                  : Icons.call_made_sharp,
              size: 15,
              color: callStatus == 'Incoming' ? Colors.teal : Colors.red,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 6.0),
                child: Text(
                  chatMessage,
                  style: const TextStyle(overflow: TextOverflow.ellipsis),
                ),
              ),
            ),
          ]),
          trailing: Column(children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Icon(callType == 'Audio' ? Icons.call : Icons.videocam,
                  color: Colors.teal),
            ),
          ]),
        ),
      ),
    ]);
  }
}
