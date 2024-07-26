import 'package:flutter/material.dart';
import 'package:flutter_project_1/view/26-07-2024/checkbox.dart';
import 'package:flutter_project_1/view/26-07-2024/expanded_sample_row.dart';
import 'package:flutter_project_1/view/26-07-2024/expanded_sapmple.dart';
import 'package:flutter_project_1/view/26-07-2024/radio_button.dart';
import 'package:flutter_project_1/view/26-07-2024/task_checkbox.dart';
import 'package:flutter_project_1/view/calculator%20assignment/calculator.dart';
import 'package:flutter_project_1/view/test/register.dart';
import 'package:flutter_project_1/view/test/signin_signup.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'my_register.dart';
// import 'my_login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      builder: (context, child) {
        return MaterialApp(
          home: Expanded_sample_row(),
          // debugShowCheckedModeBanner: false,
          // initialRoute: 'login', // Change to 'register' if you want the register screen to be the initial route
          // routes: {
          //   'register': (context) => RegistrationScreen(),
          //   'login': (context) => MyLogin(),
          // },
        );
      },
    );
  }
}
