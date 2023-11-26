import 'package:get/get.dart';

class HomePageController extends GetxController{
  static HomePageController get find=> Get.find();
  RxInt index = 0.obs;

  void updateIndex(int index){
    this.index.value = index;
  }
}