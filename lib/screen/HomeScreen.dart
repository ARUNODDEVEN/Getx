import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:loda/constants.dart';
import 'package:loda/screen/C1.dart';
import 'package:loda/screen/c2.dart';
import 'package:lottie/lottie.dart';
// import '';
import '../Navbar/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Positioned(
            child: Navbar(),
            top: 0,
            left: 0,
            right: 0,
          ),
          Transform.translate(
            offset: const Offset(0, 50),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SecondScreen(),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
