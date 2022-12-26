import 'package:dewi_app/users/detailpage.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

// ini yang pake statefulwidget
class WisataPage extends StatefulWidget {
  @override
  State<WisataPage> createState() => _WisataPageState();
}

class _WisataPageState extends State<WisataPage> {
  final List<Map<String, dynamic>> listWisata = [
    {"name": "Wisata Tamanlalulintas", "rating": 4},
    {"name": "Wisata Kebunbinatang", "rating": 3},
    {"name": "Wisata Alun-Alun", "rating": 5},
    {"name": "Wisata Renang", "rating": 4},
    {"name": "Wisata Asia Afrika", "rating": 5},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Semua Wisata'),
      ),
      body: ListView(
        children: listWisata.map((data) {
          return Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Card(
                  elevation: 0,
                  child: Container(
                    width: 1000.0,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/wisata.jpeg'))),
                    child: Center(
                        child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "${data['name']}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.white),
                        ),
                        Text(
                          "${data['rating']}",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 30,
                              color: Colors.yellow),
                        ),
                        TextButton(
                          style: TextButton.styleFrom(
                              shape: const BeveledRectangleBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(3))),
                              textStyle: const TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.bold),
                              foregroundColor: Color.fromARGB(255, 25, 25, 25),
                              shadowColor: Colors.black,
                              backgroundColor: Colors.yellow),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return detailpage();
                            }));
                          },
                          child: const Text('Lihat Detail'),
                        ),
                      ],
                    )),
                  ),
                )
              ]);
        }).toList(),
      ),
    );
  }
}
