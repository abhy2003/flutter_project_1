import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Expanded_sample_row extends StatefulWidget {
  const Expanded_sample_row({super.key});

  @override
  State<Expanded_sample_row> createState() => _Expanded_sample_rowState();
}

class _Expanded_sample_rowState extends State<Expanded_sample_row> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded Widget Row'),
        backgroundColor: Colors.blueAccent,
        leading: IconButton(
          icon: Icon(Icons.menu),
          tooltip: 'Menu',
          onPressed: () {

          },
        ),
      ),
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'First Widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),),
              ),
              color: Colors.blue,
              height: 200.h,
              width: 100.w,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Second Widget',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                color: Colors.amber,
                height: 200.h,
              ),),
            Container(
              child: Center(
                child: Text(
                  'Third widget',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
              color: Colors.pink,
              height: 200.h,
              width: 100.w,
            ),
          ],
        ),
      ),
    );
  }
}