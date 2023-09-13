import 'package:flutter/material.dart';
import 'package:whatsapp/screens/chat.dart';
import 'package:whatsapp/screens/community.dart';
import 'package:whatsapp/screens/phone.dart';
import 'package:whatsapp/screens/status.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
        ChatScreen(),
        StatusScreen(),
        CommunityScreen(),
        PhoneScreen(),
      ][currentPageIndex],
    );
  }
}
