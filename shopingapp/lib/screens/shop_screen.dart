// // lib/screens/shop_screen.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:shopingapp/models/device.dart'; // Import Device model
// import 'package:shopingapp/store/store.dart'; // Import store for Redux

// class ShopScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, List<Device>>(
//       converter: (store) => store.state.devices,  // Convert store state to devices list
//       builder: (context, devices) {
//         return Scaffold(
//           appBar: AppBar(title: Text('Shop')),
//           body: ListView.builder(
//             itemCount: devices.length,
//             itemBuilder: (context, index) {
//               final device = devices[index];
//               return ListTile(
//                 title: Text(device.title),
//                 subtitle: Text('${device.price} USD'),
//                 onTap: () {
//                   // Handle tap on the device
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DeviceDetailScreen(device: device),
//                     ),
//                   );
//                 },
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }

// class DeviceDetailScreen extends StatelessWidget {
//   final Device device;

//   DeviceDetailScreen({required this.device});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(device.title)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(device.image),
//             Text('Brand: ${device.brand}'),
//             Text('Price: \$${device.price}'),
//           ],
//         ),
//       ),
//     );
//   }
// }





// lib/screens/shop_screen.dart

// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:shopingapp/models/device.dart'; // Import Device model
// import 'package:shopingapp/store/store.dart'; // Import store for Redux

// class ShopScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, List<Device>>(
//       converter: (store) => store.state.devices,  // Convert store state to devices list
//       builder: (context, devices) {
//         // Temporarily use hardcoded data if devices are empty
//         if (devices.isEmpty) {
//           devices = [
//             Device(
//               id: 1,
//               title: 'Device 1',
//               price: 1000,
//               image: 'assets/images/device1.jpg',
//               brand: 'Brand 1',
//             ),
//             Device(
//               id: 2,
//               title: 'Device 2',
//               price: 2000,
//               image: 'assets/images/device2.jpg',
//               brand: 'Brand 2',
//             ),
//           ];
//         }

//         return Scaffold(
//           appBar: AppBar(title: Text('Shop')),
//           body: ListView.builder(
//             itemCount: devices.length,
//             itemBuilder: (context, index) {
//               final device = devices[index];
//               return ListTile(
//                 title: Text(device.title),
//                 subtitle: Text('${device.price} USD'),
//                 onTap: () {
//                   // Handle tap on the device
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DeviceDetailScreen(device: device),
//                     ),
//                   );
//                 },
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }

// class DeviceDetailScreen extends StatelessWidget {
//   final Device device;

//   DeviceDetailScreen({required this.device});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(device.title)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.network(device.image),
//             Text('Brand: ${device.brand}'),
//             Text('Price: \$${device.price}'), 
//           ],
//         ),
//       ),
//     );
//   }
// }

// this is working down code 

// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:shopingapp/models/device.dart'; // Import Device model
// import 'package:shopingapp/store/store.dart'; // Import store for Redux

// class ShopScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, List<Device>>(
//       converter: (store) => store.state.devices,  // Convert store state to devices list
//       builder: (context, devices) {
//         // Temporarily use hardcoded data if devices are empty
//         if (devices.isEmpty) {
//           devices = [
//             Device(
//               id: 1,
//               title: 'Device 1',
//               price: 1000,
//               image: 'assets/images/device1.jpg',  // Correct image path for assets
//               brand: 'Brand 1',
//             ),
//             Device(
//               id: 2,
//               title: 'Device 2',
//               price: 2000,
//               image: 'assets/images/device2.jpg',  // Correct image path for assets
//               brand: 'Brand 2',
//             ),
//           ];
//         }

//         return Scaffold(
//           appBar: AppBar(title: Text('Shop')),
//           body: ListView.builder(
//             itemCount: devices.length,
//             itemBuilder: (context, index) {
//               final device = devices[index];
//               return ListTile(
//                 title: Text(device.title),
//                 subtitle: Text('${device.price} USD'),
//                 leading: Image.asset(device.image),  // Use Image.asset here for local images
//                 onTap: () {
//                   // Handle tap on the device
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                       builder: (context) => DeviceDetailScreen(device: device),
//                     ),
//                   );
//                 },
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }

// class DeviceDetailScreen extends StatelessWidget {
//   final Device device;

//   DeviceDetailScreen({required this.device});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(device.title)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(device.image),  // Use Image.asset here for local images
//             Text('Brand: ${device.brand}'),
//             Text('Price: \$${device.price}'),
//           ],
//         ),
//       ),
//     );
//   }
// }


// import 'package:flutter/material.dart';
// import 'package:flutter_redux/flutter_redux.dart';
// import 'package:shopingapp/models/device.dart'; // Import Device model
// import 'package:shopingapp/store/store.dart'; // Import store for Redux

// class ShopScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return StoreConnector<AppState, List<Device>>(
//       converter: (store) => store.state.devices,  // Convert store state to devices list
//       builder: (context, devices) {
//         // Temporarily use hardcoded data if devices are empty
//         if (devices.isEmpty) {
//           devices = [
//             Device(
//               id: 1,
//               title: 'Device 1',
//               price: 2000,
//               image: 'assets/images/device1.jpg',
//               brand: 'Samsung',
//             ),
//             Device(
//               id: 2,
//               title: 'Device 2',
//               price: 1000,
//               image: 'assets/images/device2.jpg',
//               brand: 'Iphone',
//             ),
//           ];
//         }

//         return Scaffold(
//           appBar: AppBar(title: Text('Shop')),
//           body: ListView.builder(
//             itemCount: devices.length,
//             itemBuilder: (context, index) {
//               final device = devices[index];
//               return Padding(
//                 padding: const EdgeInsets.all(8.0),
//                 child: Card(
//                   elevation: 5,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(15),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.all(12.0),
//                     child: Column(
//                       children: [
//                         // Display the device image as a large image
//                         ClipRRect(
//                           borderRadius: BorderRadius.circular(10),
//                           child: Image.asset(
//                             device.image,
//                             height: 200,  // Adjust the height as needed
//                             fit: BoxFit.cover,  // Makes the image fit the size
//                           ),
//                         ),
//                         SizedBox(height: 12),
//                         // Display the device title and price
//                         Text(
//                           device.title,
//                           style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                         ),
//                         SizedBox(height: 6),
//                         Text('${device.price} USD'),
//                         SizedBox(height: 12),
//                         // View Details button
//                         ElevatedButton(
//                           onPressed: () {
//                             // Navigate to the device detail screen when pressed
//                             Navigator.push(
//                               context,
//                               MaterialPageRoute(
//                                 builder: (context) => DeviceDetailScreen(device: device),
//                               ),
//                             );
//                           },
//                           child: Text('View Details'),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               );
//             },
//           ),
//         );
//       },
//     );
//   }
// }


// class DeviceDetailScreen extends StatelessWidget {
//   final Device device;

//   DeviceDetailScreen({required this.device});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(device.title)),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Image.asset(device.image),  // Use Image.asset for local images
//             Text('Brand: ${device.brand}'),
//             Text('Price: \$${device.price}'),
//           ],
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shopingapp/models/device.dart'; // Import Device model
import 'package:shopingapp/store/store.dart'; // Import store for Redux
import 'package:shopingapp/screens/cart_screen.dart'; // Import Cart Screen
import 'package:shopingapp/screens/device_detail_screen.dart'; // Import Device Detail Screen

class ShopScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Device>>(
      converter: (store) => store.state.devices,  // Convert store state to devices list
      builder: (context, devices) {
        if (devices.isEmpty) {
          devices = [
            Device(
              id: 1,
              title: 'Samsung s24 ultra',
              price: 2000,
              image: 'assets/images/device1.jpg',
              brand: 'SAMSUNG',
            ),
            Device(
              id: 2,
              title: 'Iphone 15 pro max',
              price: 1000,
              image: 'assets/images/device2.jpg',
              brand: 'IPHONE',
            ),
          ];
        }

        return Scaffold(
          appBar: AppBar(
            title: Text('Shop'),
            actions: [
              IconButton(
                icon: Icon(Icons.shopping_cart),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => CartScreen()),
                  );
                },
              ),
            ],
          ),
          body: ListView.builder(
            itemCount: devices.length,
            itemBuilder: (context, index) {
              final device = devices[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  elevation: 5,
                  child: Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Image.asset(
                            device.image,
                            height: 200,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(height: 12),
                        Text(
                          device.title,
                          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(height: 6),
                        Text('${device.price} USD'),
                        SizedBox(height: 12),
                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => DeviceDetailScreen(device: device),
                              ),
                            );
                          },
                          child: Text('View Details'),
                        ),
                      ],
                    ),
                  ),
                ),
              );
            },
          ),
        );
      },
    );
  }
}
