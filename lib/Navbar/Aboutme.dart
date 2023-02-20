import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Aboutme extends StatelessWidget {
  const Aboutme({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(children: [
        Text(
          Get.arguments['key'] ?? 'SAY HELLO',
          style: TextStyle(color: Colors.white, fontSize: 70),
        ),
       
      ]),
    );
  }
}
