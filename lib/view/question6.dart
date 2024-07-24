import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/cupertino.dart';

class Question6 extends StatefulWidget {
  const Question6({super.key});

  @override
  State<Question6> createState() => _Question6State();
}

class _Question6State extends State<Question6> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: ListView(
          children: <Widget>[ UserAccountsDrawerHeader(
            accountName: Text("pratap kumar"),
            accountEmail: Text("kpratap23@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundColor: Colors.white,
              child: Icon(CupertinoIcons.profile_circled),
            ),
          ),
            ListTile(
              title: Text("Music"),
              leading: Icon(Icons.library_music),
            ),
            ListTile(
              title: Text("Movies"),
              leading: Icon(Icons.local_movies),
            ),
            ListTile(
              title: Text("Shopping"),
              leading: Icon(Icons.shopping_cart),
            ),
            ListTile(
              title: Text("Apps"),
              leading: Icon(Icons.apps),
            ),
            ListTile(
              title: Text("Docs"),
              leading: Icon(Icons.document_scanner_outlined),
            ),
            ListTile(
              title: Text("Settings"),
              leading: Icon(Icons.settings),
            ),
            ListTile(
              title: Text("About"),
              leading: Icon(Icons.info_outline),
            ),
            ListTile(
              title: Text("Logout"),
              leading: Icon(Icons.logout),
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("Assignment"),
        backgroundColor: Colors.blueAccent,
      ),
    );
  }
}
