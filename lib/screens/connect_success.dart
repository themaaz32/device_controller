import 'package:devicecontroller/global/colors.dart';
import 'package:devicecontroller/global/constants.dart';
import 'package:devicecontroller/global/routes.dart';
import 'package:devicecontroller/global/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConnectSuccessScreen extends StatefulWidget {
  @override
  _ConnectSuccessScreenState createState() => _ConnectSuccessScreenState();
}

class _ConnectSuccessScreenState extends State<ConnectSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    Size screenConfig = MediaQuery.of(context).size;

    textWidget({text}) {
      return Text("$text",
          style: TextStyle(
            color: Appcolors.whiteColor,
            fontSize: screenConfig.width * 0.04,
            fontWeight: FontWeight.bold,
          ));
    }

    return Scaffold(
      appBar: AppWidgets.appBar(title: "Connect"),
      backgroundColor: Appcolors.backgroundColor,
      body: AppWidgets.appContainer(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: screenConfig.width * 0.8,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset(AppConstants.mobileSvg),
                    ),
                  ),
                ),
                AppWidgets.horizontalHeader(width: 32),
                Expanded(
                  child: Container(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset(AppConstants.arrowSvg),
                    ),
                  ),
                ),
                AppWidgets.horizontalHeader(width: 32),
                Expanded(
                  child: Container(
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: SvgPicture.asset(AppConstants.devicesSvg),
                    ),
                  ),
                ),
              ],
            ),
          ),
          AppWidgets.verticalHeader(height: 48),
          Container(
            width: screenConfig.width * 0.75,
            child: Text(
              "Connect your mobile device with the Bluetooth Tag to activate communication between them.",
              style: TextStyle(
                  fontSize: screenConfig.width * 0.04,
                  fontWeight: FontWeight.w700,
                  color: Appcolors.whiteColor),
              textAlign: TextAlign.center,
            ),
          ),
          AppWidgets.verticalHeader(height: 32),
          Container(
            width: screenConfig.width * 0.5,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1,
                            child: SvgPicture.asset(AppConstants.redCheck),
                          ),
                          AppWidgets.verticalHeader(height: 32),
                          textWidget(text: "Deactivate"),
                        ],
                      ),
                    ),
                    onTap: () {},
                  ),
                ),
                AppWidgets.horizontalHeader(width: 32),
                Expanded(
                  child: GestureDetector(
                    child: Container(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          AspectRatio(
                            aspectRatio: 1,
                            child: SvgPicture.asset(AppConstants.greenCheck)
                          ),
                          AppWidgets.verticalHeader(height: 32),
                          textWidget(text: "Activate"),
                        ],
                      ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, AppRoutes.bluetooth);
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      )),
    );
  }
}
