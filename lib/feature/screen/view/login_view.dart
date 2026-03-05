import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/common/common_button.dart';
import 'package:custom_project/feature/common/common_field.dart';
import 'package:custom_project/feature/screen/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 120),
              Text(
                "Login Here",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColor.primaryColor,
                ),
              ),
              SizedBox(height: 10),
              Text(
                "Welcome Back You Have Been Missed",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Form(
                key: controller.key,
                child: Column(
                  children: [
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Email",
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      controller: controller.emailController,
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      decoration: InputDecoration(
                        hintText: "Password",
                        prefixIcon: Icon(Icons.email_outlined),
                      ),
                      controller: controller.passwordController,
                    ),
                  ],
                ),
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: const Text(
                    "Forgot Password?",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              CommonButton(
                text: 'Sign In',
                data: () => controller.submitButton(),
              ),
              const SizedBox(height: 50),

              InkWell(
                  onTap: controller.moveToRegister,
                  child: Text("Create New Account")),
            ],
          ),
        ),
      ),
    );
  }
}
