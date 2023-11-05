import 'package:get/get.dart';

class CounterController extends GetxController{
  //getx e data type declare er jonno first e Rx use korte hoy
  //example : RxInt

  final counter=1.obs;// .obs ta dite hobe

  incrementCounter(){
    counter.value++;//jehetu amra obs use korechi tai amader counter er
    //value ke ++ korte hobe
    print(counter.value);
  }

}