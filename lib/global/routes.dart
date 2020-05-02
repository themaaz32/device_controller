import 'package:devicecontroller/screens/bluetooth_screen.dart';
import 'package:devicecontroller/screens/bluetooth_success.dart';
import 'package:devicecontroller/screens/connect.dart';
import 'package:devicecontroller/screens/connect_success.dart';
import 'package:devicecontroller/screens/home_screen.dart';

class AppRoutes{
  static final home = "home_screen";
  static final bluetooth = "bluetooth_screen";
  static final bluetoothSuccess = "bluetooth_success_screen";
  static final connect = "connect_screen";
  static final connectSuccess = "connect_success_screen";

  static final routes = {
    home : (context) => HomeScreen(),
    bluetooth : (context) => BluetoothScreen(),
    bluetoothSuccess : (context) => BluetoothSuccessScreen(),
    connect : (context) => ConnectScreen(),
    connectSuccess : (context) => ConnectSuccessScreen(),

  };
}