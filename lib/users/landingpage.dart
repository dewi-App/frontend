import 'package:dewi_app/constants.dart';
import 'package:dewi_app/users/cafepage.dart';
import 'package:dewi_app/users/homepage.dart';
import 'package:dewi_app/users/destination.dart';
import 'package:dewi_app/users/hotelpage.dart';
import 'package:dewi_app/users/mapspage.dart';
import 'package:dewi_app/users/restopage.dart';
import 'package:dewi_app/users/wisatapage.dart';
import 'package:dewi_app/users/detailpage.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  int _bottomNavCurrentIndex =
      0; //setingan untuk index 0 itu ada di halaman Home page dan yang index ke 1 di maps page
  List<Widget> _container = [
    new HomePage(), //halaman yang kita perlukan list emua disini
    new MapsPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //class untuk membua appbar
        leading: Image.asset(
          //untuk menyimpang gambar di sebelah kiri app bar
          "assets/dewi.png", //pemanggilan appbar
        ),
        actions: [
          //untuk menyimpan icon di sebelah kanan appbar
          IconButton(
            icon: Icon(Icons.info), //pemanggilan appbar
            onPressed: () {}, //untuk link jika kita menekan icons tersebut
          )
        ],
      ),
      body:
          _container[_bottomNavCurrentIndex], //untuk menyesuaikan index halaman
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Palette.pblue1, //untuk warna navigaionbar
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            //lik untuk mengganti ke halaman sesuai dengan index
            setState(() {
              _bottomNavCurrentIndex =
                  index; //ketika kita akan menekan battom navigation kita akan dibawa sesuai dengan index nya
            });
          },
          currentIndex:
              _bottomNavCurrentIndex, //menyeting current index sesui dengan bottomcurent index
          items: [
            BottomNavigationBarItem(
              activeIcon: new Icon(
                //pemanggilan icon
                Icons.home,
                color: Palette.pblue1, //warna icon bila aktif
              ),
              icon: new Icon(
                Icons.home,
                color: Colors.grey, //warna icon bila tidak aktif
              ),
              label: 'Home', //nama untuk icon itu
            ),
            BottomNavigationBarItem(
              activeIcon: new Icon(
                Icons.location_on_sharp,
                color: Palette.pblue1,
              ),
              icon: new Icon(
                Icons.location_on_sharp,
                color: Colors.grey,
              ),
              label: 'Maps',
            )
          ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
