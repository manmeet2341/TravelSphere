// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../RestWidget.dart';

class RestY extends StatelessWidget {
  RestY({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Om Shanti Guest House',
    'Raturi Hotel and Restaurant',
    'Janak Restaurant',
    'Hotel Jai Restaurant',
    'Prince Hotel and Restaurant',
    'Sachin Restaurant'
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];
  final List<int> price = <int>[1200, 1500, 1000, 1100, 900, 400];
  final List<String> rating = <String>[
    '★★★★',
    '★★★★★',
    '★★★★',
    '★★★',
    '★★★★★',
    '★★★',
  ];
  final List<String> links = <String>[
    'https://goo.gl/maps/2Bp4ykn9ZBgD2S4m6',
    'https://goo.gl/maps/NaX87Hyag4eYNbvF6',
    'https://goo.gl/maps/Z5efJXWdQdCZFk8X8',
    'https://goo.gl/maps/QDtjpudwcJPf17EH8',
    'https://goo.gl/maps/jSEyRqQwAvukr1wm9',
    'https://goo.gl/maps/WDnvyMJJwZ1F4Guu5'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Colors.lightBlue, Colors.lightGreen]),
        ),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Restaurants In Yamunotri"),
            backgroundColor: Colors.black45,
          ),
          body: ListView.builder(
            itemCount: 6,
            shrinkWrap: true,
            itemBuilder: (BuildContext context, int index) {
              return RestWidget(
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
