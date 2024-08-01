import 'package:flutter/material.dart';
class StatusScreen extends StatelessWidget {
  const StatusScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          floatingActionButton: FloatingActionButton(onPressed: () {

          },child: Icon(Icons.camera_alt_sharp,color: Colors.white,),backgroundColor: Color(0xFF075E54),),
    );
  }
}
