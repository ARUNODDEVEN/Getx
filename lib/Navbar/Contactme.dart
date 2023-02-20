import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';
import 'package:loda/variables.dart';

class Contact extends StatelessWidget {
  Contact({super.key});
  final Mycontroller c = Get.put(Mycontroller());

  @override
  Widget build(BuildContext context) {
    print("rebuild");
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        children: [
          Text(
            'taking Arguments from the about flutter screen',
            // Get.arguments['def'] ?? 'SAY HELLO',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          Text(Get.arguments['Name'] ?? "Not able to get data",
              style: TextStyle(color: Colors.white, fontSize: 70)),
          Obx(() => SizedBox(
                height: 50,
                width: 100,
                child: TextButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStatePropertyAll(Colors.blue)),
                  onPressed: () {
                    c.counterincrement();
                  },
                  child: Text(
                    '${c.x}',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ))
        ],
      ),
    );
  }
}
