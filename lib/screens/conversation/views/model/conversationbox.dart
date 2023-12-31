import 'package:flutter/material.dart';

class MessageBubble extends StatelessWidget {
  final String msg;
  final bool isMe;
  MessageBubble({required this.msg, required this.isMe});
  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        Row(
          mainAxisAlignment:
              isMe ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              margin: const EdgeInsets.symmetric(
                horizontal: 8,
              ),
              constraints: BoxConstraints(
                minWidth: 0,
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 3,
              ),
              decoration: BoxDecoration(
                color: isMe ? const Color(0xffccfbc6) : Colors.white,
                borderRadius: const BorderRadius.all(
                  Radius.circular(10),
                ),
              ),
              child: Text(
                msg,
                softWrap: true,
                style: const TextStyle(color: Colors.black, fontSize: 18),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 8,
        ),
      ],
    );
  }
}