import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_get_x/screens/counter/counter_home_screen.dart';
import 'package:learn_get_x/screens/height_width_getx.dart';
import 'package:learn_get_x/screens/languages/display_using_languge.dart';
import 'package:learn_get_x/screens/next_screen.dart';
import 'package:learn_get_x/screens/opacity/change_opacity.dart';
import 'package:learn_get_x/screens/switch_button/switch_button.dart';

import 'favorite_fruits/favorite_fruits.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  var color = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Learn GetX"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Card(
              child: ListTile(
                title: const Text("GetX Dialog Alert"),
                subtitle: const Text("GetX Dialog alert with getx"),
                onTap: () {
                  Get.defaultDialog(
                    title: 'Delete Chat',
                    titlePadding: EdgeInsets.all(20),
                    contentPadding: EdgeInsets.all(20),

                    //middleText: 'Are you sure you want to delete this chat',
                    //middleText e max 3 line er beshi use kora jay na
                    // ei problem er solution hishebe amra content use korbo
                    content:
                        const Text('Are you sure you want to delete this chat'),
                    //content basically widget support kore......

                    confirm: TextButton(
                      onPressed: () {
                        Get.back(); //eta diye amra getX er madhome screen pop korte pari
                      },
                      child: const Text("Yes"),
                    ),
                    cancel: TextButton(
                      onPressed: () {},
                      child: const Text("No"),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("GetX Bottom Sheet"),
                subtitle: const Text("GetX Bottom sheet with getx"),
                onTap: () {
                  Get.bottomSheet(
                    Container(
                      color: color,
                      child: Column(
                        children: [
                          ListTile(
                            leading: const Icon(Icons.light_mode),
                            title: const Text("Light Theme"),
                            onTap: () {
                              setState(() {
                                color = Colors.white;
                              });
                              //changeTheme change our theme
                              Get.changeTheme(ThemeData.light());
                            },
                          ),
                          ListTile(
                            leading: const Icon(Icons.dark_mode),
                            title: const Text("Dark Theme"),
                            onTap: () {
                              setState(() {
                                color = Colors.black;
                              });
                              Get.changeTheme(ThemeData.dark());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Navigate Screen"),
                subtitle: const Text("Navigate with getx"),
                onTap: () {
                  Get.to(const NextScreen());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("HeightWidthGetx Screen"),
                subtitle: const Text("Height Width with getx"),
                onTap: () {
                  Get.to(()=>const HeightWidthGetx());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Language Screen"),
                subtitle: const Text("Select Language with getx"),
                onTap: () {
                  Get.to(()=>const DisplayUsingLanguage());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Counter App"),
                subtitle: const Text("Counter App with getx State Management"),
                onTap: () {
                  Get.to(const CounterHomeScreen());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Change Opacity App"),
                subtitle: const Text("Change opacity with slider using getx State Management"),
                onTap: () {
                  Get.to(const ChangeOpacityScreen());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("Switch Button"),
                subtitle: const Text("How Switch Button react with getx State Management"),
                onTap: () {
                  Get.to(const SwitchButtonScreen());
                },
              ),
            ),
            Card(
              child: ListTile(
                title: const Text("List View Builder"),
                subtitle: const Text("List View Builder with getx State Management"),
                onTap: () {
                  Get.to(const FavoriteFruitsScreen());
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.snackbar(
            "Nahid Task",
            "I am learning GetX",
            backgroundColor: Colors.grey,
          );
        },
      ),
    );
  }
}
