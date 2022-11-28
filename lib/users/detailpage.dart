import 'dart:ui';

import 'package:flutter/material.dart';

class detailpage extends StatefulWidget {
  @override
  State<detailpage> createState() => _detailpageState();
}

class _detailpageState extends State<detailpage> {
  @override
  Widget build(BuildContext context) {
    // final listHotel = ['Cafe', 'Lorem', 'Lorem', 'Lorem', 'Lorem'];

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
          Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                    child: Text("Hotel El Royale",
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 23.0,
                        ))))),
            Row(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(10.0, 0, 15.0, 2.0),
              child: Icon(
                Icons.star, 
                size: 30, 
                color: Colors.yellow)
            ),
            Expanded(child: Text('4.5',
                        style: new TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 24.0,
                          color: Colors.yellow,
                          )))  
            ]),
            Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 2.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text("Fasilitas :",
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ))))),
            ]),
            Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text("Cafe",
                          style: new TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ))))),
            ]),
            Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text("Lorem",
                          style: new TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ))))),
            ]),
            Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text("Lorem",
                          style: new TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ))))),
            ]),
            Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 0, 15.0, 0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text("Lorem",
                          style: new TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 12.0,
                          ))))),
            ]),

            Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 8.0, 15.0, 5.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text("Deskripsi :",
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 12.0,
                          ))))),
            ]),
            Column(children: <Widget>[
            Padding(
            padding: new EdgeInsets.fromLTRB(15.0, 2.0, 15.0, 5.0),
              child: Align(
                  alignment: Alignment.centerLeft,
                  child: Container(
                      child: Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit. Diam in enim metus, molestie faucibus eget. Sed diam tortor mauris adipiscing. Tristique dictum eget etiam porttitor vitae aliquam ac. Maecenas fermentum eu fringilla ac. Ut adipiscing a etiam nisi amet, cras. Laoreet proin mattis molestie scelerisque arcu enim. Eu sed aliquet sociis cum dolor at auctor lacinia.",
                          style: new TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 10.0,
                          ))))),
            ]),
          ]),
        ])
        ), 
        floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.pin_drop),
        label: const Text('Lihat di Maps'),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      );
  }
}
