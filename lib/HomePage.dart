import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        leading: Image(
          image: AssetImage("asset/dewi.png"),
        ),
        title: Center(
          child: Text(
            "Home",
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.dehaze),
            onPressed: () {},
          ),
        ],
      ),
    ));
  }
}
