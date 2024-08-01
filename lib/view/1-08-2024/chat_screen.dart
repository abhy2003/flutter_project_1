import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ChatScreen extends StatefulWidget {
  const ChatScreen({super.key});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  var name = ['tharun', 'sam', 'manu', 'manoj', 'madhu', 'rahul', 'ram',
    'freddy', 'karthik', 'ayoob'];
  var message = ['hi welcome', 'hi hello',
    'why are you late', 'welcome ', 'film', 'have you done',
    'came tomorrow', 'hi', 'transfer the money', 'are you done'
  ];
  var edate=['Today','Yesterday','Yesterday','yesterday',
    '02/02/2012','02/09/2024','09/08/2023','09/07/2023','02/06/2023','04/08/2023'];
  var wimage=[
    'assets/images/Billy butcher wallpaper.jpeg',
    'assets/images/Billy butcher pfp.jpeg',
         'assets/images/img.png',
         'assets/images/instagram_logo.png',
         'assets/images/login.png',
         'assets/images/logo.png',
         'assets/images/logo_raw.png',
         'assets/images/R logo.png',
        'assets/images/Billy butcher wallpaper.jpeg',
         'assets/images/whatsapp_logo.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(name[index]),
            subtitle: Text(message[index]),
            trailing: Text(edate[index]),

            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(wimage[index]),
            ),

          );
        },
        itemCount: 10,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(
          Icons.chat,
          color: Colors.white,
        ),
        backgroundColor: Color(0xFF075E54),
      ),
    );
  }
}
