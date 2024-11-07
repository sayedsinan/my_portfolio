import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/services.dart';
import 'view/home/home_page.dart';

void main() {
  Get.put(Services());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: HomePage(),
    );
  }
}
