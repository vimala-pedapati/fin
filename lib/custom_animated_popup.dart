import 'package:flutter/material.dart';
import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:lottie/lottie.dart';
class AnimatedPopUp{
  AnimatedPopUp({
    required this.context,
    required this.title,
    required this.btnColor,
    required this.lottiePath,
    required this.btnOnTap});
  final BuildContext context;
  final  String title;
  final Color btnColor;
  final String lottiePath;
  final Function() btnOnTap;
  popUp(){
    return  AwesomeDialog(
      customHeader: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(100),
          ),
          child: Lottie.asset(lottiePath)
      ),
      context: context,
      dialogType: DialogType.ERROR,
      animType: AnimType.RIGHSLIDE,
      headerAnimationLoop: true,
      title:title,
      titleTextStyle: const TextStyle(
          fontFamily: 'montserrat',
          fontSize: 15
      ),
      // desc: "This is Description",
      btnOkOnPress: btnOnTap,
      //btnOkIcon: Icons.cancel,
      btnOkColor:  btnColor,
    ).show();

  }





}


