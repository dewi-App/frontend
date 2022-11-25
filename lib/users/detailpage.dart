import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Detail Hotel'),
        ),
        body: Center(
            child: Column(children: <Widget>[
          Image.asset(
            'assets/hotel.jpeg',
            height: 200,
            width: 1000.0,
            fit: BoxFit.cover,
          ),
          ElevatedButton(
            child: Text('Lihat Di Maps'),
            style: ElevatedButton.styleFrom(
              minimumSize: Size(1000.0, 40),
              primary: Color.fromRGBO(104, 184, 221, 1),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(40))),
            ),
            onPressed: () {},
          ),
        ])));
  }
}
