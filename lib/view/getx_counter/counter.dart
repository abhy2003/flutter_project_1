import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Counter_getx extends StatelessWidget {
  final count=0.obs;
  void increment() => count.value++;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Obx(() => Text('Counter: $count')),
            ElevatedButton(onPressed: increment, child: Text('increment',style: TextStyle(color: Colors.blue),))
          ],
        ),
      ),
    );
  }
}
