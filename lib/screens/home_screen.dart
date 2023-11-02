import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_get_x/screens/next_screen.dart';

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
      body: Column(
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
          TextButton(
            onPressed: () {
              //this is the method to route another page in flutter.
              //Navigator.push(context, MaterialPageRoute(builder: (ctx)=>NextScreen()));
            //Now we will show it with getX
              Get.to(const NextScreen());

            },
            child: const Text(
              "Next Screen",
            ),
          ),
        ],
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
