import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:get/get.dart';

class Mycontroller extends GetxController {
  var books = 0.obs;
  var pens = 0.obs;
  var x = 0.obs;
  var Opacity = .0.obs;
  RxBool sw = false.obs;
  var name = '';

  int get sum => books.value + pens.value;
  decrement() {
    if (books.value <= 0) {
      Get.snackbar("Books", "Please add some books to buy",
          icon: Icon(
            Icons.book,
            color: Colors.white,
          ),
          barBlur: 20,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          colorText: Colors.white);
    } else {
      books.value--;
    }
  }

  increment() {
    books.value++;
  }
  /////////////////////////////////////////////////////////////////

  decrementp() {
    if (pens.value <= 0) {
      Get.snackbar("Pen", "Please add some Pens to buy",
          icon: Icon(
            Icons.architecture,
            color: Colors.white,
          ),
          barBlur: 20,
          duration: Duration(seconds: 1),
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.black,
          colorText: Colors.white);
    } else {
      pens.value--;
    }
  }

  incrementp() {
    pens.value++;
  }

  counterincrement() {
    x.value++;
  }

  controllerincrement() {
    Opacity.value++;
  }

  Myswitch() {
    if (sw.value == false) {
      sw.value = true;
    }
  }

  Mylottie() {
    if (sw.value == false) {
      Text(
        "no animation found",
        style: TextStyle(color: Colors.white),
      );
    } else {
      Lottie.network(
          "https://assets2.lottiefiles.com/packages/lf20_ex5DR6Osfr.json",
          fit: BoxFit.fill,
          height: 500,
          width: 500);
    }
  }
}
