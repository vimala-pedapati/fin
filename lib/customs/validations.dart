import 'package:flutter/material.dart';
import 'custom_animated_popup.dart';

class Validations{

  bool isUserNameValid(userName, context) {
    Pattern pattern = r"^[a-zA-Z. ]{10,10}$";
    RegExp regex = RegExp(pattern.toString());
    if (regex.hasMatch(userName) && userName == "Fininfocom" ) {
      print(regex.hasMatch(userName).toString());
      return true;
    } else {
      if(userName.isEmpty){
        AnimatedPopUp(
            context: context,
            title:"Please enter user name",
            btnColor: Colors.blue,
            lottiePath: 'assets/password.json',
            btnOnTap: (){}).popUp();
        return false;
      }else{
        AnimatedPopUp(
            context: context,
            title:  "Username should be 10 chars or you have entered invalid username",
            btnColor: Colors.blue,
            lottiePath: 'assets/password.json',
            btnOnTap: (){}).popUp();
        return false;
      }
      return false;
    }
  }
  bool isPasswordValid(String password, context){
    bool hasUpperCase = password.contains(RegExp(r'[A-Z]'));
    bool hasSpecialChars = password.contains(RegExp(r'[!@#$ %^&*(),.?":]'));
    bool hasDigits = password.contains(RegExp(r'[0-9]'));
    bool hasLength = password.length == 7;

    if(hasLength && hasDigits && hasSpecialChars && hasUpperCase && password == "Fin@123"){
      return true;
    }else{
      if(password.isEmpty){
        AnimatedPopUp(
            context: context,
            title:  "Password Should not Empty",
            btnColor: Colors.blue,
            lottiePath: 'assets/password.json',
            btnOnTap: (){}).popUp();
      }else{
        AnimatedPopUp(
            context: context,
            title: "Enter a valid password",
            btnColor:Colors.blue,
            lottiePath: 'assets/password.json',
            btnOnTap: (){}).popUp();
      }
      return false;
    }
  }


}



