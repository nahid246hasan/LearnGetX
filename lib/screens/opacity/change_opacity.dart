import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_get_x/controllers/change_opacity_controllers/change_opacity_controller.dart';

class ChangeOpacityScreen extends StatefulWidget {
  const ChangeOpacityScreen({super.key});

  @override
  State<ChangeOpacityScreen> createState() => _ChangeOpacityScreenState();
}

class _ChangeOpacityScreenState extends State<ChangeOpacityScreen> {
  final ChangeOpacityController changeOpacityController=Get.put(ChangeOpacityController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Obx(
            () => Container(
              height: 200,
              width: 200,
              color: Colors.green.withOpacity(changeOpacityController.opacity.value),
            ),
          ),
          Obx(
            () => Slider(
              value: changeOpacityController.opacity.value,
              onChanged: (ctx) {
                changeOpacityController.increaseDecreaseOpacity(ctx);
              },
            ),
          ),
        ],
      ),
    );
  }
}
