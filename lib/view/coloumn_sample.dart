import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ColoumnSample extends StatelessWidget {
  const ColoumnSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.orangeAccent,
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              color: Colors.blueAccent,
              width: 100.w,
              height: 100.h,
            ),
            SizedBox(height: 30.h),
            Container(
              color: Colors.orangeAccent,
              width: 100.w,
              height: 100.h,
            ),

          ],
        ),
      ),
    );
  }
}
