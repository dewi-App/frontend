import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DestinationPage extends StatefulWidget {
  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Destination'),
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            // alignment: FractionalOffset.bottomCenter,
            child: Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
              clipBehavior: Clip.antiAlias,
            ),
          ),
          Container(
            // alignment: FractionalOffset.bottomCenter,
            child: Card(
              elevation: 0,
              // Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                "assets/resto.jpeg",
                fit: BoxFit.cover,
                width: 700,
                height: 190,
              ),
            ),
          ),
          Container(
            // alignment: FractionalOffset.bottomCenter,
            child: Card(
              elevation: 0,
              // Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
              clipBehavior: Clip.antiAlias,
              child: Image.asset(
                "assets/cafe.jpeg",
                fit: BoxFit.cover,
                width: 700,
                height: 190,
              ),
            ),
          ),
          Container(
            // alignment: FractionalOffset.bottomCenter,
            child: Card(
              elevation: 0,
              // Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
              clipBehavior: Clip.antiAlias,
              child: SingleChildScrollView(
                child: Image.asset(
                  "assets/wisata.jpeg",
                  fit: BoxFit.cover,
                  width: 700,
                  height: 190,
                ),
              ),
            ),
          ),
          Container(
            // alignment: FractionalOffset.bottomCenter,
            child: Card(
              elevation: 0,
              // Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
              clipBehavior: Clip.antiAlias,
              child: SingleChildScrollView(
                child: Image.asset(
                  "assets/wisata.jpeg",
                  fit: BoxFit.cover,
                  width: 700,
                  height: 190,
                ),
              ),
            ),
          ),
          Container(
            // alignment: FractionalOffset.bottomCenter,
            child: Card(
              elevation: 0,
              // Card(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusDirectional.circular(15)),
              clipBehavior: Clip.antiAlias,
              child: SingleChildScrollView(
                child: Image.asset(
                  "assets/wisata.jpeg",
                  fit: BoxFit.cover,
                  width: 700,
                  height: 190,
                ),
              ),
            ),
          ),
        ],
      ),

      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
