import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/screen/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends GetView<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).textTheme;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 70),
              Image.asset("assets/splash_screen.png"),
              SizedBox(height: 30),
              Container(
                width: 200,
                child: Text(
                  "Discover your dream job here",
                  style: theme.titleLarge,
                ),
              ),
              SizedBox(height: 50),
              Text(
                "Explore all the existing job roll base on your interest and study major",
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: InkWell(
                      onTap: ()=>controller.moveToLoginPage(),
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          color: AppColor.primaryColor,
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: Center(
                          child: Text(
                            "Login",
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 20),
                  Expanded(
                    child: InkWell(
                      onTap: controller.moveToRegisterPage,
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: Colors.black, // border color
                            width: 1, // border width
                          ),
                        ),
                        child: Center(child: Text("Register")),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
