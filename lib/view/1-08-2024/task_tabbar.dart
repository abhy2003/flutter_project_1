import 'package:flutter/material.dart';
class TaskTabbar extends StatelessWidget {
  const TaskTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return  DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            iconTheme: IconThemeData(color: Colors.white),
            title:  Text("AppMaking.com",style: TextStyle(color: Colors.white),),
            backgroundColor: Colors.blue,
            bottom: TabBar(
              labelColor: Colors.white,
                unselectedLabelColor: Colors.white,
                tabs: [
              Tab(
                icon: Icon(Icons.message,color: Colors.white,),
                text: 'Chats',
              ),
              Tab(
                icon: Icon(Icons.video_call_sharp),
                text: 'Calls',
              ),
              Tab(
                icon: Icon(Icons.settings),
                text: 'Settings',
              )
            ]),
          ),
          body: Center(
            child: Container(
              width: 300,
              child: TabBarView(children: [
                Center(
                  child: Text(
                    "Chats",
                    style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                  ),
                ),
                Center(
                  child: Text(
                    "Calls",
                    style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                  ),
                ),
                Center(
                  child: Text(
                    "Settings",
                    style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                  ),
                )
              ]),
            ),
          ),
        ));
  }
}