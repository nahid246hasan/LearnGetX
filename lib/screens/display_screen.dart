import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayScreen extends StatefulWidget {
  const DisplayScreen({super.key});

  @override
  State<DisplayScreen> createState() => _DisplayScreenState();
}

class _DisplayScreenState extends State<DisplayScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Display Screen"),
      ),
      body: Center(
        child: TextButton(
          onPressed: () {
            //for pop screen we use
            //Navigator.of(context).pop();
            //in getX :
            Get.back();
          },
          child: const Text("Back"),
        ),
      ),
    );
  }
}
