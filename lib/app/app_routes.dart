import 'package:custom_project/app/app_pages.dart';
import 'package:custom_project/feature/screen/bindings/splash_bindings.dart';
import 'package:custom_project/feature/screen/view/splash_view.dart';
import 'package:get/get.dart';
class AppRoutes{
  static final initialRoutes = AppPages.splashScreen;
  static final List<GetPage> routes = [
    GetPage(name: AppPages.splashScreen, page:()=>SplashView(),binding: SplashBindings())
  ];

}