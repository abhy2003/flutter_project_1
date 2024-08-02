import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SampleGridview extends StatelessWidget {
  const SampleGridview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal[900],
        title: Text("Gridview",style: TextStyle(color: Colors.white),),
      ),
      body: GridView.count(
        primary: false,
        padding: const EdgeInsets.all(8),
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: <Widget>[
      Container(
      color: Colors.teal[100],
        padding: const EdgeInsets.all(8),
        child: const Text("Where are you,I am here"),
      ),
      Container(
        color: Colors.teal[200],
        padding: const EdgeInsets.all(8),
        child: const Text("Have you done"),
      ),
      Container(
        color: Colors.teal[300],
        padding: const EdgeInsets.all(8),
        child: const Text("Have you done"),
      ),
      Container(
        color: Colors.teal[400],
        padding: const EdgeInsets.all(8),
        child: const Text("Have you done"),
      ),
      Container(
        padding: const EdgeInsets.all(8),
        color: Colors.teal[500],
        child: const Text("Have you done"),
      ),
      Container(
        color: Colors.teal[600],
        padding: const EdgeInsets.all(8),
        child: const Text("Have you done"),
      ),
      Container(
        color: Colors.teal[700],
        padding: const EdgeInsets.all(8),
        child: const Text("Have you done"),
      ),
      Container(
        color: Colors.teal[800],
        padding: const EdgeInsets.all(8),
        child: const Text("Have you done"),
      ),
      ],
      ),
    );
  }
}
