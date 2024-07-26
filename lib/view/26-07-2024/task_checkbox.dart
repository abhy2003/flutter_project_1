import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class TaskCheckbox extends StatefulWidget {
  const TaskCheckbox({super.key});

  @override
  State<TaskCheckbox> createState() => _TaskCheckboxState();
}

class _TaskCheckboxState extends State<TaskCheckbox> {
  bool monVal=true,tueVal=false,wedVal=false,thurVal=false,friVal=false,satVal=false,sunVal=false;
  Widget checkbox(String title, bool boolValue){
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(title),
        Checkbox(value: boolValue, onChanged: (bool? value
        ){
          setState(() {
            switch(title){
              case "Mon":
                monVal=value!;
                break;
              case "Tu":
                tueVal=value!;
                break;
              case "Wed":
                wedVal=value!;
                break;
              case "Thur":
                thurVal=value!;
                break;
              case "Fri":
                friVal=value!;
                break;
              case "Sat":
                satVal=value!;
                break;
              case "Sun":
                sunVal=value!;
                break;
            }
          });
        },
        ),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dynamic Checkbox"),
        centerTitle: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              checkbox("Mon", monVal),
              checkbox("Tu", tueVal),
              checkbox("Wed", wedVal),
              checkbox("Thur", thurVal),
              checkbox("Fri",friVal),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              checkbox("Sat", satVal),
              checkbox("Sun", sunVal),
            ],
          )
        ],
      ),
    );
  }
}
