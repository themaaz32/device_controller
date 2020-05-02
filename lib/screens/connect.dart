import 'package:devicecontroller/global/colors.dart';
import 'package:devicecontroller/global/constants.dart';
import 'package:devicecontroller/global/routes.dart';
import 'package:devicecontroller/global/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ConnectScreen extends StatefulWidget {
  @override
  _ConnectScreenState createState() => _ConnectScreenState();
}

class _ConnectScreenState extends State<ConnectScreen> {
  @override
  Widget build(BuildContext context) {

    Size screenConfig = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppWidgets.appBar(title: "Connect"),
      backgroundColor: Appcolors.backgroundColor,
      body: AppWidgets.appContainer(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: screenConfig.width*0.8,
                child:  Row(
                  children: <Widget>[
                    Expanded(
                      child: Container(
                        child:  AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset(AppConstants.mobileSvg),
                        ),
                      ),
                    ),
                    AppWidgets.horizontalHeader(width: 32),

                    Expanded(
                      child: Container(
                        child:  AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset(AppConstants.arrowSvg),
                        ),
                      ),
                    ),

                    AppWidgets.horizontalHeader(width: 32),
                    Expanded(
                      child: Container(
                        child:  AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset(AppConstants.devicesSvg),
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              AppWidgets.verticalHeader(height : 48),
              Container(
                width: screenConfig.width*0.75,
                child: Text(
                  "Connect your mobile device with the Bluetooth Tag to activate communication between them.",
                  style: TextStyle(fontSize: screenConfig.width*0.04, fontWeight: FontWeight.w700, color: Appcolors.whiteColor),
                  textAlign: TextAlign.center,
                ),
              ),

              AppWidgets.verticalHeader(height : 32),

              OutlineButton(
                child: Text(
                  "CONNECT NOW",
                  style: TextStyle(fontSize: screenConfig.width*0.04, fontWeight: FontWeight.w700, color: Appcolors.whiteColor),
                ),
                padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                textColor: Appcolors.whiteColor,
                color: Appcolors.whiteColor,
                borderSide: BorderSide(color: Appcolors.whiteColor),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30)
                ),
                onPressed: (){
                  Navigator.pushNamed(context, AppRoutes.connectSuccess);
                },
              )


            ],
          )
      ),
    );
  }
}
