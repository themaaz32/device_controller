import 'package:devicecontroller/global/colors.dart';
import 'package:devicecontroller/global/constants.dart';
import 'package:devicecontroller/global/routes.dart';
import 'package:devicecontroller/global/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BluetoothScreen extends StatefulWidget {
  @override
  _BluetoothScreenState createState() => _BluetoothScreenState();
}

class _BluetoothScreenState extends State<BluetoothScreen> {
  @override
  Widget build(BuildContext context) {

    Size screenConfig = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppWidgets.appBar(title: "Bluetooth"),
      backgroundColor: Appcolors.backgroundColor,
      body: AppWidgets.appContainer(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "\"Device Controller\" Would Like to Use Bluetooth",
              style: TextStyle(fontSize: screenConfig.width*0.06, fontWeight: FontWeight.w900, color: Appcolors.whiteColor),
              textAlign: TextAlign.center,
            ),
            AppWidgets.verticalHeader(height : 16),
            Text(
              "This will allow \"Device Controller\" to find and connect to the Bluetooth Tag. This app may also use Bluetooth to know when you're nearby.",
              style: TextStyle(fontSize: screenConfig.width*0.04, fontWeight: FontWeight.w500, color: Appcolors.whiteColor),
              textAlign: TextAlign.center,
            ),
            AppWidgets.verticalHeader(height : 64),
            Container(
              width: screenConfig.width*0.45,
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      child: AspectRatio(
                        aspectRatio: 1,
                        child: SvgPicture.asset(AppConstants.crossSvg),
                      ),
                    ),
                  ),
                  AppWidgets.horizontalHeader(width : 32),
                  Expanded(
                    child: GestureDetector(
                      child: Container(
                        child: AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset(AppConstants.checkSvg),
                        ),
                      ),
                      onTap: (){
                        Navigator.pushNamed(context, AppRoutes.bluetoothSuccess);
                      },
                    ),
                  ),

                ],
              ),
            )
          ],
        )
      ),
    );
  }
}
