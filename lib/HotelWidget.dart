// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class HotelWidget extends StatelessWidget {
  const HotelWidget({
    Key? key,
    required this.names,
    required this.price,
    required this.rating,
    required this.links,
    required this.index,
  }) : super(key: key);

  final List<String> names;
  final List<int> price;
  final List<String> rating;
  final List<String> links;
  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
      child: Card(
        elevation: 5.0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Expanded(
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.white,
                      backgroundImage: NetworkImage(
                        'https://static.vecteezy.com/system/resources/thumbnails/000/627/584/small/illust58-5849-01.jpg',
                      ),
                    ),
                    const SizedBox(width: 5.0),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            names[index],
                            overflow: TextOverflow.clip,
                            style: const TextStyle(
                                fontSize: 12, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            'Cost For Two ${price[index]}',
                            overflow: TextOverflow.clip,
                          ),
                          Text(
                            "Rating ${rating[index]}",
                            overflow: TextOverflow.clip,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              FlatButton(
                onPressed: () async {
                  var url = links[index];

                  if (await canLaunch(url)) {
                    await launch(url);
                  } else {
                    await launch(
                        'https://www.google.com/maps/place/Uttarakhand/@30.0798136,78.1908685,8z/data=!3m1!4b1!4m5!3m4!1s0x3909dcc202279c09:0x7c43b63689cc005!8m2!3d30.066753!4d79.0192997');
                  }
                },
                color: const Color.fromARGB(255, 55, 24, 56),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: const Text(
                  "Click to Redirect",
                  style: TextStyle(color: Colors.white),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
