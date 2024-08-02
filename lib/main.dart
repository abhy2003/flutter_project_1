import 'package:flutter/material.dart';
import 'package:flutter_project_1/view/02-08-2024/sample_gridview.dart';
import 'package:flutter_project_1/view/02-08-2024/toast_sample.dart';
import 'package:flutter_project_1/view/1-08-2024/chat_screen.dart';
import 'package:flutter_project_1/view/1-08-2024/task_tabbar.dart';
import 'package:flutter_project_1/view/1-08-2024/whatsapp_tab.dart';
import 'package:flutter_project_1/view/1-08-2024/tabbar_sample.dart';
import 'package:flutter_project_1/view/27-07-2024/quiz.dart';
import 'package:flutter_project_1/view/30-07-2024/stack.dart';
import 'package:flutter_project_1/view/31-07-2024/assets_net.dart';
import 'package:flutter_project_1/view/getx_counter/counter.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ToastSample(),
    );
  }
}