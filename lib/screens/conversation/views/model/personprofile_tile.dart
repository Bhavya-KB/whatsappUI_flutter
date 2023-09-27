import 'package:flutter/material.dart';
import 'package:whatsapp/screens/conversation/views/view/personsprofile.dart';

class Profile extends StatelessWidget {
  final String name;
  final String phoneNumber;
  final String img;

  Profile({
    required this.name,
    required this.phoneNumber,
    required this.img,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => Navigator.push(
          context,
          MaterialPageRoute(
              builder: ((context) => persondetails(
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
      title: Text(
        name,
        style: const TextStyle(
          fontSize: 20,
          color: Colors.black,
        ),
      ),
    );
  }
}
