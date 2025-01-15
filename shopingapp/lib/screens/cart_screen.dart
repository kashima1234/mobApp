import 'package:flutter/material.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:shopingapp/models/device.dart'; // Import Device model
import 'package:shopingapp/store/store.dart'; // Import store for Redux

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, List<Device>>(
      converter: (store) => store.state.cart,  // Get the cart from the store
      builder: (context, cart) {
        return Scaffold(
          appBar: AppBar(title: Text('Your Cart')),
          body: cart.isEmpty
              ? Center(child: Text('Your cart is empty!'))
              : ListView.builder(
                  itemCount: cart.length,
                  itemBuilder: (context, index) {
                    final device = cart[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Card(
                        elevation: 5,
                        child: ListTile(
                          leading: Image.asset(device.image, width: 50),
                          title: Text(device.title),
                          subtitle: Text('\$${device.price}'),
                          trailing: IconButton(
                            icon: Icon(Icons.remove_circle),
                            onPressed: () {
                              // Remove the device from the cart
                              StoreProvider.of<AppState>(context).dispatch(RemoveFromCartAction(device));
                            },
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
