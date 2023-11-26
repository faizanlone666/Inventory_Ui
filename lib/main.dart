import 'package:ess_ess_agro/features/home_page/home_page.dart';
import 'package:ess_ess_agro/utils/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'ESS ESS AGRO',
      debugShowCheckedModeBanner: false,
      theme: FAppTheme.lightTheme,
      home: const MyHomePage(),
    );
  }
}