// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// class BusinessCard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return  Card(
//       elevation: 8,
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
//       child: Container(
//         width: 300.w,
//         height: 180.h,
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Colors.blueAccent, Colors.lightBlue],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//           borderRadius: BorderRadius.circular(16),
//         ),
//         padding: EdgeInsets.all(16.w),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             CircleAvatar(
//               radius: 36.w,
//               backgroundImage: AssetImage('assets/profile_picture.png'), // Replace with your image asset
//             ),
//             SizedBox(height: 16.h),
//             Text(
//               'John Doe',
//               style: TextStyle(
//                 fontSize: 22.sp,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//               ),
//             ),
//             SizedBox(height: 8.h),
//             Text(
//               'Software Developer',
//               style: TextStyle(
//                 fontSize: 16.sp,
//                 color: Colors.white70,
//               ),
//             ),
//             SizedBox(height: 16.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//               children: [
//                 Icon(Icons.phone, color: Colors.white),
//                 SizedBox(width: 4.w),
//                 Text(
//                   '+1234567890',
//                   style: TextStyle(color: Colors.white, fontSize: 14.sp),
//                 ),
//                 SizedBox(width: 16.w),
//                 Icon(Icons.email, color: Colors.white),
//                 SizedBox(width: 4.w),
//                 Text(
//                   'john.doe@example.com',
//                   style: TextStyle(color: Colors.white, fontSize: 14.sp),
//                 ),
//               ],
//             ),
//             SizedBox(height: 16.h),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 Icon(Icons.linked_camera, color: Colors.white),
//                 SizedBox(width: 16.w),
//                 Icon(Icons.facebook, color: Colors.white),
//                 SizedBox(width: 16.w),
//                 Icon(Icons.home, color: Colors.white),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
