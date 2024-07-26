import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class Sample_radio extends StatefulWidget {
  const Sample_radio({super.key});

  @override
  State<Sample_radio> createState() => _Sample_radioState();
}

class _Sample_radioState extends State<Sample_radio> {
  String? gender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Radio Button"),
        backgroundColor: Colors.orangeAccent,
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: [
            Text("What is your gender?", style: TextStyle(fontSize: 18),),

            Divider(),

            RadioListTile(
              title: Text("Male"),
              value : "male",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },),

            RadioListTile(
              title: Text("Female"),
              value : "female",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },),

            RadioListTile(
              title: Text("Other"),
              value : "other",
              groupValue: gender,
              onChanged: (value) {
                setState(() {
                  gender = value.toString();
                });
              },),
          ],
        ),
      ),
    );
  }
}
