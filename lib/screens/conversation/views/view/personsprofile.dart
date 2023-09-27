import 'package:flutter/material.dart';
import 'package:whatsapp/controller/whatsappdatas.dart';

Data data = Data();

class persondetails extends StatefulWidget {
  final String name;
  final String img;
  const persondetails({super.key, required this.name, required this.img});

  @override
  State<persondetails> createState() => _persondetailsState();
}

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
            child: Icon(
              Icons.arrow_back,
              color: Color.fromARGB(255, 121, 120, 120),
              size: 30,
            ),
          ),
          title: Center(
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
          SizedBox(
            height: 10,
          ),

          // widget.img != null
          //     ? CircleAvatar(
          //         radius: 50,
          //         backgroundImage: AssetImage(widget.img),
          //       )
          //     : Container(
          //         height: 36,
          //         width: 36,
          //         decoration: const BoxDecoration(
          //           shape: BoxShape.circle,
          //           color: Colors.white,
          //         ),
          //         child: const Icon(Icons.account_circle,
          //             size: 36, color: Colors.grey),
          //       ),
          // Container(
          //   height: MediaQuery.of(context).size.height * 0.2,
          // margin: EdgeInsets.all(35),
          // decoration: BoxDecoration(

          //   shape: BoxShape.circle,
          //   color: Colors.green,
          // ),
          CircleAvatar(
            radius: 50,
            backgroundImage: AssetImage(widget.img),
          ),

          SizedBox(
            height: 10,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 1.0,
            child: Text(
              widget.name,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.red,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.blue,
            ),
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.call,
                  color: Color.fromARGB(255, 0, 128, 105),
                  size: 30,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.video_call_rounded,
                  color: Color.fromARGB(255, 0, 128, 105),
                  size: 30,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.currency_rupee,
                  color: Color.fromARGB(255, 0, 128, 105),
                  size: 30,
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height * 0.1,
                width: MediaQuery.of(context).size.width * 0.2,
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  color: Colors.white,
                ),
                child: Icon(
                  Icons.search,
                  color: Color.fromARGB(255, 0, 128, 105),
                  size: 30,
                ),
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.yellow,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.cyan,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.indigo,
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.1,
            width: MediaQuery.of(context).size.width * 7.0,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Colors.deepOrangeAccent,
            ),
          ),
        ]),
      ),
    );
  }
}
