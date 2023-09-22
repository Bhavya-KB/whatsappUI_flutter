import 'package:flutter/material.dart';
import 'package:whatsapp/datas/whatsappdatas.dart';

Data data = Data();

class StatusTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage(
                  data.statuslist.values.elementAt(index).elementAt(1),
                ),
              ),
            ),
            title: Text(
              '${data.statuslist.values.elementAt(index).elementAt(0)}',
              style: TextStyle(fontSize: 20),
            ),
            subtitle: Text(
              data.statuslist.values.elementAt(index).elementAt(2),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Container();
        },
        itemCount: data.statuslist.length,
      ),
    );
  }
}
