import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_project_1/view/23-07-2024/form_view.dart';
import 'package:flutter_project_1/view/23-07-2024/task.dart';
import 'package:flutter_project_1/view/24-07-2024/firstpage.dart';
import 'package:flutter_project_1/view/24-07-2024/firstpage1.dart';
import 'package:flutter_project_1/view/24-07-2024/secondpage1.dart';
import 'package:flutter_project_1/view/assignmanet_container/question1.dart';
import 'package:flutter_project_1/view/assignmanet_container/question2.dart';
import 'package:flutter_project_1/view/assignmanet_container/question3.dart';
import 'package:flutter_project_1/view/assignmanet_container/question4.dart';
import 'package:flutter_project_1/view/assignmanet_container/question5.dart';
import 'package:flutter_project_1/view/assignment1/q1.dart';
import 'package:flutter_project_1/view/assignment1/q10.dart';
import 'package:flutter_project_1/view/assignment1/q11.dart';
import 'package:flutter_project_1/view/assignment1/q2.dart';
import 'package:flutter_project_1/view/assignment1/q3.dart';
import 'package:flutter_project_1/view/assignment1/q4.dart';
import 'package:flutter_project_1/view/assignment1/q5.dart';
import 'package:flutter_project_1/view/assignment1/q6.dart';
import 'package:flutter_project_1/view/assignment1/q7.dart';
import 'package:flutter_project_1/view/assignment1/q8.dart';
import 'package:flutter_project_1/view/assignment1/q9.dart';
import 'package:flutter_project_1/view/card_task.dart';
import 'package:flutter_project_1/view/coloumn_sample.dart';
import 'package:flutter_project_1/view/container_ex.dart';
import 'package:flutter_project_1/view/counter_app.dart';
import 'package:flutter_project_1/view/counter_divisible.dart';
import 'package:flutter_project_1/view/question6.dart';
import 'package:flutter_project_1/view/scaffold_sample.dart';
import 'package:flutter_project_1/view/splash_screen1.dart';
import 'package:flutter_project_1/view/text/text.dart';
import 'package:flutter_project_1/view/text/textfield.dart';
import 'package:flutter_project_1/view/without_gesture/Sample.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_project_1/view/splash_screen.dart';

main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/':(context)=>Firstpage1(),
        '/second':(context)=>Secondpage1(),
      },
    );
    // return const ScreenUtilInit(
    //   designSize: Size(360, 690),
    //     minTextAdapt: true,
    //     splitScreenMode: true,
    //     child: MaterialApp(
    //     home: Firstpage()));
  }
}
