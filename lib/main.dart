import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_portfolio/controller/services.dart';
import 'package:my_portfolio/view/about/about_page.dart';
import 'package:my_portfolio/view/contact/contact_me.dart';
import 'view/home/home_page.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
void main() {
   WidgetsFlutterBinding.ensureInitialized();
  // setUrlStrategy(PathUrlStrategy());
  Get.put(Services());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: '/contact',
      getPages: [
        GetPage(
          name: '/home',
          page: () => const HomePage(),
        ),
        GetPage(
          name: '/about',
          page: () => const AboutPage(),
        ),
        GetPage(
          name: '/contact',
          page: () => const ContactMe(),
        )
      ],
    );
  }
}
