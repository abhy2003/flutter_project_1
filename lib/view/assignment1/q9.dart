import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Q9 extends StatelessWidget {
  const Q9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              width: 20.w,
              height: 20.h,
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
            SizedBox(
              width: 20.w,
              height: 20.h,
            ),
          ],
        ),
      ),
    );
  }
}
