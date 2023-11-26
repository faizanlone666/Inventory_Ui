import 'package:get/get.dart';

class DashboardController extends GetxController{
  static DashboardController get find => Get.find();
  RxString companyName = "ESS ESS AGRO".obs;

  void updateCompanyValue(val){
    companyName.value = val.toString();
  }
}