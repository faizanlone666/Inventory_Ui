import 'package:get/get.dart';

class StockScreenController extends GetxController{
  static StockScreenController get find => Get.find();
  RxString companyName = "ESS ESS AGRO".obs;

  void updateCompanyValue(val){
    companyName.value = val.toString();
  }
}