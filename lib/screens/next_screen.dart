import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NextScreen extends StatefulWidget {
  const NextScreen({super.key});

  @override
  State<NextScreen> createState() => _NextScreenState();
}

class _NextScreenState extends State<NextScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Next Screen"),
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
