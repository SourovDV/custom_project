import 'package:custom_project/app/app_pages.dart';
import 'package:custom_project/feature/screen/bindings/splash_bindings.dart';
import 'package:custom_project/feature/screen/view/home_screen.dart';
import 'package:custom_project/feature/screen/view/login_view.dart';
import 'package:custom_project/feature/screen/view/product_view.dart';
import 'package:custom_project/feature/screen/view/register_view.dart';
import 'package:custom_project/feature/screen/view/splash_view.dart';
import 'package:get/get.dart';
class AppRoutes{
  static final initialRoutes = AppPages.splashScreen;
  static final List<GetPage> routes = [
    GetPage(name: AppPages.splashScreen, page:()=>SplashView(),binding: SplashBindings()),
    GetPage(name: AppPages.homeScreen, page:()=>HomeScreen(),binding: SplashBindings()),
    GetPage(name: AppPages.loginScreen, page:()=>LoginView(),binding: SplashBindings()),
    GetPage(name: AppPages.registerScreen, page:()=>RegisterView(),binding: SplashBindings()),
    GetPage(name: AppPages.productScreen, page:()=>ProductView(),binding: SplashBindings()),

  ];

}