import 'package:ess_ess_agro/features/dashboard/dashboard_screen.dart';
import 'package:ess_ess_agro/features/home_page/controller/homepage_controller.dart';
import 'package:ess_ess_agro/features/ledger/ledger_screen.dart';
import 'package:ess_ess_agro/features/stock/stock_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../utils/widgets/my_drawer.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final homePageController = Get.put(HomePageController());
    const TextStyle optionStyle =
    TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
    List<Widget> widgetOptions = <Widget>[
      const DashboardScreen(),
      const LedgerScreen(),
      StockScreen(),
      Text(
        'Index 3: Invoice',
        style: optionStyle,
      ),
    ];
    return Scaffold(
      body: Row(
        children: [
          MyDrawer(homePageController: homePageController),
          Expanded(
            child: Obx(() => Center(
              child: widgetOptions[homePageController.index.value],
            )),
          )
        ],
      )
    );
  }
}


