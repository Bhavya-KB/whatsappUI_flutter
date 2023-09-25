import 'package:flutter/material.dart';
import 'package:whatsapp/screens/call/view/calls.dart';
import 'package:whatsapp/screens/chat/view/chat.dart';
import 'package:whatsapp/screens/community/view/community.dart';

import 'package:whatsapp/screens/status/view/status.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.white,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.chat),
            icon: Icon(Icons.chat),
            label: 'Chats',
          ),
          NavigationDestination(
            icon: Icon(Icons.circle_outlined),
            label: 'Status',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.people),
            icon: Icon(Icons.people),
            label: 'Communities',
          ),
          NavigationDestination(
            selectedIcon: Icon(Icons.phone),
            icon: Icon(Icons.phone),
            label: 'Calls',
          ),
        ],
      ),
      body: <Widget>[
        const ChatScreen(),
        const StatusScreen(),
        const CommunityScreen(),
        const PhoneScreen(),
      ][currentPageIndex],
    );
  }
}
