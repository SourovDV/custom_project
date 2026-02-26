import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/app/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
        textTheme: TextTheme(
          titleLarge: TextStyle(fontSize: 25,color:AppColor.primaryColor,fontWeight: FontWeight.bold)
        )
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.initialRoutes,
      getPages: AppRoutes.routes,
    );
  }
}
