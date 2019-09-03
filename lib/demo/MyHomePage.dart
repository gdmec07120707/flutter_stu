import 'package:flutter/material.dart';
import 'package:flutter_stu/demo/ListViewDemo.dart';

import 'BottomNavigationBarDemo.dart';
import 'DrawerDemo.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () => debugPrint("Search"),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: () => debugPrint("Setting"),
            )
          ],
          bottom: TabBar(
            tabs: <Widget>[
              Tab(icon: Icon(Icons.add_location)),
              Tab(icon: Icon(Icons.add_alert)),
              Tab(icon: Icon(Icons.favorite_border)),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListViewDemo(),
            Icon(
              Icons.add_alert,
              size: 50,
              color: Colors.black45,
            ),
            Icon(
              Icons.favorite_border,
              size: 50,
              color: Colors.black45,
            ),
          ],
        ),
        drawer: DrawerDemo(),
        bottomNavigationBar:BottomNavigationBarDemo(),
      ),
    );
  }
}
