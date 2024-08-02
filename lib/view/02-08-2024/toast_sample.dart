import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ToastSample extends StatelessWidget {
  const ToastSample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(onPressed: () {
            Fluttertoast.showToast(msg: "This is Center Shot",
              toastLength: Toast.LENGTH_SHORT,
              gravity: ToastGravity.CENTER,
              backgroundColor: Colors.teal[800],
              textColor: Colors.white,
              fontSize: 16.0,
            );
          },
              child: Text("Download",style: TextStyle(color: Colors.black),)

          ),
    SizedBox(
      child: SnackBar(
      content: Text(
      'Please fill all fields and agree to the terms.'),
      ),
    ),
        ],
      ),
    );
  }
}
