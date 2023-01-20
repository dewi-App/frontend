import 'package:dewi_app/constants.dart';
import 'package:dewi_app/users/cafepage.dart';
import 'package:dewi_app/users/homepage.dart';
import 'package:dewi_app/users/destination.dart';
import 'package:dewi_app/users/hotelpage.dart';
import 'package:dewi_app/users/informationpage.dart';
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
      // appBar: AppBar(
      //   // image: AssetImage("assets/dewi.png"),
      //   title: Text("Dewi Kota Bandung"),
      //   //   //   // leading: Icon(Icons.menu),
      // ),
      // drawer: Drawer(
      //     child: Column(children: [
      //   Container(
      //       padding: EdgeInsets.all(20),
      //       width: double.infinity,
      //       height: 120,
      //       color: Colors.blue,
      //       alignment: Alignment.bottomLeft,
      //       child: Text(
      //         "Dewi Kota Bandung",
      //         style: TextStyle(
      //           color: Colors.white,
      //           fontSize: 22,
      //         ),
      //       )),
      //   ListTile(
      //       onTap: () {
      //         Navigator.of(context).pushReplacement(MaterialPageRoute(
      //           builder: ((context) => HomePage()),
      //         ));
      //       },
      //       leading: Icon(
      //         Icons.home,
      //         color: Palette.pblue1,
      //       ),
      //       title: Text("Home",
      //           style: TextStyle(
      //             fontSize: 15,
      //           ))),
      //   ListTile(
      //       onTap: () {
      //         Navigator.of(context).pushReplacement(MaterialPageRoute(
      //           builder: ((context) => MapsPage()),
      //         ));
      //       },
      //       leading: Icon(
      //         Icons.location_on_sharp,
      //         color: Palette.pblue1,
      //       ),
      //       title: Text("Maps",
      //           style: TextStyle(
      //             fontSize: 15,
      //           ))),
      //   ListTile(
      //       onTap: () {
      //         Navigator.of(context).pushReplacement(MaterialPageRoute(
      //           builder: ((context) => InformationPage()),
      //         ));
      //       },
      //       leading: Icon(
      //         Icons.info_sharp,
      //         color: Palette.pblue1,
      //       ),
      //       title: Text("Tentang",
      //           style: TextStyle(
      //             fontSize: 15,
      //           )))
      // ])),

      // body: _container[_currentIndex],

      body:
          _container[_bottomNavCurrentIndex], //untuk menyesuaikan index halaman
      // bottomNavigationBar: BottomNavigationBar(
      //     selectedItemColor: Palette.pblue2, //untuk warna navigaionbar
      //     type: BottomNavigationBarType.fixed,
      //     onTap: (index) {
      //       //lik untuk mengganti ke halaman sesuai dengan index
      //       setState(() {
      //         _bottomNavCurrentIndex =
      //             index; //ketika kita akan menekan battom navigation kita akan dibawa sesuai dengan index nya
      //       });
      //     },
      //     currentIndex:
      //         _bottomNavCurrentIndex, //menyeting current index sesui dengan bottomcurent index
      // items: [
      //   BottomNavigationBarItem(
      //     activeIcon: new Icon(
      //       //pemanggilan icon
      //       Icons.home,
      //       color: Palette.pblue1, //warna icon bila aktif
      //     ),
      //     icon: new Icon(
      //       Icons.home,
      //       color: Colors.grey, //warna icon bila tidak aktif
      //     ),
      //     label: 'Home', //nama untuk icon itu
      //   ),
      //   BottomNavigationBarItem(
      //     activeIcon: new Icon(
      //       Icons.location_on_sharp,
      //       color: Palette.pblue1,
      //     ),
      //     icon: new Icon(
      //       Icons.location_on_sharp,
      //       color: Colors.grey,
      //     ),
      //     label: 'Maps',
      //   )
      // ]),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
