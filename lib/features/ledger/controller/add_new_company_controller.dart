import 'package:get/get.dart';

class AddNewCompanyController extends GetxController{
  static AddNewCompanyController get find => Get.find();
  RxString companyName = "ESS ESS AGRO".obs;

  void updateCompanyValue(val){
    companyName.value = val.toString();
  }
}