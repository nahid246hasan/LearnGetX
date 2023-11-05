import 'package:get/get.dart';

class NotificationController extends GetxController{
  RxBool notification=false.obs;
  onChange(val){
    notification.value=val;
  }
}