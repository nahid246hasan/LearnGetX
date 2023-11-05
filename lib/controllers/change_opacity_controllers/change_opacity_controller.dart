import 'package:get/get.dart';

class ChangeOpacityController extends GetxController{
  RxDouble opacity=0.4.obs;

  increaseDecreaseOpacity(double val){
    opacity.value=val;
  }
}