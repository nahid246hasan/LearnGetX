import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:learn_get_x/screens/home_screen.dart';
import 'package:learn_get_x/screens/languages/language.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: Language(),//Language dart file ke integrate kora hoyeche
      locale: const Locale('en','US'),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const HomeScreen(),
    );
  }
}
