import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ini yang pake statefulwidget
class HotelPage extends StatefulWidget {
  @override
  State<HotelPage> createState() => _HotelPageState();
}

class _HotelPageState extends State<HotelPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semua Hotel'),
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
                                image: AssetImage('assets/hotel.jpeg'))),
                        child: Column(
                          children: <Widget>[
                            Text(
                              'El Royale',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 24,
                                  color: Colors.white),
                            ),
                            Icon(Icons.star,
                                size: 30,
                                color: Color.fromARGB(255, 251, 255, 37)),
                            TextButton(
                              style: TextButton.styleFrom(
                                  // shape: CircleBorder(
                                  //   side: BorderSide(
                                  //       width: 8,
                                  //       color: Colors.blue.withOpacity(0.3)),
                                  // ),
                                  backgroundColor:
                                      Color.fromRGBO(242, 242, 88, 1)),
                              onPressed: () {},
                              child: Text(
                                "Lihat Detail",
                                style: TextStyle(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                            ),
                          ],
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
                                image: AssetImage('assets/hotel.jpeg'))),
                        child: Center(
                          child: Text(
                            'Hotel',
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
                                image: AssetImage('assets/hotel.jpeg'))),
                        child: Center(
                          child: Text(
                            'Hotel',
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
                                image: AssetImage('assets/hotel.jpeg'))),
                        child: Center(
                          child: Text(
                            'Hotel',
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
