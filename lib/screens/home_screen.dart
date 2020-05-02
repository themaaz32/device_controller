import 'package:devicecontroller/global/colors.dart';
import 'package:devicecontroller/global/constants.dart';
import 'package:devicecontroller/global/routes.dart';
import 'package:devicecontroller/global/widgets.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {

    final divider = Opacity(
      child: Container(
        width: 1,
        height: 120,
        color: Appcolors.whiteColor,
      ),
      opacity: 0.5,
    );

    Size screenConfig = MediaQuery.of(context).size;

    textWidget({text}){
      return Text("$text", style: TextStyle(
        color: Appcolors.whiteColor,
        fontSize: screenConfig.width*0.04,
        fontWeight: FontWeight.bold,
      ));
    }
    return Scaffold(
      appBar: AppWidgets.appBar(title: "Device Controller"),
      backgroundColor: Appcolors.backgroundColor,
      body: AppWidgets.appContainer(
        child: Center(
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
                          child: SvgPicture.asset(AppConstants.connextSvg),
                        ),
                        AppWidgets.verticalHeader(height: 32),
                        textWidget(text: "Connect"),
                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.connect);
                  },
                ),
              ),
              AppWidgets.horizontalHeader(width: 32),
              divider,
              AppWidgets.horizontalHeader(width: 32),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset(AppConstants.bluetootSvg),
                        ),
                        AppWidgets.verticalHeader(height: 32),
                        textWidget(text: "Bluetooth"),

                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.bluetooth);
                  },
                ),
              ),
              AppWidgets.horizontalHeader(width: 32),
              divider,
              AppWidgets.horizontalHeader(width: 32),
              Expanded(
                child: GestureDetector(
                  child: Container(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        AspectRatio(
                          aspectRatio: 1,
                          child: SvgPicture.asset(AppConstants.infoSvg),
                        ),
                        AppWidgets.verticalHeader(height: 32),
                        textWidget(text: "Info"),

                      ],
                    ),
                  ),
                  onTap: (){
                    Navigator.pushNamed(context, AppRoutes.connect);
                  },
                ),
              ),
            ],
          ),
        )
      )
    );
  }
}
