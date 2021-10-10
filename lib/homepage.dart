import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtstate/controller.dart';

import 'cartpage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  MyController mc = Get.put(MyController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Books',
                  style: TextStyle(
                    fontSize: 38.0,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 110,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                  ),
                  child: IconButton(
                    onPressed: () => mc.bookincrement(),
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      '${mc.book.value}',
                      style: TextStyle(fontSize: 20.0),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                  ),
                  child: IconButton(
                    onPressed: () => mc.bookdecrement(),
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),

          // Pen Starts Here

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Pen',
                  style: TextStyle(
                    fontSize: 38.0,
                    color: Colors.red,
                  ),
                ),
                SizedBox(
                  width: 150,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                  ),
                  child: IconButton(
                    onPressed: () => mc.penincrement(),
                    icon: Icon(
                      Icons.add,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  width: 20,
                ),
                Obx(() => Text(
                      '${mc.pen.value}',
                      style: TextStyle(fontSize: 20.0),
                    )),
                SizedBox(
                  width: 20,
                ),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    color: Colors.blueAccent,
                  ),
                  child: IconButton(
                    onPressed: () => mc.pendecrement(),
                    icon: Icon(
                      Icons.remove,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(child: Container()),
              Padding(
                padding: const EdgeInsets.only(right: 40),
                child: ElevatedButton(
                    onPressed: () => Get.to(CartPage()), child: Text('Add to Cart')),
              ),
            ],
          )
        ],
      ),
    );
  }
}
