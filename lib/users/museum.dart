import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ini yang pake statefulwidget
class MuseumPage extends StatefulWidget {
  @override
  State<MuseumPage> createState() => _MuseumPageState();
}

class _MuseumPageState extends State<MuseumPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semua Museum'),
      ),
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
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/museum.jpeg'))),
                        child: Center(
                          child: Text(
                            'Museum',
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
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/museum.jpeg'))),
                        child: Center(
                          child: Text(
                            'Museum',
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
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/museum.jpeg'))),
                        child: Center(
                          child: Text(
                            'Museum',
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
                        height: 170,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/museum.jpeg'))),
                        child: Center(
                          child: Text(
                            'Museum',
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