import 'package:flutter/material.dart';
class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.add_ic_call_sharp,color: Colors.white,),backgroundColor: Color(0xFF075E54),),
    );
  }
}
