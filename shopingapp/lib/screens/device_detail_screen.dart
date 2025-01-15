import 'package:flutter/material.dart';
import 'package:shopingapp/models/device.dart';
import 'package:shopingapp/store/store.dart'; 
import 'package:flutter_redux/flutter_redux.dart';

class DeviceDetailScreen extends StatelessWidget {
  final Device device;

  DeviceDetailScreen({required this.device});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(device.title)),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(device.image),  
            Text('Brand: ${device.brand}'),
            Text('Price: \$${device.price}'),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                StoreProvider.of<AppState>(context).dispatch(AddToCartAction(device));
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('${device.title} added to cart')));
              },
              child: Text('Add to Cart'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('Back to Shop'),
            ),
          ],
        ),
      ),
    );
  }
}
