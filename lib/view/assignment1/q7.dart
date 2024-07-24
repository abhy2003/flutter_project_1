import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Q7 extends StatelessWidget {
  const Q7({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(
              width: 200.w,
              height: 120.h,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.redAccent,
                width: 40.w,
                height: 150.h,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.greenAccent,
                width: 40.w,
                height: 150.h,
              ),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Container(
                color: Colors.blue,
                width: 40.w,
                height: 150.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
