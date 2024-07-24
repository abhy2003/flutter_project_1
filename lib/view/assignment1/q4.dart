import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Q4 extends StatelessWidget {
  const Q4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.redAccent,
                width: 50.w,
                height: 200.h,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.greenAccent,
                width: 80.w,
                height: 100.h,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                color: Colors.blue,
                width: 50.w,
                height: 200.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
