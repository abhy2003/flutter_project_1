import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Q6 extends StatelessWidget {
  const Q6({super.key});

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
                width: 40.w,
                height: 150.h,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.greenAccent,
                width: 40.w,
                height: 150.h,
              ),
            ),
            Align(
              alignment: Alignment.bottomLeft,
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
