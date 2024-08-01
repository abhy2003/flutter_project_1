import 'package:flutter/material.dart';
import 'package:flutter_project_1/view/1-08-2024/call_screen.dart';
import 'package:flutter_project_1/view/1-08-2024/chat_screen.dart';
import 'package:flutter_project_1/view/1-08-2024/status_screen.dart';

class WhatsApp_tab extends StatefulWidget {
  const WhatsApp_tab({super.key});

  @override
  State<WhatsApp_tab> createState() => _WhatsApp_tabState();
}

class _WhatsApp_tabState extends State<WhatsApp_tab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          iconTheme: IconThemeData(
              color: Colors.white
          ),
          backgroundColor: Color(0xFF075E54),
          title: Text(
            "WhatsApp",
            style: TextStyle(color: Colors.white),
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search,),
              onPressed: () {},
            ),
            PopupMenuButton(itemBuilder: (context) {
              return [
                PopupMenuItem(child: Text("New group")),
                PopupMenuItem(child: Text("New broadcast")),
                PopupMenuItem(child: Text("Linked devices")),
                PopupMenuItem(child: Text("Stared messages")),
                PopupMenuItem(child: Text("Settings")),
              ];
            },)
          ],
          bottom: TabBar(
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(icon: Icon(Icons.camera_alt)),
              Tab(text: "CHATS"),
              Tab(text: "STATUS"),
              Tab(text: "CALLS"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: Text("Camera")),

            // ListView(
            //   children: [
            //     _chatScreen("Alice", "Lunch in the evening?", "16/07/2018"),
            //     _chatScreen("Jack", "Sure", "16/07/2018"),
            //     _chatScreen("Jane", "Meet this week?", "16/07/2018"),
            //     _chatScreen("Ned", "Received", "16/07/2018"),
            //     _chatScreen("Steve", "I'll come too!", "16/07/2018"),
            //
            //   ],
            // ),
            // Center(child: Text("Status")),
            ChatScreen(),
            StatusScreen(),
            CallScreen(),
            // Center(child: Text("Calls")),
          ],
        ),
      ),
    );
  }

  Widget _chatScreen(String name, String message, String date) {
    return ListTile(
      leading: CircleAvatar(
        child: Icon(Icons.person),
      ),
      title: Text(name),
      subtitle: Text(message),
      trailing: Text(date),
    );
  }
}