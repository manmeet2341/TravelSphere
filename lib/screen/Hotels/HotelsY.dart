// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/HotelWidget.dart';

class HotelsY extends StatelessWidget {
  HotelsY({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Hotel Namami Gange',
    'Hotel Kalindi Palace',
    'Prabal Yamuna Himalaya Darshan Homestay',
    'Hotel Bahuguna Palace',
    'Hotel Rana heritage',
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200];
  final List<int> price = <int>[1420, 5000, 2300, 3500, 3714];
  final List<String> rating = <String>['★★★', '★★★★', '★★★', '★★★★★', '★★★★★'];
  final List<String> links = <String>[
    'https://g.page/hotel-namami-gange?share',
    'https://goo.gl/maps/wyHJEUinyKXWmSQv5',
    'https://goo.gl/maps/pC1a2Fwc9pd6V9XF6',
    'https://goo.gl/maps/m7xxevQptbGD7Vok7',
    'https://goo.gl/maps/xqH2D9XAsauPLYfn8'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
              Color.fromARGB(255, 151, 128, 243),
              Color.fromARGB(255, 217, 88, 88)
            ])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Hotels In Yamunotri"),
            backgroundColor: Colors.black45,
          ),
          body: ListView.builder(
            itemCount: 5,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return HotelWidget(
                names: names,
                price: price,
                rating: rating,
                links: links,
                index: index,
              );
            },
          ),
        ));
  }
}
