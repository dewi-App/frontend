import 'package:dewi_app/users/cafepage.dart';
import 'package:dewi_app/users/destination.dart';
import 'package:dewi_app/users/hotelpage.dart';
import 'package:dewi_app/users/museum.dart';
import 'package:dewi_app/users/restopage.dart';
import 'package:dewi_app/users/wisatapage.dart';
import 'package:dewi_app/users/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ini yang pake statefulwidget
class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1520342868574-5fa3804e551c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=6ff92caffcdd63681a35134a6770ed3b&auto=format&fit=crop&w=1951&q=80',
    'https://images.unsplash.com/photo-1522205408450-add114ad53fe?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=368f45b0888aeb0b7b08e3a1084d3ede&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1519125323398-675f0ddb6308?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=94a1e718d89ca60a6337a6008341ca50&auto=format&fit=crop&w=1950&q=80',
    'https://images.unsplash.com/photo-1523205771623-e0faa4d2813d?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=89719a0d55dd05e2deae4120227e6efc&auto=format&fit=crop&w=1953&q=80',
    'https://images.unsplash.com/photo-1508704019882-f9cf40e475b4?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=8c6e5e3aba713b17aa1fe71ab4f0ae5b&auto=format&fit=crop&w=1352&q=80',
    'https://images.unsplash.com/photo-1519985176271-adb1088fa94c?ixlib=rb-0.3.5&ixid=eyJhcHBfaWQiOjEyMDd9&s=a0c8d632e977f94e5d312d9893258f59&auto=format&fit=crop&w=1355&q=80'
  ]; //untuk list link image

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
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                        margin: EdgeInsets.all(15),
                        child: Text(
                          "Informasi Terbaru",
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18.0,
                            color: Colors.black,
                          ),
                        )),
                  ),
                ],
              ),
              Container(
                child: CarouselSlider(
                    //untuk memanggil carousel
                    options: CarouselOptions(
                      //property untuk carousel
                      autoPlay: true, //untuk mengaktifkan carousel
                      aspectRatio: 2.0, //ratio image carousel
                      viewportFraction: 1, //ukuran dari isi carousel
                      enlargeCenterPage:
                          true, //untuk gamabr ada ditengah dari page
                    ),
                    items: imgList //untuk pemanggilan image list di atas
                        .map((item) => Container(
                              child: Container(
                                child: ClipRRect(
                                    child: Stack(
                                  children: <Widget>[
                                    Image.network(item,
                                        fit: BoxFit.cover, width: 1000.0),
                                    Positioned(
                                      bottom: 0.0,
                                      left: 0.0,
                                      right: 0.0,
                                      child: Container(
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(15.0),
                                          gradient: LinearGradient(
                                            colors: [
                                              Color.fromARGB(200, 0, 0, 0),
                                              Color.fromARGB(0, 0, 0, 0)
                                            ],
                                            begin: Alignment.bottomCenter,
                                            end: Alignment.topCenter,
                                          ),
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            vertical: 10.0, horizontal: 20.0),
                                        child: Center(
                                          child: Text(
                                            'Info ke ${imgList.indexOf(item)}', //untuk text yang akan di munculkan di carousel
                                            style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 28,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                )),
                              ),
                            ))
                        .toList()),
              ),
              Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      margin: EdgeInsets.all(20),
                      child: Text("Pilih Kategori :",
                          style: new TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 15.0,
                            color: Colors.black,
                          )),
                    ),
                  ),
                ],
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
                                image: AssetImage('assets/hotel.jpeg'))),
                        child: Center(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              foregroundColor: Colors.white,
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return HotelPage();
                              }));
                            },
                            child: const Text('Hotel'),
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
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              foregroundColor: Colors.white,
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return RestoPage();
                              }));
                            },
                            child: const Text('Resto'),
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
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              foregroundColor: Colors.white,
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return CafePage();
                              }));
                            },
                            child: const Text('Cafe'),
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
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              foregroundColor: Colors.white,
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return WisataPage();
                              }));
                            },
                            child: const Text('Wisata'),
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
                                image: AssetImage('assets/museum.jpeg'))),
                        child: Center(
                          child: TextButton(
                            style: TextButton.styleFrom(
                              textStyle: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                              foregroundColor: Colors.white,
                              shadowColor: Colors.black,
                            ),
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return MuseumPage();
                              }));
                            },
                            child: const Text('Museum'),
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
