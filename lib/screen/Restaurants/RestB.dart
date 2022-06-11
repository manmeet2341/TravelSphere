// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../RestWidget.dart';

class RestB extends StatelessWidget {
  RestB({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Saket Restaurant',
    'Mishra Restaurant',
    'Vankatesh Restaurant',
    'Sardeshwari Restaurant',
    'Chandralok Hotel',
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200];
  final List<int> price = <int>[1200, 1000, 900, 1100, 800];
  final List<String> rating = <String>[
    '★★★',
    '★★★★',
    '★★★★',
    '★★★★',
    '★★★★',
  ];
  final List<String> links = <String>[
    'https://goo.gl/maps/TBnDjFUwYLmZC3Km8',
    'https://goo.gl/maps/2Er6rZ7yBdRk4Xv99',
    'https://goo.gl/maps/2vC5E7aVrGTqYMdE7',
    'https://goo.gl/maps/87jHZbmMtmDh18YH9',
    'https://goo.gl/maps/4KVZzQTMnEH1VVtXA',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.lightBlue, Colors.lightGreen])),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("Restaurants In Badrinath"),
            backgroundColor: Colors.black45,
          ),
          body: ListView.builder(
            itemCount: 5,
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
