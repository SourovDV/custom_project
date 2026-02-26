import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/common/common_button.dart';
import 'package:custom_project/feature/common/common_field.dart';
import 'package:flutter/material.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 180,),
              Text(
                "Create Account",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                  color: AppColor.primaryColor,
                ),
              ),
              SizedBox(height: 10,),
              Text(
                "Create an account , so you can existing your dream jobs",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20,),
              CommonTextField(text: "Email", icons: Icon(Icons.email_outlined)),
              SizedBox(height: 10,),
              CommonTextField(text: "Password", icons: Icon(Icons.email_outlined)),
              SizedBox(height: 10,),
              CommonTextField(text: "Confirm Password", icons: Icon(Icons.password)),
              const SizedBox(height: 20),
              CommonButton(text: 'Sign Un'),
              const SizedBox(height: 50),
              Text("Already have an account"),
            ],
          ),
        ),
      ),
    );
  }
}
