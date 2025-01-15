// // lib/models/device.dart

// class Device {
//   final int id;
//   final String title;
//   final String brand;
//   final double price;
//   final String image;

//   Device({
//     required this.id,
//     required this.title,
//     required this.brand,
//     required this.price,
//     required this.image,
//   });

//   // Factory method to create a Device from JSON
//   factory Device.fromJson(Map<String, dynamic> json) {
//     return Device(
//       id: json['id'],
//       title: json['title'],
//       brand: json['brand'],
//       price: json['price'].toDouble(),
//       image: json['image'],
//     );
//   }
// }



// class Device {
//   final int id;
//   final String title;
//   final double price;
//   final String image;
//   final String brand;

//   Device({
//     required this.id,
//     required this.title,
//     required this.price,
//     required this.image,
//     required this.brand,
//   });
// }


class Device {
  final int id;
  final String title;
  final double price;
  final String image;
  final String brand;

  Device({
    required this.id,
    required this.title,
    required this.price,
    required this.image,
    required this.brand,
  });
}
