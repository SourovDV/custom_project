import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:custom_project/app/app_pages.dart';

import 'package:get/get.dart';

class ProductController extends GetxController{
  void goToAnotherPage(Map<String ,String> product){
    Get.toNamed(AppPages.detailsPage,arguments: product);
  }
  
  List slider = [];
  Future<void> getSliderData()async{
    await FirebaseFirestore.instance.collection("banner").get().then((values){
      slider = values.docs;
      print(values.docs);
    });
  }

  @override
  void onInit() {
    getSliderData();
    super.onInit();

  }
}