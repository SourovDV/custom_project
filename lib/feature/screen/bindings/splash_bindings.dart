import 'package:custom_project/feature/screen/controller/splash_controller.dart';
import 'package:get/get.dart';

class SplashBindings extends Bindings{
  @override
  void dependencies() {
    Get.put(SplashController());
  }

}