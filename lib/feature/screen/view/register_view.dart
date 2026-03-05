import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/common/common_button.dart';
import 'package:custom_project/feature/screen/controller/register_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterView extends GetView<RegisterController> {
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
             Form(
                 key: controller.key,
                 child: Column(
               children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: "Email",
                      prefixIcon: Icon(Icons.email_outlined)
                    ),
                    controller: controller.emailController,
                  ),
                 SizedBox(height: 10,),
                 TextFormField(
                   decoration: InputDecoration(
                       hintText: "Password",
                       prefixIcon: Icon(Icons.email_outlined)
                   ),
                   controller: controller.passwordController,
                 ),
                 SizedBox(height: 10,),
                 TextFormField(
                   decoration: InputDecoration(
                       hintText: "Confirm Password",
                       prefixIcon: Icon(Icons.email_outlined)
                   ),
                   controller: controller.confirmPassword,
                 ),
                 SizedBox(height: 10,),

               ],
             )),
              Container(
                  color: AppColor.primaryColor,
                  child: CommonButton(text: 'Sign Un',data: (){
                    controller.submit();
                  },)),
              const SizedBox(height: 50),
              Text("Already have an account"),
            ],
          ),
        ),
      ),
    );
  }
}
