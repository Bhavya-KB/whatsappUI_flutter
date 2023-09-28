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
  bool selected = true;
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
              const Column(
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
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.2,
          //   width: MediaQuery.of(context).size.width * 7.0,
          //   child: ListView(
          //     children: [
          //       ListTile(
          //         leading: Icon(
          //           Icons.notifications,
          //           color: Colors.grey,
          //           size: 20,
          //         ),
          //         title: Text(
          //           "Mute Notification",
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 16,
          //           ),
          //         ),
          //       ),
          //       ListTile(
          //         leading: Icon(
          //           Icons.music_note,
          //           color: Colors.grey,
          //           size: 20,
          //         ),
          //         title: Text(
          //           "Custom Notification",
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 16,
          //           ),
          //         ),
          //       ),
          //       ListTile(
          //         leading: Icon(
          //           Icons.photo_library,
          //           color: Colors.grey,
          //           size: 20,
          //         ),
          //         title: Text(
          //           "Media visibility",
          //           style: TextStyle(
          //             color: Colors.black,
          //             fontSize: 16,
          //           ),
          //         ),
          //       ),
          //     ],
          //   ),
          // ),
          // Divider(
          //   color: Color.fromARGB(255, 236, 234, 234),
          //   thickness: 5,
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.2,
          //   width: MediaQuery.of(context).size.width * 7.0,
          //   child: ListView(children: [
          // ListTile(
          //   leading: Icon(
          //     Icons.lock,
          //     color: Colors.grey,
          //     size: 20,
          //   ),
          //   title: Text(
          //     "Encryption",
          //     style: TextStyle(
          //       color: Colors.black,
          //       fontSize: 16,
          //     ),
          //   ),
          //   subtitle: Text(
          //     'Messages and calls are end-to-end encrypted.Tap to verify.',
          //     style: TextStyle(color: Colors.grey),
          //   ),
          // ),
          //     ListTile(
          //       leading: Icon(
          //         Icons.timer,
          //         color: Colors.grey,
          //         size: 20,
          //       ),
          //       title: Text(
          //         "Disappearing messages",
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 16,
          //         ),
          //       ),
          //       subtitle: Text(
          //         'Off',
          //         style: TextStyle(color: Colors.grey),
          //       ),
          //     ),
          //     ListTile(
          //       leading: Icon(
          //         Icons.lock,
          //         color: Colors.grey,
          //         size: 20,
          //       ),
          //       title: Text(
          //         "Chat lock",
          //         style: TextStyle(
          //           color: Colors.black,
          //           fontSize: 16,
          //         ),
          //       ),
          //     ),
          //   ]),
          // ),
          // Divider(
          //   color: Color.fromARGB(255, 236, 234, 234),
          //   thickness: 5,
          // ),

          // Container(
          //   height: MediaQuery.of(context).size.height * 0.2,
          //   width: MediaQuery.of(context).size.width * 7.0,
          //   child: ListView(children: [
          //     ListTile(
          //       leading: Icon(
          //         Icons.block,
          //         color: Colors.red,
          //         size: 20,
          //       ),
          //       title: Text(
          //         "Block",
          //         style: TextStyle(
          //           color: Colors.red,
          //           fontSize: 16,
          //         ),
          //       ),
          //     ),
          //     ListTile(
          //       leading: Icon(
          //         Icons.thumb_down_sharp,
          //         color: Colors.red,
          //         size: 20,
          //       ),
          //       title: Text(
          //         "Report",
          //         style: TextStyle(
          //           color: Colors.red,
          //           fontSize: 16,
          //         ),
          //       ),
          //     ),
          //   ]),
          // ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.1,
          //   width: MediaQuery.of(context).size.width * 7.0,
          //   decoration: const BoxDecoration(
          //     shape: BoxShape.rectangle,
          //     color: Colors.deepOrangeAccent,
          //   ),
          // ),
          const SizedBox(
            height: 30,
          ),
          // Switch(
          //   activeColor: Colors.blue,
          //   // title: const Text('Mute Notification'),
          //   value: selected,
          //   onChanged: (bool? value) {
          //     setState(() {
          //       selected = value!;
          //     });
          //   },
          // ),
          Container(
            height: MediaQuery.of(context).size.height * 0.21,
            width: MediaQuery.of(context).size.width * 7.0,
            child: Column(
              children: <Widget>[
                Row(
                  children: <Widget>[
                    const Expanded(
                      child: ListTile(
                        leading: Icon(
                          Icons.notifications,
                          color: Colors.grey,
                          size: 20,
                        ),
                        title: Text(
                          "Mute Notification",
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 16,
                          ),
                        ),
                      ),
                    ),
                    Switch(
                      activeColor: Colors.blue,
                      value: selected,
                      onChanged: (bool? value) {
                        setState(() {
                          selected = value ?? false;
                        });
                      },
                    ),
                  ],
                ),
                const ListTile(
                  leading: Icon(
                    Icons.music_note,
                    color: Colors.grey,
                    size: 20,
                  ),
                  title: Text(
                    "Custom Notification",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
                const ListTile(
                  leading: Icon(
                    Icons.photo_library,
                    color: Colors.grey,
                    size: 20,
                  ),
                  title: Text(
                    "Media visibility",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const Divider(
            color: Color.fromARGB(255, 236, 234, 234),
            thickness: 5,
          ),
          Container(
            width: MediaQuery.of(context).size.width * 7.0,
            child: const Column(children: [
              ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 20,
                ),
                title: Text(
                  "Encryption",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  'Messages and calls are end-to-end encrypted.Tap to verify.',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.timer,
                  color: Colors.grey,
                  size: 20,
                ),
                title: Text(
                  "Disappearing messages",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
                subtitle: Text(
                  'Off',
                  style: TextStyle(color: Colors.grey),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.lock,
                  color: Colors.grey,
                  size: 20,
                ),
                title: Text(
                  "Chat lock",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                  ),
                ),
              ),
            ]),
          ),

          const Divider(
            color: Color.fromARGB(255, 236, 234, 234),
            thickness: 5,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.2,
            width: MediaQuery.of(context).size.width * 7.0,
            child: Column(
              children: [
                ListTile(
                  leading: const Icon(
                    Icons.block,
                    color: Colors.red,
                    size: 20,
                  ),
                  title: Text(
                    "Block  ${widget.name}",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  leading: const Icon(
                    Icons.thumb_down_sharp,
                    color: Colors.red,
                    size: 20,
                  ),
                  title: Text(
                    "Report  ${widget.name}",
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 16,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
