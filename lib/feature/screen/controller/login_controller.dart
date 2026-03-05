import 'package:custom_project/app/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final key = GlobalKey<FormState>();

  void moveToRegister() {
    Get.toNamed(AppPages.registerScreen);
  }

  void submitButton() async {
    if (key.currentState!.validate()) {
      try {
        print("hellow");
        FirebaseAuth.instance
            .signInWithEmailAndPassword(
              email: emailController.text,
              password: passwordController.text,
            )
            .then((value) {
              print("value : $value");
              Get.toNamed(AppPages.itemView);
            });
      } on FirebaseAuthException catch (e) {
        if (e.code == 'user-not-found') {
          print('No user found for that email.');
        } else if (e.code == 'wrong-password') {
          print('Wrong password provided for that user.');
        }
      }
    }
  }
}
