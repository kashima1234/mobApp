// // lib/store/store.dart

// import 'package:redux/redux.dart';
// import 'package:shopingapp/models/device.dart'; // Import the Device model

// // App state class
// class AppState {
//   final List<Device> devices;
//   final Device? selectedDevice;

//   AppState({required this.devices, this.selectedDevice});
// }

// // Action to set devices in the store
// class SetDevicesAction {
//   final List<Device> devices;

//   SetDevicesAction(this.devices);
// }

// // Reducer function that updates the state
// AppState appReducer(AppState state, dynamic action) {
//   if (action is SetDevicesAction) {
//     return AppState(devices: action.devices, selectedDevice: state.selectedDevice);
//   }
//   return state;
// }

// // Store configuration
// final store = Store<AppState>(
//   appReducer,
//   initialState: AppState(devices: [], selectedDevice: null),
// );



import 'package:redux/redux.dart';
import 'package:shopingapp/models/device.dart';  // Import your device model

// AppState to hold both devices and cart
class AppState {
  final List<Device> devices;
  final List<Device> cart;

  AppState({required this.devices, required this.cart});
}

// Reducers to handle actions
AppState appReducer(AppState state, dynamic action) {
  if (action is AddToCartAction) {
    return AppState(devices: state.devices, cart: List.from(state.cart)..add(action.device));
  } else if (action is RemoveFromCartAction) {
    return AppState(devices: state.devices, cart: state.cart.where((device) => device.id != action.device.id).toList());
  }
  return state;
}

class AddToCartAction {
  final Device device;
  AddToCartAction(this.device);
}

class RemoveFromCartAction {
  final Device device;
  RemoveFromCartAction(this.device);
}

// Store initialization
final Store<AppState> store = Store<AppState>(
  appReducer,
  initialState: AppState(devices: [], cart: []),
);
