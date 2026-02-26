import 'package:custom_project/app/appColor.dart';
import 'package:flutter/material.dart';
class SplashView extends StatelessWidget {
  const SplashView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
          backgroundColor: Colors.white,
          body: Center(
            child: Image.asset("assets/splash_screen.png",height: 500,width: 300,),
          ),
    );
  }
}
