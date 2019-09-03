import 'package:flutter/material.dart';
import 'demo/MyHomePage.dart';

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
        //高亮色
        highlightColor: Color.fromRGBO(255, 255, 255, 0.5),
        //水波纹颜色
        splashColor: Colors.white70
      ),
      home: MyHomePage(),
    );
  }
}
