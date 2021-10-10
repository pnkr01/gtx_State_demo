import 'package:get/get.dart';
import 'package:flutter/material.dart';

class MyController extends GetxController {
  var book = 0.obs;
  var pen = 0.obs;
  int get  sum => book.value + pen.value;
  void bookincrement() {
    book.value++;
  }

  void bookdecrement() {
    if (book.value <= 0) {
      Get.snackbar("Buying books ",
          "Quantity of buying book should be greater than Zero",
          backgroundColor: Colors.pinkAccent,
          colorText: Colors.white,
          duration: Duration(seconds: 3));
    } else {
      book.value--;
    }
  }

  void penincrement() {
    pen.value++;
  }

  void pendecrement() {
    if (pen.value <= 0) {
      Get.snackbar(
          "Buying Books ", "Quantity of buying Pen should be greater than Zero",
          backgroundColor: Colors.blueAccent,
          colorText: Colors.white,
          duration: Duration(seconds: 3));
    } else {
      pen.value--;
    }
  }
}
