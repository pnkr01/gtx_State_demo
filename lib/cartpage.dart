import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtstate/controller.dart';

// ignore: must_be_immutable
class CartPage extends StatelessWidget {
  MyController mc = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cart Page'),
      ),
      body: Center(
        child: Text('Total Item is  ${mc.sum}'),
      ),
    );
  }
}
