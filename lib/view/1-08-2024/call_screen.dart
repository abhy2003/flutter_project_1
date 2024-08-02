import 'package:flutter/material.dart';
class CallScreen extends StatefulWidget {
  const CallScreen({super.key});

  @override
  State<CallScreen> createState() => _CallScreenState();
}

class _CallScreenState extends State<CallScreen> {
  var name = ['tharun', 'vivek', 'manu', 'sreelekshmi', 'madhu', 'rahul', 'ram',
    'freddy', 'karthik', 'ayoob'];
  var message = ['Today', 'yesterday',
    'yesterday', 'yesterday', 'yesterday', '02/09/2024',
    '02/09/2024', '09/08/2024', '07/08/2024', '06/08/2024'
  ];
  var iconcall=[Icons.call,Icons.call,Icons.video_call_sharp,
    Icons.video_call_sharp,Icons.call,Icons.call,Icons.call,
    Icons.video_call_sharp,Icons.call,Icons.video_call_sharp,
  ];
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
            subtitle: Row(
              children: [
                Icon(Icons.call_missed_outgoing_outlined,color: Colors.red,),
                Text(message[index]),
              ],
            ),
            trailing: Icon(iconcall[index]),

            leading: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(wimage[index]),
            ),

          );
        },
        itemCount: 10,
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {

      },child: Icon(Icons.add_ic_call_sharp,color: Colors.white,),backgroundColor: Color(0xFF075E54),),
    );
  }
}
