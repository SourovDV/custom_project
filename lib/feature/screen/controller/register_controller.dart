import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_project/app/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final key = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  void submit() async {
    if (key.currentState!.validate()) {
      try {
        final credential = await FirebaseAuth.instance
            .createUserWithEmailAndPassword(
              email: emailController.text,
              password: passwordController.text,
            );
        if(credential != null){
         Get.toNamed(AppPages.itemView);
         FirebaseFirestore.instance.collection("users").doc(emailController.text).set(
           {
             "Name":"Lincon",
             "Email":emailController.text,
             "password":passwordController.text
           }
         );
        }
      } on FirebaseAuthException catch (e) {
        print(e);
      }
    }
  }
}
