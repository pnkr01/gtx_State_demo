import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtstate/homepage.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'State Management App',
      home: MyHomePage(),
    );
  }
}