import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AssetsNet extends StatelessWidget {
  const AssetsNet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Butcher"),
      ),
       body: Center(
         child: Container(
           decoration: BoxDecoration(
             image: DecorationImage(image: NetworkImage("https://picsum.photos/250?image="))
           ),
         ),
      //   child: SingleChildScrollView(
      //     child: Column(
      //       children: [
      //         Image.asset("assets/images/Billy butcher wallpaper.jpeg",
      //         fit: BoxFit.fitHeight),
      //         Image.network("https://picsum.photos/250?image=9",
      //         fit: BoxFit.fill,),
      //       ],
      //     ),
      //   ),
      ),
    );
  }
}


