import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Question3 extends StatelessWidget {
  const Question3({super.key});

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
                    color: Colors.amber.shade500.withOpacity(0.9),
                    spreadRadius:25,
                    blurRadius: 11,
                    offset: Offset(0, 3),
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
