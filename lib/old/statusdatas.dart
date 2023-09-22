// import 'package:flutter/material.dart';

// class SingleStatusItem extends StatelessWidget {
//   final String statusTitle;
//   final String statusTime;
//   final String statusImage;

//   const SingleStatusItem({super.key, 
//     required this.statusTitle,
//     required this.statusTime,
//     required this.statusImage,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       children: [
//         Stack(children: [
//           CircleAvatar(
//             backgroundColor: Colors.grey,
//             radius: 30,
//             child: CircleAvatar(
//               radius: 28,
//               backgroundImage: AssetImage('statusImage'),
//             ),
//           ),
//         ]),
//         Expanded(
//           child: ListTile(
//             title: Text('statusTitle'),
//             subtitle: Padding(
//               padding:  EdgeInsets.only(top: 2.0),
//               child: Text('statusTime'),
//             ),
//           ),
//         ),
      
//       ],
//     );
//   }
// }
