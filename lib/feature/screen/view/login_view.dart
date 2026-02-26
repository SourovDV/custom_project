import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/common/common_button.dart';
import 'package:custom_project/feature/common/common_field.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 120,),
              Text(
                "Login Here",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColor.primaryColor,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Welcome Back You Have Been Missed",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              CommonTextField(text: "Email", icons: Icon(Icons.email_outlined)),
              SizedBox(height: 10,),
              CommonTextField(text: "Password", icons: Icon(Icons.password)),
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
              CommonButton(text: 'Sign In'),
              const SizedBox(height: 50),
        
              Text("Create New Account"),
            ],
          ),
        ),
      ),
    );
  }
}
