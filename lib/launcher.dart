import 'dart:async';
import 'package:dewi_app/constants.dart';
import 'package:flutter/material.dart';
import 'package:dewi_app/users/landingpage.dart' as users;

class LauncherPage extends StatefulWidget {
  @override
  State<LauncherPage> createState() => _LauncherPageState();
}

class _LauncherPageState extends State<LauncherPage> {
  @override
  void initState() {
    //untuk memindahkan halaman ke halaman landing page dan satu pakrt dengan override yang bawah
    super.initState();
    startLaunching();
  }

  @override
  void dispose() {
    super.dispose();
  }

  startLaunching() async {
    var duration =
        const Duration(seconds: 3); //untuk mengatur waktu perpindahan otomotis
    return new Timer(duration, () {
      Navigator.of(context).pushReplacement(new MaterialPageRoute(
          builder: (_) => new users
              .LandingPage())); //perintah untuk pindah ke halaman landing page
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(
            horizontal: 20), //untuk memberikan jarak (tapi ga kepake)
        height: MediaQuery.of(context)
            .size
            .height, //tinggi otomatis untuk sesuai layar hp yang kita gunakan
        decoration: BoxDecoration(
            borderRadius:
                BorderRadius.all(Radius.circular(0)), //untuk radius layar
            boxShadow: <BoxShadow>[
              BoxShadow(
                  color: Colors.grey.shade200,
                  offset: Offset(2, 4),
                  blurRadius: 5,
                  spreadRadius: 2)
            ],
            gradient: LinearGradient(
                //untuk gradasi warna
                begin: Alignment.topCenter, //yang di mulai dai tengah atas
                end: Alignment.bottomCenter, //diakhiri sampe tengah bawah
                colors: [
                  Palette.pblue1,
                  Palette.pblue2
                ])), //untuk palet warna dan di mulai dari pblue1
        child: Column(
          crossAxisAlignment:
              CrossAxisAlignment.center, //ditengah dari atas ke bawah
          mainAxisAlignment:
              MainAxisAlignment.center, //ditengah dari kanan ke kiri
          children: <Widget>[
            new Center(
              child: new Image.asset(
                //untuk pemanggilan asset image
                "assets/dewi.png",
                height: 90.0,
                width: 270.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
