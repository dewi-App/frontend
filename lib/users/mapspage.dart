import 'package:flutter/material.dart';
import 'package:dewi_app/users/homepage.dart';
import 'package:dewi_app/users/informationpage.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class MapsPage extends StatefulWidget {
  @override
  State<MapsPage> createState() => _MapsPageState();
}

class _MapsPageState extends State<MapsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // image: AssetImage("assets/dewi.png"),
        title: Text("Maps"),
        //   //   // leading: Icon(Icons.menu),
      ),
      drawer: Drawer(
          child: Column(children: [
        Container(
            padding: EdgeInsets.all(20),
            width: double.infinity,
            height: 120,
            color: Colors.blue,
            alignment: Alignment.bottomLeft,
            child: Text(
              "Dewi Kota Bandung",
              style: TextStyle(
                color: Colors.white,
                fontSize: 22,
              ),
            )),
        ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => HomePage()),
              ));
            },
            leading: Icon(
              Icons.home,
              // color: Palette.pblue1,
            ),
            title: Text("Home",
                style: TextStyle(
                  fontSize: 15,
                ))),
        ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => MapsPage()),
              ));
            },
            leading: Icon(
              Icons.location_on_sharp,
              // color: Palette.pblue1,
            ),
            title: Text("Maps",
                style: TextStyle(
                  fontSize: 15,
                ))),
        ListTile(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: ((context) => InformationPage()),
              ));
            },
            leading: Icon(
              Icons.info_sharp,
              // color: Palette.pblue1,
            ),
            title: Text("Tentang",
                style: TextStyle(
                  fontSize: 15,
                )))
      ])),
      body: OpenStreetMapSearchAndPick(
          center: LatLong(-6.901994792938045, 107.61863148913064),
          buttonColor: Colors.blue,
          buttonText: 'Dewi Kota Bandung',
          onPicked: (pickedData) {
            print(pickedData.latLong.latitude);
            print(pickedData.latLong.longitude);
            print(pickedData.address);
          }),
    );
  }
}
