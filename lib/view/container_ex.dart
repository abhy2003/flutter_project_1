import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class ContainerEx extends StatelessWidget {
  const ContainerEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: 100.w,
              height: 100.h,
              color: Colors.greenAccent,
              padding: const EdgeInsets.all(16.0),
              margin: const EdgeInsets.all(16.0),
              child: Center(
                child: Text(
                  "Hello Flutter",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
              width: 300.w,
              height: 200.h,
              decoration: BoxDecoration(
                color: Colors.blueAccent,
                border: Border.all(
                  width: 10.w,
                  color: Colors.lightBlueAccent.shade100,
                ),
              ),
            ),
            Container(
              width: 100.w,
              height: 200.h,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: CupertinoColors.systemGrey,
                border: Border(
                  left: BorderSide(color: Colors.greenAccent, width: 5.w),
                  right: BorderSide(color: Colors.black, width: 10.w),
                  top: BorderSide(color: Colors.redAccent, width: 20.w),
                  bottom: BorderSide(color: Colors.purpleAccent, width: 30),
                ),
              ),
            ),
            Container(
              width: 300.w,
              height: 200.h,
              margin: EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(width: 10.w, color: Colors.red.shade300),
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
            ),
            Container(
              width: 300.w,
              height: 200.h,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.all(Radius.elliptical(10, 30))),
            ),
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    width: 10,
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.circular(
                    10,
                  )),
            ),
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    width: 10,
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(50), right: Radius.circular(10))),
            ),
            Container(
              width: 300,
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.greenAccent,
                  border: Border.all(
                    width: 10,
                    color: Colors.red.shade300,
                  ),
                  borderRadius: BorderRadius.vertical(
                      top: Radius.circular(50), bottom: Radius.circular(10))),
            ),
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                border: Border.all(
                  width: 10,
                  color: Colors.red.shade300,
                ),
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(20),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(40)),
              ),
            ),
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                boxShadow: [
                  BoxShadow(color: Colors.red, offset: Offset(10, 20))
                ],
              ),
            ),
            Container(
              width: 300,
              height: 200,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(10, 20),
                    blurRadius: 30,
                  ),
                ],
              ),
            ),
            Container(
              width: 300.w,
              height: 200.h,
              margin: EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.greenAccent,
                gradient: LinearGradient(
                    colors: [Colors.amber, Colors.red],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight),
                boxShadow: [
                  BoxShadow(
                    color: Colors.red,
                    offset: Offset(10, 20),
                    blurRadius: 30,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
