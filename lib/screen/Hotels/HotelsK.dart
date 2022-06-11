// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:myapp/HotelWidget.dart';

class HotelsK extends StatelessWidget {
  HotelsK({Key? key}) : super(key: key);

  final List<String> names = <String>[
    'Kedarnath Meerut Mandal Mewar Sadan',
    'Punjab Sindh Awas',
    'Hotel Jaipur House',
    'Mathura House',
    'GMVN Cottages',
    'Rajasthan Seva Sadan'
  ];
  final List<int> colorCodes = <int>[600, 500, 400, 300, 200, 100];
  final List<int> price = <int>[4800, 1200, 800, 800, 1200, 5400];
  final List<String> rating = <String>[
    '★★★★',
    '★★★★',
    '★★★★',
    '★★★★★',
    '★★★★',
    '★★★★'
  ];
  final List<String> links = <String>[
    'https://yatradham.org/kedarnath-meerut-mandal-mewar-sadan.html',
    'https://www.makemytrip.com/hotels/punjab_sindh_awas_kedarnath-details-kedarnath.html',
    'https://www.chardhamhotels.net/Kedarnath/Hotel-Jaipur-House.html',
    'https://www.sacredyatra.com/kedarnath-location.html',
    'https://gmvnonline.com/Circuits?hID=6',
    'https://rajasthansevasadan.business.site/?utm_source=gmb&utm_medium=referral',
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
            title: const Text("Hotels In Kedarnath"),
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
