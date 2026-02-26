import 'package:custom_project/feature/screen/controller/home_controller.dart';
import 'package:custom_project/feature/screen/controller/login_controller.dart';
import 'package:custom_project/feature/screen/controller/products_controller.dart';
import 'package:custom_project/feature/screen/controller/register_controller.dart';
import 'package:custom_project/feature/screen/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
    Get.put(HomeController());
    Get.put(LoginController());
    Get.put(RegisterController());
    Get.put(ProductController());
  }

}