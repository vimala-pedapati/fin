import 'dart:async';

import 'package:fininfocom_task/screens/login_page.dart';
import 'package:flutter/material.dart';


import 'home_screen.dart';
class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Timer(const Duration(seconds: 3), () async {
      /// --- Checking if the user already logined or not ----- ///

        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (BuildContext context) => const LoginScreen()));

    });

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: Center(
          child: Container(
              padding: const EdgeInsets.only(left: 30, right: 30,bottom: 50),
              height: 300,
              width: 500,
              // color: Colors.red,
              child: Image.asset("assets/fin.jpeg",fit: BoxFit.fill ,)),
        ),
      ),
    );
  }
}
