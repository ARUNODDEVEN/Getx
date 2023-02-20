import 'package:flutter/material.dart';
import 'package:loda/constants.dart';
import 'package:loda/variables.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class SecondScreen extends StatelessWidget {
  SecondScreen({super.key});
  final Mycontroller c = Get.put(Mycontroller());
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(),
      height: h,
      width: w,
      child: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

         
          Obx(
            () => Container(
              color: Colors.white.withOpacity(c.Opacity.value),
              width: 500,
              height: 500,
              child: Slider(
                  value: c.Opacity.value,
                  onChanged: (value) {
                    print(value);
                    c.Opacity.value = value;
                  }),
            ),
          ),
          Obx(
            () => Container(
                color: Colors.white.withOpacity(c.Opacity.value),
                width: 500,
                height: 500,
                child: Switch(
                    value: c.sw.value,
                    onChanged: (value) {
                      c.Myswitch();
                      
                    })),
          ),
         
        ],
      )),
    );
  }
}
