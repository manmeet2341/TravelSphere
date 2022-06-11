// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/HotelWidget.dart';

class HotelsB extends StatelessWidget {
  HotelsB({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'GMVN Yatri Nivas',
    'Hotel Sunrise Inn.',
    'Hotel Dhanesh',
    'Hotel grand kailash joshimath',
    'The Tattva - A Boutique Resort',
    'Hotel Bhagat'
  ];
  final List<int> colorCodes = <int>[700, 600, 500, 400, 300, 200];
  final List<int> price = <int>[400, 1680, 4300, 2600, 4950, 4200];
  final List<String> rating = <String>[
    '★★★',
    '★★★★',
    '★★★',
    '★★★★★',
    '★★★★',
    '★★★★'
  ];
  final List<String> links = <String>[
    'https://goo.gl/maps/WVAszBa3FkzSqKp56',
    'https://goo.gl/maps/oKAeaBwftFMEAdZ59',
    'https://g.page/sagar-house?share',
    'https://goo.gl/maps/qjTnRcqc9KrWsU7P8',
    'https://g.page/TheTattva?share',
    'https://g.page/hotel-bhagat-chamoli?share'
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
            title: const Text("Hotels In Badrinath"),
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
