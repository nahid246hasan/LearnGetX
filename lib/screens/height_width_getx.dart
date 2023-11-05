//ei page e amra screen er height and width nibo getx er madhome
//jemon amra mediaquery use kore nitam


import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightWidthGetx extends StatefulWidget {
  const HeightWidthGetx({super.key});

  @override
  State<HeightWidthGetx> createState() => _HeightWidthGetxState();
}

class _HeightWidthGetxState extends State<HeightWidthGetx> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Height Width Getx"),
      ),
      body: Center(
        child: Container(
          height: Get.height*.5,
          width: Get.width*.5,
          color: Colors.red,
          child: const Center(
            child: Text("In this page we will show how to take screen height and width by getx"),
          ),
        ),
      ),
    );
  }
}
