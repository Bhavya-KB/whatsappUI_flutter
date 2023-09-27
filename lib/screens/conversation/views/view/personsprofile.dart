import 'package:flutter/material.dart';
import 'package:whatsapp/controller/whatsappdatas.dart';

Data data = Data();

// ignore: camel_case_types
class persondetails extends StatefulWidget {
  final String name;
  final String img;
  final String phoneNumber;
  const persondetails(
      {super.key,
      required this.name,
      required this.img,
      required this.phoneNumber});

  @override
  State<persondetails> createState() => _persondetailsState();
}

// ignore: camel_case_types
class _persondetailsState extends State<persondetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 121, 120, 120),
              size: 30,
            ),
          ),
          title: const Center(
              child: Row(
            children: [],
          )),
          actions: [
            Row(children: [
              PopupMenuButton<String>(
                itemBuilder: (BuildContext context) {
                  return [
                    const PopupMenuItem(
                      value: "Share",
                      child: Text("Share"),
                    ),
                    const PopupMenuItem(
                      value: "Edit",
                      child: Text("Edit"),
                    ),
                    const PopupMenuItem(
                      value: "View in address book",
                      child: Text("View in address book"),
                    ),
                    const PopupMenuItem(
                      value: "Verify Security code",
                      child: Text("Verify security code"),
                    ),
                  ];
                },
                icon: const Icon(
                  Icons.more_vert,
                  size: 30,
                  color: Color.fromARGB(255, 124, 123, 123),
                ),
              ),
            ]),
          ]),
      body: SingleChildScrollView(
        child: Column(children: [
          const SizedBox(
            height: 10,
          ),

          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(widget.img),
          ),

          const SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width * 1.0,
            alignment: Alignment.center,
            child: Text(
              widget.name,
              style: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.03,
            width: MediaQuery.of(context).size.width * 1.0,
            alignment: Alignment.center,
            child: Text(
              widget.phoneNumber,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 15,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Column(
                children: <Widget>[
                  Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 0, 128, 105),
                    size: 30,
                  ),
                  Text(
                    "call",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 128, 105),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              const Column(
                children: <Widget>[
                  Icon(
                    Icons.video_call_rounded,
                    color: Color.fromARGB(255, 0, 128, 105),
                    size: 30,
                  ),
                  Text(
                    "Video",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 128, 105),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
<<<<<<< HEAD
               Column(
=======
              const Column(
>>>>>>> f686257bf0c95e681ffd3575114d8ff1a9336904
                children: <Widget>[
                  Icon(
                    Icons.currency_rupee,
                    color: Color.fromARGB(255, 0, 128, 105),
                    size: 30,
                  ),
                  Text(
                    "Pay",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 128, 105),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.1,
              ),
              const Column(
                children: <Widget>[
                  Icon(
                    Icons.search,
                    color: Color.fromARGB(255, 0, 128, 105),
                    size: 30,
                  ),
                  Text(
                    "Search",
                    style: TextStyle(
                      color: Color.fromARGB(255, 0, 128, 105),
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.cyan,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.indigo,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ]),
      ),
    );
  }
}
