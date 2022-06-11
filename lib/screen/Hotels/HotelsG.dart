// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/HotelWidget.dart';

class HotelsG extends StatelessWidget {
  HotelsG({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Hotel Manisha',
    'Hotel Gangaputra',
    'Himalaya Sadan',
    'Tiwari Hotel & Restaurant',
    'SPOT ON 62099 Behl Ashram'
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200];
  final List<int> price = <int>[4500, 4200, 5000, 2300, 3500];
  final List<String> rating = <String>['★★★★', '★★★★★', '★★★★', '★★★', '★★★★★'];
  final List<String> links = <String>[
    'https://goo.gl/maps/TiL4U4RaPaLx5gia9',
    'https://goo.gl/maps/ooaq1TFbTYP6JBdy7',
    'https://g.page/DidwanaHouse?share',
    'https://goo.gl/maps/hek275p5BeP4aRrm6',
    'https://goo.gl/maps/FxP64VhZ49zaJJiW9',
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
            title: const Text("Hotels In Gangotri"),
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
