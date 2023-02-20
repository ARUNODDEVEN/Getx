import 'package:flutter/material.dart';
import 'package:loda/constants.dart';
import 'package:loda/variables.dart';
import 'package:responsive_builder/responsive_builder.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class Istcontainer extends StatelessWidget {
  Istcontainer({super.key});

  final Mycontroller c = Get.put(Mycontroller());
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: desktop(),
      mobile: mobile(),
    );
  }

  Widget desktop() {
    return Container(
        color: Colors.grey,
        width: w,
        height: 400,
        child: Column(
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Book",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () => c.decrement(),
                child: Text(
                  '-',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Obx(() => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${c.books.value.toString()}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () => c.increment(),
                child: Text(
                  '+',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            //////////////////////////////////////////////////////////////////////////////////////////////////////////////
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(
                "Pen",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              ),
              SizedBox(
                width: 50,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () => c.decrementp(),
                child: Text(
                  '-',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Obx(() => Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      '${c.pens.value.toString()}',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                  )),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.black)),
                onPressed: () => c.incrementp(),
                child: Text(
                  '+',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Total=",
                  style: TextStyle(
                      color: Color.fromARGB(255, 0, 0, 0),
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                Obx(() => Text(
                      '${c.sum.toString()}',
                      style: TextStyle(
                          color: Color.fromARGB(255, 0, 0, 0),
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ))
              ],
            )
          ],
        ));
  }

  Widget mobile() {
    return Container();
  }
}
