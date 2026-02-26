import 'package:custom_project/app/app_pages.dart';
import 'package:get/get.dart';

class HomeController extends GetxController{

  void moveToLoginPage(){
    Get.toNamed(AppPages.loginScreen);
  }
  void moveToRegisterPage(){
    Get.toNamed(AppPages.registerScreen);
  }
}