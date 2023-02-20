import 'dart:math';
import 'package:lottie/lottie.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';
import 'package:icons_plus/icons_plus.dart';
import 'package:loda/Navbar/AboutFlutter.dart';
import 'package:loda/Navbar/Aboutme.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';

import '../constants.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobile(),
      desktop: desktop(),
    );
  }

  Widget mobile() {
    return Container();
  }

  Widget desktop() {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      // color: Colors.black,
      width: w,
      height: 40,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
        Row(
          children: [
            GestureDetector(
              onDoubleTap: () {
                Get.toNamed('/flutter');
              },
              child: Lottie.network(
                  "https://assets9.lottiefiles.com/packages/lf20_emjcVBt1by.json",
                  height: 60,
                  width: 70,
                  fit: BoxFit.fill),
            ),
            Text(
              "oddEVEN",
              style:
                  TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
            ),
          ],
        ),
        navbuttons(),
        navicons(),
      ]),
    );
  }

  Widget navbuttons() {
    return Row(
      children: [
        TextButton(
            onPressed: () => Get.to(() => Aboutme(),
                arguments: {'key': Random().nextInt(100).toString()}),
            child: Text(
              'About Me',
              style: TextStyle(color: Colors.white),
            )),
        SizedBox(
          width: 20,
        ),
        TextButton(
            onPressed: () => Get.toNamed('/flutter'),
            child: Text(
              'About Flutter',
              style: TextStyle(color: Colors.white),
            )),
        SizedBox(
          width: 20,
        ),
        TextButton(
            onPressed: () => Get.toNamed('/c'),
            child: Text(
              'Github',
              style: TextStyle(color: Colors.white),
            )),
        SizedBox(
          width: 20,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Contack Me',
              style: TextStyle(color: Colors.white),
            ))
      ],
    );
  }

  Widget navicons() {
    return Row(
      children: [
        Icon(
          Icons.apple,
          color: Colors.white,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
        Logo(
          Logos.android,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),

        // Logo(Logos.angular),
        Logo(
          Logos.firebase,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),

        Logo(
          Logos.flutter,
          size: 20,
        ),
        Logo(
          Logos.figma,
          size: 20,
        ),
        SizedBox(
          width: 10,
        ),
      ],
    );
  }
}
