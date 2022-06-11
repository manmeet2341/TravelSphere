// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../RestWidget.dart';

class RestG extends StatelessWidget {
  RestG({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Shree Balaji Rajasthani Restaurant',
    'Hotel Krishna Palace',
    'Shiva Restaurant',
    'Kedar Ganga Tourist Lodge',
    'Hotel Gangaputra & Restaurant',
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200];
  final List<int> price = <int>[4500, 4200, 5000, 2300, 3500];
  final List<String> rating = <String>[
    '★★★',
    '★★★★',
    '★★★',
    '★★★★★',
    '★★★★',
  ];
  final List<String> links = <String>[
    'https://g.page/shree-balaji-rajasthani-restaura?share',
    'https://goo.gl/maps/VwiwaVxTAjXmckH89',
    'https://goo.gl/maps/jU2z1fw72ttMLcEs8',
    'https://goo.gl/maps/ERoceHViZGgn6jdp8',
    'https://goo.gl/maps/UDZCKYrceMu1D1En8',
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
            title: const Text("Restaurants In Gangotri"),
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
