import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_get_x/controllers/favorite_controllers/favorite_controller.dart';

class FavoriteFruitsScreen extends StatefulWidget {
  const FavoriteFruitsScreen({super.key});

  @override
  State<FavoriteFruitsScreen> createState() => _FavoriteFruitsScreenState();
}

class _FavoriteFruitsScreenState extends State<FavoriteFruitsScreen> {
  FavoriteController favoriteController = Get.put(FavoriteController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List View Builder'),
      ),
      body: Obx(
        () => ListView.builder(
          itemCount: favoriteController.fruitList.value.length,
          itemBuilder: (ctx, index) {
            return Card(
              child: ListTile(
                onTap: () {
                  if (favoriteController.tempFruitList.contains(
                      favoriteController.fruitList[index].toString())) {
                    favoriteController.removeFavorite(
                        favoriteController.fruitList[index].toString());
                  } else {
                    favoriteController.addFavorite(
                        favoriteController.fruitList[index].toString());
                  }
                },
                title: Text(favoriteController.fruitList[index].toString()),
                trailing: Obx(() => Icon(
                      Icons.favorite,
                      color: favoriteController.tempFruitList.contains(
                              favoriteController.fruitList[index].toString())
                          ? Colors.red
                          : Colors.grey,
                    )),
              ),
            );
          },
        ),
      ),
    );
  }
}
