import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loda/Navbar/AboutFlutter.dart';
import 'package:loda/Navbar/Aboutme.dart';
import 'package:loda/Navbar/Contactme.dart';
import 'package:loda/screen/HomeScreen.dart';

void main(List<String> args) {
  runApp(new Website());
}

class Website extends StatelessWidget {
  const Website({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        getPages: [
          GetPage(name: '/', page: () => HomeScreen()),
          GetPage(name: '/about', page: () => Aboutme()),
          GetPage(name: '/flutter', page: () => AboutFlutter()),
          GetPage(name: '/c', page: () => Contact()),
        ],
        debugShowCheckedModeBanner: false,
        home: HomeScreen(),
        theme: ThemeData());
  }
}
