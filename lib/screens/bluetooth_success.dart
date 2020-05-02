import 'package:devicecontroller/global/colors.dart';
import 'package:devicecontroller/global/constants.dart';
import 'package:devicecontroller/global/widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BluetoothSuccessScreen extends StatelessWidget {
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
                "Bluetooth Successfully Connected",
                style: TextStyle(fontSize: screenConfig.width*0.08, fontWeight: FontWeight.w900, color: Appcolors.whiteColor),
                textAlign: TextAlign.center,
              ),
              AppWidgets.verticalHeader(height : 46),
              Container(
                width: screenConfig.width*0.28,
                child: AspectRatio(
                  aspectRatio: 1,
                  child: SvgPicture.asset(AppConstants.greenCheck),
                ),
              )
            ],
          )
      ),
    );
  }
}
