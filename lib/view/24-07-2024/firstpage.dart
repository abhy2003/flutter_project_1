import 'package:flutter/material.dart';
import 'package:flutter_project_1/view/24-07-2024/secondscreen.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First page"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Go to Second Screen'),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Secondscreen()),
            );
          },
        ),
      ),
    );
  }
}

