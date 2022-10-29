import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          // Column(
          // children: [
          Container(
        alignment: Alignment.topCenter,
        child: Card(
          // Card(
          // Kamu udah tidur yaaa :)
          // Aku coba cari cara nya dulu siang dilanjut ya
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusDirectional.circular(40)),
          clipBehavior: Clip.antiAlias,
          child: Image.asset(
            "assets/hotel.jpeg",
            fit: BoxFit.cover,
            width: 700,
            height: 120,
          ),
        ),
      ),
    );
  }
}
