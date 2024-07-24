import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Textfield1 extends StatelessWidget {
  const Textfield1({super.key});

  @override
  Widget build(BuildContext context) {
    String value = "";
    TextEditingController controller= TextEditingController();
    TextField(
      autofocus: true,
        onChanged: (text) {
          value = text;
        },
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlueAccent,
        title: Text("Text"),
      ),

    );
  }
}
