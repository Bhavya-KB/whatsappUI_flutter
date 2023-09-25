import 'package:flutter/material.dart';
import 'package:whatsapp/controller/whatsappdatas.dart';

class Conversationbox extends StatelessWidget {
  final String msg;
  final String isMe;
  Conversationbox({
    required this.msg,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.symmetric(
                horizontal: 8,
              ),
              constraints: BoxConstraints(
                minWidth: 0,
                maxWidth: MediaQuery.of(context).size.width * 0.7,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 3,
              ),
              // decoration: BoxDecoration(
              //   color:isMe?Color(0xffccfbc6):Colors.white ,
              //   borderRadius: BorderRadius.all(
              //     Radius.circular(10),
              //   ),),
              //   child: Text(msg,
              //   softWrap: true,
              //   style: TextStyle(
              //     color: Colors.black,
              //     fontSize: 18,

              //   ),
              //   ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
        ),
      ],
    );
  }
}
