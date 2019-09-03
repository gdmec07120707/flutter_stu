import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.yellow,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        appBar: AppBar(
          title: Text("Flutter"),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: ()=>debugPrint("Navigation"),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.search),
              onPressed: ()=>debugPrint("Search"),
            ),
            IconButton(
              icon: Icon(Icons.settings),
              onPressed: ()=>debugPrint("Setting"),
            )
          ],
          elevation: 0,
        ),

        body: null
    );
  }
}
