import 'package:custom_project/app/app_pages.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  Future moveToHomePage()async{
    Future.delayed(Duration(seconds: 3));
    final credential = FirebaseAuth.instance.currentUser;
    credential !=null ? Get.toNamed(AppPages.itemView) : Get.toNamed(AppPages.loginScreen);
  }
  @override
  void onReady() {
    moveToHomePage();
    super.onReady();
  }
}