import 'package:get/get.dart';

class FavoriteController extends GetxController{
  RxList<String> fruitList=['Orange', 'Apple', 'Mangos', 'Banana'].obs;
  RxList tempFruitList=[].obs;

  addFavorite(String value){
    tempFruitList.add(value);
  }
  removeFavorite(String value){
    tempFruitList.remove(value);
  }
}