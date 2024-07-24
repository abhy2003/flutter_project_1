import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CounterDivisible extends StatefulWidget {
  const CounterDivisible({super.key});

  @override
  State<CounterDivisible> createState() => _CounterDivisibleState();
}

class _CounterDivisibleState extends State<CounterDivisible> {
  int count=0;
  counterDivisble5(){
    for(count=5;count<=20;count++){
      if(count%5==0){
        setState(() {
          count;
          count+5;
        });
      }
    }
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Count icrement by 5"),
              Text("$count")
            ],
          ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        counterDivisble5();
      },
        child: Icon(Icons.add),
      ),
    );
  }
}
