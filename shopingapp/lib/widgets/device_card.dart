// import 'package:flutter/material.dart';
// import 'store.dart';  // Import your models

// class DeviceCard extends StatelessWidget {
//   final Device device;

//   DeviceCard({required this.device});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       margin: EdgeInsets.all(8),
//       color: Color(0xFF303030),
//       shape: RoundedRectangleBorder(
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         children: [
//           Image.network(
//             'http://192.168.0.104:5000/${device.image}',
//             height: 200,
//             fit: BoxFit.contain,
//           ),
//           Padding(
//             padding: EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(
//                   device.brand,
//                   style: TextStyle(color: Color(0xFF4287f5), fontSize: 16),
//                 ),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Text(
//                       device.title,
//                       style: TextStyle(color: Colors.white, fontSize: 16),
//                     ),
//                     Text(
//                       '${device.price} р.',
//                       style: TextStyle(color: Colors.white, fontSize: 16),
//                     ),
//                   ],
//                 ),
//                 ElevatedButton(
//                   onPressed: () {
//                     // Navigate to DeviceDetails screen (similar to your React Native navigation)
//                   },
//                   child: Text('View Details'),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
