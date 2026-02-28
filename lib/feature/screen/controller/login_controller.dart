import 'package:custom_project/app/app_pages.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  void moveToProduct() {
    Get.toNamed(AppPages.itemView);
  }
}
