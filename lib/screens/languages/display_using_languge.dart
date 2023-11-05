import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DisplayUsingLanguage extends StatelessWidget {
  const DisplayUsingLanguage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            ListTile(
              title: Text('message'.tr), //tr er madhome amra translate kortechi
              subtitle: Text('name'.tr),
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                OutlinedButton(onPressed: () {
                  Get.updateLocale(Locale('en','US'));
                  //ekhane amra language change kortechi Get.updateLocale() diye
                }, child: const Text('English')),
                OutlinedButton(onPressed: () {Get.updateLocale(Locale('ur','PK'));}, child: const Text('Urdu')),
              ],
            )
          ],
        ));
  }
}
