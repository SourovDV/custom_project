import 'package:custom_project/app/app_pages.dart';
import 'package:get/get.dart';

class SplashController extends GetxController{

  Future moveToHomePage()async{
    Future.delayed(Duration(seconds: 3));
    Get.offNamed(AppPages.homeScreen);
  }

  @override
  void onReady() {
    moveToHomePage();
    super.onReady();
  }
}