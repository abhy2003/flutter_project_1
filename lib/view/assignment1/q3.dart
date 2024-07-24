import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Q3 extends StatelessWidget {
  const Q3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.redAccent,
                width: 100.w,
                height: 200.h,
              ),
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                color: Colors.greenAccent,
                width: 230.w,
                height: 100.h,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.blue,
                width: 100.w,
                height: 200.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
