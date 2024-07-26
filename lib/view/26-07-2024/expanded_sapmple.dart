import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExpandedSapmple extends StatefulWidget {
  const ExpandedSapmple({super.key});

  @override
  State<ExpandedSapmple> createState() => _ExpandedSapmpleState();
}

class _ExpandedSapmpleState extends State<ExpandedSapmple> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Container"),
          backgroundColor: Colors.greenAccent[400],
          leading: IconButton(
            icon: Icon(Icons.menu),
            tooltip: 'Menu',
            onPressed: () {},
          )),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Center(
                child: Text(
                  'First widget',
                  style: TextStyle(color: Colors.white
                  ),
                ),
              ),
              color: Colors.blue,
              height: 100.h,
              width: 200.w,
            ),
            Expanded(
              child: Container(
                child: Center(
                  child: Text(
                    'Second widget',
                    style: TextStyle(color: Colors.white),
                  ),
    ),
                  color: Colors.amber,
                  width: 200.w,
                ),
              ),
            Container(
              child: Center(
                child: Text(
                  'Third widget',style: TextStyle(color: Colors.white),
                ),
              ),
              color: Colors.orange,
              height: 100.h,
              width: 200.w,
            ),
          ],
        ),
      ),
    );
  }
}
