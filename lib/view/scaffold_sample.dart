import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ScaffoldSample extends StatefulWidget {
  const ScaffoldSample({super.key});

  @override
  State<ScaffoldSample> createState() => _ScaffoldSampleState();
}

class _ScaffoldSampleState extends State<ScaffoldSample> {
  int?_currentIndex=0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
          child: ListView(
            children: <Widget>[
               UserAccountsDrawerHeader(
                accountName: Text("pratap kumar"),
                accountEmail: Text("kpratap23@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(CupertinoIcons.profile_circled),
                ),
               ),
              ListTile(
                title: new Text("All Inboxes"),
                leading: new Icon(CupertinoIcons.mail),
              ),
              ListTile(
                title: new Text("Primary"),
                leading: new Icon(Icons.inbox),
              ),
              ListTile(
                title: new Text("Social"),
                leading: new Icon(Icons.people),
              ),
              ListTile(
                title: new Text("Promotion"),
                leading: new Icon(Icons.local_offer),
              )
            ],
          )
      ),
      // endDrawer: EndDrawerButton(),
      appBar: AppBar(
        actions: [Icon(Icons.search)],
        elevation: 10.0,
        title: Text("Email", style: TextStyle(fontStyle: FontStyle.italic),),
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.teal,
      ),
      // body:Center(
      //   child: Text("This is home page",style: TextStyle(
      //     color: Colors.black,
      //     fontSize: 40.0,
      //     fontStyle: FontStyle.italic,
      //   ),),
      // ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.search),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex!,
        fixedColor: Colors.teal,
        items: [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Add",
            icon: Icon(Icons.add_box),
          ),
        ],
        onTap: (int index){
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    persistentFooterButtons: [
    ElevatedButton(
    onPressed: () {},
    child: Icon(
    Icons.add,
    )),
    ElevatedButton(
    onPressed: () {},
    child: Icon(
    Icons.clear,
    )
    )
    ],
    );
  }
}
