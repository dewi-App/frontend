import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ini yang pake statefulwidget
class DestinationPage extends StatefulWidget {
  @override
  State<DestinationPage> createState() => _DestinationPageState();
}

class _DestinationPageState extends State<DestinationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        width: 1000.0,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/hotel.jpeg'))),
                        child: Center(
                          child: Text(
                            'Hotel',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 24,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        width: 1000.0,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/resto.jpeg'))),
                        child: Center(
                          child: Text(
                            'Resto',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        width: 1000.0,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/cafe.jpeg'))),
                        child: Center(
                          child: Text(
                            'Caffe',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                // alignment: FractionalOffset.bottomCenter,
                child: Column(
                  children: [
                    Card(
                      elevation: 0,
                      child: Container(
                        width: 1000.0,
                        height: 120,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/wisata.jpeg'))),
                        child: Center(
                          child: Text(
                            'Wisata',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
