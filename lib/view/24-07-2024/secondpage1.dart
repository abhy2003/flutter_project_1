import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Secondpage1 extends StatefulWidget {
  const Secondpage1({super.key});

  @override
  State<Secondpage1> createState() => _Secondpage1State();
}

class _Secondpage1State extends State<Secondpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: ElevatedButton(
        child: Text("Go back"),
        onPressed: () {
        Navigator.pop(context);
      },),
    );
  }
}
