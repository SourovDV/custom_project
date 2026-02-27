import 'package:custom_project/app/app_pages.dart';

import 'package:get/get.dart';

class ProductController extends GetxController{


  void goToAnotherPage(Map<String ,String> product){
    Get.toNamed(AppPages.detailsPage,arguments: product);
  }
}