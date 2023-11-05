import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:learn_get_x/controllers/notification_controller/notification_controller.dart';

class SwitchButtonScreen extends StatefulWidget {
  const SwitchButtonScreen({super.key});

  @override
  State<SwitchButtonScreen> createState() => _SwitchButtonScreenState();
}

class _SwitchButtonScreenState extends State<SwitchButtonScreen> {
  final NotificationController notificationController =
      Get.put(NotificationController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Notifications'),
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text("Notifications"),
              Obx(
                () => Switch(
                  value: notificationController.notification.value,
                  onChanged: (ctx) {
                    notificationController.onChange(ctx);
                  },
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
