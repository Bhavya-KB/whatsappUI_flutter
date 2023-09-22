import 'package:flutter/material.dart';

class ConversationScreen extends StatefulWidget {
  final String name;
  final String img;
  const ConversationScreen({super.key, required this.name, required this.img});

  @override
  State<ConversationScreen> createState() => _ConversationScreenState();
}

class _ConversationScreenState extends State<ConversationScreen> {
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
    );
  }
}
