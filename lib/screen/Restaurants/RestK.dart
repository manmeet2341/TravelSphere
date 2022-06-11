// ignore_for_file: file_names

import 'package:flutter/material.dart';
import '../../RestWidget.dart';

class RestK extends StatelessWidget {
  RestK({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Tiwari Hotel & Restaurant',
    'Achanak Dhaba',
    'GMVN Lodge & Restaurant',
    'Vijay Laxmi Restaurant',
    'Hotel Shiv Dham',
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200];
  final List<int> price = <int>[300, 180, 500, 400, 250];
  final List<String> rating = <String>['★★★', '★★★★', '★★★★', '★★★★', '★★★★'];
  final List<String> links = <String>[
    'https://goo.gl/maps/hfMRtopfCAiB4fHC9',
    'https://goo.gl/maps/kL2SsmS9Y74H9Eig7',
    'https://goo.gl/maps/1eVvAC7S6pZk7gqG7',
    'https://goo.gl/maps/fJe2co1cNtD5duvo7',
    'https://goo.gl/maps/Vej8jW57NafteH278',
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
            title: const Text("Restaurants In Kedarnath"),
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
