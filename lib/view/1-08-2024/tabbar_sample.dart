import 'package:flutter/material.dart';

class TabbarSample extends StatelessWidget {
  const TabbarSample({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            bottom: TabBar(tabs: [
              Tab(
                icon: Icon(Icons.flight),
              ),
              Tab(
                icon: Icon(Icons.train),
              ),
              Tab(
                icon: Icon(Icons.bus_alert_sharp),
              )
            ]),
          ),
          body: Center(
            child: Container(
              width: 300,
              child: TabBarView(children: [
                Text(
                  "Flight",
                  style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                ),
                Text(
                  "Train",
                  style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                ),
                Text(
                  "Bus",
                  style: TextStyle(fontSize: 50, color: Colors.blueGrey),
                )
              ]),
            ),
          ),
        ));
  }
}
