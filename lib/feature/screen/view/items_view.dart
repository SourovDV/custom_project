import 'package:custom_project/app/appColor.dart';
import 'package:custom_project/feature/screen/controller/item_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
class ItemsView extends GetView<ItemController> {
  const ItemsView({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Obx(()=>controller.items[controller.currentPageIndex.value]),
        bottomNavigationBar: Obx(()=>NavigationBar(
            onDestinationSelected: (index){
              controller.currentPageIndex.value = index;
            },
            indicatorColor: AppColor.primaryColor,
            selectedIndex: controller.currentPageIndex.value,
            destinations: [
              NavigationDestination(icon: Icon(Icons.newspaper_rounded), label:"New"),
              NavigationDestination(icon: Icon(Icons.done), label:"Completed"),
              NavigationDestination(icon: Icon(Icons.card_giftcard), label:"Card"),
              NavigationDestination(icon: Icon(Icons.refresh), label:"Progress"),
            ]),)
    );
  }
}
