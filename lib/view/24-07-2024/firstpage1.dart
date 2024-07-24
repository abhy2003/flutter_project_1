import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Firstpage1 extends StatefulWidget {
  const Firstpage1({super.key});

  @override
  State<Firstpage1> createState() => _Firstpage1State();
}

class _Firstpage1State extends State<Firstpage1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First screen"),
      ),
      body: ElevatedButton(child: Text("Second screen"),
          onPressed: () => {
        Navigator.pushNamed(context, '/second')
      }),
    );
  }
}
