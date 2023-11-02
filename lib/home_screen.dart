import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
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
                  middleText: 'Are you sure you want to delete this chat',
                  confirm: TextButton(
                    onPressed: () {},
                    child: const Text("Yes"),
                  ),
                  cancel:  TextButton(
                    onPressed: () {},
                    child: const Text("No"),
                  ),
                );
              },
            ),
          )
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
