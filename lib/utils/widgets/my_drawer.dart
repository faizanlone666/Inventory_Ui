import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../features/home_page/controller/homepage_controller.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({
    super.key,
    required this.homePageController,
  });

  final HomePageController homePageController;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: MediaQuery.of(context).size.width * 0.2,
      elevation: 5.0,
      backgroundColor: Colors.white,
      shape: const RoundedRectangleBorder(borderRadius: BorderRadius.zero),
      shadowColor: Colors.grey,
      child: Obx(()=> Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ListTile(
              selected: homePageController.index.value == 0,
              onTap: (){
                homePageController.updateIndex(0);
                Get.back();
              },
              title: Text("Dashboard", style: TextStyle(color: homePageController.index.value == 0 ? Colors.blueGrey : Colors.black),),
            ),
            ListTile(
              selected: homePageController.index.value == 1,
              onTap: (){
                homePageController.updateIndex(1);
                Get.back();
              },
              title: Text("Ledger", style: TextStyle(color: homePageController.index.value == 1 ? Colors.blueGrey : Colors.black),),
            ),
            ListTile(
              selected: homePageController.index.value == 2,
              onTap: (){
                homePageController.updateIndex(2);
                Get.back();
              },
              title: Text("Stock", style: TextStyle(color: homePageController.index.value == 2 ? Colors.blueGrey : Colors.black),),
            ),
            ListTile(
              selected: homePageController.index.value == 3,
              onTap: (){
                homePageController.updateIndex(3);
                Get.back();
              },
              title: Text("Invoice", style: TextStyle(color: homePageController.index.value == 3 ? Colors.blueGrey : Colors.black),),
            ),
          ],
        ),
      ),
    );
  }
}