import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Text1 extends StatelessWidget {
  const Text1({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Text"),
      ),
      body: Container(
          width: width,
          child: Text(
            "Hello!!",
            textAlign: TextAlign.center,
            textScaleFactor: 5.0,
            style: TextStyle(color: Colors.brown,
            fontSize: 20.0,
            fontFamily: "Schyler",
            fontWeight:FontWeight.w300
            ),
          )),
    );
  }
}
