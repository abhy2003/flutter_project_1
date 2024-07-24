import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class samplegesture extends StatefulWidget {
  const samplegesture({super.key});

  @override
  State<samplegesture> createState() => _samplegestureState();
}

class _samplegestureState extends State<samplegesture> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                onTap: () {
                  print("Clicked");
                },
                child: Image.asset(
                  "assets/images/whatsapp_logo.png",
                  width: 100.w,
                  height: 100.h,
                )),
            GestureDetector(
              onTap: () {
                print("Saved");
              },
              child: Image.asset(
                "assets/images/whatsapp_logo.png",
                width: 100.w,
                height: 100.h,
              ),
            )
          ],
        ),
      ),
    );
  }
}
