import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Question2 extends StatelessWidget {
  const Question2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: Colors.red,
                boxShadow: [
                  BoxShadow(
                    color: Colors.yellowAccent.withOpacity(0.3),
                    spreadRadius: 7,
                    blurRadius: 7,
                    offset: Offset(0,3),
                  ),
                ],
              ),

            )
          ],
        ),
      ),
    );
  }
}
