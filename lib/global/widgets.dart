import 'package:devicecontroller/global/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppWidgets{
  static appBar({title}){
    return AppBar(
      title: Text(title),
      backgroundColor: Appcolors.lightBlueColor,
    );
  }

  static appContainer({child}){
    return Container(
      child: child,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 32),
    );
  }

  static verticalHeader({double height}){
    return SizedBox(height: height,);
  }

  static horizontalHeader({double width}){
    return SizedBox(width: width,);
  }



}