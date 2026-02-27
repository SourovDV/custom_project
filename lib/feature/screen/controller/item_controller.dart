import 'package:custom_project/feature/screen/view/login_view.dart';
import 'package:custom_project/feature/screen/view/product_view.dart';
import 'package:custom_project/feature/screen/view/register_view.dart';
import 'package:custom_project/feature/screen/view/splash_view.dart';
import 'package:get/get.dart';

class ItemController extends GetxController{
  RxInt currentPageIndex = 0.obs;
  final List items = [
    ProductView(),
    LoginView(),
    RegisterView(),
    SplashView(),
  ];

}