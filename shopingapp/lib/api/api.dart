// import 'dart:convert';
// import 'package:http/http.dart' as http;

// Future<List<Device>> fetchDevices() async {
//   final response = await http.get(Uri.parse('http://192.168.0.104:5000/api/device'));

//   if (response.statusCode == 200) {
//     List<dynamic> data = json.decode(response.body);
//     return data.map((item) => Device.fromJson(item)).toList();
//   } else {
//     throw Exception('Failed to load devices');
//   }
// }

// class Device {
//   final int id;
//   final String title;
//   final String image;
//   final double price;
//   final String brand;

//   Device({required this.id, required this.title, required this.image, required this.price, required this.brand});

//   factory Device.fromJson(Map<String, dynamic> json) {
//     return Device(
//       id: json['id'],
//       title: json['title'],
//       image: json['image'],
//       price: json['price'],
//       brand: json['brand']['title'],
//     );
//   }
// }
